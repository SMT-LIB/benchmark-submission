(set-info :smt-lib-version 2.7)
(set-logic AUFBVDTNIRA)
(set-info :source |
Generated by: AdaCore
Generated on: 2020-03-06
Generator: SPARK
Application: Program verification for Ada
Target solver: CVC4
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(declare-sort string 0)

(declare-datatypes ((tuple0 0))
(((Tuple0))))
(declare-sort us_private 0)

(declare-fun private__bool_eq (us_private us_private) Bool)

(declare-const us_null_ext__ us_private)

(declare-sort us_type_of_heap 0)

(declare-datatypes ((us_type_of_heap__ref 0))
(((us_type_of_heap__refqtmk (us_type_of_heap__content us_type_of_heap)))))
(declare-sort us_image 0)

(declare-datatypes ((int__ref 0))
(((int__refqtmk (int__content Int)))))
(declare-datatypes ((bool__ref 0))
(((bool__refqtmk (bool__content Bool)))))
(declare-datatypes ((us_fixed__ref 0))
(((us_fixed__refqtmk (us_fixed__content Int)))))
(declare-datatypes ((real__ref 0))
(((real__refqtmk (real__content Real)))))
(declare-datatypes ((us_private__ref 0))
(((us_private__refqtmk (us_private__content us_private)))))
(define-fun int__ref___projection ((a int__ref)) Int (int__content a))

(define-fun us_fixed__ref___projection ((a us_fixed__ref)) Int (us_fixed__content
                                                               a))

(define-fun bool__ref___projection ((a bool__ref)) Bool (bool__content a))

(define-fun real__ref___projection ((a real__ref)) Real (real__content a))

(define-fun us_private__ref___projection ((a us_private__ref)) us_private 
  (us_private__content a))

(declare-fun nth ((_ BitVec 16) Int) Bool)

(declare-fun lsr ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun asr ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun lsl ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun abs1 ((x Int)) Int (ite (<= 0 x) x (- x)))

;; Abs_le
  (assert
  (forall ((x Int) (y Int)) (= (<= (abs1 x) y) (and (<= (- y) x) (<= x y)))))

;; Abs_pos
  (assert (forall ((x Int)) (<= 0 (abs1 x))))

;; Div_unique
  (assert
  (forall ((x Int) (y Int) (q Int))
  (=> (< 0 y) (=> (and (<= (* q y) x) (< x (+ (* q y) y))) (= (div x y) q)))))

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

(declare-fun rotate_right1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun rotate_left1 ((_ BitVec 16) Int) (_ BitVec 16))

(declare-fun pow2 (Int) Int)

(define-fun to_int1 ((x (_ BitVec 16))) Int (ite (bvsge x (_ bv0 16))
                                            (ubv_to_int x)
                                            (- (- 65536 (ubv_to_int x)))))

(define-fun uint_in_range ((i Int)) Bool (and (<= 0 i) (<= i 65535)))

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

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvshl v (bvurem n (_ bv16 16))) (bvlshr v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_left1 v (ubv_to_int n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 16)) (n (_ BitVec 16)))
  (= (bvor (bvlshr v (bvurem n (_ bv16 16))) (bvshl v (bvsub (_ bv16 16) (bvurem n (_ bv16 16))))) 
  (rotate_right1 v (ubv_to_int n)))))

(declare-fun nth_bv ((_ BitVec 16) (_ BitVec 16)) Bool)

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
  (=> (and (<= 0 i) (< i 65536)) (= (nth_bv x ((_ int_to_bv 16) i)) (nth x i)))))

