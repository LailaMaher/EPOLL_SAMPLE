


#include "Client.h"
#include <sys/epoll.h>
#define MAX_EVENTS 64


int main(int argc, char const *argv[])
{
	cout << "Creating Client"<<endl;

	Client* udp_client = Client::instance();
	udp_client->createUDPSocket(atoi(argv[1]));


	int epfd;
	epfd = epoll_create1(0);

	if (epfd < 0) perror ("epoll_create1");

	struct epoll_event event1, event2;
	int ret;

	/*
     * Client fd
     */

	int cli_fd = udp_client->getUDPDescriptor();

	event1.data.fd = cli_fd;
	event1.events = EPOLLIN;

	ret = epoll_ctl (epfd, EPOLL_CTL_ADD, cli_fd, &event1);


	if (ret)
		perror ("epoll_ctl");

	/*
     * CIN fd
     */

	event2.data.fd = STDIN_FILENO;
	event2.events = EPOLLIN;

	ret = epoll_ctl (epfd, EPOLL_CTL_ADD, STDIN_FILENO, &event2);

	if (ret)
		perror ("epoll_ctl");

	/*
     *  Wait for events
     */


	struct epoll_event *events;
	int nr_events, i;

	events = new struct epoll_event[MAX_EVENTS];

	nr_events = epoll_wait (epfd, events, MAX_EVENTS, -1);

	if (nr_events < 0) {
		perror ("epoll_wait");
		delete [] events;
		return 1;
	}
    while(true)
	for (i = 0; i < nr_events; i++) {
        if(events[i].data.fd == cli_fd && events[i].events & EPOLLIN){
            udp_client->acceptUser();
        }

		else if(events[i].data.fd == STDIN_FILENO && events[i].events & EPOLLIN){
			string s;
			cin >> s;
			cout << "sent stream :: " << s << endl;
            udp_client->SendStream(s);
        }
        else cout << "unknown event" << endl;
    }

	return 0;
}