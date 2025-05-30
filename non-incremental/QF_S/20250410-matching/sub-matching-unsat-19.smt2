(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Shaoke Cui
Generated on: 2025-04-10
Application: Using String Solvers to solve string matching problems
Target solver: cvc5, OSTRICH, Z3, Z3alpha, Z3-noodler
Benchmarks for substring matching problem, which needs to determine whether the pattern string exists in the text string.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status unsat)
(declare-fun a1() String)
(declare-fun a2() String)
(declare-fun a3() String)
(declare-fun a4() String)
(declare-fun a5() String)
(declare-fun a6() String)
(declare-fun a7() String)
(declare-fun a8() String)
(declare-fun a9() String)
(declare-fun a10() String)
(declare-fun a11() String)
(declare-fun a12() String)
(declare-fun a13() String)
(declare-fun a14() String)
(declare-fun a15() String)
(declare-fun a16() String)
(declare-fun a17() String)
(declare-fun a18() String)
(declare-fun a19() String)
(declare-fun a20() String)
(declare-fun a21() String)
(declare-fun a22() String)
(declare-fun a23() String)
(declare-fun a24() String)
(declare-fun a25() String)
(declare-fun a26() String)
(declare-fun a27() String)
(declare-fun a28() String)
(declare-fun a29() String)
(declare-fun a30() String)
(declare-fun a31() String)
(declare-fun a32() String)
(declare-fun a33() String)
(declare-fun a34() String)
(declare-fun a35() String)
(declare-fun a36() String)
(declare-fun a37() String)
(declare-fun a38() String)
(assert (= a1 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a2 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a3 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a4 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a5 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a6 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a7 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a8 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a9 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a10 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a11 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a12 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a13 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a14 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a15 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a16 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a17 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a18 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a19 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a20 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a21 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a22 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a23 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a24 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a25 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a26 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a27 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a28 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a29 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a30 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a31 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a32 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a33 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a34 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a35 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a36 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a37 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (= a38 "JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJ"))
(assert (str.contains (str.++ a15 a15 a1 a13 a7 a5 a9 a1 a3 a5 a4 a15 a10 a3 a5 a17 a16 a14 a19 a11 a12 a17 a14 a4 a12 a2 a16 a2 a1 a18 a18 a16 a5 a11 a17 a18 a17 a2 a11 a10 a10 a4 a9 a3 a6 a17 a10 a13 a11 a2 a19 a4 a16 a3 a11 a9 a4 a3 a3 a8 a12 a6 a19 a17 a15 a14 a18 a18 a17 a13 a17 a14 a8 a11 a11 a1 a8 a16 a9 a5 a4 a6 a5 a13 a8 a7 a17 a6 a6 a8 a15 a1 a17 a16 a16 a10 a2 a15 a17 a5 a19 a15 a17 a12 a6 a1 a16 a19 a17 a3 a13 a9 a11 a2 a8 a11 a15 a6 a17 a19 a12 a12 a7 a14 a16 a5 a2 a18 a4 a17 a12 a7 a10 a14 a17 a19 a15 a15 a10 a18 a3 a6 a19 a4 a14 a18 a17 a6 a19 a9 a14 a18 a4 a1 a4 a15 a14 a11 a5 a19 a9 a16 a13 a13 a2 a2 a18 a1 a18 a1 a15 a6 a15 a12 a14 a1 a13 a4 a1 a2 a11 a1 a7 a2 a8 a4 a19 a19 a11 a4 a5 a8 a14 a3 a6 a9 a4 a17 a13 a2 a12 a8 a8 a3 a8 a15 a16 a14 a12 a4 a9 a6 a7 a4 a16 a14 a8 a9 a16 a9 a8 a17 a4 a2 a18 a16 a19 a12 a3 a7 a12 a9 a18 a7 a1 a9 a12 a5 a13 a16 a17 a16 a18 a18 a9 a19 a14 a4 a8 a10 a2 a1 a6 a17 a18 a5 a9 a7 a7 a5 a18 a5 a1 a5 a5 a4 a13 a14 a19 a5 a2 a12 a10 a16 a3 a8 a11 a12 a3 a3 a14 a4 a8 a19 a9 a9 a7 a8 a15 a15 a14 a8 a19 a13 a2 a14 a12 a18 a10 a7 a7 a18 a10 a18 a18 a15 a12 a3 a11 a1 a15 a7 a13 a13 a1 a6 a4 a9 a12 a7 a9 a7 a6 a5 a9 a6 a15 a15 a13 a11 a7 a9 a14 a10 a19 a10 a15 a5 a17 a14 a17 a13 a9 a13 a2 a19 a11 a12 a5 a4 a2 a5 a2 a6 a4 a4 a1 a10 a7 a9 a1 a2 a13 a5 a1 a10 a12 a16 a11 a1 a14 a4 a6 a14 a2 a15 a19 a9 a13 a15 a8 a12 a3 a19 a6 a3 a6 a11 a7 a2 a10 a7 a9 a8 a8 a4 a19 a17 a3 a4 a3 a16 a7 a9 a4 a3 a18 a11 a12 a1 a14 a15 a9 a1 a12 a5 a10 a15 a11 a12 a16 a18 a4 a5 a16 a1 a11 a14 a10 a2 a13 a19 a11 a6 a5 a19 a13 a1 a12 a9 a18 a12 a11 a12 a15 a4 a1 a10 a12 a17 a7 a9 a15 a4 a16 a5 a4 a10 a7 a12 a14 a10 a14 a10 a16 a18 a13 a3 a13 a11 a12 a9 a3 a11 a12 a11 a4 a8 a13 a3 a16 a7 a17 a17 a17 a11 a3 a15 a12 a19 a1 a13 a10 a13 a14 a7 a6 a10 a19 a4 a6 a16 a12 a4 a5 a2 a16 a5 a8 a19 a18 a6 a14 a13 a19 a18 a5 a8 a14 a10 a13 a16 a9 a3 a10 a6 a18 a5 a17 a19 a10 a16 a5 a12 a8 a9 a4 a14 a16 a3 a7 a4 a8 a7 a6 a17 a10 a7 a4 a1 a3 a14 a5 a19 a14 a12 a1 a14 a2 a9 a16 a9 a18 a7 a9 a2 a7 a2 a19 a15 a17 a1 a11 a6 a19 a2 a10 a8 a17 a2 a16 a17 a18 a4 a12 a3 a19 a18 a10 a4 a13 a2 a11 a19 a14 a2 a19 a1 a6 a7 a6 a4 a2 a18 a9 a16 a15 a19 a4 a10 a2 a16 a17 a12 a18 a18 a16 a6 a7 a5 a7 a5 a14 a1 a11 a17 a8 a7 a12 a11 a1 a9 a8 a2 a5 a19 a14 a13 a14 a2 a9 a6 a12 a19 a17 a14 a18 a17 a16 a7 a12 a3 a13 a19 a1 a17 a12 a6 a14 a18 a17 a17 a6 a16 a10 a12 a9 a18 a12 a17 a18 a9 a14 a12 a4 a10 a17 a18 a6 a15 a12 a16 a15 a10 a4 a1 a10 a15 a12 a3 a1 a11 a16 a16 a19 a1 a11 a5 a2 a16 a16 a2 a3 a10 a19 a16 a11 a14 a10 a16 a14 a18 a4 a12 a15 a12 a13 a8 a15 a7 a11 a6 a11 a6 a17 a12 a9 a17 a2 a4 a19 a17 a17 a18 a6 a6 a2 a4 a2 a19 a15 a3 a3 a8 a1 a10 a9 a9 a17 a14 a15 a19 a5 a8 a17 a19 a16 a15 a5 a4 a10 a1 a2 a15 a5 a19 a18 a12 a6 a10 a6 a9 a11 a16 a7 a7 a17 a14 a18 a6 a10 a15 a17 a16 a12 a19 a13 a5 a4 a1 a16 a5 a11 a4 a7 a6 a7 a6 a5 a15 a9 a6 a12 a2 a1 a8 a15 a18 a8 a2 a13 a12 a16 a18 a15 a13 a14 a6 a7 a6 a13 a6 a3 a19 a7 a19 a1 a16 a6 a11 a7 a14 a16 a16 a12 a17 a15 a7 a15 a14 a7 a18 a14 a16 a5 a2 a1 a6 a5 a2 a3 a5 a3 a3 a16 a2 a4 a18 a3 a10 a10 a7 a15 a16 a8 a3 a16 a15 a14 a16 a3 a4 a18 a8 a13 a17 a17 a13 a18 a10 a16 a3 a11 a10 a6 a19 a4 a3 a15 a2 a9 a15 a16 a8 a7 a6 a8 a3 a12 a13 a4 a11 a16 a8 a10 a19 a15 a4 a9 a9 a14 a19 a12 a12 a11 a9 a16 a2 a8 a15 a17 a11 a18 a16 a5 a14 a18 a10 a8 a12 a16 a1 a10 a15 a5 a13 a2 a9 a4 a19 a14 a17 a12 a1 a16 a4 a11 a11 a17 a15 a8 a12 a11 a1 a8 a12 a11 a11 a18 a3 a3 a2 a1 a18 a11 a4 a13 a10 a15 a2 a9 a19 a1 a1 a3 a17 a8 a12 a7 a16 a7 a2 a1 a15 a14 a14 a3 a17 a3 a16 a8 a16 a6 a19 a12 a16 a8 a9 a9 a8 a8 a8 a1 a17 a8 a17 a1 a3 a3 a13 a16 a14 a13 a15 a14 a3 a18 a16 a6 a14 a19 a5 a9 a14 a7 a6 a18 a14 a13 a11 a15 a2 a18 a12 a5 a14 a11 a16 a7 a4 a10 a3 a7 a2 a11 a6 a8 a16 a16 a3 a2 a14 a15 a17 a13 a11 a18 a6 a8 a5 a6 a1 a5 a16 a16 a3 a7 a15 a9 a1 a10 a11 a2 a8 a11 a17 a1 a12 a6 a17 a8 a12 a8 a16 a2 a4 a5 a3 a15 a10 a2 a19 a5 a12 a6 a9 a11  "0" a36 a25 a21 a24 a21 a20 a27 a29 a27 a38 a20 a35 a27 a37 a27 a27 a24 a35 a30 a37 a29 a38 a31 a25 a26 a37 a35 a34 a24 a36 a33 a34 a35 a30 a36 a25 a24 a35 a29 a33 a28 a36 a38 a21 a28 a21 a25 a38 a24 a30 a21 a36 a35 a37 a37 a28 a29 a37 a38 a21 a22 a35 a31 a36 a21 a31 a27 a21 a33 a23 a21 a21 a38 a21 a20 a27 a30 a22 a29 a27 a20 a28 a31 a25 a30 a27 a32 a38 a37 a34 a37 a25 a20 a35 a20 a22 a36 a25 a24 a22 a27 a35 a37 a28 a26 a30 a28 a29 a38 a32 a23 a25 a31 a20 a32 a27 a37 a32 a25 a24 a23 a24 a29 a33 a30 a30 a32 a37 a32 a28 a23 a28 a25 a26 a38 a37 a26 a30 a20 a34 a36 a34 a37 a35 a30 a21 a28 a20 a22 a27 a24 a21 a21 a24 a24 a28 a20 a27 a28 a24 a31 a37 a20 a28 a25 a37 a32 a29 a24 a23 a30 a24 a29 a23 a33 a24 a32 a38 a37 a38 a38 a22 a23 a20 a25 a36 a23 a25 a20 a27 a27 a24 a35 a34 a29 a29 a23 a24 a21 a37 a30 a27 a22 a27 a30 a25 a37 a31 a33 a27 a34 a31 a24 a25 a35 a35 a20 a27 a31 a27 a34 a30 a29 a22 a31 a31 a37 a23 a24 a37 a24 a38 a32 a28 a38 a25 a27 a32 a31 a35 a25 a22 a22 a22 a34 a24 a33 a23 a25 a26 ) (str.++ a30 a36 a23 a20 a34 a22 a22 a33 a26 a37 a35 a27 a36 a36 a32 a23 a24 a34 a29 a26 a37 a21 a32 a37 a29 a21 a35 a22 a24 a35 a20 a33 a38 a21 a35 a24 a25 a35 a25 a34 a38 a34 a35 a34 a28 a21 a24 a37 a36 a32 a31 a23 a33 a33 a32 a24 a27 a24 a25 a27 a31 a26 a34 a35 a34 a30 a37 a24 a28 a30 a32 a23 a20 a38 a26 a20 a34 a21 a26 a38 a38 a20 a30 a29 a27 a37 a36 a21 a33 a21 a34 a34 a29 a37 a34 a32 a34 a31 a23 a24 a35 a35 a22 a34 a21 a23 a31 a26 a31 a36 a35 a32 a25 a35 a34 a23 a22 a20 a37 a22 a30 a25 a24 a27 a37 a26 a21 a37 a38 a33 a20 a31 a24 a23 a31 a24 a36 a35 a32 a24 a31 a33 a21 a31 a33 a33 a24 a35 a34 a34 a32 a30 a28 a30 a23 a36 a22 a23 a37 a27 a30 a26 a37 a26 a27 a22 a28 a22 a23 a38 a36 a26 a31 a21 a22 a34 a34 a24 a33 a30 a29 a28 a26 a28 a33 a35 a20 a28 a36 a34 a25 a22 a27 a28 a20 a33 a27 a26 a27 a29 a31 a20 a37 a22 a30 a27 a27 a37 a24 a25 a31 a34 a31 a34 a37 a31 a28 a21 a29 a31 a23 a37 a22 a33 a38 a25 a27 a30 a31 a37 a26 a32 a36 a27 a23 a21 a23 a30 a33 a32 a29 a38 a34 a33 a22 a28 a27  "1")))
(check-sat)
(exit)
