# NetProgramming
Use Windows socket to build a chat Server and Client
## Project test
```
//Server
g++ main.cpp -o Server -lwsock32
./Server 9190
```
```
//Client
g++ main.cpp -o Client -lwsock32
./Client 127.0.0.1 9190 Username
```
