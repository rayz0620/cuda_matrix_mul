#include <iostream>

#include "matrixmul/matrix_mul.h"

int main() {

    float *m, *n, *p;
    size_t width = 16;

    MatrixMulVanilla(m, n, p, width);

    return 0;
}