(declare-fun eq_sub_bv ((_ BitVec 16) (_ BitVec 16) (_ BitVec 16)
  (_ BitVec 16)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (let ((mask (bvshl (bvsub (bvshl #x0001 n) #x0001) i)))
  (= (eq_sub_bv a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub ((a (_ BitVec 16)) (b (_ BitVec 16)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth a j) (nth b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 16)) (b (_ BitVec 16)) (i (_ BitVec 16))
  (n (_ BitVec 16)))
  (= (eq_sub a b (ubv_to_int i) (ubv_to_int n)) (eq_sub_bv a b i n))))

(declare-datatypes ((t__ref 0))
(((t__refqtmk (t__content (_ BitVec 16))))))
(declare-fun power ((_ BitVec 16) Int) (_ BitVec 16))

(define-fun bv_min ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) x y))

(define-fun bv_max ((x (_ BitVec 16))
  (y (_ BitVec 16))) (_ BitVec 16) (ite (bvule x y) y x))

(define-fun min ((x Int) (y Int)) Int (ite (<= x y) x y))

(define-fun max ((x Int) (y Int)) Int (ite (<= x y) y x))

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

(declare-fun nth1 ((_ BitVec 32) Int) Bool)

(declare-fun lsr1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun asr1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun lsl1 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_right2 ((_ BitVec 32) Int) (_ BitVec 32))

(declare-fun rotate_left2 ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun to_int2 ((x (_ BitVec 32))) Int (ite (bvsge x (_ bv0 32))
                                            (ubv_to_int x)
                                            (- (- 4294967296 (ubv_to_int x)))))

(define-fun uint_in_range1 ((i Int)) Bool (and (<= 0 i) (<= i 4294967295)))

;; lsr_bv_is_lsr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvlshr x n) (lsr1 x (ubv_to_int n)))))

;; asr_bv_is_asr
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvashr x n) (asr1 x (ubv_to_int n)))))

;; lsl_bv_is_lsl
  (assert
  (forall ((x (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvshl x n) (lsl1 x (ubv_to_int n)))))

;; rotate_left_bv_is_rotate_left
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvshl v (bvurem n (_ bv32 32))) (bvlshr v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_left2 v (ubv_to_int n)))))

;; rotate_right_bv_is_rotate_right
  (assert
  (forall ((v (_ BitVec 32)) (n (_ BitVec 32)))
  (= (bvor (bvlshr v (bvurem n (_ bv32 32))) (bvshl v (bvsub (_ bv32 32) (bvurem n (_ bv32 32))))) 
  (rotate_right2 v (ubv_to_int n)))))

(declare-fun nth_bv1 ((_ BitVec 32) (_ BitVec 32)) Bool)

;; nth_bv_def
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (= (nth_bv1 x i) true)
  (not (= (bvand (bvlshr x i) #x00000001) #x00000000)))))

;; Nth_bv_is_nth
  (assert
  (forall ((x (_ BitVec 32)) (i (_ BitVec 32)))
  (= (nth1 x (ubv_to_int i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
  (assert
  (forall ((x (_ BitVec 32)) (i Int))
  (=> (and (<= 0 i) (< i 4294967296))
  (= (nth_bv1 x ((_ int_to_bv 32) i)) (nth1 x i)))))

(declare-fun eq_sub_bv1 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)
  (_ BitVec 32)) Bool)

;; eq_sub_bv_def
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (let ((mask (bvshl (bvsub (bvshl #x00000001 n) #x00000001) i)))
  (= (eq_sub_bv1 a b i n) (= (bvand b mask) (bvand a mask))))))

(define-fun eq_sub1 ((a (_ BitVec 32)) (b (_ BitVec 32)) (i Int)
  (n Int)) Bool (forall ((j Int))
                (=> (and (<= i j) (< j (+ i n))) (= (nth1 a j) (nth1 b j)))))

;; eq_sub_equiv
  (assert
  (forall ((a (_ BitVec 32)) (b (_ BitVec 32)) (i (_ BitVec 32))
  (n (_ BitVec 32)))
  (= (eq_sub1 a b (ubv_to_int i) (ubv_to_int n)) (eq_sub_bv1 a b i n))))

(declare-datatypes ((t__ref1 0))
(((t__refqtmk1 (t__content1 (_ BitVec 32))))))
(declare-fun power1 ((_ BitVec 32) Int) (_ BitVec 32))

(define-fun bv_min1 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) x y))

(define-fun bv_max1 ((x (_ BitVec 32))
  (y (_ BitVec 32))) (_ BitVec 32) (ite (bvule x y) y x))

(define-fun in_range ((x Int)) Bool (or (= x 0) (= x 1)))

(declare-fun attr__ATTRIBUTE_IMAGE (Bool) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE (us_image) Bool)

(declare-sort integer 0)

(declare-fun integerqtint (integer) Int)

;; integer'axiom
  (assert
  (forall ((i integer))
  (and (<= (- 2147483648) (integerqtint i)) (<= (integerqtint i) 2147483647))))

(define-fun in_range1 ((x Int)) Bool (and (<= (- 2147483648) x)
                                     (<= x 2147483647)))

(declare-fun attr__ATTRIBUTE_IMAGE1 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check1 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE1 (us_image) Int)

(declare-fun user_eq (integer integer) Bool)

(declare-const dummy integer)

(declare-datatypes ((integer__ref 0))
(((integer__refqtmk (integer__content integer)))))
(define-fun integer__ref_integer__content__projection ((a integer__ref)) integer 
  (integer__content a))

(define-fun to_rep ((x integer)) Int (integerqtint x))

(declare-fun of_rep (Int) integer)

;; inversion_axiom
  (assert
  (forall ((x integer)) (! (= (of_rep (to_rep x)) x) :pattern ((to_rep x)) )))

;; range_axiom
  (assert
  (forall ((x integer)) (! (in_range1 (to_rep x)) :pattern ((to_rep x)) )))

;; coerce_axiom
  (assert
  (forall ((x Int))
  (! (=> (in_range1 x) (= (to_rep (of_rep x)) x)) :pattern ((to_rep
                                                            (of_rep x))) )))

(declare-datatypes ((map__ref 0))
(((map__refqtmk (map__content (Array Int integer))))))
(declare-fun slide ((Array Int integer) Int Int) (Array Int integer))

;; slide_eq
  (assert
  (forall ((a (Array Int integer)))
  (forall ((first Int))
  (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array Int integer)))
  (forall ((old_first Int))
  (forall ((new_first Int))
  (forall ((i Int))
  (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
  (slide a old_first new_first) i)) ))))))

(define-fun bool_eq ((a (Array Int integer)) (a__first Int) (a__last Int)
  (b (Array Int integer)) (b__first Int)
  (b__last Int)) Bool (ite (and
                           (ite (<= a__first a__last)
                           (and (<= b__first b__last)
                           (= (- a__last a__first) (- b__last b__first)))
                           (< b__last b__first))
                           (forall ((temp___idx_154 Int))
                           (=>
                           (and (<= a__first temp___idx_154)
                           (<= temp___idx_154 a__last))
                           (= (to_rep (select a temp___idx_154)) (to_rep
                                                                 (select b (+ (- b__first a__first) temp___idx_154)))))))
                      true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array Int integer)) (b (Array Int integer)))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (=> (= (bool_eq b b__first b__last a a__first a__last) true)
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (forall ((temp___idx_154 Int))
  (=> (and (<= a__first temp___idx_154) (<= temp___idx_154 a__last))
  (= (to_rep (select a temp___idx_154)) (to_rep
                                        (select b (+ (- b__first a__first) temp___idx_154)))))))))))

