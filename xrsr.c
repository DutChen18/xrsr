#include "xrsr.h"

static XRSR128_MAT skips[128];

static uint64_t rol64(uint64_t u, int n)
{
	return u << n | u >> (64 - n);
}

static int get128(XRSR128 *seed, int n)
{
	if (n < 64) {
		return (seed->lo >> n) & 1;
	} else {
		return (seed->hi >> (n - 64)) & 1;
	}
}

static void set128(XRSR128 *seed, int n)
{
	if (n < 64) {
		seed->lo |= 1ULL << n;
	} else {
		seed->hi |= 1ULL << (n - 64);
	}
}

void xrsr128_new(XRSR128 *seed)
{
	seed->hi = 0;
	seed->lo = 0;
}

void xrsr128_next(XRSR128 *seed)
{
	seed->hi = seed->hi ^ seed->lo;
	seed->lo = rol64(seed->lo, 49) ^ seed->hi ^ (seed->hi << 21);
	seed->hi = rol64(seed->hi, 28);
}

void xrsr128_prev(XRSR128 *seed)
{
	seed->hi = rol64(seed->hi, 36);
	seed->lo = rol64(seed->lo ^ seed->hi ^ (seed->hi << 21), 15);
	seed->hi = seed->hi ^ seed->lo;
}

void xrsr128_comb(XRSR128 *seed, XRSR128_MAT *other)
{
	XRSR128 result;
	xrsr128_new(&result);
	for (int i = 0; i < 128; i++) {
		uint64_t mask = 0ULL - get128(seed, i);
		result.hi ^= other->elem[i].hi & mask;
		result.lo ^= other->elem[i].lo & mask;
	}
	*seed = result;
}

void xrsr128_skip(XRSR128 *seed, XRSR128 *other)
{
	for (int i = 0; i < 128; i++)
		if (get128(other, i))
			xrsr128_comb(seed, &skips[i]);
}

void xrsr128_mat_new(XRSR128_MAT *mat)
{
	for (int i = 0; i < 128; i++) {
		xrsr128_new(&mat->elem[i]);
		set128(&mat->elem[i], i);
	}
}

void xrsr128_mat_next(XRSR128_MAT *mat)
{
	for (int i = 0; i < 128; i++)
		xrsr128_next(&mat->elem[i]);
}

void xrsr128_mat_prev(XRSR128_MAT *mat)
{
	for (int i = 0; i < 128; i++)
		xrsr128_prev(&mat->elem[i]);
}

void xrsr128_mat_comb(XRSR128_MAT *mat, XRSR128_MAT *other)
{
	for (int i = 0; i < 128; i++)
		xrsr128_comb(&mat->elem[i], other);
}

void xrsr128_mat_skip(XRSR128_MAT *mat, XRSR128 *other)
{
	for (int i = 0; i < 128; i++)
		xrsr128_skip(&mat->elem[i], other);
}

void xrsr128_init(void)
{
	xrsr128_mat_new(&skips[0]);
	xrsr128_mat_next(&skips[0]);
	for (int i = 1; i < 128; i++) {
		skips[i] = skips[i - 1];
		xrsr128_mat_comb(&skips[i], &skips[i - 1]);
	}
}
