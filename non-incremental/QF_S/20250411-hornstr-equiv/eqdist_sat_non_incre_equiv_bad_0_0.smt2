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
(set-info :status unknown)
(declare-fun varout () String)
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "r") (str.to_re "b"))
                           (str.to_re "n")))))
  (str.in_re varout a!1)))
(declare-fun varin () String)
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "r") (str.to_re "b"))
                           (str.to_re "n")))))
  (str.in_re varin a!1)))
(declare-fun X () String)
(declare-fun isin () Bool)
(declare-fun isout () Bool)
(assert (let ((a!1 (re.++ (re.++ (str.to_re "bn") (re.* (str.to_re "n")))
                  (str.to_re "r"))))
  (and (str.in_re X a!1) true (= X varin) isin (not isout))))
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "r") (str.to_re "b"))
                           (str.to_re "n")))))
(let ((a!2 (re.++ (re.union (re.union (str.to_re "r") (str.to_re "b"))
                            (str.to_re "n"))
                  a!1)))
  (str.in_re varin (re.++ a!1 (re.union (str.to_re "") a!2))))))
(check-sat)
(exit)
