cmake_minimum_required(VERSION 3.20)
project(ChartProgram)

set(CMAKE_CXX_STANDARD 17)
link_libraries(ws2_32)

add_executable(Client main.cpp)