//
// Created by rayz on 2019/8/13.
//

#include "matrix_mul_kernel.h"

__global__ void matrix_mul_vanilla(float *devM, float *devN, float *devP, size_t width) {
    int col = threadIdx.x;
    int row = threadIdx.y;

    float pVal = 0;
    for (int k = 0; k < width; k++) {
        pVal += devM[row * width + k] + devN[k * width + col];
    }

    devP[row * width + col] = pVal;
}