(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Ali K. Uncu, Matthew England, and James H. Davenport
Generated on: 2022-01-06

Generator: SUMCracker-ProveInequality function by Manuel Kauers ("https://www3.risc.jku.at/research/combinat/software/ergosum/RISC/SumCracker.html")
Translated to SMT-Lib by Maple SMTLIB package.

Application: CAD calls of SUMCracker-ProveInequality to prove Example 4 in
M. Kauers and V. Pillwein, When can we detect that a P-finite sequence is positive?
ISSAC '10: Proceedings of the 2010 International Symposium on Symbolic and Algebraic ComputationJuly 2010 Pages 195–201
(https://doi.org/10.1145/1837934.1837974)

All denominators in the original CAD call got cleared in a simple way:
a/b == c/d --> a d==b c && b<>0 && d<>0
a/b > c/d --> a d^2 >=b^2 c && b<>0 && d<>0
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status sat)
(set-info :category "industrial")

(declare-fun V1 () Real)
(declare-fun V2 () Real)
(declare-fun V3 () Real)
(assert (and (<= 0 V1) (<= 0 V2) (<= 1 V3) (<= 0 V3) (<= 0 (+ 1 V3)) (<= 0 (+ 2 V3)) (<= 0 (+ 3 V3)) (<= 0 (* (* (* (+ 3 V3) (+ 3 V3)) (- (* V1 (+ (* V3 V3) (* V3 5) 4)) (* V2 (+ (* (* V3 V3) 3) (* V3 17) 22)))) (- 2))) (<= 0 (* (* (+ 3 V3) (+ 4 V3) (+ (* (* V1 (+ (* (* V3 V3) 3) (* V3 17) 14)) (- 1)) (* V2 (+ (* (* V3 V3) 7) (* V3 45) 62)))) 4)) (< (* (* (+ 3 V3) (+ 5 V3) (+ (* (* V1 (+ (* (* V3 V3) 7) (* V3 45) 38)) (- 1)) (* V2 (+ (* (* V3 V3) 15) (* V3 109) 158)))) 8) 0) (not (= (* (* (+ 3 V3) (+ 3 V3)) 2) 0)) (not (= (* (* (+ 3 V3) (+ 4 V3)) 4) 0)) (not (= (* (* (+ 3 V3) (+ 5 V3)) 8) 0))))
(check-sat)
(exit)

