(declare-const dummy1 (Array Int integer))

(declare-const value__size Int)

(declare-const object__size Int)

(declare-const component__size Int)

(declare-const alignment Int)

;; value__size_axiom
  (assert (<= 0 value__size))

;; object__size_axiom
  (assert (<= 0 object__size))

;; component__size_axiom
  (assert (<= 0 component__size))

;; alignment_axiom
  (assert (<= 0 alignment))

(declare-fun user_eq1 ((Array Int integer) (Array Int integer)) Bool)

(declare-sort map1 0)

(declare-datatypes ((map__ref1 0))
(((map__refqtmk1 (map__content1 map1)))))
(declare-fun get (map1 Int (_ BitVec 16)) (Array Int integer))

(declare-fun set (map1 Int (_ BitVec 16) (Array Int integer)) map1)

;; Select_eq
  (assert
  (forall ((m map1))
  (forall ((i Int))
  (forall ((j (_ BitVec 16)))
  (forall ((a (Array Int integer)))
  (! (= (get (set m i j a) i j) a) :pattern ((set m i j a)) ))))))

;; Select_neq
  (assert
  (forall ((m map1))
  (forall ((i Int) (i2 Int))
  (forall ((j (_ BitVec 16)) (j2 (_ BitVec 16)))
  (forall ((a (Array Int integer)))
  (! (=> (not (and (= i i2) (= j j2)))
     (= (get (set m i j a) i2 j2) (get m i2 j2))) :pattern ((get
                                                            (set m i j a) i2
                                                            j2)) :pattern (
  (set m i j a) (get m i2 j2)) ))))))

(declare-fun slide1 (map1 Int Int (_ BitVec 16) (_ BitVec 16)) map1)

;; slide_def
  (assert
  (forall ((a map1))
  (forall ((new_first Int) (old_first Int))
  (forall ((new_first_2 (_ BitVec 16)) (old_first_2 (_ BitVec 16)))
  (forall ((i Int))
  (forall ((j (_ BitVec 16)))
  (! (= (get (slide1 a old_first new_first old_first_2 new_first_2) i j) 
  (get a (- i (- new_first old_first))
  (bvsub j (bvsub new_first_2 old_first_2)))) :pattern ((get
                                                        (slide1 a old_first
                                                        new_first old_first_2
                                                        new_first_2) i j)) )))))))

