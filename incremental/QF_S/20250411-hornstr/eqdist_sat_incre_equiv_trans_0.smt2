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
(declare-fun varout () String)
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "r") (str.to_re "b"))
                           (str.to_re "n")))))
  (str.in_re varout a!1)))
(declare-fun varin () String)
(assert (let ((a!1 (re.* (re.union (re.union (str.to_re "r") (str.to_re "b"))
                           (str.to_re "n")))))
  (str.in_re varin a!1)))
(declare-fun X () String)
(declare-fun A () String)
(declare-fun B () String)
(declare-fun C () String)
(declare-fun Y () String)
(declare-fun isin () Bool)
(declare-fun isout () Bool)
(assert (and true
     (= X (str.++ A "rn" B "nb" C))
     (= Y (str.++ A "nr" B "bn" C))
     (str.in_re A (re.* (str.to_re "n")))
     (str.in_re B (re.* (str.to_re "n")))
     (str.in_re C (re.* (str.to_re "n")))
     (= X varin)
     isin
     (= Y varout)
     isout))
(push 1)
(assert (let ((a!1 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!2 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!1))))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!2)))
(let ((a!4 (re.union (str.to_re "r")
                     (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!3))))
(let ((a!5 (re.++ (re.* a!4) (re.union (str.to_re "") (re.++ a!4 (re.* a!4))))))
  (str.in_re varin (re.++ a!3 a!5))))))))
(assert (let ((a!1 (re.++ (re.union (str.to_re "r") (str.to_re "n"))
                  (re.* (re.union (str.to_re "r") (str.to_re "n")))))
      (a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!4)))
(let ((a!6 (re.union (str.to_re "r")
                     (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!5))))
(let ((a!7 (re.++ (re.* a!6)
                  (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!2))))
(let ((a!8 (re.union (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!2)
                     (re.++ a!6 a!7))))
(let ((a!9 (re.union a!2 (re.++ a!5 (re.++ (re.* a!6) a!8)))))
  (str.in_re varout a!9)))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!2 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!1))))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!2)))
(let ((a!4 (re.union (str.to_re "n")
                     (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!3))))
(let ((a!5 (re.++ (re.* a!4) (re.union (str.to_re "") (re.++ a!4 (re.* a!4))))))
  (str.in_re varin (re.++ a!3 a!5))))))))
(assert (let ((a!1 (re.++ (re.union (str.to_re "r") (str.to_re "n"))
                  (re.* (re.union (str.to_re "r") (str.to_re "n")))))
      (a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!4)))
(let ((a!6 (re.union (str.to_re "n")
                     (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!5))))
(let ((a!7 (re.++ (re.* a!6)
                  (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!2))))
(let ((a!8 (re.union (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!2)
                     (re.++ a!6 a!7))))
(let ((a!9 (re.union a!2 (re.++ a!5 (re.++ (re.* a!6) a!8)))))
  (str.in_re varout a!9)))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                  (re.* (re.union (str.to_re "b") (str.to_re "n")))))
      (a!3 (re.++ (re.* (re.union (str.to_re "b") (str.to_re "n")))
                  (str.to_re "r"))))
(let ((a!2 (re.++ (re.* (re.union (str.to_re "b") (str.to_re "n")))
                  (re.union (str.to_re "") a!1)))
      (a!4 (re.union (str.to_re "r")
                     (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!3))))
(let ((a!5 (re.++ (re.* (re.union (str.to_re "b") (str.to_re "n"))) a!4)))
(let ((a!6 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!5))))
(let ((a!7 (re.++ (re.* a!6)
                  (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!2))))
(let ((a!8 (re.union (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!2)
                     (re.++ a!6 a!7))))
(let ((a!9 (re.union a!2 (re.++ a!5 (re.++ (re.* a!6) a!8)))))
  (str.in_re varin a!9)))))))))
