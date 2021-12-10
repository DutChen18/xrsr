#include "xrsr.h"
#include <stdio.h>
#include <inttypes.h>
#include <stdlib.h>

void dump(XRSRMAT *mat)
{
	for (int i = 0; i < 128; i++) {
		if (i < 64) {
			printf("lo_output(%d) <=", i);
		} else {
			printf("hi_output(%d) <=", i - 64);
		}
		int k = 0;
		for (int j = 0; j < 128; j++) {
			int l = 0;
			if (i < 64 && mat->elem[j].lo & (uint64_t) 1 << i) {
				l = 1;
			} else if (i >= 64 && mat->elem[j].hi & (uint64_t) 1 << (i - 64)) {
				l = 1;
			}
			if (l) {
				if (k) {
					printf(" XOR");
				} else {
					k = 1;
				}
				if (j < 64) {
					printf(" lo_input(%d)", j);
				} else {
					printf(" hi_input(%d)", j - 64);
				}
			}
		}
		if (!k) {
			printf(" 0");
		}
		printf(";\n");
	}
}

int main(int argc, char **argv)
{
	XRSR128 rng;
	XRSRMAT mat;
	uint64_t seed;

	seed = strtoull(argv[1], NULL, 0);
	xrsr_init();
	xrsr128_init(&rng, seed, 0);
	xrsrmat_init(&mat);
	xrsrmat_skip(&mat, &rng);	
	dump(&mat);

	return 0;
}
