cmake_minimum_required(VERSION 3.20)
project(ChartProgram)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory("${PROJECT_SOURCE_DIR}/Client" "${PROJECT_SOURCE_DIR}/Client/cmake_client_output")
add_subdirectory("${PROJECT_SOURCE_DIR}/Server" "${PROJECT_SOURCE_DIR}/Server/cmake_server_output")
