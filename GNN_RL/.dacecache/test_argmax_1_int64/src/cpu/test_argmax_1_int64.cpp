/* DaCe AUTO-GENERATED FILE. DO NOT MODIFY */
#include <dace/dace.h>

struct _val_and_idx {
    int idx;
    long long val;
};
void __program_test_argmax_1_int64_internal(long long * __restrict__ A, int * __restrict__ __return)
{
    _val_and_idx *__tmp0 = new _val_and_idx DACE_ALIGN(64)[30];

    {
        
        
        {
            #pragma omp parallel for
            for (auto __i0 = 0; __i0 < 10; __i0 += 1) {
                for (auto __i2 = 0; __i2 < 3; __i2 += 1) {
                    {
                        _val_and_idx __init;

                        ///////////////////
                        // Tasklet code (_argmax_convert_)
                        __init = _val_and_idx { .idx = (- 1), .val = (- 9223372036854775808) };
                        ///////////////////

                        __tmp0[((3 * __i0) + __i2)] = __init;
                    }
                }
            }
        }
    }
    {
        
        
        {
            #pragma omp parallel for
            for (auto __i0 = 0; __i0 < 10; __i0 += 1) {
                for (auto __i1 = 0; __i1 < 5; __i1 += 1) {
                    for (auto __i2 = 0; __i2 < 3; __i2 += 1) {
                        {
                            long long __in = A[(((15 * __i0) + (3 * __i1)) + __i2)];
                            _val_and_idx __out;

                            ///////////////////
                            // Tasklet code (_argmax_reduce_)
                            __out = _val_and_idx { .idx = __i1, .val = __in };
                            ///////////////////

                            dace::wcr_custom<_val_and_idx>:: template reduce_atomic([] (const _val_and_idx& x, const _val_and_idx& y) { return _val_and_idx { .idx = ((x.val < y.val) ? y.idx : x.idx), .val = max(x.val, y.val) }; }, __tmp0 + ((3 * __i0) + __i2), __out);
                        }
                    }
                }
            }
        }
        {
            #pragma omp parallel for
            for (auto __i0 = 0; __i0 < 10; __i0 += 1) {
                for (auto __i1 = 0; __i1 < 3; __i1 += 1) {
                    {
                        _val_and_idx x = __tmp0[((3 * __i0) + __i1)];
                        int __out;

                        ///////////////////
                        // Tasklet code (_elementwise_)
                        __out = x.idx;
                        ///////////////////

                        __return[((3 * __i0) + __i1)] = __out;
                    }
                }
            }
        }
    }
    delete[] __tmp0;
}

DACE_EXPORTED void __program_test_argmax_1_int64(long long * __restrict__ A, int * __restrict__ __return)
{
    __program_test_argmax_1_int64_internal(A, __return);
}

DACE_EXPORTED int __dace_init_test_argmax_1_int64(long long * __restrict__ A, int * __restrict__ __return)
{
    int __result = 0;

    return __result;
}

DACE_EXPORTED void __dace_exit_test_argmax_1_int64(long long * __restrict__ A, int * __restrict__ __return)
{
}

