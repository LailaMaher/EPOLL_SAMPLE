

#ifndef SERVER
#define SERVER

#include <unistd.h>
#include <sys/types.h>
#include <string>
#include <string.h>
#include <iostream>
#include <netinet/in.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>

using namespace std;

class Server{
	
	int UDP_PORT_NUM;
	
	int UDPdescriptor;
	struct sockaddr_in UDPaddress, client;
	socklen_t l;

	static Server* s_instance;

	Server();

public:


	static Server* instance();
		
	void setUDPDescriptor(int);
	int getUDPDescriptor() const;

	void setUDPAddress();
	void createUDPSocket(int);

	void SendStream(string);
	string ReadStream();

	void acceptUser();
};



#endif
