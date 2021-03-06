(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Ali K. Uncu, Matthew England, and James H. Davenport
Generated on: 2022-01-06

Generator: SUMCracker-ProveInequality function by Manuel Kauers ("https://www3.risc.jku.at/research/combinat/software/ergosum/RISC/SumCracker.html")
Translated to SMT-Lib by Maple SMTLIB package.

Application: CAD calls of SUMCracker-ProveInequality to prove modified 4.15 in Mitrinovic, presented in
S. Gerhold and M. Kauers, A Procedure for Proving Special Function Inequalities Involving a Discrete Parameter.
ISSAC '05: Proceedings of the 2005 international symposium on Symbolic and algebraic computationJuly 2005 Pages 156-162.
(https://dl.acm.org/doi/10.1145/1073884.1073907)
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status unsat)
(set-info :category "industrial")

(declare-fun V1 () Real)
(declare-fun V2 () Real)
(declare-fun V3 () Real)
(declare-fun V4 () Real)
(declare-fun V5 () Real)
(declare-fun V6 () Real)
(declare-fun V7 () Real)
(assert (and (= (* V1 V1) V5) (= (* V2 V2) (+ 1 V5)) (= (* V3 V3 V3) V5) (= (* V4 V4 V4) (+ 1 V5)) (< 0 V1) (< 0 V2) (< 0 V3) (< 0 V4) (<= 0 V5) (<= 0 (+ 1 V5)) (<= (* V6 V6) (* V7 V7 V7)) (< (* (+ V4 V7) (+ V4 V7) (+ V4 V7)) (* (+ V2 V6) (+ V2 V6)))))
(check-sat)
(exit)























