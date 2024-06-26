cmake_minimum_required(VERSION 3.14)
project(hw1 LANGUAGES C CXX)

find_package(BLAS REQUIRED)

# Run the full set of tests
option(ALL_SIZES "Test an extended set of sizes; will take more CPU time." OFF)

# On Perlmutter -- 3.5 GHz * 4 vector width * 2 vector pipelines * 2 flops for FMA = 56 GF/s
set(MAX_SPEED 56 CACHE STRING "The max speed of the CPU in GF/s")

# Group number
set(GROUP_NO 00 CACHE STRING "Your group number (two digits)")

# Packaging system
if (NOT ${GROUP_NO} STREQUAL 00)
    set(CPACK_GENERATOR TGZ)
    set(CPACK_PACKAGE_FILE_NAME "cs267Group${GROUP_NO}_hw1")
    install(FILES dgemm-blocked.c DESTINATION .)
    install(FILES ${CPACK_PACKAGE_FILE_NAME}.pdf DESTINATION .)
    include(CPack)
endif ()

# We require the GNU compiler for this assignment.
if (NOT "${CMAKE_C_COMPILER_ID}" STREQUAL "GNU")
    set(Prg-Intel "PrgEnv-intel")
    set(Prg-Clang "PrgEnv-cray")
    message(WARNING
            "Must use GNU Compiler for submission. Make sure you ran:\n"
            "module swap ${Prg-${CMAKE_C_COMPILER_ID}} PrgEnv-gnu")
endif ()

# Common library target for benchmarking.
add_library(benchmark OBJECT benchmark.cpp)
target_compile_definitions(benchmark PRIVATE MAX_SPEED=${MAX_SPEED} $<$<BOOL:${ALL_SIZES}>:ALL_SIZES>)
target_compile_features(benchmark PRIVATE cxx_std_11)

foreach (BENCHMARK IN ITEMS naive blocked blas)
    # Create benchmarking executable
    add_executable(benchmark-${BENCHMARK} dgemm-${BENCHMARK}.c)
    target_link_libraries(benchmark-${BENCHMARK} PRIVATE benchmark ${BLAS_LIBRARIES})
    target_compile_features(benchmark-${BENCHMARK} PRIVATE c_std_11 c_restrict)
    target_compile_options(benchmark-${BENCHMARK} PRIVATE -Wall -pedantic -march=znver1)

    # Generate job script
    configure_file(job.in job-${BENCHMARK})
endforeach ()
