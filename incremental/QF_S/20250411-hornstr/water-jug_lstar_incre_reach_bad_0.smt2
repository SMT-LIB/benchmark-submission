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
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
  (str.in_re X (re.* a!2)))))
(assert (let ((a!1 (re.++ (str.to_re "b")
                  (re.++ (re.* (str.to_re "b")) (str.to_re "d"))))
      (a!3 (re.union (re.union (re.union (str.to_re "b") (str.to_re "f"))
                               (str.to_re "e"))
                     (str.to_re "d")))
      (a!5 (re.++ (str.to_re "b")
                  (re.++ (re.* (str.to_re "b")) (str.to_re "a"))))
      (a!7 (re.union (re.union (re.union (str.to_re "a") (str.to_re "b"))
                               (str.to_re "e"))
                     (str.to_re "e"))))
(let ((a!2 (re.++ (re.++ (str.to_re "Z") (str.to_re "b"))
                  (re.++ (re.* (str.to_re "b")) (re.union (str.to_re "d") a!1))))
      (a!4 (re.++ (re.* a!3) (re.union (str.to_re "") (re.++ a!3 (re.* a!3)))))
      (a!6 (re.++ (re.++ (str.to_re "Z") (str.to_re "b"))
                  (re.++ (re.* (str.to_re "b")) (re.union (str.to_re "a") a!5))))
      (a!8 (re.++ (re.* a!7) (re.union (str.to_re "") (re.++ a!7 (re.* a!7))))))
  (and (str.in_re X (re.union (re.++ a!2 a!4) (re.++ a!6 a!8))) true))))
(push 1)
(assert (str.in_re X (str.to_re "")))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
  (str.in_re X a!2))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
  (str.in_re X (re.++ (re.++ a!2 a!2) a!2)))))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbd"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
  (str.in_re X (re.++ a!2 a!2)))))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
  (str.in_re X (re.++ (re.++ (re.++ a!2 a!2) a!2) a!2)))))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbd"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
(let ((a!3 (re.++ (re.++ (re.++ (re.++ a!2 a!2) a!2) a!2) a!2)))
  (str.in_re X a!3)))))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaea"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbded"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbd"))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (let ((a!1 (re.union (re.union (re.union (str.to_re "Z") (str.to_re "c"))
                               (str.to_re "d"))
                     (str.to_re "e"))))
(let ((a!2 (re.union (re.union (re.union a!1 (str.to_re "b")) (str.to_re "a"))
                     (str.to_re "f"))))
(let ((a!3 (re.++ (re.++ (re.++ (re.++ a!2 a!2) a!2) a!2) a!2)))
  (str.in_re X (re.++ a!3 a!2))))))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaea"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbabb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbabe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbaee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeaa"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeba"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaea"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabea"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeea"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeab"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaabb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaebb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeae"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaabe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaebe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaaee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbabee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbaeee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdebb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbdb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdddb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdedb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfdb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbfb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddfb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdefb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdffb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbbd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddbd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdebd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfbd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbdd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdddd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdedd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfdd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbed"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdded"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeed"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfed"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbfd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddfd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdefd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdffd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdebe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdede"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbfe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddfe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdefe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdffe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbbf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddbf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdebf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfbf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbdf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdddf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdedf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfdf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdbff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbddff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdeff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbdfff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdbb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbddb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdeb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdfb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdbd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbddd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbded"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdfd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdbe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdee"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdfe"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdbf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbddf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdef"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbdff"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbdb"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbdd"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbde"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbdf"))
(set-info :status unknown)
(check-sat)
(assert (distinct X "Zbbbbd"))
(set-info :status unknown)
(check-sat)
(pop 1)
(set-info :status unknown)
(check-sat)
(exit)
