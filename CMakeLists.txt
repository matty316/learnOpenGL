cmake_minimum_required(VERSION 3.31)

project(learnOpenGl)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB SOURCES "${CMAKE_SOURCE_DIR}/src/*.cpp")

file(GLOB INCLUDES "${CMAKE_SOURCE_DIR}/include/*.h")
add_executable(learnOpenGl ${SOURCES} ${INCLUDES} "${CMAKE_SOURCE_DIR}/src/glad.c")

include_directories(${CMAKE_SOURCE_DIR}/include)

target_link_libraries(learnOpenGl ${CMAKE_SOURCE_DIR}/lib/glfw3.lib)

