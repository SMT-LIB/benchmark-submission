(set-info :smt-lib-version 2.6)
(set-info :source |The authors Robert Vajda and Zoltan Kovacs released this problem in the paper that can be found in "http://ceur-ws.org/Vol-2752/paper15.pdf". A short description of the problem can be found down below.

KochanskiPiApproximation-RegDodecagon:
 Kochański's Pi Approximation (regular dodecagon):Let A, B be arbitrary points. Let poly1 be the regular 12-gon with vertices A, B, C, D, E, F, G, H, I, J, K, L. Let f be the segment A, B. Let s be the line A, B. Let t be the line L, G. Let a be the line D, I. Let b be the line H, J. Let M be the intersection of s and t. Let N be the intersection of a and b. Let c be the segment M, N. Compare segment M, N and segment A, B.

This problem was added to SMT-LIB by Tereso del Rio and Matthew England.| )
(set-info :category "industrial")
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status sat)
(set-logic QF_NRA)
(declare-fun m () Real)
(declare-fun v10 () Real)
(declare-fun v11 () Real)
(declare-fun v12 () Real)
(declare-fun v13 () Real)
(declare-fun v14 () Real)
(declare-fun v15 () Real)
(declare-fun v16 () Real)
(declare-fun v17 () Real)
(declare-fun v18 () Real)
(declare-fun v19 () Real)
(declare-fun v20 () Real)
(declare-fun v21 () Real)
(declare-fun v22 () Real)
(declare-fun v23 () Real)
(declare-fun v24 () Real)
(declare-fun v25 () Real)
(declare-fun v26 () Real)
(declare-fun v27 () Real)
(declare-fun v29 () Real)
(declare-fun v30 () Real)
(declare-fun v32 () Real)
(declare-fun v33 () Real)
(declare-fun v7 () Real)
(declare-fun v8 () Real)
(declare-fun v9 () Real)
(assert (and (< 0 m) (< 0 v32) (< 0 v33) (= (+ (* (* v11 v8) (- 1) )(* (* v12 v7) (- 1) )(* v8 v13) (* v14 v7) v12 (* v16 (- 1))) 0) (= (+ (* v10 v7) (* (* v7 v8) (- 2) )(* v8 v9) (* v12 (- 1) )v8) 0) (= (+ (* v7 v7) (* (* v8 v8) (- 1) )(* v7 (- 1) )(* v9 (- 1) )1) 0) (= (- (* (* v7 v8) 2) v10 v8) 0) (= (+ (* (* v10 v8) (- 1) )(* (* v7 v7) (- 1) )(* v7 v9) (* v8 v8) (* v11 (- 1) )v7) 0) (= (+ (* v10 v8) (* v11 v7) (* (* v8 v12) (- 1) )(* (* v7 v9) (- 1) )(* v13 (- 1) )v9) 0) (= (+ (* (* v10 v7) (- 1) )(* v11 v8) (* v12 v7) (* (* v8 v9) (- 1) )v10 (* v14 (- 1))) 0) (= (+ (* (* v11 v7) (- 1) )(* v8 v12) (* v13 v7) (* (* v8 v14) (- 1) )v11 (* v15 (- 1))) 0) (= (+ (* (* v13 v7) (- 1) )(* v8 v14) (* v7 v15) (* (* v8 v16) (- 1) )v13 (* v17 (- 1))) 0) (= (+ (* (* v8 v13) (- 1) )(* (* v14 v7) (- 1) )(* v8 v15) (* v7 v16) v14 (* v18 (- 1))) 0) (= (+ (* (* v7 v15) (- 1) )(* v8 v16) (* v7 v17) (* (* v8 v18) (- 1) )v15 (* v19 (- 1))) 0) (= (+ (* (* v8 v15) (- 1) )(* (* v7 v16) (- 1) )(* v8 v17) (* v7 v18) v16 (* v20 (- 1))) 0) (= (+ (* (* v7 v17) (- 1) )(* v8 v18) (* v7 v19) (* (* v8 v20) (- 1) )v17 (* v21 (- 1))) 0) (= (+ (* (* v8 v17) (- 1) )(* (* v7 v18) (- 1) )(* v8 v19) (* v7 v20) v18 (* v22 (- 1))) 0) (= (+ (* (* v7 v19) (- 1) )(* v8 v20) (* v7 v21) (* (* v8 v22) (- 1) )v19 (* v23 (- 1))) 0) (= (+ (* (* v8 v19) (- 1) )(* (* v7 v20) (- 1) )(* v8 v21) (* v7 v22) v20 (* v24 (- 1))) 0) (= (+ (* (* v7 v21) (- 1) )(* v8 v22) (* v7 v23) (* (* v8 v24) (- 1) )v21 (* v25 (- 1))) 0) (= (+ (* (* v8 v21) (- 1) )(* (* v7 v22) (- 1) )(* v8 v23) (* v7 v24) v22 (* v26 (- 1))) 0) (= (+ (* (* v15 v26) (- 1) )(* v16 v25) (* (* v16 v27) (- 1) )(* v26 v27)) 0) (= (+ (* v17 v22) (* (* v17 v30) (- 1) )(* (* v18 v21) (- 1) )(* v18 v29) (* v30 v21) (* (* v22 v29) (- 1))) 0) (= (+ (* (* v10 v19) (- 1) )(* v10 v29) (* v19 v30) (* (* v29 v20) (- 1) )(* v20 v9) (* (* v30 v9) (- 1))) 0) (= (+ (* (* v7 v7) 4) (* v7 (- 8) )1) 0) (= (+ (* v7 v7) (* v8 v8) (* v7 (- 2))) 0) (= (+ (* v27 v27) (* (* v27 v29) (- 2) )(* v29 v29) (* v30 v30) (* (* v32 v32) (- 1))) 0) (= (+ (* m (- 1) )v32) 0) (= (+ (* v33 (- 1) )1) 0)))
(check-sat)
(exit)