(assert (let ((a!1 (re.++ (re.* (re.union (str.to_re "b") (str.to_re "n")))
                  (str.to_re "r"))))
(let ((a!2 (re.union (str.to_re "r")
                     (re.++ (re.union (str.to_re "b") (str.to_re "n")) a!1))))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "b") (str.to_re "n"))) a!2)))
(let ((a!4 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!5 (re.++ (re.* a!4) (re.union (str.to_re "") (re.++ a!4 (re.* a!4))))))
  (str.in_re varout (re.++ a!3 a!5))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "n"))))
      (a!2 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "b")))))
(let ((a!3 (re.++ (str.to_re "b")
                  (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))))
      (a!5 (re.++ (str.to_re "b")
                  (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "n") a!1))))
      (a!9 (re.++ (str.to_re "n")
                  (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "n") a!1))))
      (a!10 (re.++ (str.to_re "n")
                   (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2)))))
(let ((a!4 (re.* (re.union (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!6 (re.++ (re.union (re.union (str.to_re "r") (str.to_re "n")) a!3)
                  (re.++ a!4 a!5))))
(let ((a!7 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))
                  (re.++ a!4 (re.union a!5 a!6))))
      (a!11 (re.union (re.union (re.union (str.to_re "r") (str.to_re "b")) a!9)
                      (re.++ a!10 (re.++ a!4 (re.union a!5 a!6))))))
(let ((a!8 (re.union (re.++ (re.* (str.to_re "r"))
                            (re.union (str.to_re "n") a!1))
                     a!7))
      (a!12 (re.++ (re.* a!11)
                   (re.union (str.to_re "") (re.++ a!11 (re.* a!11))))))
  (str.in_re varin (re.++ a!8 a!12)))))))))
(assert (let ((a!1 (re.union (str.to_re "")
                     (re.++ (str.to_re "r") (re.* (str.to_re "r")))))
      (a!2 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "b"))))
      (a!10 (re.++ (str.to_re "r")
                   (re.++ (re.* (str.to_re "r")) (str.to_re "n")))))
(let ((a!3 (re.++ (str.to_re "b")
                  (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))))
      (a!5 (re.++ (str.to_re "b") (re.++ (re.* (str.to_re "r")) a!1)))
      (a!11 (re.++ (str.to_re "b")
                   (re.++ (re.* (str.to_re "r"))
                          (re.union (str.to_re "n") a!10))))
      (a!15 (re.++ (str.to_re "n")
                   (re.++ (re.* (str.to_re "r"))
                          (re.union (str.to_re "n") a!10))))
      (a!16 (re.++ (str.to_re "n")
                   (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))))
      (a!18 (re.++ (str.to_re "n") (re.++ (re.* (str.to_re "r")) a!1))))
(let ((a!4 (re.* (re.union (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!6 (re.++ (re.union (re.union (str.to_re "r") (str.to_re "n")) a!3)
                  (re.++ a!4 (re.union (str.to_re "") a!5))))
      (a!12 (re.++ (re.union (re.union (str.to_re "r") (str.to_re "n")) a!3)
                   (re.++ a!4 a!11))))
(let ((a!7 (re.++ a!4 (re.union (re.union (str.to_re "") a!5) a!6)))
      (a!13 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))
                   (re.++ a!4 (re.union a!11 a!12))))
      (a!17 (re.union (re.union (re.union (str.to_re "r") (str.to_re "b")) a!15)
                      (re.++ a!16 (re.++ a!4 (re.union a!11 a!12))))))
(let ((a!8 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!2))
                  a!7))
      (a!14 (re.union (re.++ (re.* (str.to_re "r"))
                             (re.union (str.to_re "n") a!10))
                      a!13))
      (a!19 (re.++ a!17 (re.++ (re.* a!17) (re.union a!18 (re.++ a!16 a!7))))))
