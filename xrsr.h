#ifndef XRSR_H
#define XRSR_H
#include <stdint.h>

typedef struct xrsr128 XRSR128;
typedef struct xrsr128_mat XRSR128_MAT;

struct xrsr128 {
	uint64_t hi;
	uint64_t lo;
};

struct xrsr128_mat {
	XRSR128 elem[128];
};

void xrsr128_new(XRSR128 *seed);
void xrsr128_next(XRSR128 *seed);
void xrsr128_prev(XRSR128 *seed);
void xrsr128_comb(XRSR128 *seed, XRSR128_MAT *other);
void xrsr128_skip(XRSR128 *seed, XRSR128 *other);

void xrsr128_mat_new(XRSR128_MAT *seed);
void xrsr128_mat_next(XRSR128_MAT *mat);
void xrsr128_mat_prev(XRSR128_MAT *mat);
void xrsr128_mat_comb(XRSR128_MAT *mat, XRSR128_MAT *other);
void xrsr128_mat_skip(XRSR128_MAT *mat, XRSR128 *other);

void xrsr128_init(void);

#endif
