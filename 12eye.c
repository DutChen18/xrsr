#include "xrsr.h"
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

int main(int argc, char **argv)
{
	XRSR128 rng;
	XRSR128 skip;
	uint64_t seed;

	seed = strtoull(argv[1], NULL, 0);
	xrsr_init();
	xrsr_seed(&rng, seed);
	xrsr128_init(&skip, 760, 0);
	xrsr128_skip(&rng, &skip);

	for (int i = 0; i < 12; i++) {
		uint64_t r = xrsr_long(&rng);
		float f = (r >> 40) * 5.9604645e-8;
		printf("%f\n", (double) f);
	}
	
	return 0;
}
