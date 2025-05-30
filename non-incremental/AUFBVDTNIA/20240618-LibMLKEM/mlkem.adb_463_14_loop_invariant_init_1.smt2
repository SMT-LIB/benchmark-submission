(set-info :smt-lib-version 2.7)
(set-logic AUFBVDTNIA)
(set-info :source |
Generated by: Rod Chapman
Generated on: 2024-02-26
Generator: GNATProve 13.2.1 and Why3 1.5.0
Application: Proof of LibMLKEM Cryptographic Library
Target solver: CVC4, cvc5, Z3
Publications: https://github.com/awslabs/LibMLKEM
|)
(set-info :license "https://www.apache.org/licenses/LICENSE-2.0")
(set-info :category "industrial")
(set-info :status unsat)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(declare-sort us_private 0)

(declare-const us_null_ext__ us_private)

(declare-datatypes ((int__ref 0))
  (((int__refqtmk (int__content Int)))))

;; nth
(declare-fun nth ((_ BitVec 16)
  Int) Bool)

;; lsr
(declare-fun lsr ((_ BitVec 16)
  Int) (_ BitVec 16))

;; asr
(declare-fun asr ((_ BitVec 16)
  Int) (_ BitVec 16))

;; lsl
(declare-fun lsl ((_ BitVec 16)
  Int) (_ BitVec 16))

;; abs
(define-fun abs1 ((x Int)) Int
  (ite (<= 0 x) x (- x)))

;; Abs_le
(assert
  (forall ((x Int) (y Int)) (= (<= (abs1 x) y) (and (<= (- y) x) (<= x y)))))

;; Abs_pos
(assert (forall ((x Int)) (<= 0 (abs1 x))))

;; Div_unique
(assert
  (forall ((x Int) (y Int) (q Int))
    (=>
      (< 0 y)
      (=> (and (<= (* q y) x) (< x (+ (* q y) y))) (= (div x y) q)))))

;; Div_bound
(assert
  (forall ((x Int) (y Int))
    (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div x y)) (<= (div x y) x)))))

;; Div_inf
(assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div x y) 0))))

;; Div_inf_neg
(assert
  (forall ((x Int) (y Int))
    (=> (and (< 0 x) (<= x y)) (= (div (- x) y) (- 1)))))

;; Mod_0
(assert (forall ((y Int)) (=> (not (= y 0)) (= (mod 0 y) 0))))

;; Div_1_left
(assert (forall ((y Int)) (=> (< 1 y) (= (div 1 y) 0))))

;; Div_minus1_left
(assert (forall ((y Int)) (=> (< 1 y) (= (div (- 1) y) (- 1)))))

;; Mod_1_left
(assert (forall ((y Int)) (=> (< 1 y) (= (mod 1 y) 1))))

;; Mod_minus1_left
(assert
  (forall ((y Int))
    (! (=> (< 1 y) (= (mod (- 1) y) (- y 1))) :pattern ((mod (- 1) y)) )))

;; Div_mult
(assert
  (forall ((x Int) (y Int) (z Int))
    (! (=> (< 0 x) (= (div (+ (* x y) z) x) (+ y (div z x)))) :pattern ((div (+ (* x y) z) x)) )))

;; Mod_mult
(assert
  (forall ((x Int) (y Int) (z Int))
    (! (=> (< 0 x) (= (mod (+ (* x y) z) x) (mod z x))) :pattern ((mod (+ (* x y) z) x)) )))

;; pow2
(declare-fun pow2 (Int) Int)

(declare-const two_power_size_minus_one Int)

;; two_power_size_minus_one_val
(assert (= two_power_size_minus_one (pow2 (- 16 1))))

;; to_int
(define-fun to_int1 ((x (_ BitVec 16))) Int
  (ite (bvsge x (_ bv0 16)) (ubv_to_int x) (- (- 65536 (ubv_to_int x)))))

;; lsr_bv_is_lsr
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvlshr x n) (lsr x (ubv_to_int n)))))

;; asr_bv_is_asr
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvashr x n) (asr x (ubv_to_int n)))))

;; lsl_bv_is_lsl
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvshl x n) (lsl x (ubv_to_int n)))))

;; nth_bv
(declare-fun nth_bv ((_ BitVec 16)
  (_ BitVec 16)) Bool)

