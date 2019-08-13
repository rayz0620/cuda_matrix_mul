cmake_minimum_required(VERSION 3.14)
project(matrixmul)

set(CMAKE_CXX_STANDARD 14)
find_package(CUDA REQUIRED)

add_subdirectory(matrixmul)
add_subdirectory(utils)

cuda_add_executable(main main.cpp)
target_link_libraries(main matrixmul utils)