(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Ali K. Uncu, Matthew England, and James H. Davenport
Generated on: 2022-02-01

Generator: SUMCracker-ProveInequality function by Manuel Kauers ("https://www3.risc.jku.at/research/combinat/software/ergosum/RISC/SumCracker.html")
Translated to SMT-Lib by Maple SMTLIB package.

Application: Automated proof of (3.31) in 
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
(assert (and (or (and (< 0 (+ 3 (* V2 3))) (< (+ 5 (* V2 3) (* (* V1 (+ 1 V2)) 2)) (* (* (+ 1 V2) V3) 3))) (and (< (* V2 3) (- 3)) (< (* (* (+ 1 V2) V3) 3) (+ 5 (* V2 3) (* (* V1 (+ 1 V2)) 2))))) (<= 0 V1) (<= 1 V2) (<= 0 V2) (or (and (< 0 (+ 1 V2)) (<= 0 (+ 1 (* V1 (+ 1 V2))))) (and (< V2 (- 1)) (<= (* V1 (+ 1 V2)) (- 1)))) (or (and (or (and (< 0 (+ 5 (* V2 3))) (< 0 (* (* (+ 1 V2) (+ 2 V2)) 3))) (and (< (* V2 3) (- 5)) (< (* (* (+ 1 V2) (+ 2 V2)) 3) 0))) (<= (* (* (+ 1 V2) (+ 2 V2) (+ 7 (* V2 3)) V3) 3) (* (+ 5 (* V2 3)) (+ 12 (* V2 13) (* (* V2 V2) 3) (* (* V1 (+ (* V2 V2) (* V2 3) 2)) 2))))) (and (or (and (< 0 (+ 5 (* V2 3))) (< (* (* (+ 1 V2) (+ 2 V2)) 3) 0)) (and (< (* V2 3) (- 5)) (< 0 (* (* (+ 1 V2) (+ 2 V2)) 3)))) (<= (* (+ 5 (* V2 3)) (+ 12 (* V2 13) (* (* V2 V2) 3) (* (* V1 (+ (* V2 V2) (* V2 3) 2)) 2))) (* (* (+ 1 V2) (+ 2 V2) (+ 7 (* V2 3)) V3) 3))))))
(check-sat)
(exit)







