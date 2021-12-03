#include "xrsr.h"
#include <stdio.h>
#include <inttypes.h>

int main(void)
{
	XRSR128 rng;
	XRSRMAT mat;
	xrsr_init();

	xrsr128_init(&rng, 10, 0);
	xrsrmat_init(&mat);
	xrsrmat_skip(&mat, &rng);
	xrsr128_init(&rng, 10, 0);
	xrsr128_comb(&rng, &mat);

	printf("%016" PRIx64, rng.hi);
	printf("%016" PRIx64, rng.lo);
	printf("\n");

	xrsr128_seed(&rng, 123456);
	printf("%" PRIu64 "\n", xrsr_lo2s(rng.lo));
	printf("%" PRIu64 "\n", xrsr_hi2s(rng.hi));
	return 0;
}
