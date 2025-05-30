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
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "A") (str.to_re "W"))
                           (str.to_re "C")))))
  (str.in_re varout a!1)))
(declare-fun varin () String)
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "A") (str.to_re "W"))
                           (str.to_re "C")))))
  (str.in_re varin a!1)))
(declare-fun X () String)
(declare-fun reg2 () String)
(declare-fun Y () String)
(declare-fun reg0 () String)
(declare-fun reg1 () String)
(declare-fun isin () Bool)
(declare-fun isout () Bool)
(assert (and true
     (= X reg2)
     (= Y reg2)
     (str.in_re reg0 (re.* (str.to_re "A")))
     (str.in_re reg1 (re.* (str.to_re "W")))
     (str.in_re reg2 (re.* (str.to_re "A")))
     (= X varin)
     isin
     (= Y varout)
     isout))
(assert (let ((a!1 (re.++ (re.union (str.to_re "A") (str.to_re "W"))
                  (re.* (re.union (str.to_re "A") (str.to_re "W")))))
      (a!3 (re.++ (re.* (re.union (str.to_re "A") (str.to_re "W")))
                  (str.to_re "C"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "A") (str.to_re "W")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.union (str.to_re "C")
                     (re.++ (re.union (str.to_re "A") (str.to_re "W")) a!3))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "A") (str.to_re "W"))) a!4)))
  (str.in_re varin (re.union a!2 (re.++ a!5 a!2)))))))
(assert (let ((a!1 (re.++ (re.* (re.union (str.to_re "A") (str.to_re "W")))
                  (str.to_re "C")))
      (a!4 (re.* (re.union (re.union (str.to_re "A") (str.to_re "W"))
                           (str.to_re "C")))))
(let ((a!2 (re.union (str.to_re "C")
                     (re.++ (re.union (str.to_re "A") (str.to_re "W")) a!1)))
      (a!5 (re.++ (re.union (re.union (str.to_re "A") (str.to_re "W"))
                            (str.to_re "C"))
                  a!4)))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "A") (str.to_re "W"))) a!2)))
(let ((a!6 (re.++ (re.++ a!3 a!3) (re.++ a!4 (re.union (str.to_re "") a!5)))))
  (str.in_re varout a!6))))))
(check-sat)
(exit)
