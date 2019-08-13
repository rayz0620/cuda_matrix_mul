//
// Created by rayz on 2019/8/13.
//

#include "utils.h"

void printMatrix(float *mat, size_t width) {
    printf("[\n");
    for (int i = 0; i < width; i++) {
        printf("[ ");
        for (int j = 0; j < width; j++) {
            printf("%.2f ", mat[i * width + j]);
        }
        printf("]\n");
    }
    printf("[\n\n");
}