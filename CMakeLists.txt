cmake_minimum_required(VERSION 3.10 FATAL_ERROR)

project(project1 CXX)

include(GNUInstallDirs)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

message("The cmake binary dir is ${CMAKE_BINARY_DIR}")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenMP)

add_subdirectory(src)


