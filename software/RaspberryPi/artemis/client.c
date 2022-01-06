#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>

//make sure the PORT and MAXLINE are the same as the python server.
#define PORT 20001
#define MAXLINE 1024

int main()
{
	int sockfd;
	char buffer[MAXLINE];
	char *msg = "packet received";
	struct sockaddr_in		servaddr;
	
	if((sockfd = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
	{
		perror("socket bind failed");
		exit(EXIT_FAILURE);
	}
	
	memset(&servaddr, 0 , sizeof(servaddr));
	
	servaddr.sin_family = AF_INET;
	servaddr.sin_port = htons(PORT);
	servaddr.sin_addr.s_addr = INADDR_ANY;
	
	int n, len, x;
	
	x = 0;
	
	char *ptr;
	while (x < 300){
		sendto(sockfd, (const char *)msg, strlen(msg),
				MSG_CONFIRM, (const struct sockaddr *) &servaddr, 
				sizeof(servaddr));
			
		printf("message sent.");
	
		n = recvfrom(sockfd, (char *)buffer, MAXLINE, 
		MSG_WAITALL, (struct sockaddr *) &servaddr,
		&len);
		ptr = &buffer;
		
		if(ptr[0] == 's')
		{
			break;
		}
		
		buffer[n] = '\0';
		printf("Server : %s\n", buffer);
		x++;
		sleep(1);
}
	
	close(sockfd);
	return 0;
}