(define-fun bool_eq1 ((a map1) (a__first Int) (a__last Int)
  (a__first_2 (_ BitVec 16)) (a__last_2 (_ BitVec 16)) (b map1)
  (b__first Int) (b__last Int) (b__first_2 (_ BitVec 16))
  (b__last_2 (_ BitVec 16))) Bool (ite (and
                                       (and
                                       (ite (<= a__first a__last)
                                       (and (<= b__first b__last)
                                       (= (- a__last a__first) (- b__last b__first)))
                                       (< b__last b__first))
                                       (ite (bvule a__first_2 a__last_2)
                                       (and (bvule b__first_2 b__last_2)
                                       (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2)))
                                       (bvugt b__first_2 b__last_2)))
                                       (forall ((temp___idx_155 Int))
                                       (forall
                                       ((temp___idx_156 (_ BitVec 16)))
                                       (=>
                                       (and
                                       (and (<= a__first temp___idx_155)
                                       (<= temp___idx_155 a__last))
                                       (and (bvule a__first_2 temp___idx_156)
                                       (bvule temp___idx_156 a__last_2)))
                                       (= (bool_eq
                                          (get a temp___idx_155
                                          temp___idx_156) 1 3
                                          (get b
                                          (+ (- b__first a__first) temp___idx_155)
                                          (bvadd (bvsub b__first_2 a__first_2) temp___idx_156))
                                          1 3) true)))))
                                  true false))

;; bool_eq_rev
  (assert
  (forall ((a map1) (b map1))
  (forall ((a__first Int) (a__last Int) (b__first Int) (b__last Int))
  (forall ((a__first_2 (_ BitVec 16)) (a__last_2 (_ BitVec 16))
  (b__first_2 (_ BitVec 16)) (b__last_2 (_ BitVec 16)))
  (=>
  (= (bool_eq1 b b__first b__last b__first_2 b__last_2 a a__first a__last
     a__first_2 a__last_2) true)
  (and
  (and
  (ite (<= a__first a__last)
  (and (<= b__first b__last) (= (- a__last a__first) (- b__last b__first)))
  (< b__last b__first))
  (ite (bvule a__first_2 a__last_2)
  (and (bvule b__first_2 b__last_2)
  (= (bvsub a__last_2 a__first_2) (bvsub b__last_2 b__first_2)))
  (bvugt b__first_2 b__last_2)))
  (forall ((temp___idx_155 Int))
  (forall ((temp___idx_156 (_ BitVec 16)))
  (=>
  (and (and (<= a__first temp___idx_155) (<= temp___idx_155 a__last))
  (and (bvule a__first_2 temp___idx_156) (bvule temp___idx_156 a__last_2)))
  (= (bool_eq (get a temp___idx_155 temp___idx_156) 1 3
     (get b (+ (- b__first a__first) temp___idx_155)
     (bvadd (bvsub b__first_2 a__first_2) temp___idx_156)) 1 3) true))))))))))

(declare-const dummy2 map1)

(declare-const value__size1 Int)

(declare-const object__size1 Int)

(declare-const component__size1 Int)

(declare-const alignment1 Int)

;; value__size_axiom
  (assert (<= 0 value__size1))

;; object__size_axiom
  (assert (<= 0 object__size1))

;; component__size_axiom
  (assert (<= 0 component__size1))

;; alignment_axiom
  (assert (<= 0 alignment1))

(declare-fun user_eq2 (map1 map1) Bool)

(declare-datatypes ((map__ref2 0))
(((map__refqtmk2 (map__content2 (Array (_ BitVec 32) map1))))))
(declare-fun slide2 ((Array (_ BitVec 32) map1) (_ BitVec 32)
  (_ BitVec 32)) (Array (_ BitVec 32) map1))

;; slide_eq
  (assert
  (forall ((a (Array (_ BitVec 32) map1)))
  (forall ((first (_ BitVec 32)))
  (! (= (slide2 a first first) a) :pattern ((slide2 a first first)) ))))

;; slide_def
  (assert
  (forall ((a (Array (_ BitVec 32) map1)))
  (forall ((old_first (_ BitVec 32)))
  (forall ((new_first (_ BitVec 32)))
  (forall ((i (_ BitVec 32)))
  (! (= (select (slide2 a old_first new_first) i) (select a (bvsub i (bvsub new_first old_first)))) :pattern ((select 
  (slide2 a old_first new_first) i)) ))))))

