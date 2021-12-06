#include "xrsr.h"
#include "skip.cu"
#include <stdint.h>
#include <stdio.h>
#include <inttypes.h>
#include <time.h>

#ifndef GRID_SIZE
#define GRID_SIZE ((uint64_t) 1 << 32)
#endif

__managed__ uint64_t results[256];
__managed__ uint64_t count;

__global__ void filter(uint64_t start, uint64_t size)
{
	uint64_t index = (uint64_t) blockIdx.x * blockDim.x + threadIdx.x;
	uint64_t stride = (uint64_t) blockDim.x * gridDim.x;
	uint64_t i = index;
	while (i < size) {
		XRSR128 rng;
		xrsr_seed(&rng, start + i);
		skip(&rng);
		for (int j = 0; j < 12; j++)
			if (xrsr_long(&rng) < 16602070326045573120ULL)
				goto end;
		results[atomicAdd((unsigned long long *) &count, 1)] = start + i;
	end:
		i += stride;
	}
}

void run(uint64_t start, uint64_t size)
{
	uint64_t blockSize = 256;
	uint64_t numBlocks = (size + blockSize - 1) / blockSize / 16;

	count = 0;
	filter<<<numBlocks, blockSize>>>(start, size);
	cudaDeviceSynchronize();

	for (uint64_t i = 0; i < count; i++)
		printf("%" PRIu64 "\n", results[i]);
}

int main(int argc, char **argv)
{
	uint64_t i = 0;
	clock_t start = clock();
	do {
		run(i, GRID_SIZE);
		i += GRID_SIZE;
		clock_t end = clock();
		double delta = (double) (end - start) / CLOCKS_PER_SEC;
		double per_sec = GRID_SIZE / delta;
		double time_left = -i / per_sec;
		printf("%.2fB/s %.2fh\n", per_sec / 1000000000.0, time_left / 3600.0);
		start = end;
	} while (i != 0);
	return 0;
}
