#include <stdlib.h>
#include "copy3d.h"

int main(int argc, char** argv) {
  int K = 42;
  int M = 42;
  int N = 42;
  float * __restrict__ A = (float*) calloc(((K * M) * N), sizeof(float));
  float * __restrict__ B = (float*) calloc(((K * M) * N), sizeof(float));

  __dace_init_copy3d(A, B, K, M, N);
  __program_copy3d(A, B, K, M, N);
  __dace_exit_copy3d(A, B, K, M, N);

  free(A);
  free(B);
  return 0;
}
