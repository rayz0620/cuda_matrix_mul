//
// Created by rayz on 2019/8/13.
//

#ifndef MATRIXMUL_MATRIX_MUL_KERNEL_H
#define MATRIXMUL_MATRIX_MUL_KERNEL_H

#include <cuda_runtime.h>

__global__ void matrix_mul_vanilla(float *devM, float *devN, float *devP, size_t width);

#endif //MATRIXMUL_MATRIX_MUL_KERNEL_H
