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
(assert (str.in_re varout (re.* (re.union (str.to_re "n") (str.to_re "t")))))
(declare-fun varin () String)
(assert (str.in_re varin (re.* (re.union (str.to_re "n") (str.to_re "t")))))
(declare-fun X () String)
(declare-fun isin () Bool)
(declare-fun isout () Bool)
(assert (let ((a!1 (str.in_re X (re.++ (str.to_re "t") (re.* (str.to_re "n"))))))
  (and a!1 (not isin) (= X varout) isout)))
(assert (let ((a!1 (re.union (str.to_re "")
                     (re.++ (str.to_re "n") (re.* (str.to_re "n")))))
      (a!2 (re.++ (str.to_re "n")
                  (re.++ (re.* (str.to_re "n")) (str.to_re "t")))))
(let ((a!3 (re.++ (str.to_re "t")
                  (re.++ (re.* (str.to_re "n")) (re.union (str.to_re "t") a!2))))
      (a!4 (re.++ (str.to_re "t") (re.++ (re.* (str.to_re "n")) a!1))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "n") a!3)) a!4)))
(let ((a!6 (re.union a!4 (re.++ (re.union (str.to_re "n") a!3) a!5))))
(let ((a!7 (re.++ (re.* (re.union (str.to_re "n") a!3)) a!6)))
(let ((a!8 (re.++ (re.++ (re.* (str.to_re "n")) (re.union (str.to_re "t") a!2))
                  a!7)))
(let ((a!9 (re.union (re.++ (re.* (str.to_re "n")) a!1) a!8)))
  (str.in_re varout a!9)))))))))
(check-sat)
(exit)
