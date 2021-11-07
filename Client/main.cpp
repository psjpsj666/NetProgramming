#include <iostream>
#include <WinSock2.h>
#include <cstring>
#include <thread>
#pragma comment(lib,"ws2_32.lib")

#define BUF_SIZE 100
#define NAME_SIZE 20
char name[NAME_SIZE]="[DEFAULT]"; //用户名
char Msg[BUF_SIZE];

<<<<<<< HEAD
//读取数据线程
=======
//读取数据进程
>>>>>>> 697af05 (bug fixed)
void Readthread(SOCKET sockfd)
{
    int str_Len;
    char Message[BUF_SIZE+NAME_SIZE];
    while(true)
    {
        str_Len=recv(sockfd,Message,NAME_SIZE+BUF_SIZE-1,0);
<<<<<<< HEAD
        if(str_Len!=0)
=======
        if(str_Len!=-1)
>>>>>>> 697af05 (bug fixed)
        {
            Message[str_Len]=0;
            //std::cout<<Message<<std::endl;
            fputs(Message,stdout);
        } else break;
    }
}

<<<<<<< HEAD
//发送数据线程
=======
//发送数据进程
>>>>>>> 697af05 (bug fixed)
void SendThread(SOCKET sockfd)
{
    char Message[BUF_SIZE+NAME_SIZE];
    while(true)
    {
        fgets(Msg,BUF_SIZE,stdin);
        if(!strcmp(Msg,"q\n")||!strcmp(Msg,"Q\n"))
        {
            closesocket(sockfd);
            exit(0);
        }
        sprintf(Message,"%s %s",name,Msg);
        send(sockfd,Message,strlen(Message),0);
    }
}

int main(int argc, char* argv[]) {
    WSADATA wsaData;
    SOCKET hSocket;
    SOCKADDR_IN servAddr;

    if(argc!=4)
    {
        std::cout<<"Usage : "<<argv[0]<<"<IP><Port><name>\n";
        exit(1);
    }

    if(WSAStartup(MAKEWORD(2,2),&wsaData)!=0)
    {
        std::cout<<"WSAStartup() error!\n";
        exit(1);
    }

    //strcpy(name,argv[3]);  //用户名赋值
    sprintf(name,"[%s]",argv[3]);
    hSocket=socket(PF_INET,SOCK_STREAM,0);
    memset(&servAddr,0,sizeof(servAddr));
    servAddr.sin_family=AF_INET;
    servAddr.sin_addr.S_un.S_addr= inet_addr(argv[1]);
    servAddr.sin_port=htons(atoi(argv[2]));

    if(connect(hSocket,(SOCKADDR*)&servAddr,sizeof(servAddr))==-1)
    {
        std::cout<<"connect() error!\n";
        exit(1);
    }

    std::thread Sendth(SendThread,hSocket);
    std::thread Readth(Readthread,hSocket);

    Sendth.join();
    Readth.join();

    closesocket(hSocket);
    WSACleanup();
    return 0;
}
