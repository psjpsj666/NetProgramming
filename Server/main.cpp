//
// Created by 64524 on 2021/11/7.
//
#include <winsock2.h>
#include <cstring>
#include <iostream>
#include <thread>
#include <mutex>

#define BUF_SIZE 100
#define MAX_CLNT_COUNT 30  //最多30个客户端连接
std::mutex mutex;   //互斥量

int clntCount=0;
SOCKET ClntSocks[MAX_CLNT_COUNT];

//依次向每个客户端发送消息
void SendMsg(char *message,int len)
{
    mutex.lock();
    for(int i=0;i<clntCount;i++)
    {
        send(ClntSocks[i],message, len,0);
    }
    mutex.unlock();
}

//对客户端套接字进行处理
void HandleClnt(SOCKET sockfd)
{
    char Message[BUF_SIZE];
    int str_Len=0;
    while((str_Len=recv(sockfd,Message,sizeof(Message),0))!=0)
        SendMsg(Message,str_Len);
    mutex.lock();
    for(int i=0;i<clntCount;i++)
    {
        if(sockfd==ClntSocks[i])
        {
            while(i++<clntCount-1)
                ClntSocks[i]=ClntSocks[i+1];
            break;
        }
    }
    clntCount--;
    mutex.unlock();
    closesocket(sockfd);
}

int main(int argc, char *argv[])
{
    WSADATA wsaData;
    SOCKET servSock, clntSock;
    SOCKADDR_IN servAddr, clntAddr;
    int clntAddrSz;

    if(argc!=2)
    {
        std::cout<<"Usage : "<<argv[0]<<"<Port>\n";
        exit(1);
    }
    if(WSAStartup(MAKEWORD(2,2),&wsaData)!=0)
    {
        std::cout<<"WSAStartup() error!\n";
        exit(1);
    }
    servSock=socket(PF_INET,SOCK_STREAM,0);
    memset(&servAddr,0,sizeof(servAddr));
    servAddr.sin_family=AF_INET;
    servAddr.sin_addr.S_un.S_addr=htonl(INADDR_ANY);
    servAddr.sin_port= htons(atoi(argv[1]));

    if(bind(servSock,(SOCKADDR*)&servAddr,sizeof(servAddr))==SOCKET_ERROR)
    {
        std::cout<<"bind() error!\n";
        exit(1);
    }

    if(listen(servSock,5)==SOCKET_ERROR)
    {
        std::cout<<"listen() error!\n";
        exit(1);
    }

    while(true)
    {
        clntAddrSz=sizeof(clntAddr);
        clntSock= accept(servSock,(SOCKADDR*)&clntAddr,&clntAddrSz);

        mutex.lock();
        ClntSocks[clntCount]=clntSock;
        clntCount++;
        mutex.unlock();

        std::thread t1(HandleClnt,clntSock);
        t1.detach();
        std::cout<<"Connected clinet IP : "<<inet_ntoa(clntAddr.sin_addr)<<std::endl;
    }
    closesocket(servSock);
    WSACleanup();
    return 0;
}
