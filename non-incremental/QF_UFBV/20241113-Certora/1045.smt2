(set-info :smt-lib-version 2.6)
(set-logic QF_UFBV)
(set-info :source |
Generated by: Certora
Generated on: 2024-01-16
Generator: The Certora Prover
Application: Web3 security
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)
(declare-fun x162 () Bool)
(declare-fun x240 () (_ BitVec 256))
(declare-fun x208 () (_ BitVec 256))
(declare-fun x271 () (_ BitVec 256))
(declare-fun x127 () Bool)
(declare-fun x122 () (_ BitVec 256))
(declare-fun x178 () (_ BitVec 256))
(declare-fun x75 () Bool)
(declare-fun x173 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x156 () (_ BitVec 256))
(declare-fun x157 () Bool)
(declare-fun x177 () (_ BitVec 256))
(declare-fun x118 () (_ BitVec 256))
(declare-fun x202 () (_ BitVec 256))
(declare-fun x62 () (_ BitVec 256))
(declare-fun x121 () Bool)
(declare-fun x10 () (_ BitVec 256))
(declare-fun x160 () Bool)
(declare-fun x88 () (_ BitVec 256))
(declare-fun x213 () (_ BitVec 256))
(declare-fun x176 () (_ BitVec 256))
(declare-fun x154 () (_ BitVec 256))
(declare-fun x103 () Bool)
(declare-fun x51 () (_ BitVec 256))
(declare-fun x19 ((_ BitVec 256) (_ BitVec 256)) (_ BitVec 256))
(declare-fun x190 () (_ BitVec 256))
(declare-fun x223 () Bool)
(declare-fun x67 ((_ BitVec 256) (_ BitVec 256)) (_ BitVec 256))
(declare-fun x87 () Bool)
(declare-fun x204 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x163 () (_ BitVec 256))
(declare-fun x247 () Bool)
(declare-fun x63 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x186 () Bool)
(declare-fun x43 () (_ BitVec 256))
(declare-fun x148 () Bool)
(declare-fun x174 () (_ BitVec 256))
(declare-fun x234 () Bool)
(declare-fun x129 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x249 () Bool)
(declare-fun x82 () Bool)
(declare-fun x143 () Bool)
(declare-fun x259 () Bool)
(declare-fun x265 () Bool)
(declare-fun x102 () (_ BitVec 256))
(declare-fun x280 () (_ BitVec 256))
(declare-fun x287 () (_ BitVec 256))
(declare-fun x65 () (_ BitVec 256))
(declare-fun x69 () (_ BitVec 256))
(declare-fun x235 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x214 () (_ BitVec 256))
(declare-fun x12 () (_ BitVec 256))
(declare-fun x125 () (_ BitVec 256))
(declare-fun x72 () (_ BitVec 256))
(declare-fun x133 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x53 () (_ BitVec 256))
(declare-fun x196 () (_ BitVec 256))
(declare-fun x61 () (_ BitVec 256))
(declare-fun x60 () Bool)
(declare-fun x107 () (_ BitVec 256))
(declare-fun x79 () (_ BitVec 256))
(declare-fun x21 () (_ BitVec 256))
(declare-fun x9 () Bool)
(declare-fun x40 () Bool)
(declare-fun x294 () (_ BitVec 256))
(declare-fun x38 () Bool)
(declare-fun x181 () (_ BitVec 256))
(declare-fun x283 () (_ BitVec 256))
(declare-fun x273 () (_ BitVec 256))
(declare-fun x243 ((_ BitVec 256)) Bool)
(declare-fun x232 () Bool)
(declare-fun x270 () (_ BitVec 256))
(declare-fun x106 () Bool)
(declare-fun x288 () (_ BitVec 256))
(declare-fun x123 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x18 () (_ BitVec 256))
(declare-fun x244 () Bool)
(declare-fun x109 () Bool)
(declare-fun x145 () Bool)
(declare-fun x242 () (_ BitVec 256))
(declare-fun x189 ((_ BitVec 256) (_ BitVec 256)) (_ BitVec 256))
(declare-fun x258 () (_ BitVec 256))
(declare-fun x70 () (_ BitVec 256))
(declare-fun x29 () (_ BitVec 256))
(declare-fun x248 () Bool)
(declare-fun x124 () Bool)
(declare-fun x209 () (_ BitVec 256))
(declare-fun x281 () Bool)
(declare-fun x117 () (_ BitVec 256))
(declare-fun x47 () (_ BitVec 256))
(declare-fun x231 () (_ BitVec 256))
(declare-fun x284 () (_ BitVec 256))
(declare-fun x39 () Bool)
(declare-fun x194 () (_ BitVec 256))
(declare-fun x216 () (_ BitVec 256))
(declare-fun x48 () Bool)
(declare-fun x126 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x227 () (_ BitVec 256))
(declare-fun x158 () Bool)
(declare-fun x183 () (_ BitVec 256))
(declare-fun x179 () (_ BitVec 256))
(declare-fun x45 () (_ BitVec 256))
(declare-fun x165 () Bool)
(declare-fun x274 () Bool)
(declare-fun x27 () Bool)
(declare-fun x52 () (_ BitVec 256))
(declare-fun x272 () Bool)
(declare-fun x49 () Bool)
(declare-fun x94 () Bool)
(declare-fun x199 () Bool)
(declare-fun x256 () (_ BitVec 256))
(declare-fun x191 () Bool)
(declare-fun x277 () (_ BitVec 256))
(declare-fun x66 () (_ BitVec 256))
(declare-fun x56 () (_ BitVec 256))
(declare-fun x4 () (_ BitVec 256))
(declare-fun x17 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x293 () Bool)
(declare-fun x172 () Bool)
(declare-fun x1 () (_ BitVec 256))
(declare-fun x41 () (_ BitVec 256))
(declare-fun x291 () (_ BitVec 256))
(declare-fun x200 () Bool)
(declare-fun x230 () (_ BitVec 256))
(declare-fun x55 () (_ BitVec 256))
(declare-fun x228 () (_ BitVec 256))
(declare-fun x197 () (_ BitVec 256))
(declare-fun x14 () (_ BitVec 256))
(declare-fun x137 () (_ BitVec 256))
(declare-fun x289 () (_ BitVec 256))
(declare-fun x113 ((_ BitVec 256) (_ BitVec 256) (_ BitVec 256)) (_ BitVec 256))
(declare-fun x150 () Bool)
(declare-fun x105 () (_ BitVec 256))
(declare-fun x279 () (_ BitVec 256))
(declare-fun x46 () Bool)
(declare-fun x203 () (_ BitVec 256))
(declare-fun x182 () (_ BitVec 256))
(declare-fun x211 () Bool)
(declare-fun x25 () (_ BitVec 256))
(declare-fun x201 () Bool)
(declare-fun x86 () Bool)
(declare-fun x134 () (_ BitVec 256))
(declare-fun x110 () (_ BitVec 256))
(declare-fun x142 () (_ BitVec 256))
(declare-fun x144 () Bool)
(declare-fun x206 () (_ BitVec 256))
(declare-fun x290 () (_ BitVec 256))
(declare-fun x15 () (_ BitVec 256))
(declare-fun x140 () (_ BitVec 256))
(declare-fun x153 () Bool)
(declare-fun x292 () (_ BitVec 256))
(declare-fun x276 () (_ BitVec 256))
(declare-fun x128 () (_ BitVec 256))
(declare-fun x42 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x22 () (_ BitVec 256))
(declare-fun x224 () Bool)
(declare-fun x168 () (_ BitVec 256))
(declare-fun x119 () Bool)
(declare-fun x85 () Bool)
(declare-fun x16 () (_ BitVec 256))
(declare-fun x254 () (_ BitVec 256))
(declare-fun x225 () Bool)
(declare-fun x212 () (_ BitVec 256))
(declare-fun x50 () (_ BitVec 256))
(declare-fun x275 () Bool)
(declare-fun x130 () (_ BitVec 256))
(declare-fun x246 () Bool)
(declare-fun x98 () (_ BitVec 256))
(declare-fun x83 () Bool)
(declare-fun x241 () (_ BitVec 256))
(declare-fun x20 () (_ BitVec 256))
(declare-fun x198 () (_ BitVec 256))
(declare-fun x57 () (_ BitVec 256))
(declare-fun x100 () (_ BitVec 256))
(declare-fun x263 () (_ BitVec 256))
(declare-fun x261 () (_ BitVec 256))
(declare-fun x229 () (_ BitVec 256))
(declare-fun x169 () (_ BitVec 256))
(declare-fun x262 () Bool)
(declare-fun x64 () (_ BitVec 256))
(declare-fun x3 () Bool)
(declare-fun x207 () (_ BitVec 256))
(declare-fun x170 () Bool)
(declare-fun x237 () (_ BitVec 256))
(declare-fun x89 () Bool)
(declare-fun x23 () (_ BitVec 256))
(declare-fun x90 () (_ BitVec 256))
(declare-fun x175 () (_ BitVec 256))
(declare-fun x166 () Bool)
(declare-fun x84 () (_ BitVec 256))
(declare-fun x73 () Bool)
(declare-fun x151 () (_ BitVec 256))
(declare-fun x146 () Bool)
(declare-fun x167 () (_ BitVec 256))
(declare-fun x239 () Bool)
(declare-fun x268 () (_ BitVec 256))
(declare-fun x5 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x187 () (_ BitVec 256))
(declare-fun x205 () Bool)
(declare-fun x28 () Bool)
(declare-fun x13 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x97 () Bool)
(declare-fun x37 () Bool)
(declare-fun x282 () (_ BitVec 256))
(declare-fun x131 () (_ BitVec 256))
(declare-fun x210 () Bool)
(declare-fun x116 () Bool)
(declare-fun x269 () (_ BitVec 256))
(declare-fun x250 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x77 () Bool)
(declare-fun x115 () Bool)
(declare-fun x30 ((_ BitVec 256)) (_ BitVec 256))
(declare-fun x215 () (_ BitVec 256))
(declare-fun x58 () (_ BitVec 256))
(declare-fun x32 () (_ BitVec 256))
(declare-fun x33 () Bool)
(declare-fun x152 () (_ BitVec 256))
(declare-fun x120 () (_ BitVec 256))
(declare-fun x286 () (_ BitVec 256))
(declare-fun x264 () Bool)
(declare-fun x78 () (_ BitVec 256))
(declare-fun x6 () (_ BitVec 256))
(declare-fun x267 () Bool)
(declare-fun x147 ((_ BitVec 256) (_ BitVec 256)) (_ BitVec 256))
(declare-fun x192 () Bool)
(declare-fun x295 () (_ BitVec 256))
(declare-fun x68 () (_ BitVec 256))
(declare-fun x195 () (_ BitVec 256))
(declare-fun x136 () Bool)
(declare-fun x266 () Bool)
(declare-fun x233 () Bool)
(declare-fun x81 () (_ BitVec 256))
(declare-fun x34 () (_ BitVec 256))
(declare-fun x164 () Bool)
(define-fun x251 ((x132 (_ BitVec 256)) (x139 (_ BitVec 256))) Bool (= x132 (bvudiv (bvmul x139 x132) x139)))
(define-fun x219 ((x132 (_ BitVec 256)) (x139 (_ BitVec 256))) Bool (= x132 (bvsdiv (bvmul x132 x139) x139)))
(define-fun x159 ((x132 (_ BitVec 256)) (x139 (_ BitVec 256))) Bool (= x132 (bvsdiv (bvmul x139 x132) x139)))
(define-fun x252 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x99 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x80 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x24 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x7 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x44 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x285 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x92 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x8 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x217 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x278 ((x236 (_ BitVec 256))) (_ BitVec 256) (_ bv0 256))
(define-fun x74 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 x213) x137 (x42 x236)))
(define-fun x91 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 (_ bv128 256)) (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256) (x7 x236)))
(define-fun x193 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 (_ bv132 256)) x130 (x91 x236)))
(define-fun x171 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 (_ bv0 256)) x169 (x204 x236)))
(define-fun x185 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 (_ bv128 256)) x169 (x193 x236)))
(define-fun x108 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite x109 (x185 x236) (x7 x236)))
(define-fun x226 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 x142) (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256) (x108 x236)))
(define-fun x111 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x208 x236) x130 (x226 x236)))
(define-fun x245 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 (_ bv0 256)) x286 (x30 x236)))
(define-fun x161 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 x142) x286 (x111 x236)))
(define-fun x221 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x142 x236) (_ bv9926590759366731133184464140911154174177107315504433282334229972011911741440 256) (x161 x236)))
(define-fun x222 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x57 x236) x100 (x221 x236)))
(define-fun x104 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x236 x69) x14 (x222 x236)))
(define-fun x149 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (= x196 x236) x45 (x104 x236)))
(define-fun x260 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite (and (bvuge x236 x142) (bvugt (bvadd (_ bv32 256) x142) x236)) (x250 (bvadd (bvneg x142) x236)) (x149 x236)))
(define-fun x238 ((x236 (_ BitVec 256))) (_ BitVec 256) (ite x172 (x260 x236) (x149 x236)))
(define-fun x35 ((x279 (_ BitVec 256))) Bool (or (= (bvadd x279 (_ bv1 256)) (x133 (x63 x279))) (not (and (bvult x279 x187) (bvuge x279 (_ bv0 256)))) (not (and (bvule x279 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvuge x279 (_ bv0 256))))))
(define-fun x71 ((x237 (_ BitVec 256))) Bool (or (not (and (bvule (_ bv0 256) x237) (bvule x237 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)))) (and (and (= x237 (x63 (bvadd (x133 x237) (bvneg (_ bv1 256))))) (bvuge (x133 x237) (_ bv1 256))) (bvuge x187 (x133 x237))) (= (_ bv0 256) (x133 x237))))
(define-fun x36 ((x214 (_ BitVec 256)) (x102 (_ BitVec 256))) Bool (or (or (= (x189 x214 (x147 x214 x102)) (bvadd x102 (_ bv1 256))) (not (and (bvuge x102 (_ bv0 256)) (bvugt (x123 x214) x102))) (not (and (bvule (_ bv0 256) x102) (bvuge (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256) x102)))) (not (and (bvule x214 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvuge x214 (_ bv0 256))))))
(define-fun x95 ((x209 (_ BitVec 256)) (x98 (_ BitVec 256))) Bool (or (not (and (bvule x209 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvule (_ bv0 256) x209))) (or (and (bvule (x189 x209 x98) (x123 x209)) (and (= (x147 x209 (bvadd (x189 x209 x98) (bvneg (_ bv1 256)))) x98) (bvule (_ bv1 256) (x189 x209 x98)))) (= (_ bv0 256) (x189 x209 x98)) (not (and (bvuge x98 (_ bv0 256)) (bvuge (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256) x98))))))
(define-fun x54 ((x258 (_ BitVec 256)) (x194 (_ BitVec 256))) Bool (or (or (not (and (bvule x194 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvule (_ bv0 256) x194))) (not (and (bvuge x194 (_ bv0 256)) (bvult x194 (x126 x258)))) (= (x19 x258 (x67 x258 x194)) (bvadd x194 (_ bv1 256)))) (not (and (bvuge x258 (_ bv0 256)) (bvule x258 (_ bv1461501637330902918203684832716283019655932542975 256))))))
(define-fun x155 ((x50 (_ BitVec 256)) (x22 (_ BitVec 256))) Bool (or (or (and (bvule (x19 x50 x22) (x126 x50)) (and (= x22 (x67 x50 (bvadd (x19 x50 x22) (bvneg (_ bv1 256))))) (bvuge (x19 x50 x22) (_ bv1 256)))) (not (and (bvuge x22 (_ bv0 256)) (bvule x22 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)))) (= (_ bv0 256) (x19 x50 x22))) (not (and (bvule (_ bv0 256) x50) (bvule x50 (_ bv1461501637330902918203684832716283019655932542975 256))))))
(define-fun x141 ((x154 (_ BitVec 256)) (x156 (_ BitVec 256))) Bool (or (or (not (and (bvule (_ bv0 256) x156) (bvule x156 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)))) (not (= (x133 x156) (_ bv0 256))) (not (or (not (= (x189 x154 x156) (_ bv0 256))) (not (= (x19 x154 x156) (_ bv0 256)))))) (not (and (bvule x154 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvuge x154 (_ bv0 256))))))
(define-fun x112 ((x79 (_ BitVec 256))) Bool (or (bvugt (_ bv340282366920938463463374607431768211455 256) (x123 x79)) (not (and (bvule x79 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvule (_ bv0 256) x79)))))
(define-fun x180 ((x270 (_ BitVec 256))) Bool (or (not (and (bvule (_ bv0 256) x270) (bvule x270 (_ bv1461501637330902918203684832716283019655932542975 256)))) (bvugt (_ bv340282366920938463463374607431768211455 256) (x126 x270))))
(define-fun x93 () Bool (x35 (bvadd (x133 x215) (bvneg (_ bv1 256)))))
(define-fun x138 () Bool x93)
(define-fun x11 () Bool (x71 x215))
(define-fun x76 () Bool x11)
(define-fun x220 () Bool (x36 x10 (bvadd (x189 x10 x215) (bvneg (_ bv1 256)))))
(define-fun x253 () Bool x220)
(define-fun x59 () Bool (x95 x10 x215))
(define-fun x31 () Bool x59)
(define-fun x184 () Bool (x54 x10 (bvadd (x19 x10 x215) (bvneg (_ bv1 256)))))
(define-fun x101 () Bool x184)
(define-fun x26 () Bool (x155 x10 x215))
(define-fun x96 () Bool x26)
(define-fun x255 () Bool (x141 x10 x215))
(define-fun x218 () Bool (x141 x10 x215))
(define-fun x257 () Bool (and x218 x255))
(define-fun x188 () Bool (x112 x10))
(define-fun x135 () Bool x188)
(define-fun x114 () Bool (x180 x10))
(define-fun x2 () Bool x114)
(assert (= (or x39 x281) x259))
(assert (= (_ bv0 256) (x13 (_ bv57896044618658097711785492504343953926634992332820282019728792003956564819967 256))))
(assert (= (or x77 x293) x94))
(assert (= x162 (and x144 (not x60))))
(assert (x243 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)))
(assert (= x272 (or x109 x157)))
(assert (bvugt (x113 (_ bv64 256) x130 (_ bv103 256)) (_ bv10000 256)))
(assert (= x39 (and x210 x274)))
(assert (= (and x272 x145) x264))
(assert (= x266 (=> (and (or (and (not x164) (and (= x198 x62) (x251 x55 x287) (= x62 (bvmul x55 x287)))) (and x164 (= (_ bv0 256) x198))) (= x164 (= (_ bv0 256) x55))) x9)))
(assert (= (x13 (_ bv4294967295 256)) (_ bv0 256)))
(assert (= (x113 (_ bv64 256) x130 (_ bv103 256)) (x13 (x113 (_ bv64 256) x130 (_ bv103 256)))))
(assert (= (_ bv0 256) (x13 (_ bv1000000000000000000 256))))
(assert (= (=> (and (or (and (= x55 (_ bv0 256)) x46) (and (and (= (bvmul x47 x207) x183) (x251 x207 x47) (= x183 x55)) (not x46))) (and (= (= x207 (_ bv0 256)) x46) (= (x238 x142) x207) (bvule (_ bv1 256) x134) (= (_ bv1000000000000000000000000000000000000 256) x117))) x266) x191))
(assert (= x293 (and x186 x46)))
(assert (= x170 (=> (and (and (= (bvadd (_ bv64 256) x90) x289) (= (_ bv1000000000000000000 256) x284) (= (= (_ bv0 256) x68) x60) (bvule x202 (_ bv1000000000000000000 256)) (= x47 (bvadd (_ bv1000000000000000000 256) (bvneg x202))) (= (_ bv1000000000000000000 256) x52)) (or (and x60 (= x174 (_ bv0 256))) (and (and (= x228 x174) (x251 x68 (_ bv1000000000000000000 256)) (= (bvmul x68 (_ bv1000000000000000000 256)) x228)) (not x60)))) x3)))
(assert (= (x13 (_ bv3915249377 256)) (_ bv0 256)))
(assert (= x153 (and x205 x115)))
(assert (x243 (_ bv340282366920938463463374607431768211455 256)))
(assert (x243 (_ bv1000000000000000000 256)))
(assert (= (_ bv0 256) (x13 (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256))))
(assert (x243 (_ bv57896044618658097711785492504343953926634992332820282019728792003956564819967 256)))
(assert (= x48 (=> (and (= (_ bv192 256) x283) (= x179 (bvudiv x32 x203)) (= x90 (_ bv256 256)) (= x179 x276)) x275)))
(assert (x243 (_ bv4294967295 256)))
(assert (= x109 (or x225 x153)))
(assert (=> (bvuge (_ bv10000 256) x131) (= (_ bv0 256) (x13 x131))))
(assert (= (or x248 x232) x281))
(assert (= (and (not x164) x94) x232))
(assert (= x144 (or x150 x267)))
(assert (= (and (not x46) x186) x77))
(assert (=> (bvuge (_ bv10000 256) x64) (= (_ bv0 256) (x13 x64))))
(assert (x243 (_ bv1461501637330902918203684832716283019655932542975 256)))
(assert (= x33 (=> (= (= (_ bv0 256) x70) x274) (and (=> (and (not x274) (and (and (= (_ bv1000000000000000000 256) x168) (= (= (_ bv0 256) x14) x86)) (or (and (= (_ bv0 256) x68) x86) (and (and (x251 x14 (_ bv1000000000000000000 256)) (= (bvmul x14 (_ bv1000000000000000000 256)) x84) (= x84 x68)) (not x86))))) x170) (=> (and (= x229 (_ bv0 256)) x274) x116)))))
(assert (=> (bvuge (_ bv10000 256) x288) (= (_ bv0 256) (x13 x288))))
(assert (= x143 (and x144 x60)))
(assert (= x267 (and (not x86) x234)))
(assert (=> (bvuge (_ bv10000 256) x197) (= (x13 x197) (_ bv0 256))))
(assert (x243 (_ bv1889567281 256)))
(assert (= x3 (=> (and (and (bvuge x290 (_ bv1 256)) (= x15 x130) (= (bvadd (bvneg x142) x43) x241) (= (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256) x140) (bvuge x56 (_ bv1 256)) (= x100 (x161 x142)) (= (_ bv36 256) x53) (= x290 (x173 x130)) (= x182 x15) (= x142 (bvadd (_ bv64 256) x289)) (= (x113 (_ bv64 256) x130 (_ bv103 256)) x254) (= x201 (bvugt x212 (_ bv0 256))) (= (bvadd x208 (_ bv32 256)) x43) (= x241 (_ bv36 256)) (bvuge x125 (_ bv1 256)) (= (x235 x254) x286) (= (x173 x167) x227) (bvule (_ bv1 256) x227) (= x216 (_ bv1889567281 256)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x167) (bvule (_ bv32 256) x72) (= (bvadd x57 (_ bv32 256)) x69) (= x208 (bvadd x142 (_ bv4 256))) (= x287 (bvudiv x174 x70)) (= x57 (bvadd (_ bv4 256) x142)) (bvule x56 (_ bv1461501637330902918203684832716283019655932542975 256)) (= x196 (bvadd x69 (_ bv32 256))) (= x56 x130) (= (x173 x56) x125)) (or (and x201 (and (bvuge x72 (_ bv32 256)) (bvule x72 (_ bv4294967295 256)) (= x134 (_ bv1 256)))) (and (= x212 x134) (not x201)))) x191)))
(assert (= (_ bv0 256) (x13 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256))))
(assert (=> (bvuge (_ bv10000 256) x130) (= (_ bv0 256) (x13 x130))))
(assert (x243 (_ bv1000000000000000000000000000000000000 256)))
(assert (x243 (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256)))
(assert (= (_ bv0 256) (x13 (_ bv1889567281 256))))
(assert (= x225 (and (not x205) x115)))
(assert (=> (bvuge (_ bv10000 256) x56) (= (_ bv0 256) (x13 x56))))
(assert (=> (bvuge (_ bv10000 256) x213) (= (_ bv0 256) (x13 x213))))
(assert (x243 (_ bv3915249377 256)))
(assert (= (and (not x201) x192) x127))
(assert (= (and x192 x201) x172))
(assert (= x224 true))
(assert (= (_ bv64 256) (x17 (x113 (_ bv64 256) x130 (_ bv103 256)))))
(assert (= (_ bv0 256) (x13 (_ bv1000000000000000000000000000000000000 256))))
(assert x2)
(assert (= (and x94 x164) x248))
(assert (= (and (not x145) x272) x246))
(assert (= x223 (=> (and (and (= x206 (_ bv3915249377 256)) (bvuge x58 (_ bv1 256)) (= x213 x163) (= x23 x137) (= (x42 x213) x137) (= x28 (= x203 (_ bv0 256))) (= x58 (x173 x130)) (= x261 (x74 x130)) (= x240 x261)) (and (bvuge x181 (_ bv0 256)) (not (= x105 x190)) (bvule x122 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvule x64 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvule (_ bv0 256) x122) (= x103 (bvugt (x173 x130) (_ bv0 256))) (not (= x16 x131)) x82 (not (= x288 x176)) (= x16 x230) (= x200 x138) (bvuge x175 (_ bv1 256)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x25) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x230) x200 (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x78) (bvule x288 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x256) (= (bvugt (x173 x190) (_ bv0 256)) x87) (= x110 x288) (= x253 x82) (bvule (_ bv1 256) x131) (bvule (_ bv1 256) x256) x199 (not (= x190 x16)) (= x197 x107) (not (= x64 x288)) x166 (= x148 (bvult (_ bv0 256) (x173 x197))) (bvule (_ bv1 256) x16) (= x158 (bvult (_ bv0 256) (x173 x176))) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x16) (= x166 (bvult (_ bv0 256) (x173 x105))) (not (= x130 x288)) (bvuge (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256) x18) (= x239 (bvult (_ bv0 256) (x173 x131))) (not (= x197 x64)) (not (= x176 x197)) (= x131 x175) (bvuge x163 (_ bv0 256)) (not (= x130 x197)) (= x89 x76) (bvule x110 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvuge x65 (_ bv4 256)) (not (= x130 x16)) x136 (bvule x131 (_ bv1461501637330902918203684832716283019655932542975 256)) (not (= x190 x64)) (not (= x288 x105)) (bvule (_ bv0 256) x291) x27 (bvule (_ bv1 256) x64) (bvule x175 (_ bv1461501637330902918203684832716283019655932542975 256)) (= x247 x31) (not (= x105 x176)) (not (= x130 x64)) (bvule x197 (_ bv1461501637330902918203684832716283019655932542975 256)) (not (= x131 x190)) (not (= x16 x197)) (= x12 (_ bv0 256)) (= (bvult (_ bv0 256) (x173 x16)) x233) (not (= x176 x130)) (bvule x21 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x130) x247 x262 (not (= x176 x64)) x239 (not (= x288 x131)) (not (= x190 x130)) (bvuge x78 (_ bv0 256)) (bvule x291 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvule (_ bv0 256) x18) x148 x103 (bvuge x197 (_ bv1 256)) (bvule (_ bv1 256) x105) (bvuge (_ bv4294967295 256) x195) (not (= x105 x197)) (bvule (_ bv1 256) x230) (= x101 x160) (bvule x176 (_ bv1461501637330902918203684832716283019655932542975 256)) (bvule (_ bv0 256) x21) (bvule (_ bv1 256) x176) (= (bvugt (x173 x288) (_ bv0 256)) x262) (not (= x16 x176)) (bvuge x130 (_ bv1 256)) (not (= x131 x64)) (bvule (_ bv1 256) x288) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x107) x87 (= x16 x256) (not (= x197 x190)) (not (= x105 x64)) (bvuge (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256) x181) (= x199 x96) (not (= x16 x105)) (not (= x288 x16)) (not (= x197 x288)) (not (= x64 x16)) (bvuge (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256) x295) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x105) (bvule (_ bv1 256) x190) (not (= x105 x131)) (not (= x130 x131)) (bvuge x118 (_ bv0 256)) (bvule (_ bv0 256) x295) (bvuge x110 (_ bv1 256)) (not (= x190 x288)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x163) (not (= x197 x131)) (bvuge x25 (_ bv0 256)) (not (= x105 x130)) x158 (bvuge x195 (_ bv0 256)) x160 x89 (not (= x176 x131)) (bvule x118 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvuge (_ bv1461501637330902918203684832716283019655932542975 256) x190) (= (bvult (_ bv0 256) (x173 x64)) x27) (bvuge x107 (_ bv1 256)) (bvuge (_ bv57896044618658097711785492504343953926634992332820282019728792003956564819967 256) x65) x233 (= x257 x136) (not (= x176 x190)))) (and (=> (and (not x28) (and (or (and (= x32 (_ bv0 256)) x205) (and (not x205) (and (= x51 x32) (x251 x268 (_ bv1000000000000000000 256)) (= (bvmul (_ bv1000000000000000000 256) x268) x51)))) (and (= (_ bv1889567281 256) x177) (bvuge x292 (_ bv1 256)) (= x6 x294) (= x268 (bvadd x61 (bvneg x45))) (= x294 x130) (= x242 (_ bv36 256)) (bvule (_ bv1 256) x263) (= x20 (_ bv1000000000000000000 256)) (not (bvugt x269 (bvadd x14 x269))) (bvuge x203 (_ bv1 256)) (bvule (_ bv1 256) x56) (= (_ bv128 256) x273) (= x56 x130) (= x34 (x113 (_ bv64 256) x130 (_ bv103 256))) (not (bvult x61 x45)) (= (x173 x56) x292) (= (x173 x130) x263) (= x61 (bvadd x14 x269)) (= x205 (= x268 (_ bv0 256))) (= x269 (x185 (_ bv128 256))) (= x66 (_ bv50942633119752846454219349998365661925608737367104304655302372697894809501696 256)) (= (_ bv128 256) x178) (= (x235 x34) x169) (bvule x56 (_ bv1461501637330902918203684832716283019655932542975 256))))) x48) (=> (and (and (= (_ bv1000000000000000000 256) x276) (= (_ bv128 256) x90)) x28) x275)))))
(assert (= x275 (=> (and (= x145 (= (_ bv0 256) x203)) (or (and (not x145) (and (= x120 (bvmul x276 x203)) (x251 x203 x276) (= x70 x120))) (and (= (_ bv0 256) x70) x145))) x33)))
(assert x135)
(assert (= (_ bv103 256) (x129 (x113 (_ bv64 256) x130 (_ bv103 256)))))
(assert (x243 (_ bv9926590759366731133184464140911154174177107315504433282334229972011911741440 256)))
(assert (= (=> (and (= x229 x81) (= x81 (bvudiv x198 (_ bv1000000000000000000000000000000000000 256)))) x116) x9))
(assert (= (x13 (_ bv9926590759366731133184464140911154174177107315504433282334229972011911741440 256)) (_ bv0 256)))
(assert (=> (bvule x167 (_ bv10000 256)) (= (_ bv0 256) (x13 x167))))
(assert (= (_ bv0 256) (x13 (_ bv340282366920938463463374607431768211455 256))))
(assert (= (and (not x28) x224) x115))
(assert (= (and x234 x86) x150))
(assert (not (x243 (x113 (_ bv64 256) x130 (_ bv103 256)))))
(assert (=> (bvuge (_ bv10000 256) x105) (= (_ bv0 256) (x13 x105))))
(assert (= (=> (= x165 (or (not (and (bvule (_ bv0 256) x10) (bvule x10 (_ bv1461501637330902918203684832716283019655932542975 256)))) (or (not (and (bvule x215 (_ bv115792089237316195423570985008687907853269984665640564039457584007913129639935 256)) (bvuge x215 (_ bv0 256)))) (not (= (_ bv0 256) (x133 x215))) (not (or (not (= (_ bv0 256) (x189 x10 x215))) (not (= (x19 x10 x215) (_ bv0 256)))))))) x165) x116))
(assert (= x157 (and x28 x224)))
(assert (=> (bvule x176 (_ bv10000 256)) (= (x13 x176) (_ bv0 256))))
(assert (= x130 (x5 (x113 (_ bv64 256) x130 (_ bv103 256)))))
(assert (= x210 (or x264 x246)))
(assert (= (and x210 (not x274)) x234))
(assert (bvugt (_ bv340282366920938463463374607431768211455 256) x187))
(assert (= x192 (or x143 x162)))
(assert (=> (bvuge (_ bv10000 256) x190) (= (_ bv0 256) (x13 x190))))
(assert (= (_ bv0 256) (x13 (_ bv1461501637330902918203684832716283019655932542975 256))))
(assert (= (or x127 x172) x186))
(assert (not x223))
(assert (=> (bvuge (_ bv10000 256) x16) (= (x13 x16) (_ bv0 256))))
(check-sat)
(exit)
