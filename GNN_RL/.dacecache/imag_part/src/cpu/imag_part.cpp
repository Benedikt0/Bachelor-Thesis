/* DaCe AUTO-GENERATED FILE. DO NOT MODIFY */
#include <dace/dace.h>


#include <chrono>
namespace dace { namespace perf { Report report; } }
#include <chrono>
void __program_imag_part_internal(dace::complex64 * __restrict__ A, float * __restrict__ B)
{
    dace::perf::report.reset();

    {
        
        
        {
            auto __dace_tbegin_0_0_0 = std::chrono::high_resolution_clock::now();
            #pragma omp parallel for
            for (auto __i0 = 0; __i0 < 24; __i0 += 1) {
                for (auto __i1 = 0; __i1 < 24; __i1 += 1) {
                    {
                        dace::complex64 __inp = A[((24 * __i0) + __i1)];
                        float __out;

                        ///////////////////
                        // Tasklet code (imag)
                        __out = imag(__inp);
                        ///////////////////

                        B[((24 * __i0) + __i1)] = __out;
                    }
                }
            }
            auto __dace_tend_0_0_0 = std::chrono::high_resolution_clock::now();
            std::chrono::duration<double, std::milli> __dace_tdiff_0_0_0 = __dace_tend_0_0_0 - __dace_tbegin_0_0_0;
            dace::perf::report.add("timer_Map imag_map", __dace_tdiff_0_0_0.count());
        }
    }
    dace::perf::report.save(".dacecache/imag_part/perf");
}

DACE_EXPORTED void __program_imag_part(dace::complex64 * __restrict__ A, float * __restrict__ B)
{
    __program_imag_part_internal(A, B);
}

DACE_EXPORTED int __dace_init_imag_part(dace::complex64 * __restrict__ A, float * __restrict__ B)
{
    int __result = 0;

    return __result;
}

DACE_EXPORTED void __dace_exit_imag_part(dace::complex64 * __restrict__ A, float * __restrict__ B)
{
}

