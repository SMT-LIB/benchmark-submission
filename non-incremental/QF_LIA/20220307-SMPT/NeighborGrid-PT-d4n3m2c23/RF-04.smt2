(set-info :smt-lib-version 2.6)
(set-logic QF_LIA)
(set-info :source |
Generated by: Nicolas Amat, Bernard Berthomieu, Silvano Dal Zilio, Didier Le Botlan
Generated on: 2022-03-07
Generator: SMPT
Application: Reachability query on the instance NeighborGrid-PT-d4n3m2c23 from the Model Checking Contest 2021 using the SMPT model-checker
Target solver: z3
Publications: https://doi.org/10.1007/978-3-030-76983-3_9, http://mcc.lip6.fr/2021/results.php
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status sat)

(declare-const p_0_0_1_1 Int)
(assert (>= p_0_0_1_1 0))
(declare-const p_0_0_0_0 Int)
(assert (>= p_0_0_0_0 0))
(declare-const p_0_1_0_1 Int)
(assert (>= p_0_1_0_1 0))
(declare-const p_0_1_1_0 Int)
(assert (>= p_0_1_1_0 0))
(declare-const p_0_1_1_1 Int)
(assert (>= p_0_1_1_1 0))
(declare-const p_1_0_0_1 Int)
(assert (>= p_1_0_0_1 0))
(declare-const p_1_0_1_0 Int)
(assert (>= p_1_0_1_0 0))
(declare-const p_1_0_1_1 Int)
(assert (>= p_1_0_1_1 0))
(declare-const p_1_1_0_0 Int)
(assert (>= p_1_1_0_0 0))
(declare-const p_1_1_0_1 Int)
(assert (>= p_1_1_0_1 0))
(declare-const p_1_1_1_0 Int)
(assert (>= p_1_1_1_0 0))
(declare-const p_0_0_1_0 Int)
(assert (>= p_0_0_1_0 0))
(declare-const p_0_0_0_1 Int)
(assert (>= p_0_0_0_1 0))
(declare-const p_0_0_1_2 Int)
(assert (>= p_0_0_1_2 0))
(declare-const p_0_1_0_0 Int)
(assert (>= p_0_1_0_0 0))
(declare-const p_0_1_0_2 Int)
(assert (>= p_0_1_0_2 0))
(declare-const p_0_1_1_2 Int)
(assert (>= p_0_1_1_2 0))
(declare-const p_1_0_0_0 Int)
(assert (>= p_1_0_0_0 0))
(declare-const p_1_0_0_2 Int)
(assert (>= p_1_0_0_2 0))
(declare-const p_1_0_1_2 Int)
(assert (>= p_1_0_1_2 0))
(declare-const p_1_1_0_2 Int)
(assert (>= p_1_1_0_2 0))
(declare-const p_1_1_1_1 Int)
(assert (>= p_1_1_1_1 0))
(declare-const p_0_0_0_2 Int)
(assert (>= p_0_0_0_2 0))
(declare-const p_1_1_1_2 Int)
(assert (>= p_1_1_1_2 0))
(declare-const p_0_0_2_1 Int)
(assert (>= p_0_0_2_1 0))
(declare-const p_0_1_2_0 Int)
(assert (>= p_0_1_2_0 0))
(declare-const p_0_1_2_1 Int)
(assert (>= p_0_1_2_1 0))
(declare-const p_1_0_2_0 Int)
(assert (>= p_1_0_2_0 0))
(declare-const p_1_0_2_1 Int)
(assert (>= p_1_0_2_1 0))
(declare-const p_1_1_2_0 Int)
(assert (>= p_1_1_2_0 0))
(declare-const p_0_0_2_0 Int)
(assert (>= p_0_0_2_0 0))
(declare-const p_0_0_2_2 Int)
(assert (>= p_0_0_2_2 0))
(declare-const p_0_1_2_2 Int)
(assert (>= p_0_1_2_2 0))
(declare-const p_1_0_2_2 Int)
(assert (>= p_1_0_2_2 0))
(declare-const p_1_1_2_1 Int)
(assert (>= p_1_1_2_1 0))
(declare-const p_1_1_2_2 Int)
(assert (>= p_1_1_2_2 0))
(declare-const p_0_2_0_1 Int)
(assert (>= p_0_2_0_1 0))
(declare-const p_0_2_1_0 Int)
(assert (>= p_0_2_1_0 0))
(declare-const p_0_2_1_1 Int)
(assert (>= p_0_2_1_1 0))
(declare-const p_1_2_0_0 Int)
(assert (>= p_1_2_0_0 0))
(declare-const p_1_2_0_1 Int)
(assert (>= p_1_2_0_1 0))
(declare-const p_1_2_1_0 Int)
(assert (>= p_1_2_1_0 0))
(declare-const p_0_2_0_0 Int)
(assert (>= p_0_2_0_0 0))
(declare-const p_0_2_0_2 Int)
(assert (>= p_0_2_0_2 0))
(declare-const p_0_2_1_2 Int)
(assert (>= p_0_2_1_2 0))
(declare-const p_1_2_0_2 Int)
(assert (>= p_1_2_0_2 0))
(declare-const p_1_2_1_1 Int)
(assert (>= p_1_2_1_1 0))
(declare-const p_1_2_1_2 Int)
(assert (>= p_1_2_1_2 0))
(declare-const p_0_2_2_0 Int)
(assert (>= p_0_2_2_0 0))
(declare-const p_0_2_2_1 Int)
(assert (>= p_0_2_2_1 0))
(declare-const p_1_2_2_0 Int)
(assert (>= p_1_2_2_0 0))
(declare-const p_0_2_2_2 Int)
(assert (>= p_0_2_2_2 0))
(declare-const p_1_2_2_1 Int)
(assert (>= p_1_2_2_1 0))
(declare-const p_1_2_2_2 Int)
(assert (>= p_1_2_2_2 0))
(declare-const p_2_0_0_1 Int)
(assert (>= p_2_0_0_1 0))
(declare-const p_2_0_1_0 Int)
(assert (>= p_2_0_1_0 0))
(declare-const p_2_0_1_1 Int)
(assert (>= p_2_0_1_1 0))
(declare-const p_2_1_0_0 Int)
(assert (>= p_2_1_0_0 0))
(declare-const p_2_1_0_1 Int)
(assert (>= p_2_1_0_1 0))
(declare-const p_2_1_1_0 Int)
(assert (>= p_2_1_1_0 0))
(declare-const p_2_0_0_0 Int)
(assert (>= p_2_0_0_0 0))
(declare-const p_2_0_0_2 Int)
(assert (>= p_2_0_0_2 0))
(declare-const p_2_0_1_2 Int)
(assert (>= p_2_0_1_2 0))
(declare-const p_2_1_0_2 Int)
(assert (>= p_2_1_0_2 0))
(declare-const p_2_1_1_1 Int)
(assert (>= p_2_1_1_1 0))
(declare-const p_2_1_1_2 Int)
(assert (>= p_2_1_1_2 0))
(declare-const p_2_0_2_0 Int)
(assert (>= p_2_0_2_0 0))
(declare-const p_2_0_2_1 Int)
(assert (>= p_2_0_2_1 0))
(declare-const p_2_1_2_0 Int)
(assert (>= p_2_1_2_0 0))
(declare-const p_2_0_2_2 Int)
(assert (>= p_2_0_2_2 0))
(declare-const p_2_1_2_1 Int)
(assert (>= p_2_1_2_1 0))
(declare-const p_2_1_2_2 Int)
(assert (>= p_2_1_2_2 0))
(declare-const p_2_2_0_0 Int)
(assert (>= p_2_2_0_0 0))
(declare-const p_2_2_0_1 Int)
(assert (>= p_2_2_0_1 0))
(declare-const p_2_2_1_0 Int)
(assert (>= p_2_2_1_0 0))
(declare-const p_2_2_0_2 Int)
(assert (>= p_2_2_0_2 0))
(declare-const p_2_2_1_1 Int)
(assert (>= p_2_2_1_1 0))
(declare-const p_2_2_1_2 Int)
(assert (>= p_2_2_1_2 0))
(declare-const p_2_2_2_0 Int)
(assert (>= p_2_2_2_0 0))
(declare-const p_2_2_2_1 Int)
(assert (>= p_2_2_2_1 0))
(declare-const p_2_2_2_2 Int)
(assert (>= p_2_2_2_2 0))

