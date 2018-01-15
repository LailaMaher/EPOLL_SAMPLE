


#include "Server.h"
#include <sys/epoll.h>
#define MAX_EVENTS 64

int main(int argc, char const *argv[])
{
	cout << "Creating Server"<<endl;

	Server* udp_server = Server::instance();
	udp_server->createUDPSocket(atoi(argv[1]));

    int epfd;
    epfd = epoll_create1(0);

    if (epfd < 0) perror ("epoll_create1");

    struct epoll_event event1, event2;
    int ret;

    /*
     * Server fd
     */

    int serv_fd = udp_server->getUDPDescriptor();

    event1.data.fd = serv_fd;
    event1.events = EPOLLIN;

    ret = epoll_ctl (epfd, EPOLL_CTL_ADD, serv_fd, &event1);


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


    if (nr_events < 0) {
        perror ("epoll_wait");
        delete [] events;
        return 1;
    }

    while (true){

        nr_events = epoll_wait (epfd, events, MAX_EVENTS, -1);

        for (i = 0; i < nr_events; i++) {

            if(events[i].data.fd == serv_fd && events[i].events & EPOLLIN){
                udp_server->acceptUser();
            }

            else if(events[i].data.fd == STDIN_FILENO && events[i].events & EPOLLIN){
                string s;
                cin >> s;
                cout << "sent stream :: " << s << endl;
                udp_server->SendStream(s);
            }
            else cout << "unknown event" << endl;
        }
    }


    delete [] events;
	return 0;
}