cmake_minimum_required(VERSION 3.10)

find_package(CUDA REQUIRED)

cuda_add_library(matrixmul matrix_mul_kernel.h matrix_mul_kernel.cu matrix_mul.h matrix_mul.cu)