(declare-const a1 Int)
(assert (>= a1 0))
(declare-const a2 Int)
(assert (>= a2 0))
(declare-const a3 Int)
(assert (>= a3 0))
(declare-const a4 Int)
(assert (>= a4 0))
(declare-const a5 Int)
(assert (>= a5 0))
(declare-const a6 Int)
(assert (>= a6 0))
(declare-const a7 Int)
(assert (>= a7 0))
(declare-const a8 Int)
(assert (>= a8 0))
(declare-const a9 Int)
(assert (>= a9 0))
(declare-const a10 Int)
(assert (>= a10 0))
(declare-const a11 Int)
(assert (>= a11 0))
(declare-const a12 Int)
(assert (>= a12 0))
(declare-const a13 Int)
(assert (>= a13 0))
(declare-const a14 Int)
(assert (>= a14 0))
(declare-const a15 Int)
(assert (>= a15 0))
(declare-const a16 Int)
(assert (>= a16 0))
(declare-const a17 Int)
(assert (>= a17 0))
(declare-const a18 Int)
(assert (>= a18 0))
(declare-const a19 Int)
(assert (>= a19 0))
(declare-const a20 Int)
(assert (>= a20 0))
(declare-const a21 Int)
(assert (>= a21 0))
(declare-const a22 Int)
(assert (>= a22 0))
(declare-const a23 Int)
(assert (>= a23 0))
(declare-const a24 Int)
(assert (>= a24 0))
(declare-const a25 Int)
(assert (>= a25 0))
(declare-const a26 Int)
(assert (>= a26 0))
(declare-const a27 Int)
(assert (>= a27 0))
(declare-const a28 Int)
(assert (>= a28 0))
(declare-const a29 Int)
(assert (>= a29 0))
(declare-const a30 Int)
(assert (>= a30 0))
(declare-const a31 Int)
(assert (>= a31 0))
(declare-const a32 Int)
(assert (>= a32 0))
(declare-const a33 Int)
(assert (>= a33 0))
(declare-const a34 Int)
(assert (>= a34 0))
(declare-const a35 Int)
(assert (>= a35 0))
(declare-const a36 Int)
(assert (>= a36 0))
(declare-const a37 Int)
(assert (>= a37 0))
(declare-const a38 Int)
(assert (>= a38 0))
(declare-const a39 Int)
(assert (>= a39 0))
(declare-const a40 Int)
(assert (>= a40 0))
(declare-const a41 Int)
(assert (>= a41 0))
(declare-const a42 Int)
(assert (>= a42 0))
(declare-const a43 Int)
(assert (>= a43 0))
(declare-const a44 Int)
(assert (>= a44 0))
(declare-const a45 Int)
(assert (>= a45 0))
(declare-const a46 Int)
(assert (>= a46 0))
(declare-const a47 Int)
(assert (>= a47 0))
(declare-const a48 Int)
(assert (>= a48 0))
(declare-const a49 Int)
(assert (>= a49 0))
(declare-const a50 Int)
(assert (>= a50 0))
(declare-const a51 Int)
(assert (>= a51 0))
(declare-const a52 Int)
(assert (>= a52 0))
(declare-const a53 Int)
(assert (>= a53 0))
(declare-const a54 Int)
(assert (>= a54 0))
(declare-const a55 Int)
(assert (>= a55 0))
(declare-const a56 Int)
(assert (>= a56 0))
(declare-const a57 Int)
(assert (>= a57 0))
(declare-const a58 Int)
(assert (>= a58 0))
(declare-const a59 Int)
(assert (>= a59 0))
(declare-const a60 Int)
(assert (>= a60 0))
(declare-const a61 Int)
(assert (>= a61 0))
(declare-const a62 Int)
(assert (>= a62 0))
(declare-const a63 Int)
(assert (>= a63 0))
(declare-const a64 Int)
(assert (>= a64 0))
(declare-const a65 Int)
(assert (>= a65 0))
(declare-const a66 Int)
(assert (>= a66 0))
(declare-const a67 Int)
(assert (>= a67 0))
(declare-const a68 Int)
(assert (>= a68 0))
(declare-const a69 Int)
(assert (>= a69 0))
(declare-const a70 Int)
(assert (>= a70 0))
(declare-const a71 Int)
(assert (>= a71 0))
(declare-const a72 Int)
(assert (>= a72 0))
(declare-const a73 Int)
(assert (>= a73 0))
(declare-const a74 Int)
(assert (>= a74 0))
(declare-const a75 Int)
(assert (>= a75 0))
(declare-const a76 Int)
(assert (>= a76 0))
(declare-const a77 Int)
(assert (>= a77 0))
(declare-const a78 Int)
(assert (>= a78 0))
(declare-const a79 Int)
(assert (>= a79 0))
(declare-const a80 Int)
(assert (>= a80 0))

