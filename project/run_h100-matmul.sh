#!/bin/bash

cuFILE=h100-matmul

nvcc -lcuda -O3 --use_fast_math -gencode arch=compute_90a,code=[sm_90a,compute_90a] --expt-relaxed-constexpr --std=c++20 $cuFILE.cu -o $cuFILE.out -lcublas

./$cuFILE.out