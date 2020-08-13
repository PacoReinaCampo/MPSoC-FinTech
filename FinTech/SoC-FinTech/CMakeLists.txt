# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8.10)

# Project's name

project(SoC-FinTech)

link_directories(../mpsoc-ntm/opennn)

include_directories(../mpsoc-ntm/opennn)

add_executable(SoC-FinTech main.cpp)

target_link_libraries(SoC-FinTech opennn)


