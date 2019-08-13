cmake_minimum_required(VERSION 3.14)

find_package(CUDA REQUIRED)

cuda_add_library(matrixmul matrix_mul_kernel.h matrix_mul_kernel.cu)