(let ((a!9 (re.union (re.++ (re.* (str.to_re "r")) a!1) a!8))
      (a!20 (re.++ (re.* a!17) (re.union (re.union a!18 (re.++ a!16 a!7)) a!19))))
  (str.in_re varout (re.union a!9 (re.++ a!14 a!20)))))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "b")))
                  (str.to_re "n"))))
(let ((a!2 (re.union (str.to_re "n")
                     (re.++ (re.union (str.to_re "r") (str.to_re "b")) a!1))))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "b"))) a!2)))
(let ((a!4 (re.* (re.union (str.to_re "b") (re.++ (str.to_re "n") a!3)))))
(let ((a!5 (re.++ (re.union (str.to_re "b") (re.++ (str.to_re "n") a!3)) a!4))
      (a!7 (re.++ (re.union (str.to_re "b") (re.++ (str.to_re "n") a!3))
                  (re.++ a!4 (str.to_re "r")))))
(let ((a!6 (re.++ a!3 (re.++ a!4 (re.union (str.to_re "") a!5))))
      (a!8 (re.++ a!3 (re.++ a!4 (re.union (str.to_re "r") a!7))))
      (a!9 (re.++ (re.union (str.to_re "r") (str.to_re "b"))
                  (re.++ a!4 (re.union (str.to_re "r") a!7))))
      (a!10 (re.++ (re.union (str.to_re "r") (str.to_re "b"))
                   (re.++ a!4 (re.union (str.to_re "") a!5)))))
(let ((a!11 (re.++ (re.* (re.union (str.to_re "n") a!9)) a!10)))
(let ((a!12 (re.union a!10 (re.++ (re.union (str.to_re "n") a!9) a!11))))
(let ((a!13 (re.++ (re.* (re.union (str.to_re "n") a!9)) a!12)))
  (str.in_re varin (re.union a!6 (re.++ a!8 a!13)))))))))))))
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
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (str.to_re "")
                     (re.++ (str.to_re "r") (re.* (str.to_re "r")))))
      (a!2 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "n"))))
      (a!3 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "b"))))
      (a!4 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!5 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!4)))
      (a!9 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                  (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "n") a!2))))
      (a!10 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                   (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!3))))
      (a!12 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                   (re.++ (re.* (str.to_re "r")) a!1))))
(let ((a!6 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!5)))
(let ((a!7 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!3))
                  a!6))
      (a!11 (re.union a!9 (re.++ (re.union (str.to_re "r") a!10) a!6))))
(let ((a!8 (re.union (re.++ (re.* (str.to_re "r"))
                            (re.union (str.to_re "n") a!2))
                     a!7))
      (a!13 (re.union a!12 (re.++ a!11 (re.++ (re.* a!11) a!12)))))
(let ((a!14 (re.union (re.++ (re.* (str.to_re "r")) a!1)
                      (re.++ a!8 (re.++ (re.* a!11) a!13)))))
  (str.in_re varin a!14))))))))
(assert (let ((a!1 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "b"))))
      (a!2 (re.++ (re.union (str.to_re "r") (str.to_re "n"))
                  (re.* (re.union (str.to_re "r") (str.to_re "n")))))
      (a!5 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r")) (str.to_re "n"))))
      (a!6 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (str.to_re "b"))))
(let ((a!3 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n")))
                  (re.union (str.to_re "") a!2)))
      (a!7 (re.union (str.to_re "b")
                     (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!6)))
      (a!11 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                   (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "n") a!5))))
      (a!12 (re.++ (re.union (str.to_re "b") (str.to_re "n"))
                   (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!1)))))
(let ((a!4 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!1))
                  a!3))
      (a!8 (re.++ (re.* (re.union (str.to_re "r") (str.to_re "n"))) a!7))
      (a!14 (re.union (str.to_re "")
                      (re.++ (re.union (str.to_re "r") a!12) a!3))))
