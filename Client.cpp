
#include "Client.h"

Client* Client::s_instance = NULL;

Client::Client(){

}

Client* Client::instance(){
	if(!s_instance)
		s_instance = new Client;
	return s_instance;
}

void Client::setUDPDescriptor(int UDPdescriptor){
	this->UDPdescriptor = UDPdescriptor;
	if(UDPdescriptor < 0) perror("FAILED TO CREATE TCP SOCKET");
}

int Client::getUDPDescriptor() const{
	return UDPdescriptor;
}

void Client::setUDPAddress(){
	UDPaddress.sin_family = AF_INET;
	UDPaddress.sin_addr.s_addr = INADDR_ANY;
	UDPaddress.sin_port = htons(UDP_PORT_NUM);
}

void Client::createUDPSocket(int p){
	UDP_PORT_NUM = p;
	setUDPDescriptor( socket(AF_INET, SOCK_DGRAM, 0) ); 
	setUDPAddress();
	if( bind(getUDPDescriptor(), (struct sockaddr *)&UDPaddress, sizeof(UDPaddress)) < 0 ) 
		perror("UDP BIND ERROR");
}

void Client::SendStream(string data){


    char buffer[1024];
    strcpy(buffer, data.c_str());

    server_address.sin_family = AF_INET;
    struct hostent* server = gethostbyname("165.227.175.2");
    bcopy((char *)server->h_addr, 
         (char *)&server_address.sin_addr.s_addr,
         server->h_length);
    server_address.sin_port = htons(UDP_PORT_NUM);
  

  	cout << "Sending stream to 165.227.175.2 \n";

    if( sendto(getUDPDescriptor(), buffer, 1023, 0, (struct sockaddr*)&server_address, sizeof(server_address)) < 0 )
    	perror("SEND STREAM FAILED");

}

string Client::ReadStream(){
	char buffer[1024];
	l = sizeof(server_address);

    if( recvfrom(getUDPDescriptor(), buffer, 1023, 0, (struct sockaddr *)&server_address, &l) < 0)
    	perror("READ STREAM FAILED");
    string data(buffer);
	return data;
}

void Client::acceptUser(){
	cout << "Server Send :: " << ReadStream() << endl;
	cout << "Server information: \n";
	string IP(inet_ntoa(server_address.sin_addr));
	cout << "IP = " << IP << " PORT = " << ntohs(server_address.sin_port) << endl;
	
}