(define-fun bool_eq2 ((a (Array (_ BitVec 32) map1)) (a__first (_ BitVec 32))
  (a__last (_ BitVec 32)) (b (Array (_ BitVec 32) map1))
  (b__first (_ BitVec 32))
  (b__last (_ BitVec 32))) Bool (ite (and
                                     (ite (bvule a__first a__last)
                                     (and (bvule b__first b__last)
                                     (= (bvsub a__last a__first) (bvsub b__last b__first)))
                                     (bvugt b__first b__last))
                                     (forall ((temp___idx_157 (_ BitVec 32)))
                                     (=>
                                     (and (bvule a__first temp___idx_157)
                                     (bvule temp___idx_157 a__last))
                                     (= (bool_eq1 (select a temp___idx_157) 1
                                        3 #x0001 #x0003
                                        (select b (bvadd (bvsub b__first a__first) temp___idx_157))
                                        1 3 #x0001 #x0003) true))))
                                true false))

;; bool_eq_rev
  (assert
  (forall ((a (Array (_ BitVec 32) map1)) (b (Array (_ BitVec 32) map1)))
  (forall ((a__first (_ BitVec 32)) (a__last (_ BitVec 32))
  (b__first (_ BitVec 32)) (b__last (_ BitVec 32)))
  (=> (= (bool_eq2 b b__first b__last a a__first a__last) true)
  (and
  (ite (bvule a__first a__last)
  (and (bvule b__first b__last)
  (= (bvsub a__last a__first) (bvsub b__last b__first)))
  (bvugt b__first b__last))
  (forall ((temp___idx_157 (_ BitVec 32)))
  (=> (and (bvule a__first temp___idx_157) (bvule temp___idx_157 a__last))
  (= (bool_eq1 (select a temp___idx_157) 1 3 #x0001 #x0003
     (select b (bvadd (bvsub b__first a__first) temp___idx_157)) 1 3 #x0001
     #x0003) true))))))))

(declare-const attr__ATTRIBUTE_ADDRESS Int)

(declare-const y (Array (_ BitVec 32) map1))

(declare-const attr__ATTRIBUTE_ADDRESS1 Int)

(declare-const attr__ATTRIBUTE_ADDRESS2 Int)

(declare-const attr__ATTRIBUTE_ADDRESS3 Int)

(declare-const attr__ATTRIBUTE_ADDRESS4 Int)

(declare-const attr__ATTRIBUTE_ADDRESS5 Int)

(declare-sort index1 0)

(declare-fun index1qtint (index1) Int)

;; index1'axiom
  (assert
  (forall ((i index1)) (and (<= 1 (index1qtint i)) (<= (index1qtint i) 3))))

(define-fun in_range2 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE2 (Int) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check2 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE2 (us_image) Int)

(declare-fun user_eq3 (index1 index1) Bool)

(declare-const dummy3 index1)

(declare-datatypes ((index1__ref 0))
(((index1__refqtmk (index1__content index1)))))
(define-fun index1__ref_index1__content__projection ((a index1__ref)) index1 
  (index1__content a))

(declare-sort index2 0)

(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 16))

(define-fun in_range3 ((x (_ BitVec 16))) Bool (and (bvule #x0001 x)
                                               (bvule x #x0003)))

(define-fun in_range_int ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE3 ((_ BitVec 16)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check3 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE3 (us_image) (_ BitVec 16))

(declare-fun user_eq4 (index2 index2) Bool)

(declare-const dummy4 index2)

(declare-datatypes ((index2__ref 0))
(((index2__refqtmk (index2__content index2)))))
(define-fun index2__ref_index2__content__projection ((a index2__ref)) index2 
  (index2__content a))

(declare-sort index3 0)

(declare-const attr__ATTRIBUTE_MODULUS1 (_ BitVec 32))

(define-fun in_range4 ((x (_ BitVec 32))) Bool (and (bvule #x00000001 x)
                                               (bvule x #x00000003)))

(define-fun in_range_int1 ((x Int)) Bool (and (<= 1 x) (<= x 3)))

(declare-fun attr__ATTRIBUTE_IMAGE4 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check4 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE4 (us_image) (_ BitVec 32))

(declare-fun user_eq5 (index3 index3) Bool)

(declare-const dummy5 index3)

(declare-datatypes ((index3__ref 0))
(((index3__refqtmk (index3__content index3)))))
(define-fun index3__ref_index3__content__projection ((a index3__ref)) index3 
  (index3__content a))

(declare-sort u32 0)

(declare-const attr__ATTRIBUTE_MODULUS2 (_ BitVec 32))

(declare-fun attr__ATTRIBUTE_IMAGE5 ((_ BitVec 32)) us_image)

(declare-fun attr__ATTRIBUTE_VALUE__pre_check5 (us_image) Bool)

(declare-fun attr__ATTRIBUTE_VALUE5 (us_image) (_ BitVec 32))

(declare-fun user_eq6 (u32 u32) Bool)

(declare-const dummy6 u32)

(declare-datatypes ((u32__ref 0))
(((u32__refqtmk (u32__content u32)))))
(define-fun u32__ref_u32__content__projection ((a u32__ref)) u32 (u32__content
                                                                 a))

(declare-fun to_rep1 (u32) (_ BitVec 32))

(declare-fun of_rep1 ((_ BitVec 32)) u32)

;; inversion_axiom
  (assert
  (forall ((x u32)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
  (assert true)

;; coerce_axiom
  (assert
  (forall ((x (_ BitVec 32)))
  (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(define-fun to_int3 ((x u32)) Int (ubv_to_int (to_rep1 x)))

;; range_int_axiom
  (assert
  (forall ((x u32)) (! (uint_in_range1 (to_int3 x)) :pattern ((to_int3 x)) )))

(declare-sort t 0)

(declare-fun first (t) u32)

(declare-fun last (t) u32)

(declare-fun mk ((_ BitVec 32) (_ BitVec 32)) t)

;; mk_def
  (assert
  (forall ((f (_ BitVec 32)) (l (_ BitVec 32)))
  (! (and (= (to_rep1 (first (mk f l))) f) (= (to_rep1 (last (mk f l))) l)) :pattern (
  (mk f l)) )))

(define-fun dynamic_property ((range_first (_ BitVec 32))
  (range_last (_ BitVec 32)) (low (_ BitVec 32))
  (high (_ BitVec 32))) Bool (=> (bvule low high)
                             (and (in_range4 low) (in_range4 high))))

(declare-datatypes ((us_t 0))
(((us_tqtmk (elts (Array (_ BitVec 32) map1))(rt t)))))
(define-fun to_array ((a us_t)) (Array (_ BitVec 32) map1) (elts a))

(define-fun of_array ((a (Array (_ BitVec 32) map1)) (f (_ BitVec 32))
  (l (_ BitVec 32))) us_t (us_tqtmk a (mk f l)))

(define-fun first1 ((a us_t)) (_ BitVec 32) (to_rep1 (first (rt a))))

(define-fun last1 ((a us_t)) (_ BitVec 32) (to_rep1 (last (rt a))))

(define-fun length ((a us_t)) Int (ite (bvule (first1 a) (last1 a))
                                  (+ (- (ubv_to_int (last1 a)) (ubv_to_int (first1 a))) 1)
                                  0))

(declare-const value__size2 Int)

(declare-const object__size2 Int)

(declare-const component__size2 Int)

(declare-const alignment2 Int)

;; value__size_axiom
  (assert (<= 0 value__size2))

;; object__size_axiom
  (assert (<= 0 object__size2))

;; component__size_axiom
  (assert (<= 0 component__size2))

;; alignment_axiom
  (assert (<= 0 alignment2))

(define-fun bool_eq3 ((x us_t)
  (y1 us_t)) Bool (bool_eq2 (elts x) (to_rep1 (first (rt x)))
                  (to_rep1 (last (rt x))) (elts y1) (to_rep1 (first (rt y1)))
                  (to_rep1 (last (rt y1)))))

(declare-fun user_eq7 (us_t us_t) Bool)

(declare-const dummy7 us_t)

(declare-datatypes ((tt3B__ref 0))
(((tt3B__refqtmk (tt3B__content us_t)))))
(define-fun tt3B__ref_tt3B__content__projection ((a tt3B__ref)) us_t 
  (tt3B__content a))

(declare-datatypes ((t13b__ref 0))
(((t13b__refqtmk (t13b__content us_t)))))
(define-fun t13b__ref_t13b__content__projection ((a t13b__ref)) us_t 
  (t13b__content a))

(declare-datatypes ((t15b__ref 0))
(((t15b__refqtmk (t15b__content us_t)))))
(define-fun t15b__ref_t15b__content__projection ((a t15b__ref)) us_t 
  (t15b__content a))

(declare-fun p_bv__x__aggregate_def (map1) (Array (_ BitVec 32) map1))

(declare-fun temp_____aggregate_def_260 ((Array Int integer)) map1)

(declare-fun temp_____aggregate_def_265 (Int) (Array Int integer))

(define-fun dynamic_invariant ((temp___expr_18 Int) (temp___is_init_14 Bool)
  (temp___skip_constant_15 Bool) (temp___do_toplevel_16 Bool)
  (temp___do_typ_inv_17 Bool)) Bool (=>
                                    (or (= temp___is_init_14 true)
                                    (<= (- 2147483648) 2147483647))
                                    (in_range1 temp___expr_18)))

(define-fun dynamic_invariant1 ((temp___expr_183 Int)
  (temp___is_init_179 Bool) (temp___skip_constant_180 Bool)
  (temp___do_toplevel_181 Bool)
  (temp___do_typ_inv_182 Bool)) Bool (=>
                                     (or (= temp___is_init_179 true)
                                     (<= 1 3)) (in_range2 temp___expr_183)))

(define-fun dynamic_invariant2 ((temp___expr_204 (_ BitVec 16))
  (temp___is_init_200 Bool) (temp___skip_constant_201 Bool)
  (temp___do_toplevel_202 Bool)
  (temp___do_typ_inv_203 Bool)) Bool (=>
                                     (or (= temp___is_init_200 true)
                                     (bvule #x0001 #x0003)) (in_range3
                                     temp___expr_204)))

(define-fun dynamic_invariant3 ((temp___expr_211 (_ BitVec 32))
  (temp___is_init_207 Bool) (temp___skip_constant_208 Bool)
  (temp___do_toplevel_209 Bool)
  (temp___do_typ_inv_210 Bool)) Bool (=>
                                     (or (= temp___is_init_207 true)
                                     (bvule #x00000001 #x00000003))
                                     (in_range4 temp___expr_211)))

;; def_axiom
  (assert
  (forall ((temp___258 map1))
  (forall ((temp___259 (_ BitVec 32)))
  (= (select (p_bv__x__aggregate_def temp___258) temp___259) temp___258))))

;; def_axiom
  (assert
  (forall ((temp___262 (Array Int integer)))
  (forall ((temp___263 Int))
  (forall ((temp___264 (_ BitVec 16)))
  (= (get (temp_____aggregate_def_260 temp___262) temp___263 temp___264) temp___262)))))

(declare-const rliteral integer)

;; rliteral_axiom
  (assert (= (integerqtint rliteral) 0))

;; def_axiom
  (assert
  (forall ((temp___267 Int))
  (=> (dynamic_invariant temp___267 true true true true)
  (forall ((temp___268 Int))
  (= (select (temp_____aggregate_def_265 temp___267) temp___268) rliteral)))))

(declare-const rliteral1 integer)

;; rliteral_axiom
  (assert (= (integerqtint rliteral1) 1))

(assert
;; defqtvc
 ;; File "p_bv.adb", line 1, characters 0-0
  (not
  (forall ((x (Array (_ BitVec 32) map1)) (i3 (_ BitVec 32))
  (x1 (Array (_ BitVec 32) map1)) (i31 (_ BitVec 32))
  (x2 (Array (_ BitVec 32) map1)))
  (=>
  (= x (p_bv__x__aggregate_def
       (temp_____aggregate_def_260 (temp_____aggregate_def_265 0))))
  (=> (= x y)
  (=> (= i3 #x00000001)
  (=>
  (= (and (ite (bvule #x00000001 i3) true false) (ite (bvule i3 #x00000003)
                                                 true false)) true)
  (=>
  (= (and (ite (forall ((temp___312 (_ BitVec 32)))
               (=>
               (and (bvule #x00000001 temp___312)
               (bvule temp___312 #x00000003))
               (=>
               (or (bvult #x00000003 temp___312)
               (or (bvult temp___312 #x00000001) (bvule i31 temp___312)))
               (= (select x1 temp___312) (select x temp___312)))))
          true false) (ite (and (bvule #x00000001 i31)
                           (bvule i31 #x00000003))
                      true false)) true)
  (=>
  (exists ((i21 Int))
  (and (= i21 1)
  (ite (= (and (ite (<= 1 i21) true false) (ite (<= i21 3) true false)) true)
  (exists ((x3 (Array (_ BitVec 32) map1)) (i211 Int))
  (and
  (= (and (ite (forall ((temp___291 (_ BitVec 32)))
               (=>
               (and (bvule #x00000001 temp___291)
               (bvule temp___291 #x00000003))
               (ite (not (= i31 temp___291))
               (= (select x3 temp___291) (select x1 temp___291))
               (forall ((temp___292 Int))
               (forall ((temp___293 (_ BitVec 16)))
               (=>
               (and (and (<= 1 temp___292) (<= temp___292 3))
               (and (bvule #x0001 temp___293) (bvule temp___293 #x0003)))
               (=>
               (or (< 3 temp___292)
               (or (< temp___292 1) (<= i211 temp___292)))
               (= (get (select x3 temp___291) temp___292 temp___293) 
               (get (select x1 temp___291) temp___292 temp___293)))))))))
          true false) (ite (and (<= 1 i211) (<= i211 3)) true false)) true)
  (and
  (exists ((i22 (_ BitVec 16)))
  (and (= i22 #x0001)
  (ite (= (and (ite (bvule #x0001 i22) true false) (ite (bvule i22 #x0003)
                                                   true false)) true)
  (exists ((x4 (Array (_ BitVec 32) map1)) (i221 (_ BitVec 16)))
  (and
  (= (and (ite (forall ((temp___286 (_ BitVec 32)))
               (=>
               (and (bvule #x00000001 temp___286)
               (bvule temp___286 #x00000003))
               (ite (not (= i31 temp___286))
               (= (select x4 temp___286) (select x3 temp___286))
               (forall ((temp___287 Int))
               (forall ((temp___288 (_ BitVec 16)))
               (=>
               (and (and (<= 1 temp___287) (<= temp___287 3))
               (and (bvule #x0001 temp___288) (bvule temp___288 #x0003)))
               (=>
               (or (bvult #x0003 temp___288)
               (or (bvult temp___288 #x0001)
               (or (bvule i221 temp___288) (not (= i211 temp___287)))))
               (= (get (select x4 temp___286) temp___287 temp___288) 
               (get (select x3 temp___286) temp___287 temp___288)))))))))
          true false) (ite (and (bvule #x0001 i221) (bvule i221 #x0003)) true
                      false)) true)
  (and
  (exists ((i1 Int))
  (and (= i1 1)
  (ite (= (and (ite (<= 1 i1) true false) (ite (<= i1 3) true false)) true)
  (exists ((x5 (Array (_ BitVec 32) map1)) (i11 Int))
  (and
  (= (and (ite (forall ((temp___281 (_ BitVec 32)))
               (=>
               (and (bvule #x00000001 temp___281)
               (bvule temp___281 #x00000003))
               (ite (not (= i31 temp___281))
               (= (select x5 temp___281) (select x4 temp___281))
               (forall ((temp___282 Int))
               (forall ((temp___283 (_ BitVec 16)))
               (=>
               (and (and (<= 1 temp___282) (<= temp___282 3))
               (and (bvule #x0001 temp___283) (bvule temp___283 #x0003)))
               (ite (or (not (= i221 temp___283)) (not (= i211 temp___282)))
               (= (get (select x5 temp___281) temp___282 temp___283) 
               (get (select x4 temp___281) temp___282 temp___283))
               (forall ((temp___284 Int))
               (=> (and (<= 1 temp___284) (<= temp___284 3))
               (=>
               (or (< 3 temp___284)
               (or (< temp___284 1) (<= i11 temp___284)))
               (= (select (get (select x5 temp___281) temp___282 temp___283) temp___284) (select 
               (get (select x4 temp___281) temp___282 temp___283) temp___284))))))))))))
          true false) (ite (and (<= 1 i11) (<= i11 3)) true false)) true)
  (and
  (= x2 (store x5 i31 (set (select x5 i31) i211 i221
                      (store (get (select x5 i31) i211 i221) i11 rliteral1))))
  (= i11 3)))) (= x2 x4)))) (= i221 #x0003)))) (= x2 x3)))) (= i211 3))))
  (= x2 x1))))
  (= (let ((temp___310 (of_array y (bvadd i31 #x00000001) #x00000003)))
     (let ((temp___309 (of_array x2 (bvadd i31 #x00000001) #x00000003)))
     (bool_eq2 (to_array temp___309) (first1 temp___309) (last1 temp___309)
     (to_array temp___310) (first1 temp___310) (last1 temp___310)))) true))))))))))
(check-sat)
(exit)
