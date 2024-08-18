cmake_minimum_required(VERSION 3.10)

project(MiniEngine VERSION 0.1)

cmake_policy(SET CMP0072 NEW)
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)

include_directories( SYSTEM lib/glad/include)

add_executable(test-prog ./src/main.cpp ./lib/glad/src/gl.c)

target_link_libraries(test-prog 
glfw
OpenGL::GL)
