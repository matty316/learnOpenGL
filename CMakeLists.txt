cmake_minimum_required(VERSION 3.31)

project(learnOpenGl)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB SOURCES "${CMAKE_SOURCE_DIR}/src/*.cpp")

file(GLOB INCLUDES "${CMAKE_SOURCE_DIR}/include/*.h")
add_executable(learnOpenGl ${SOURCES} ${INCLUDES} "${CMAKE_SOURCE_DIR}/src/glad.c")

include_directories(${CMAKE_SOURCE_DIR}/include)

if (APPLE)
    target_link_libraries(learnOpenGl ${CMAKE_SOURCE_DIR}/lib/libglfw3.a)
    target_link_libraries(${PROJECT_NAME} "-framework IOKit")
    target_link_libraries(${PROJECT_NAME} "-framework Cocoa")
    target_link_libraries(${PROJECT_NAME} "-framework OpenGL")
endif()
if(WIN32)
    target_link_libraries(learnOpenGl ${CMAKE_SOURCE_DIR}/lib/glfw3.lib)
endif()