(let ((a!9 (re.++ (re.++ (re.* (str.to_re "r")) (re.union (str.to_re "b") a!1))
                  a!8))
      (a!13 (re.union a!11 (re.++ (re.union (str.to_re "r") a!12) a!8))))
(let ((a!10 (re.union (re.++ (re.* (str.to_re "r"))
                             (re.union (str.to_re "n") a!5))
                      a!9))
      (a!15 (re.union a!14 (re.++ a!13 (re.++ (re.* a!13) a!14)))))
(let ((a!16 (re.union a!4 (re.++ a!10 (re.++ (re.* a!13) a!15)))))
  (str.in_re varout a!16))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r"))
                         (re.union (str.to_re "b") (str.to_re "n"))))))
(let ((a!2 (re.++ (re.* (str.to_re "r"))
                  (re.union (re.union (str.to_re "b") (str.to_re "n")) a!1))))
(let ((a!3 (re.* (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!2))))
(let ((a!4 (re.++ (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!2)
                  (re.++ a!3 (str.to_re "b")))))
(let ((a!5 (re.++ a!2 (re.++ a!3 (re.union (str.to_re "b") a!4))))
      (a!6 (re.++ (re.++ (str.to_re "r") a!2)
                  (re.++ a!3 (re.union (str.to_re "b") a!4)))))
(let ((a!7 (re.* (re.union (re.union (str.to_re "b") (str.to_re "n")) a!6))))
(let ((a!8 (re.++ (re.union (re.union (str.to_re "b") (str.to_re "n")) a!6) a!7)))
(let ((a!9 (re.++ a!5 (re.++ a!7 (re.union (str.to_re "") a!8)))))
  (str.in_re varin a!9))))))))))
(assert (let ((a!1 (re.union (str.to_re "")
                     (re.++ (str.to_re "r") (re.* (str.to_re "r")))))
      (a!2 (re.++ (str.to_re "r")
                  (re.++ (re.* (str.to_re "r"))
                         (re.union (str.to_re "b") (str.to_re "n"))))))
(let ((a!3 (re.++ (re.* (str.to_re "r"))
                  (re.union (re.union (str.to_re "b") (str.to_re "n")) a!2)))
      (a!5 (re.++ (re.union (str.to_re "r") (str.to_re "n"))
                  (re.++ (re.* (str.to_re "r")) a!1)))
      (a!13 (re.++ (str.to_re "r") (re.++ (re.* (str.to_re "r")) a!1))))
(let ((a!4 (re.* (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3))))
(let ((a!6 (re.++ (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3)
                  (re.++ a!4 (re.union (str.to_re "") a!5))))
      (a!9 (re.++ (re.++ (re.union (str.to_re "r") (str.to_re "n")) a!3)
                  (re.++ a!4 (str.to_re "b")))))
(let ((a!7 (re.++ a!4 (re.union (re.union (str.to_re "") a!5) a!6)))
      (a!10 (re.++ a!3 (re.++ a!4 (re.union (str.to_re "b") a!9))))
      (a!11 (re.++ (re.++ (str.to_re "r") a!3)
                   (re.++ a!4 (re.union (str.to_re "b") a!9)))))
(let ((a!8 (re.union (re.++ (re.* (str.to_re "r")) a!1) (re.++ a!3 a!7)))
      (a!12 (re.* (re.union (re.union (str.to_re "b") (str.to_re "n")) a!11)))
      (a!14 (re.union a!13 (re.++ (re.++ (str.to_re "r") a!3) a!7))))
(let ((a!15 (re.++ (re.union (re.union (str.to_re "b") (str.to_re "n")) a!11)
                   (re.++ a!12 a!14))))
(let ((a!16 (re.union a!8 (re.++ a!10 (re.++ a!12 (re.union a!14 a!15))))))
  (str.in_re varout a!16))))))))))
(set-info :status unknown)
(check-sat)
(pop 1)
(set-info :status unknown)
(check-sat)
(exit)
