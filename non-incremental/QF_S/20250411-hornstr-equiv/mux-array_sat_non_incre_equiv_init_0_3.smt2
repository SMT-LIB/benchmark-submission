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
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "F") (str.to_re "B"))
                               (str.to_re "D"))
                     (str.to_re "A"))))
(let ((a!2 (re.* (re.union (re.union a!1 (str.to_re "E")) (str.to_re "C")))))
  (str.in_re varout a!2))))
(declare-fun varin () String)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "F") (str.to_re "B"))
                               (str.to_re "D"))
                     (str.to_re "A"))))
(let ((a!2 (re.* (re.union (re.union a!1 (str.to_re "E")) (str.to_re "C")))))
  (str.in_re varin a!2))))
(declare-fun X () String)
(declare-fun isin () Bool)
(declare-fun isout () Bool)
(assert (let ((a!1 (re.union (str.to_re "")
                     (re.++ (str.to_re "B") (re.* (str.to_re "B"))))))
(let ((a!2 (re.++ (re.++ (str.to_re "A") (str.to_re "B"))
                  (re.++ (re.* (str.to_re "B")) a!1))))
  (and (str.in_re X a!2) (not isin) (= X varout) isout))))
(assert (let ((a!1 (re.++ (re.union (str.to_re "D") (str.to_re "C"))
                  (re.* (re.union (str.to_re "D") (str.to_re "C")))))
      (a!3 (re.union (re.union (re.union (str.to_re "F") (str.to_re "B"))
                               (str.to_re "A"))
                     (str.to_re "E"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "D") (str.to_re "C")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.++ (re.* (re.union (str.to_re "D") (str.to_re "C"))) a!3)))
(let ((a!5 (re.union a!3 (re.++ (re.union (str.to_re "D") (str.to_re "C")) a!4)))
      (a!9 (re.++ (re.union (re.union (str.to_re "F") (str.to_re "A"))
                            (str.to_re "E"))
                  a!2)))
(let ((a!6 (re.++ (re.* (re.union (str.to_re "D") (str.to_re "C"))) a!5)))
(let ((a!7 (re.++ (re.union (re.union (str.to_re "F") (str.to_re "A"))
                            (str.to_re "E"))
                  a!6)))
(let ((a!8 (re.union (re.union (re.union (str.to_re "B") (str.to_re "D"))
                               (str.to_re "C"))
                     a!7)))
(let ((a!10 (re.union a!9 (re.++ a!8 (re.++ (re.* a!8) a!9)))))
(let ((a!11 (re.union a!2 (re.++ a!6 (re.++ (re.* a!8) a!10)))))
  (str.in_re varout a!11))))))))))
(check-sat)
(exit)