;; nth_bv_def
(assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
    (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
(assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
    (= (nth x (ubv_to_int i)) (nth_bv x i))))

;; Nth_bv_is_nth2
(assert
  (forall ((x (_ BitVec 16)) (i Int))
    (=>
      (and (<= 0 i) (< i 65536))
      (= (nth_bv x ((_ int_to_bv 16) i)) (nth x i)))))

;; min
(define-fun min ((x Int) (y Int)) Int
  (ite (<= x y) x y))

;; max
(define-fun max ((x Int) (y Int)) Int
  (ite (<= x y) y x))

;; Min_r
(assert (forall ((x Int) (y Int)) (=> (<= y x) (= (min x y) y))))

;; Max_l
(assert (forall ((x Int) (y Int)) (=> (<= y x) (= (max x y) x))))

;; Min_comm
(assert (forall ((x Int) (y Int)) (= (min x y) (min y x))))

;; Max_comm
(assert (forall ((x Int) (y Int)) (= (max x y) (max y x))))

;; Min_assoc
(assert
  (forall ((x Int) (y Int) (z Int)) (= (min (min x y) z) (min x (min y z)))))

;; Max_assoc
(assert
  (forall ((x Int) (y Int) (z Int)) (= (max (max x y) z) (max x (max y z)))))

;; oadd
(declare-fun oadd ((_ BitVec 16)
  (_ BitVec 16)) (_ BitVec 16))

;; oadd__function_guard
(declare-fun oadd__function_guard ((_ BitVec 16)
  (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; div
(declare-fun div1 (Int
  Int) Int)

;; mod
(declare-fun mod1 (Int
  Int) Int)

;; Div_mod
(assert
  (forall ((x Int) (y Int))
    (=> (not (= y 0)) (= x (+ (* y (div1 x y)) (mod1 x y))))))

;; Div_bound
(assert
  (forall ((x Int) (y Int))
    (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (div1 x y)) (<= (div1 x y) x)))))

;; Mod_bound
(assert
  (forall ((x Int) (y Int))
    (=>
      (not (= y 0))
      (and (< (- (abs1 y)) (mod1 x y)) (< (mod1 x y) (abs1 y))))))

;; Div_sign_pos
(assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< 0 y)) (<= 0 (div1 x y)))))

;; Div_sign_neg
(assert
  (forall ((x Int) (y Int)) (=> (and (<= x 0) (< 0 y)) (<= (div1 x y) 0))))

;; Mod_sign_pos
(assert
  (forall ((x Int) (y Int))
    (=> (and (<= 0 x) (not (= y 0))) (<= 0 (mod1 x y)))))

;; Mod_sign_neg
(assert
  (forall ((x Int) (y Int))
    (=> (and (<= x 0) (not (= y 0))) (<= (mod1 x y) 0))))

;; Rounds_toward_zero
(assert
  (forall ((x Int) (y Int))
    (=> (not (= y 0)) (<= (abs1 (* (div1 x y) y)) (abs1 x)))))

;; Div_1
(assert (forall ((x Int)) (= (div1 x 1) x)))

;; Mod_1
(assert (forall ((x Int)) (= (mod1 x 1) 0)))

;; Div_inf
(assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (div1 x y) 0))))

;; Mod_inf
(assert
  (forall ((x Int) (y Int)) (=> (and (<= 0 x) (< x y)) (= (mod1 x y) x))))

;; Div_mult
(assert
  (forall ((x Int) (y Int) (z Int))
    (! (=>
         (and (< 0 x) (and (<= 0 y) (<= 0 z)))
         (= (div1 (+ (* x y) z) x) (+ y (div1 z x)))) :pattern ((div1
                                                                  (+ (* x y) z)
                                                                  x)) )))

;; Mod_mult
(assert
  (forall ((x Int) (y Int) (z Int))
    (! (=>
         (and (< 0 x) (and (<= 0 y) (<= 0 z)))
         (= (mod1 (+ (* x y) z) x) (mod1 z x))) :pattern ((mod1
                                                            (+ (* x y) z)
                                                            x)) )))

;; mod
(define-fun mod2 ((x Int) (y Int)) Int
  (ite (or (and (< 0 x) (< 0 y)) (and (< x 0) (< y 0)))
    (mod1 x y)
    (ite (= (mod1 x y) 0) 0 (+ (mod1 x y) y))))

;; mod2
(define-fun mod21 ((x Int) (y Int)) Int
  (let ((r (mod x y))) (ite (<= 0 y) r (ite (= r 0) 0 (+ r y)))))

