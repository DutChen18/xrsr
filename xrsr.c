#include "xrsr.h"

static XRSRMAT skips[128];

static uint64_t mix64(uint64_t u64)
{
	u64 = (u64 ^ u64 >> 30) * XRSR_MIX1;
	u64 = (u64 ^ u64 >> 27) * XRSR_MIX2;
	return u64 ^ u64 >> 31;
}

static uint64_t fix64(uint64_t u64)
{
	u64 = (u64 ^ u64 >> 31 ^ u64 >> 62) * XRSR_MIX2_INVERSE;
	u64 = (u64 ^ u64 >> 27 ^ u64 >> 54) * XRSR_MIX1_INVERSE;
	return u64 ^ u64 >> 30 ^ u64 >> 60;
}

static uint64_t rol64(uint64_t u64, int n)
{
	return u64 << n | u64 >> (64 - n);
}

void xrsr128_init(XRSR128 *rng, uint64_t lo, uint64_t hi)
{
	rng->lo = lo;
	rng->hi = hi;
}

void xrsr128_seed(XRSR128 *rng, uint64_t seed)
{
	rng->lo = mix64(seed ^ XRSR_SILVER_RATIO);
	rng->hi = mix64(seed + XRSR_GOLDEN_RATIO);
}

void xrsr128_next(XRSR128 *rng)
{
	rng->hi = rng->hi ^ rng->lo;
	rng->lo = rol64(rng->lo, 49) ^ rng->hi ^ (rng->hi << 21);
	rng->hi = rol64(rng->hi, 28);
}

void xrsr128_prev(XRSR128 *rng)
{
	rng->hi = rol64(rng->hi, 36);
	rng->lo = rol64(rng->lo ^ rng->hi ^ (rng->hi << 21), 15);
	rng->hi = rng->hi ^ rng->lo;
}

void xrsr128_comb(XRSR128 *rng, XRSRMAT *other)
{
	XRSR128 tmp = *rng;
	xrsr128_init(rng, 0, 0);
	for (int i = 0; i < 64; i++) {
		uint64_t mask = -(tmp.lo >> i & 1);
		rng->hi ^= other->elem[i].hi & mask;
		rng->lo ^= other->elem[i].lo & mask;
	}
	for (int j = 0; j < 64; j++) {
		uint64_t mask = -(tmp.hi >> j & 1);
		rng->hi ^= other->elem[j + 64].hi & mask;
		rng->lo ^= other->elem[j + 64].lo & mask;
	}
}

void xrsr128_skip(XRSR128 *rng, XRSR128 *other)
{
	for (int i = 0; i < 64; i++)
		if (other->lo & 1ULL << i)
			xrsr128_comb(rng, &skips[i]);
	for (int j = 0; j < 64; j++)
		if (other->hi & 1ULL << j)
			xrsr128_comb(rng, &skips[j + 64]);
}

void xrsrmat_init(XRSRMAT *mat)
{
	for (int i = 0; i < 64; i++)
		xrsr128_init(&mat->elem[i], 1ULL << i, 0);
	for (int j = 0; j < 64; j++)
		xrsr128_init(&mat->elem[j + 64], 0, 1ULL << j);
}

void xrsrmat_next(XRSRMAT *mat)
{
	for (int i = 0; i < 128; i++)
		xrsr128_next(&mat->elem[i]);
}

void xrsrmat_prev(XRSRMAT *mat)
{
	for (int i = 0; i < 128; i++)
		xrsr128_prev(&mat->elem[i]);
}

void xrsrmat_comb(XRSRMAT *mat, XRSRMAT *other)
{
	for (int i = 0; i < 128; i++)
		xrsr128_comb(&mat->elem[i], other);
}

void xrsrmat_skip(XRSRMAT *mat, XRSR128 *other)
{
	for (int i = 0; i < 128; i++)
		xrsr128_skip(&mat->elem[i], other);
}

void xrsr_init(void)
{
	xrsrmat_init(&skips[0]);
	xrsrmat_next(&skips[0]);
	for (int i = 1; i < 128; i++) {
		skips[i] = skips[i - 1];
		xrsrmat_comb(&skips[i], &skips[i - 1]);
	}
}

uint64_t xrsr_lo2s(uint64_t lo)
{
	return fix64(lo) ^ XRSR_SILVER_RATIO;
}

uint64_t xrsr_hi2s(uint64_t hi)
{
	return fix64(hi) - XRSR_GOLDEN_RATIO;
}
