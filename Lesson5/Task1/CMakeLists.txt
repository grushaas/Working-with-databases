cmake_minimum_required(VERSION 3.20)
project(Lesson5Task1)
add_executable(Lesson5Task1 main.cpp dbManagement.cpp dbManagement.h)

add_subdirectory(C:/Users/Grush/libForCpp/libpqxx-7.7.4/libpqxx-7.7.4 libpqxx-build)

target_compile_features(Lesson5Task1 PRIVATE cxx_std_17)
target_link_libraries(Lesson5Task1 pqxx)

