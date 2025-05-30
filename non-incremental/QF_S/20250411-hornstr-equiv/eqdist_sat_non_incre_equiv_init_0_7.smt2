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
(assert (let ((a!1 (re.++ (re.++ (str.to_re "rn") (re.* (str.to_re "nn")))
                  (str.to_re "b"))))
  (and (str.in_re X a!1) (not isin) (= X varout) isout)))
(assert (let ((a!1 (re.++ (re.union (str.to_re "r") (str.to_re "b"))
                  (re.* (re.union (str.to_re "r") (str.to_re "b")))))
      (a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "b")))
                  (str.to_re "n"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "b")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.union (str.to_re "n")
                     (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!3))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "b"))) a!4)))
(let ((a!6 (re.* (re.union (str.to_re "b") (re.++ (str.to_re "n") a!5)))))
(let ((a!7 (re.++ (re.union (str.to_re "b") (re.++ (str.to_re "n") a!5))
                  (re.++ a!6 (re.++ (str.to_re "n") a!2))))
      (a!9 (re.++ (re.union (str.to_re "b") (re.++ (str.to_re "n") a!5))
                  (re.++ a!6 (str.to_re "r")))))
(let ((a!8 (re.++ a!6 (re.union (re.++ (str.to_re "n") a!2) a!7)))
      (a!10 (re.++ a!5 (re.++ a!6 (re.union (str.to_re "r") a!9))))
      (a!11 (re.++ (re.union (str.to_re "r") (str.to_re "b"))
                   (re.++ a!6 (re.union (str.to_re "r") a!9)))))
(let ((a!12 (re.union (str.to_re "")
                      (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!8))))
(let ((a!13 (re.++ (re.* (re.union (str.to_re "n") a!11)) a!12)))
(let ((a!14 (re.union a!12 (re.++ (re.union (str.to_re "n") a!11) a!13))))
(let ((a!15 (re.++ (re.* (re.union (str.to_re "n") a!11)) a!14)))
  (str.in_re varout (re.union (re.union a!2 (re.++ a!5 a!8)) (re.++ a!10 a!15))))))))))))))
(check-sat)
(exit)
