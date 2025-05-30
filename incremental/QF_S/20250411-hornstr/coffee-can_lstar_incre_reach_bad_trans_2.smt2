(set-info :smt-lib-version 2.6)
(set-logic QF_S)
(set-info :source |
Generated by: Hongjian Jiang, Oliver Markgraf, Daniel Stan, Anthony W. Lin, Philipp Ruemmer
Generated on: 2025-04-11
Application: Using String Solvers to solve RMC problems encoded as CHC over Strings
Target solver: cvc5, OSTRICH, Z3, Z3alpha, Z3-noodler
Time limit: 60.0
Benchmarks are extracted by running HornStr https://arg-git.informatik.uni-kl.de/pub/string-chc-lib on all benchmarks
provided in the repository and gathering the string queries sent to the string solvers.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(declare-fun X () String)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "E") (str.to_re "O"))
                               (str.to_re "1"))
                     (str.to_re "W"))))
(let ((a!2 (re.* (re.union (re.union a!1 (str.to_re "0")) (str.to_re "B")))))
  (str.in_re X a!2))))
(declare-fun reg2 () String)
(declare-fun Y () String)
(declare-fun reg0 () String)
(declare-fun reg1 () String)
(assert (let ((a!1 (str.in_re reg1 (re.* (re.union (str.to_re "0") (str.to_re "B"))))))
  (and true
       (= X reg2)
       (= Y reg2)
       (str.in_re reg0 (re.* (str.to_re "W")))
       a!1
       (str.in_re reg2 (re.* (str.to_re "1"))))))
(push 1)
(assert (= Y "OB"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW0"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW1"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "O0B"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "OB1"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "O0B1"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "O00B"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "OB11"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW11"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW01"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "EW00"))
(set-info :status unknown)
(check-sat)
(pop 1)
(set-info :status unknown)
(check-sat)
(exit)
