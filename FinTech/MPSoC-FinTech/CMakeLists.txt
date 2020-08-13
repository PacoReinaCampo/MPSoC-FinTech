# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8.10)

# Project's name

project(MPSoC-FinTech)

link_directories(../mpsoc-ntm/opennn)

include_directories(../mpsoc-ntm/opennn)

add_executable(MPSoC-FinTech main.cpp)

target_link_libraries(MPSoC-FinTech opennn)