(assert (= a1 (+ p_0_0_0_0 p_0_0_1_1)))
(assert (= a2 (+ p_0_0_0_1 p_0_0_1_0)))
(assert (= a3 (+ p_0_0_0_2 a1)))
(assert (= a4 (+ p_0_0_1_2 p_0_0_2_1)))
(assert (= a5 (+ p_0_0_2_0 p_0_1_1_0)))
(assert (= a6 (+ p_0_0_2_2 p_0_1_1_1)))
(assert (= a7 (+ p_0_1_0_0 a6)))
(assert (= a8 (+ p_0_1_0_1 a5)))
(assert (= a9 (+ p_0_1_0_2 a7)))
(assert (= a10 (+ p_0_1_1_2 p_0_1_2_1)))
(assert (= a11 (+ p_0_1_2_0 p_0_2_1_0)))
(assert (= a12 (+ p_0_1_2_2 p_0_2_1_1)))
(assert (= a13 (+ p_0_2_0_0 a12)))
(assert (= a14 (+ p_0_2_0_1 a11)))
(assert (= a15 (+ p_0_2_0_2 a13)))
(assert (= a16 (+ p_0_2_1_2 p_0_2_2_1)))
(assert (= a17 (+ p_0_2_2_0 p_1_1_1_0)))
(assert (= a18 (+ p_0_2_2_2 p_1_1_1_2)))
(assert (= a19 (+ p_1_0_0_0 p_1_0_1_1)))
(assert (= a20 (+ p_1_0_0_1 p_1_0_1_0)))
(assert (= a21 (+ p_1_0_0_2 a19)))
(assert (= a22 (+ p_1_0_1_2 p_1_0_2_1)))
(assert (= a23 (+ p_1_0_2_0 a17)))
(assert (= a24 (+ p_1_0_2_2 p_1_1_1_1)))
(assert (= a25 (+ p_1_1_0_0 a24)))
(assert (= a26 (+ p_1_1_0_1 a23)))
(assert (= a27 (+ p_1_1_0_2 a25)))
(assert (= a28 (+ p_1_1_2_0 p_1_2_1_0)))
(assert (= a29 (+ p_1_1_2_1 a28)))
(assert (= a30 (+ p_1_1_2_2 p_1_2_1_1)))
(assert (= a31 (+ p_1_2_0_0 a30)))
(assert (= a32 (+ p_1_2_0_1 a29)))
(assert (= a33 (+ p_1_2_0_2 a31)))
(assert (= a34 (+ p_1_2_1_2 p_1_2_2_1)))
(assert (= a35 (+ p_1_2_2_0 p_2_1_1_0)))
(assert (= a36 (+ p_1_2_2_2 p_2_1_1_2)))
(assert (= a37 (+ p_2_0_0_0 p_2_0_1_1)))
(assert (= a38 (+ p_2_0_0_1 p_2_0_1_0)))
(assert (= a39 (+ p_2_0_0_2 a37)))
(assert (= a40 (+ p_2_0_1_2 p_2_0_2_1)))
(assert (= a41 (+ p_2_0_2_0 a35)))
(assert (= a42 (+ p_2_0_2_2 p_2_1_1_1)))
(assert (= a43 (+ p_2_1_0_0 a42)))
(assert (= a44 (+ p_2_1_0_1 a41)))
(assert (= a45 (+ p_2_1_0_2 a43)))
(assert (= a46 (+ p_2_1_2_0 p_2_2_1_0)))
(assert (= a47 (+ p_2_1_2_1 a46)))
(assert (= a48 (+ p_2_1_2_2 p_2_2_1_1)))
(assert (= a49 (+ p_2_2_0_0 a48)))
(assert (= a50 (+ p_2_2_0_1 a47)))
(assert (= a51 (+ p_2_2_0_2 a49)))
(assert (= a52 (+ p_2_2_1_2 p_2_2_2_1)))
(assert (= a53 (+ p_2_2_2_0 a26)))
(assert (= a54 (+ p_2_2_2_2 a18)))
(assert (= a55 (+ a2 a4)))
(assert (= a56 (+ a3 a8)))
(assert (= a57 (+ a9 a10)))
(assert (= a58 (+ a14 a15)))
(assert (= a59 (+ a16 a27)))
(assert (= a60 (+ a20 a22)))
(assert (= a61 (+ a21 a53)))
(assert (= a62 (+ a54 a32)))
(assert (= a63 (+ a33 a34)))
(assert (= a64 (+ a38 a40)))
(assert (= a65 (+ a39 a44)))
(assert (= a66 (+ a45 a36)))
(assert (= a67 (+ a50 a51)))
(assert (= a68 (+ a52 a59)))
(assert (= a69 (+ a55 a57)))
(assert (= a70 (+ a56 a69)))
(assert (= a71 (+ a58 a68)))
(assert (= a72 (+ a60 a71)))
(assert (= a73 (+ a61 a62)))
(assert (= a74 (+ a63 a64)))
(assert (= a75 (+ a65 a67)))
(assert (= a76 (+ a66 a75)))
(assert (= a77 (+ a70 a72)))
(assert (= a78 (+ a73 a74)))
(assert (= a79 (+ a76 a77)))
(assert (= a80 (+ a79 a78)))
(assert (= a80 162))

(assert (not (>= p_1_2_1_2 1)))

(check-sat)
(exit)
