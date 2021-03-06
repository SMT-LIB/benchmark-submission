(set-info :smt-lib-version 2.6)
(set-info :source |The authors Robert Vajda and Zoltan Kovacs released this problem in the paper that can be found in "http://ceur-ws.org/Vol-2752/paper15.pdf". A short description of the problem can be found down below.

RegOctagon-ProductDiagonals_CircumRadius:
 Comparison of circumradius and product of lengths of diagonals (regular octagon):Let A, B be arbitrary points. Let poly1 be the regular 8-gon with vertices A, B, C, D, E, F, G, H. Let b be the segment A, B. Let h be the segment H, A. Let c be the segment A, C. Let d be the segment A, D. Let e be the segment A, E. Let f be the segment A, F. Let g be the segment A, G. Let I be the midpoint of e. Let r be the segment I, C. Compare b c d e f g h and r^7.

This problem was added to SMT-LIB by Tereso del Rio and Matthew England.| )
(set-info :category "industrial")
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :status sat)
(set-logic QF_NRA)
(declare-fun m () Real)
(declare-fun v10 () Real)
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
(declare-fun v28 () Real)
(declare-fun v7 () Real)
(declare-fun v8 () Real)
(declare-fun v9 () Real)
(assert (and (< 0 m) (< 0 v28) (< 0 v25) (< 0 v27) (< 0 v24) (< 0 v23) (< 0 v21) (< 0 v26) (< 0 v22) (= (+ (* v10 v7) (* (* v7 v8) (- 2) )(* v8 v9) (* v20 (- 2) )v8) 0) (= (+ (* v7 v7) (* (* v8 v8) (- 1) )(* v7 (- 1) )(* v9 (- 1) )1) 0) (= (- (* (* v7 v8) 2) v10 v8) 0) (= (+ (* (* v10 v8) (- 1) )(* (* v7 v7) (- 1) )(* v7 v9) (* v8 v8) (* v19 (- 2) )v7) 0) (= (+ (* v10 v8) (* (* v7 v19) 2) (* (* v8 v20) (- 2) )(* (* v7 v9) (- 1) )(* v13 (- 1) )v9) 0) (= (+ (* (* v10 v7) (- 1) )(* (* v8 v19) 2) (* (* v7 v20) 2) (* (* v8 v9) (- 1) )v10 (* v14 (- 1))) 0) (= (+ (* v13 v7) (* (* v8 v14) (- 1) )(* (* v7 v19) (- 2) )(* (* v8 v20) 2) (* v15 (- 1) )(* v19 2)) 0) (= (+ (* v8 v13) (* v14 v7) (* (* v8 v19) (- 2) )(* (* v7 v20) (- 2) )(* v16 (- 1) )(* v20 2)) 0) (= (+ (* (* v13 v7) (- 1) )(* v8 v14) (* v7 v15) (* (* v8 v16) (- 1) )v13 (* v17 (- 1))) 0) (= (+ (* (* v8 v13) (- 1) )(* (* v14 v7) (- 1) )(* v8 v15) (* v7 v16) v14 (* v18 (- 1))) 0) (= (+ (* v19 v19) (* (* v7 v19) (- 2) )(* v20 v20) (* (* v8 v20) (- 2) )(* (* v28 v28) (- 1) )(* v7 v7) (* v8 v8)) 0) (= (+ (* (* v7 v7) 2) (* v7 (- 4) )1) 0) (= (+ (* v7 v7) (* v8 v8) (* v7 (- 2))) 0) (= (+ (* (* v21 v21) (- 1) )(* v7 v7) (* v8 v8)) 0) (= (+ (* (* v19 v19) 4) (* (* v20 v20) 4) (* (* v24 v24) (- 1))) 0) (= (+ (* v10 v10) (* (* v23 v23) (- 1) )(* v9 v9)) 0) (= (+ (* v13 v13) (* v14 v14) (* (* v27 v27) (- 1))) 0) (= (+ (* v15 v15) (* v16 v16) (* (* v25 v25) (- 1))) 0) (= (+ (* v17 v17) (* v18 v18) (* (* v26 v26) (- 1))) 0) (= (+ (* v22 (- 1) )1) 0) (= (+ (* (* m (* v28 v28 v28 v28 v28 v28 v28)) (- 1) )(* v21 v23 v24 v25 v26 v27)) 0)))
(check-sat)
(exit)
