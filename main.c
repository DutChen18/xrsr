#include "xrsr.h"
#include <stdio.h>

int main(void)
{
	XRSR128 seed;
	XRSR128 skip;
	XRSR128_MAT skip_mat;

	seed.hi = 0;
	seed.lo = 10;
	skip.hi = 0;
	skip.lo = 10;

	xrsr128_init();
	xrsr128_mat_new(&skip_mat);
	xrsr128_mat_skip(&skip_mat, &skip);
	xrsr128_comb(&seed, &skip_mat);
	printf("%016llx%016llx", seed.hi, seed.lo);
	return 0;
}
