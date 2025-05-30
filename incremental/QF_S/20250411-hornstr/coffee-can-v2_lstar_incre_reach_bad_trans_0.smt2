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
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "0") (str.to_re "1"))
                           (str.to_re "2")))))
  (str.in_re X a!1)))
(declare-fun reg2 () String)
(declare-fun Y () String)
(declare-fun reg0 () String)
(declare-fun reg1 () String)
(assert (let ((a!1 (str.in_re reg0 (re.* (re.union (str.to_re "1") (str.to_re "0"))))))
  (and true
       (= X reg2)
       (= Y reg2)
       a!1
       (str.in_re reg1 (re.* (str.to_re "1")))
       (str.in_re reg2 (re.* (str.to_re "0"))))))
(push 1)
(assert (= Y "021"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "210"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "21"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "2100"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "0210"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "0021"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "02100"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "00021"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "21000"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (= Y "00210"))
(set-info :status unknown)
(check-sat)
(pop 1)
(set-info :status unknown)
(check-sat)
(exit)
