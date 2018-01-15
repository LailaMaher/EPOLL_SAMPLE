

#ifndef CLIENT
#define CLIENT

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

class Client{
	
	int UDP_PORT_NUM;
	
	int UDPdescriptor;
	struct sockaddr_in UDPaddress, server_address;
	socklen_t l;

	static Client* s_instance;

	Client();

public:


	static Client* instance();
		
	void setUDPDescriptor(int);
	int getUDPDescriptor() const;

	void setUDPAddress();
	void createUDPSocket(int);

	void SendStream(string);
	string ReadStream();

	void acceptUser();
};



#endif
