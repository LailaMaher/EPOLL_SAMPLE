cmake_minimum_required(VERSION 3.9)
project(sample_epoll)

set(CMAKE_CXX_STANDARD 11)

add_executable(sample_epoll_server Server.h Server.cpp server_main.cpp)

add_executable(sample_epoll_client Client.h Client.cpp client_main.cpp)