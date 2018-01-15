
#include "Server.h"

Server* Server::s_instance = NULL;

Server::Server(){

}

Server* Server::instance(){
	if(!s_instance)
		s_instance = new Server;
	return s_instance;
}

void Server::setUDPDescriptor(int UDPdescriptor){
	this->UDPdescriptor = UDPdescriptor;
	if(UDPdescriptor < 0) perror("FAILED TO CREATE TCP SOCKET");
}

int Server::getUDPDescriptor() const{
	return UDPdescriptor;
}

void Server::setUDPAddress(){
	UDPaddress.sin_family = AF_INET;
	UDPaddress.sin_addr.s_addr = INADDR_ANY;
	UDPaddress.sin_port = htons(UDP_PORT_NUM);
}

void Server::createUDPSocket(int p){
	UDP_PORT_NUM = p;
	setUDPDescriptor( socket(AF_INET, SOCK_DGRAM, 0) ); 
	setUDPAddress();
	if( bind(getUDPDescriptor(), (struct sockaddr *)&UDPaddress, sizeof(UDPaddress)) < 0 ) 
		perror("UDP BIND ERROR");
}

void Server::SendStream(string data){


    char buffer[1024];
    strcpy(buffer, data.c_str());
  
    if( sendto(getUDPDescriptor(), buffer, 1023, 0, (struct sockaddr*)&client, sizeof(client)) < 0 )
    	perror("SEND STREAM FAILED");

}

string Server::ReadStream(){
	char buffer[1024];
	l = sizeof(client);

    if( recvfrom(getUDPDescriptor(), buffer, 1023, 0, (struct sockaddr *)&client, &l) < 0)
    	perror("READ STREAM FAILED");
    string data(buffer);
	return data;
}

void Server::acceptUser(){

	string data = ReadStream();
	cout << "Client send :: " << data << endl;
	cout << "Client information: \n";
	string IP(inet_ntoa(client.sin_addr));
	cout << "IP = " << IP << " PORT = " << ntohs(client.sin_port) << endl;
}
