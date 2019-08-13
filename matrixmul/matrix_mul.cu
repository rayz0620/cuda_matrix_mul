//
// Created by rayz on 2019/8/13.
//

#include "matrix_mul.h"
#include "matrix_mul_kernel.h"
#include <cuda_runtime.h>

void MatrixMulVanilla(float *mHost, float *nHost, float *pHost, size_t width) {
    float *mDev, *nDev, *pDev;

    size_t matSize = width * width * sizeof(float);

    cudaMalloc(&mDev, matSize);
    cudaMalloc(&nDev, matSize);
    cudaMalloc(&pDev, matSize);

    cudaMemcpy(mDev, mHost, matSize, cudaMemcpyHostToDevice);
    cudaMemcpy(nDev, nHost, matSize, cudaMemcpyHostToDevice);

    dim3 gridDim(1, 1);
    dim3 blockDim(width, width);

    matrix_mul_vanilla << < gridDim, blockDim >> > (nDev, mDev, pDev, width);

    cudaMemcpy(pHost, pDev, matSize, cudaMemcpyDeviceToHost);

    cudaFree(pDev);
    cudaFree(nDev);
    cudaFree(mDev);
}
