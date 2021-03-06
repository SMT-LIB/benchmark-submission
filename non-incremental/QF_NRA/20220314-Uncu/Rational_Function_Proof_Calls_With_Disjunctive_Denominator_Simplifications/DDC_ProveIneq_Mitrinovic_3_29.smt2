(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Ali K. Uncu, Matthew England, and James H. Davenport
Generated on: 2022-02-01

Generator: SUMCracker-ProveInequality function by Manuel Kauers ("https://www3.risc.jku.at/research/combinat/software/ergosum/RISC/SumCracker.html")
Translated to SMT-Lib by Maple SMTLIB package.

Application: Automated proof of (3.29) in 
D.S. Mitrinovic, Elementary Inequalities, P. Noordhoff ltd - Groningen, (1964)
("https://www.isinj.com/mt-usamo/Elementary%20Inequalities%20-%20Mitrinovic,%20et.%20al.%20(1964,%20Noordhoff).pdf")

All denominators in the original CAD call got cleared by introducing disjunctions with sign conditions:
a/b == c/d --> a d==b c && b<>0 && d<>0
a/b >= c  --> a >=b c && b >0  or ( a <= b c && b < 0)
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status unsat)
(set-info :category "industrial")


(declare-fun V1 () Real)
(declare-fun V2 () Real)
(declare-fun V3 () Real)
(declare-fun V4 () Real)
(assert (and (= (* V1 V1) V3) (= (* V2 V2) (+ 1 V3)) (< 0 V1) (< 0 V2) (<= 2 V3) (<= 0 (+ (- 1) V3)) (or (and (< 0 (* V1 2)) (< 1 (* (* V1 V4) 2))) (and (< (* V1 2) 0) (< (* (* V1 V4) 2) 1))) (or (and (or (and (< 0 (* V2 2)) (< 0 (+ 2 (* V3 2)))) (and (< (* V2 2) 0) (< (* V3 2) (- 2)))) (<= (* (* V2 (+ 1 (* V3 2)) V4) 2) (+ 2 (* V3 2)))) (and (or (and (< 0 (* V2 2)) (< (* V3 2) (- 2))) (and (< (* V2 2) 0) (< 0 (+ 2 (* V3 2))))) (<= (+ 2 (* V3 2)) (* (* V2 (+ 1 (* V3 2)) V4) 2))))))
(check-sat)
(exit)







