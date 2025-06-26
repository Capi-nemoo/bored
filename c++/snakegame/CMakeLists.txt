cmake_minimum_required(VERSION 3.16)
project(ftxui-app)

set(CMAKE_CXX_STANDARD 17)

# FTXUI from source
add_subdirectory(FTXUI)

add_executable(myapp src/main.cpp)
target_link_libraries(myapp PRIVATE ftxui::screen ftxui::dom ftxui::component)

