__device__ void skip(XRSR128 *rng) {
	XRSR128 tmp = *rng;
	xrsr128_init(rng, 0, 0);
	if (tmp.lo & (uint64_t) 1 << 0) {
		rng->hi ^= 0xbea1cb0e235828b3ULL;
		rng->lo ^= 0x9729b1f34956cf87ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 1) {
		rng->hi ^= 0x30d9b3a637b8cc30ULL;
		rng->lo ^= 0x69438152e6e4137bULL;
	}
	if (tmp.lo & (uint64_t) 1 << 2) {
		rng->hi ^= 0xef9ba2a91df9826aULL;
		rng->lo ^= 0x54d7aa11544d7f0dULL;
	}
	if (tmp.lo & (uint64_t) 1 << 3) {
		rng->hi ^= 0x6b77a2a23f77b567ULL;
		rng->lo ^= 0x184dd2690f183868ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 4) {
		rng->hi ^= 0x8ee1a0478680083aULL;
		rng->lo ^= 0x66cb946dcd298822ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 5) {
		rng->hi ^= 0x7396c0e3bb0fca9aULL;
		rng->lo ^= 0x715a6f94782b3af2ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 6) {
		rng->hi ^= 0x9386458f6709c14aULL;
		rng->lo ^= 0xa57b30c71d13dd35ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 7) {
		rng->hi ^= 0x77b6ca6dbf1381b0ULL;
		rng->lo ^= 0x860757166f353f18ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 8) {
		rng->hi ^= 0xe98f1e3a0e68ee6bULL;
		rng->lo ^= 0x2eb84f434773c0f0ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 9) {
		rng->hi ^= 0x48a8feb481412058ULL;
		rng->lo ^= 0x6ec4a811d3f5e13aULL;
	}
	if (tmp.lo & (uint64_t) 1 << 10) {
		rng->hi ^= 0x2acb074fd1528435ULL;
		rng->lo ^= 0x310cb9f1bb763692ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 11) {
		rng->hi ^= 0x07cfecc893741e1eULL;
		rng->lo ^= 0x54445aa20b269e02ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 12) {
		rng->hi ^= 0x175f9549f77a39adULL;
		rng->lo ^= 0xe9066c93af9dfdb0ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 13) {
		rng->hi ^= 0x4426c48954682e38ULL;
		rng->lo ^= 0x62c2b5e8e0d69c9bULL;
	}
	if (tmp.lo & (uint64_t) 1 << 14) {
		rng->hi ^= 0x06eeb208c90ce28cULL;
		rng->lo ^= 0x5e5ef7e00ed35ea9ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 15) {
		rng->hi ^= 0xb20ad12841018041ULL;
		rng->lo ^= 0xb1b3fcfb522ae01bULL;
	}
	if (tmp.lo & (uint64_t) 1 << 16) {
		rng->hi ^= 0xf94466f60cc9cfd9ULL;
		rng->lo ^= 0xfc7cf254b6da0494ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 17) {
		rng->hi ^= 0x7420dd36650b4e03ULL;
		rng->lo ^= 0xe6ee807dd4f693c4ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 18) {
		rng->hi ^= 0xa4d5e84842496c56ULL;
		rng->lo ^= 0x7ae8e208f7190436ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 19) {
		rng->hi ^= 0x0a1651d2513089caULL;
		rng->lo ^= 0xd1ea97de107b32c9ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 20) {
		rng->hi ^= 0xfa7bfb681850a9a3ULL;
		rng->lo ^= 0x5f5291a6283d5e3bULL;
	}
	if (tmp.lo & (uint64_t) 1 << 21) {
		rng->hi ^= 0xef063377f32c1b27ULL;
		rng->lo ^= 0xe075e04ebb0cd1a4ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 22) {
		rng->hi ^= 0x8ee415201f9ac0d7ULL;
		rng->lo ^= 0x4a94290c864c26abULL;
	}
	if (tmp.lo & (uint64_t) 1 << 23) {
		rng->hi ^= 0x59d29bb6ecd74a35ULL;
		rng->lo ^= 0x5e5ddf9a3ab76eccULL;
	}
	if (tmp.lo & (uint64_t) 1 << 24) {
		rng->hi ^= 0x70d37d8062ede900ULL;
		rng->lo ^= 0x80b8f5bd4f4296e2ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 25) {
		rng->hi ^= 0xc325d770d103a272ULL;
		rng->lo ^= 0x14babf1d5d7b1bf1ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 26) {
		rng->hi ^= 0x1386ef197be907e6ULL;
		rng->lo ^= 0xfe7068c56f7362b3ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 27) {
		rng->hi ^= 0x378500ecc90a9cf1ULL;
		rng->lo ^= 0xd22c04459a7949c0ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 28) {
		rng->hi ^= 0xfe49609deaa81ae4ULL;
		rng->lo ^= 0x45f33f678cfa46dfULL;
	}
	if (tmp.lo & (uint64_t) 1 << 29) {
		rng->hi ^= 0xc8df216f835c4cdcULL;
		rng->lo ^= 0x0cbf3a8b7a964ff5ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 30) {
		rng->hi ^= 0xadf96f98af5a1ec9ULL;
		rng->lo ^= 0xb0c0a793d68846d9ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 31) {
		rng->hi ^= 0x814f25287c709c9bULL;
		rng->lo ^= 0x148a61faa04a5b72ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 32) {
		rng->hi ^= 0xe0165b6fcb8e09f0ULL;
		rng->lo ^= 0xa500b82a5dd0442fULL;
	}
	if (tmp.lo & (uint64_t) 1 << 33) {
		rng->hi ^= 0xa559a881ba91e661ULL;
		rng->lo ^= 0x4ab3bd9ea43a43fcULL;
	}
	if (tmp.lo & (uint64_t) 1 << 34) {
		rng->hi ^= 0x828686ae4bf3b1e7ULL;
		rng->lo ^= 0x10a26e2069b47539ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 35) {
		rng->hi ^= 0x354a4970c3798857ULL;
		rng->lo ^= 0x6617a2470d9126f2ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 36) {
		rng->hi ^= 0x627399b8aeff223bULL;
		rng->lo ^= 0xc8cb1f7ff71d7799ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 37) {
		rng->hi ^= 0xf5dc48949583aab8ULL;
		rng->lo ^= 0xf5da697d4650b5b4ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 38) {
		rng->hi ^= 0x20b68ce2799464a4ULL;
		rng->lo ^= 0xaed50dfa8e1f2c0aULL;
	}
	if (tmp.lo & (uint64_t) 1 << 39) {
		rng->hi ^= 0x6ce16fa557508398ULL;
		rng->lo ^= 0x00621d3359224c5dULL;
	}
	if (tmp.lo & (uint64_t) 1 << 40) {
		rng->hi ^= 0xf5437e0d460fb080ULL;
		rng->lo ^= 0xdd0d3cab187ad8cdULL;
	}
	if (tmp.lo & (uint64_t) 1 << 41) {
		rng->hi ^= 0x5a6784625179eb67ULL;
		rng->lo ^= 0x0a7dff3ceca8340aULL;
	}
	if (tmp.lo & (uint64_t) 1 << 42) {
		rng->hi ^= 0x5bada798d37bf1daULL;
		rng->lo ^= 0x66c0ea498ae30744ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 43) {
		rng->hi ^= 0xf49f3202af8b828dULL;
		rng->lo ^= 0x9649d0792a7c0f4dULL;
	}
	if (tmp.lo & (uint64_t) 1 << 44) {
		rng->hi ^= 0x06a6f88edfd5f696ULL;
		rng->lo ^= 0xdc21a06b0df2c4d7ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 45) {
		rng->hi ^= 0xa958de14f8755f8eULL;
		rng->lo ^= 0x5c36949458eb5ff4ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 46) {
		rng->hi ^= 0xf41b985d37852acaULL;
		rng->lo ^= 0x67840ae2d8980411ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 47) {
		rng->hi ^= 0x0889eabc540cb5fcULL;
		rng->lo ^= 0x1002322c32d607c3ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 48) {
		rng->hi ^= 0x2df8ffea481d069aULL;
		rng->lo ^= 0xd08621bb396c6752ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 49) {
		rng->hi ^= 0x323e4d1e502fcc2eULL;
		rng->lo ^= 0xd677a3a5fbcf0701ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 50) {
		rng->hi ^= 0x2a1b5a014f1e28d6ULL;
		rng->lo ^= 0x8fbc61e11fb583e8ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 51) {
		rng->hi ^= 0x79920c49fc2295feULL;
		rng->lo ^= 0x1eb45493f04b9382ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 52) {
		rng->hi ^= 0xa6f2980b77654919ULL;
		rng->lo ^= 0xd5706cc1e0b7274eULL;
	}
	if (tmp.lo & (uint64_t) 1 << 53) {
		rng->hi ^= 0x49242973f0d38bc5ULL;
		rng->lo ^= 0xbaae62ca0da195eeULL;
	}
	if (tmp.lo & (uint64_t) 1 << 54) {
		rng->hi ^= 0x5bb41874775c1cf5ULL;
		rng->lo ^= 0x9a1086f162376218ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 55) {
		rng->hi ^= 0xa1c27475a00c0d56ULL;
		rng->lo ^= 0x5182ac806d5cecefULL;
	}
	if (tmp.lo & (uint64_t) 1 << 56) {
		rng->hi ^= 0xfa8abd84ca3bf283ULL;
		rng->lo ^= 0xfb2ef04531097121ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 57) {
		rng->hi ^= 0xca58f43d9cb60c51ULL;
		rng->lo ^= 0xac19179c3d689655ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 58) {
		rng->hi ^= 0x4a258cc0cdea0d50ULL;
		rng->lo ^= 0xed43af5dd7af7accULL;
	}
	if (tmp.lo & (uint64_t) 1 << 59) {
		rng->hi ^= 0xcc1823d552f2c042ULL;
		rng->lo ^= 0x468128efb2d5f96cULL;
	}
	if (tmp.lo & (uint64_t) 1 << 60) {
		rng->hi ^= 0xedc3c15e60d7a055ULL;
		rng->lo ^= 0xb25a4a5386305762ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 61) {
		rng->hi ^= 0x9b3edfebd022f75fULL;
		rng->lo ^= 0x29041dcb27c38d24ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 62) {
		rng->hi ^= 0xb4a161f08d70845aULL;
		rng->lo ^= 0xc64435382757e8c5ULL;
	}
	if (tmp.lo & (uint64_t) 1 << 63) {
		rng->hi ^= 0x1476f5e55753c1e6ULL;
		rng->lo ^= 0x66d8209886988ee9ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 0) {
		rng->hi ^= 0x32b37ba8ebcebd21ULL;
		rng->lo ^= 0x19c7c3b6a2248bf0ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 1) {
		rng->hi ^= 0xac20e08487f30521ULL;
		rng->lo ^= 0x04585f12f71a7a7eULL;
	}
	if (tmp.hi & (uint64_t) 1 << 2) {
		rng->hi ^= 0x3a04800b2f57d6c2ULL;
		rng->lo ^= 0x4361d754ffc3ef3aULL;
	}
	if (tmp.hi & (uint64_t) 1 << 3) {
		rng->hi ^= 0x9116ff8703a2fde4ULL;
		rng->lo ^= 0x94781ed65ce4f05cULL;
	}
	if (tmp.hi & (uint64_t) 1 << 4) {
		rng->hi ^= 0xc8bf201295aa0187ULL;
		rng->lo ^= 0x2dada86c4c4116a0ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 5) {
		rng->hi ^= 0x169d177d72e1cf6eULL;
		rng->lo ^= 0x6190775f0a84b841ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 6) {
		rng->hi ^= 0x6dc7ddf8aef47810ULL;
		rng->lo ^= 0x5bfa7ddac8c92335ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 7) {
		rng->hi ^= 0xb2892a43430ef64eULL;
		rng->lo ^= 0xe0879f073b8390aaULL;
	}
	if (tmp.hi & (uint64_t) 1 << 8) {
		rng->hi ^= 0x935baac54121cfc4ULL;
		rng->lo ^= 0x9f0c3ea0adb5a286ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 9) {
		rng->hi ^= 0x0ea8518bf879a5efULL;
		rng->lo ^= 0xf664d22a0895a881ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 10) {
		rng->hi ^= 0x8ba56f98f2cc4f7aULL;
		rng->lo ^= 0xbf4ed50a596ac088ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 11) {
		rng->hi ^= 0xeef21af06e0a0185ULL;
		rng->lo ^= 0xb003a9c42a64947fULL;
	}
	if (tmp.hi & (uint64_t) 1 << 12) {
		rng->hi ^= 0x9fb641777d5b0d1eULL;
		rng->lo ^= 0x63c0cd54965137beULL;
	}
	if (tmp.hi & (uint64_t) 1 << 13) {
		rng->hi ^= 0x0a06c702e598e322ULL;
		rng->lo ^= 0xfbeaf3c81b304e89ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 14) {
		rng->hi ^= 0x1a5ba9c2663dd33fULL;
		rng->lo ^= 0x37d7f24be68d314fULL;
	}
	if (tmp.hi & (uint64_t) 1 << 15) {
		rng->hi ^= 0xbb27059694afd248ULL;
		rng->lo ^= 0x8d1ca37e6d9802f0ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 16) {
		rng->hi ^= 0xfa53f67a95deccedULL;
		rng->lo ^= 0x84e7a1db22563dc3ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 17) {
		rng->hi ^= 0xf6458473367f4bdaULL;
		rng->lo ^= 0xbb13ff967e38bc8cULL;
	}
	if (tmp.hi & (uint64_t) 1 << 18) {
		rng->hi ^= 0x6603c03ffc16d685ULL;
		rng->lo ^= 0x4f459c09fe3c94c6ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 19) {
		rng->hi ^= 0x085404637907b059ULL;
		rng->lo ^= 0xbba841c7d6560f22ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 20) {
		rng->hi ^= 0xbf5e11dcbb585d38ULL;
		rng->lo ^= 0xaa8bd2b5b259a49bULL;
	}
	if (tmp.hi & (uint64_t) 1 << 21) {
		rng->hi ^= 0x8be8ba0509a9e3b1ULL;
		rng->lo ^= 0xf4077d9579ed71c4ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 22) {
		rng->hi ^= 0x6f1ee9bba817ede4ULL;
		rng->lo ^= 0x5a56ce904aadad43ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 23) {
		rng->hi ^= 0x64bca8c9658ea667ULL;
		rng->lo ^= 0x85bd0a5b2b1f613eULL;
	}
	if (tmp.hi & (uint64_t) 1 << 24) {
		rng->hi ^= 0x9af56039ed5b676bULL;
		rng->lo ^= 0x7e8ced804a7bf3c1ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 25) {
		rng->hi ^= 0x605b50115c8471b7ULL;
		rng->lo ^= 0xa2ec7b2e7c4cbcc9ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 26) {
		rng->hi ^= 0x368afd852e5264eaULL;
		rng->lo ^= 0xec3d9bb94636cd36ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 27) {
		rng->hi ^= 0xe492beffe8642a2bULL;
		rng->lo ^= 0x76982087ceeeab85ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 28) {
		rng->hi ^= 0xb5395b14c2c37815ULL;
		rng->lo ^= 0x4801e76ae6fd6cbbULL;
	}
	if (tmp.hi & (uint64_t) 1 << 29) {
		rng->hi ^= 0xd9333173d2a5871eULL;
		rng->lo ^= 0x8d9d02574584a4bbULL;
	}
	if (tmp.hi & (uint64_t) 1 << 30) {
		rng->hi ^= 0x4b407a8076b89d2aULL;
		rng->lo ^= 0x4661b6902fc7d7beULL;
	}
	if (tmp.hi & (uint64_t) 1 << 31) {
		rng->hi ^= 0x0e50bff9ddccb272ULL;
		rng->lo ^= 0x570906b495b01afbULL;
	}
	if (tmp.hi & (uint64_t) 1 << 32) {
		rng->hi ^= 0xa05ac64529d282cfULL;
		rng->lo ^= 0xb5f8c537fd811c76ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 33) {
		rng->hi ^= 0x4796788837961b7eULL;
		rng->lo ^= 0x8ceaa8fd64633a67ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 34) {
		rng->hi ^= 0x826090d1fd6087b9ULL;
		rng->lo ^= 0x034ce4ff7e425e42ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 35) {
		rng->hi ^= 0xce777c9e109b7000ULL;
		rng->lo ^= 0x18200d9679cc6824ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 36) {
		rng->hi ^= 0x7f997981adf1dbf1ULL;
		rng->lo ^= 0xe7e04d380470b92cULL;
	}
	if (tmp.hi & (uint64_t) 1 << 37) {
		rng->hi ^= 0xfa5f51fac197f6abULL;
		rng->lo ^= 0x03f57d6bfc05bba6ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 38) {
		rng->hi ^= 0x813e4a988e6ca307ULL;
		rng->lo ^= 0xc22968d5e4ce50c7ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 39) {
		rng->hi ^= 0xa39f5ef8fd150cddULL;
		rng->lo ^= 0xe1c2bc69fe501b1eULL;
	}
	if (tmp.hi & (uint64_t) 1 << 40) {
		rng->hi ^= 0x8cb69e62422cb70eULL;
		rng->lo ^= 0xb4c2fbe82e04a84eULL;
	}
	if (tmp.hi & (uint64_t) 1 << 41) {
		rng->hi ^= 0x694ac8fda0855c93ULL;
		rng->lo ^= 0x87c0cdc2253a7269ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 42) {
		rng->hi ^= 0xabaff55f08adaf63ULL;
		rng->lo ^= 0x066b779d29655731ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 43) {
		rng->hi ^= 0x5fea359b6c9d1814ULL;
		rng->lo ^= 0x97bd79af0dfc9c0aULL;
	}
	if (tmp.hi & (uint64_t) 1 << 44) {
		rng->hi ^= 0x17e0a1707ea1201bULL;
		rng->lo ^= 0xf8a33459217404a2ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 45) {
		rng->hi ^= 0x00122ea1784a4d19ULL;
		rng->lo ^= 0x00dd88bb0742b4e9ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 46) {
		rng->hi ^= 0xa81623c9278d8a0dULL;
		rng->lo ^= 0xfc8078cedc62f651ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 47) {
		rng->hi ^= 0xb5a03428ac00fd10ULL;
		rng->lo ^= 0x15cb73b6cbbff9d3ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 48) {
		rng->hi ^= 0x308c609078741ef2ULL;
		rng->lo ^= 0x64ecd8db5c9ff721ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 49) {
		rng->hi ^= 0xb3afddc877a91684ULL;
		rng->lo ^= 0xe8dd2d0bf421b74fULL;
	}
	if (tmp.hi & (uint64_t) 1 << 50) {
		rng->hi ^= 0xc4508328c345c028ULL;
		rng->lo ^= 0x566f3dbbc74afc1aULL;
	}
	if (tmp.hi & (uint64_t) 1 << 51) {
		rng->hi ^= 0x7b9d7f4dad12a68aULL;
		rng->lo ^= 0xf349042186423b7cULL;
	}
	if (tmp.hi & (uint64_t) 1 << 52) {
		rng->hi ^= 0x43f9aade34df2e55ULL;
		rng->lo ^= 0x6841f59bfec9c94bULL;
	}
	if (tmp.hi & (uint64_t) 1 << 53) {
		rng->hi ^= 0xc532c3fa0aadfa0bULL;
		rng->lo ^= 0xaffec201fcb72a07ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 54) {
		rng->hi ^= 0xdd894f38e24ec479ULL;
		rng->lo ^= 0x6925e83b393340c1ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 55) {
		rng->hi ^= 0x9815571c6837338cULL;
		rng->lo ^= 0x08ae87e6f15032e1ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 56) {
		rng->hi ^= 0x2e34ccc955545d0dULL;
		rng->lo ^= 0x380e377d081e988aULL;
	}
	if (tmp.hi & (uint64_t) 1 << 57) {
		rng->hi ^= 0xabb6695499088738ULL;
		rng->lo ^= 0xfa489750820c64b1ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 58) {
		rng->hi ^= 0xd1fc977813aa97f6ULL;
		rng->lo ^= 0x8e229c3a401cc040ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 59) {
		rng->hi ^= 0xf33a77ab9e804e16ULL;
		rng->lo ^= 0x84fc15f114c8ffd5ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 60) {
		rng->hi ^= 0x84774bf7aa07a202ULL;
		rng->lo ^= 0x5cbb3810d96db47aULL;
	}
	if (tmp.hi & (uint64_t) 1 << 61) {
		rng->hi ^= 0xabd2e2e4517a3793ULL;
		rng->lo ^= 0x61ba8c6be722c83bULL;
	}
	if (tmp.hi & (uint64_t) 1 << 62) {
		rng->hi ^= 0xcb76df4453ed7bf3ULL;
		rng->lo ^= 0xf958d44c7154bca9ULL;
	}
	if (tmp.hi & (uint64_t) 1 << 63) {
		rng->hi ^= 0x4955857644270dc4ULL;
		rng->lo ^= 0xba2b39a94a63bc6fULL;
	}
}
