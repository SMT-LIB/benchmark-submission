(set-info :smt-lib-version 2.6)
(set-logic QF_NRA)
(set-info :source |
Generated by: Ali K. Uncu, Matthew England, and James H. Davenport
Generated on: 2022-02-01

Generator: SUMCracker-ProveInequality function by Manuel Kauers ("https://www3.risc.jku.at/research/combinat/software/ergosum/RISC/SumCracker.html")
Translated to SMT-Lib by Maple SMTLIB package.

Application: Automated proof of (4.22) in 
D.S. Mitrinovic, Elementary Inequalities, P. Noordhoff ltd - Groningen, (1964)
("https://www.isinj.com/mt-usamo/Elementary%20Inequalities%20-%20Mitrinovic,%20et.%20al.%20(1964,%20Noordhoff).pdf")

All denominators in the original CAD call got cleared in a simple way:
a/b == c/d --> a d==b c && b<>0 && d<>0
a/b > c/d --> a d^2 >=b^2 c && b<>0 && d<>0
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status sat)
(set-info :category "industrial")

(declare-fun a () Real)
(declare-fun V1 () Real)
(declare-fun V2 () Real)
(declare-fun V3 () Real)
(assert (and (< 0 a) (< (* a 4) 2) (<= V1 a) (< 0 V1) (<= (* a V1) a) (< 0 (* a V1)) (< (+ (* (* (+ (- 1) (* a 2) (* V1 (- 1))) (+ (- 1) (* a 2) (* V1 (- 1)))) V2) (- 1)) (* (+ (- 1) a) (+ (- 1) (* a 2) (* V1 (- 1))))) (<= (* (- 1 a) (+ (* a V1) (* a (- 2)) 1)) (* (* (+ (* a V1) (* a (- 2)) 1) (+ (* a V1) (* a (- 2)) 1)) V3)) (not (= (+ (- 1) (* a 2) (* V1 (- 1))) 0)) (not (= (+ (* a V1) (* a (- 2)) 1) 0))))
(check-sat)
(exit)

















