#include "xrsr.h"
#include <stdio.h>

int main(void)
{
	XRSR128 seed;
	XRSR128 skip;

	seed.hi = 0;
	seed.lo = 10;
	skip.hi = 0;
	skip.lo = 10;

	xrsr128_init();
	xrsr128_skip(&seed, &skip);
	printf("%016llx%016llx", seed.hi, seed.lo);
	return 0;
}