;; Mod_Unique
(assert
  (forall ((x Int) (y Int)) (=> (not (= y 0)) (= (mod2 x y) (mod21 x y)))))

(declare-sort t 0)

;; in_range
(define-fun in_range ((x (_ BitVec 16))) Bool
  (and (bvule #x0000 x) (bvule x #x0D00)))

(declare-const dummy t)

;; oadd__post_axiom
(assert
  (forall ((param__left (_ BitVec 16)) (param__right (_ BitVec 16)))
    (! (=>
         (and (in_range param__left) (in_range param__right))
         (let ((result (oadd param__left param__right)))
           (=>
             (oadd__function_guard result param__left param__right)
             (and
               (= result ((_ int_to_bv 16) (mod2
                                          (+ (ubv_to_int param__left) (ubv_to_int param__right))
                                          3329)))
               (in_range result))))) :pattern ((oadd
                                                 param__left
                                                 param__right)) )))

;; to_rep
(declare-fun to_rep (t) (_ BitVec 16))

;; of_rep
(declare-fun of_rep ((_ BitVec 16)) t)

;; inversion_axiom
(assert
  (forall ((x t)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
(assert (forall ((x t)) (! (in_range (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
(assert
  (forall ((x (_ BitVec 16)))
    (! (let ((y (bvurem x #x0D01)))
         (=> (in_range y) (= (to_rep (of_rep x)) y))) :pattern ((to_rep
                                                                  (of_rep x))) )))

(declare-const left (Array Int t))

(declare-const right (Array Int t))

(declare-datatypes ((t__init_wrapper 0))
  (((t__init_wrapperqtmk (rec__value t)(us_attr__init Bool)))))

(declare-const dummy1 t__init_wrapper)

;; dummy__def
(assert (= (us_attr__init dummy1) false))

(declare-datatypes ((map__ref 0))
  (((map__refqtmk (map__content (Array Int t__init_wrapper))))))

(declare-sort index_256 0)

(declare-const dummy2 index_256)

(declare-sort t60b 0)

(declare-const dummy3 t60b)

;; Goal def'vc
;; File "mlkem.adb", line 452, characters 0-0
(assert
  (not
  (forall ((r (Array Int t__init_wrapper)))
    (forall ((i Int))
      (=>
        (= i 0)
        (=>
          (= (and (ite (<= 0 i) true false) (ite (<= i 255) true false)) true)
          (forall ((o (_ BitVec 16)))
            (=>
              (= (to_rep (select right i)) o)
              (forall ((o1 (_ BitVec 16)))
                (=>
                  (= (to_rep (select left i)) o1)
                  (let ((o2 (oadd o1 o)))
                    (=>
                      (and
                        (oadd__function_guard o2 o1 o)
                        (and
                          (in_range o2)
                          (= o2 ((_ int_to_bv 16) (mod2
                                                 (+ (ubv_to_int o1) (ubv_to_int o))
                                                 3329)))))
                      (forall ((o3 t))
                        (=>
                          (= (to_rep o3) o2)
                          (forall ((r1 (Array Int t__init_wrapper)))
                            (=>
                              (= r1 (store r i (t__init_wrapperqtmk o3 true)))
                              (=>
                                (forall ((temp___2233 (_ BitVec 16)) (temp___2232 (_ BitVec 16)))
                                  (oadd__function_guard
                                    (oadd temp___2232 temp___2233)
                                    temp___2232
                                    temp___2233))
                                (=>
                                  (forall ((temp___2233 (_ BitVec 16)) (temp___2232 (_ BitVec 16)))
                                    (oadd__function_guard
                                      (oadd temp___2232 temp___2233)
                                      temp___2232
                                      temp___2233))
                                  (forall ((k Int))
                                    (=>
                                      (and (<= 0 k) (<= k i))
                                      (and
                                        (= (us_attr__init (select r1 k)) true)
                                        (=>
                                          (forall ((temp___2237 (_ BitVec 16)) (temp___2236 (_ BitVec 16)))
                                            (oadd__function_guard
                                              (oadd temp___2236 temp___2237)
                                              temp___2236
                                              temp___2237))
                                          (= (to_rep
                                               (rec__value (select r1 k))) 
                                          (let ((temp___2237 (to_rep
                                                               (select 
                                                               right k))))
                                            (let ((temp___2236 (to_rep
                                                                 (select 
                                                                 left k))))
                                              (oadd temp___2236 temp___2237))))))))))))))))))))))))))

(check-sat)
(exit)
