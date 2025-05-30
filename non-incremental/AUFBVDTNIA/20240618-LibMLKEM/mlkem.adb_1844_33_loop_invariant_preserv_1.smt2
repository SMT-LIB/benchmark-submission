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
(declare-fun nth ((_ BitVec 8)
  Int) Bool)

;; lsr
(declare-fun lsr ((_ BitVec 8)
  Int) (_ BitVec 8))

;; asr
(declare-fun asr ((_ BitVec 8)
  Int) (_ BitVec 8))

;; lsl
(declare-fun lsl ((_ BitVec 8)
  Int) (_ BitVec 8))

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
(assert (= two_power_size_minus_one (pow2 (- 8 1))))

;; to_int
(define-fun to_int1 ((x (_ BitVec 8))) Int
  (ite (bvsge x (_ bv0 8)) (ubv_to_int x) (- (- 256 (ubv_to_int x)))))

;; lsr_bv_is_lsr
(assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
    (= (bvlshr x n) (lsr x (ubv_to_int n)))))

;; asr_bv_is_asr
(assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
    (= (bvashr x n) (asr x (ubv_to_int n)))))

;; lsl_bv_is_lsl
(assert
  (forall ((x (_ BitVec 8)) (n (_ BitVec 8)))
    (= (bvshl x n) (lsl x (ubv_to_int n)))))

;; nth_bv
(declare-fun nth_bv ((_ BitVec 8)
  (_ BitVec 8)) Bool)

;; nth_bv_def
(assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
    (= (= (nth_bv x i) true) (not (= (bvand (bvlshr x i) #x01) #x00)))))

;; Nth_bv_is_nth
(assert
  (forall ((x (_ BitVec 8)) (i (_ BitVec 8)))
    (= (nth x (ubv_to_int i)) (nth_bv x i))))

;; Nth_bv_is_nth2
(assert
  (forall ((x (_ BitVec 8)) (i Int))
    (=> (and (<= 0 i) (< i 256)) (= (nth_bv x ((_ int_to_bv 8) i)) (nth x i)))))

(declare-datatypes ((t__ref 0))
  (((t__refqtmk (t__content (_ BitVec 8))))))

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

;; nth
(declare-fun nth1 ((_ BitVec 16)
  Int) Bool)

;; lsr
(declare-fun lsr1 ((_ BitVec 16)
  Int) (_ BitVec 16))

;; asr
(declare-fun asr1 ((_ BitVec 16)
  Int) (_ BitVec 16))

;; lsl
(declare-fun lsl1 ((_ BitVec 16)
  Int) (_ BitVec 16))

(declare-const two_power_size_minus_one1 Int)

;; two_power_size_minus_one_val
(assert (= two_power_size_minus_one1 (pow2 (- 16 1))))

;; to_int
(define-fun to_int2 ((x (_ BitVec 16))) Int
  (ite (bvsge x (_ bv0 16)) (ubv_to_int x) (- (- 65536 (ubv_to_int x)))))

;; lsr_bv_is_lsr
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvlshr x n) (lsr1 x (ubv_to_int n)))))

;; asr_bv_is_asr
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvashr x n) (asr1 x (ubv_to_int n)))))

;; lsl_bv_is_lsl
(assert
  (forall ((x (_ BitVec 16)) (n (_ BitVec 16)))
    (= (bvshl x n) (lsl1 x (ubv_to_int n)))))

;; nth_bv
(declare-fun nth_bv1 ((_ BitVec 16)
  (_ BitVec 16)) Bool)

;; nth_bv_def
(assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
    (= (= (nth_bv1 x i) true) (not (= (bvand (bvlshr x i) #x0001) #x0000)))))

;; Nth_bv_is_nth
(assert
  (forall ((x (_ BitVec 16)) (i (_ BitVec 16)))
    (= (nth1 x (ubv_to_int i)) (nth_bv1 x i))))

;; Nth_bv_is_nth2
(assert
  (forall ((x (_ BitVec 16)) (i Int))
    (=>
      (and (<= 0 i) (< i 65536))
      (= (nth_bv1 x ((_ int_to_bv 16) i)) (nth1 x i)))))

(declare-sort t 0)

;; in_range
(define-fun in_range ((x (_ BitVec 16))) Bool
  (and (bvule #x0000 x) (bvule x #x0D00)))

(declare-const dummy t)

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

(declare-const dummy1 (Array Int t))

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

(declare-datatypes ((map__ref 0))
  (((map__refqtmk (map__content (Array Int (Array Int t)))))))

(declare-sort byte 0)

(declare-const attr__ATTRIBUTE_MODULUS (_ BitVec 8))

(declare-const dummy2 byte)

;; to_rep
(declare-fun to_rep1 (byte) (_ BitVec 8))

;; of_rep
(declare-fun of_rep1 ((_ BitVec 8)) byte)

;; inversion_axiom
(assert
  (forall ((x byte)) (! (= (of_rep1 (to_rep1 x)) x) :pattern ((to_rep1 x)) )))

;; range_axiom
(assert true)

;; coerce_axiom
(assert
  (forall ((x (_ BitVec 8)))
    (! (= (to_rep1 (of_rep1 x)) x) :pattern ((to_rep1 (of_rep1 x))) )))

(declare-datatypes ((map__ref1 0))
  (((map__refqtmk1 (map__content1 (Array Int byte))))))

;; slide
(declare-fun slide ((Array Int byte)
  Int
  Int) (Array Int byte))

;; slide_eq
(assert
  (forall ((a (Array Int byte)))
    (forall ((first Int))
      (! (= (slide a first first) a) :pattern ((slide a first first)) ))))

;; slide_def
(assert
  (forall ((a (Array Int byte)))
    (forall ((old_first Int))
      (forall ((new_first Int))
        (forall ((i Int))
          (! (= (select (slide a old_first new_first) i) (select a (- i (- new_first old_first)))) :pattern ((select 
          (slide
            a
            old_first
            new_first) i)) ))))))

;; prf_eta_1
(declare-fun prf_eta_1 ((Array Int byte)
  (_ BitVec 8)) (Array Int byte))

;; prf_eta_1__post_axiom
(assert true)

(declare-sort tinteger_32B 0)

;; tinteger_32B'int
(declare-fun tinteger_32Bqtint (tinteger_32B) Int)

;; tinteger_32B'axiom
(assert
  (forall ((i tinteger_32B))
    (and
      (<= (- 2147483648) (tinteger_32Bqtint i))
      (<= (tinteger_32Bqtint i) 2147483647))))

;; in_range
(define-fun in_range1 ((x Int)) Bool
  (and (<= (- 2147483648) x) (<= x 2147483647)))

(declare-const dummy3 tinteger_32B)

;; to_rep
(define-fun to_rep2 ((x tinteger_32B)) Int
  (tinteger_32Bqtint x))

;; of_rep
(declare-fun of_rep2 (Int) tinteger_32B)

;; inversion_axiom
(assert
  (forall ((x tinteger_32B))
    (! (= (of_rep2 (to_rep2 x)) x) :pattern ((to_rep2 x)) )))

;; range_axiom
(assert
  (forall ((x tinteger_32B))
    (! (in_range1 (to_rep2 x)) :pattern ((to_rep2 x)) )))

;; coerce_axiom
(assert
  (forall ((x Int))
    (! (=> (in_range1 x) (= (to_rep2 (of_rep2 x)) x)) :pattern ((to_rep2
                                                                  (of_rep2 x))) )))

(declare-sort n32 0)

;; in_range
(define-fun in_range2 ((x Int)) Bool
  (and (<= 0 x) (<= x 2147483647)))

(declare-const dummy4 n32)

(declare-datatypes ((t1 0))
  (((tqtmk (rec__first tinteger_32B)(rec__last tinteger_32B)))))

;; mk
(declare-fun mk (Int
  Int) t1)

;; mk_def
(assert
  (forall ((f Int) (l Int))
    (! (=>
         (in_range1 f)
         (=>
           (in_range1 l)
           (and
             (= (to_rep2 (rec__first (mk f l))) f)
             (= (to_rep2 (rec__last (mk f l))) l)))) :pattern ((mk f l)) )))

;; dynamic_property
(define-fun dynamic_property ((range_first Int) (range_last Int) (low Int) (high Int)) Bool
  (and
    (in_range1 low)
    (and
      (in_range1 high)
      (=> (<= low high) (and (in_range2 low) (in_range2 high))))))

(declare-datatypes ((us_t 0))
  (((us_tqtmk (elts (Array Int byte))(rt t1)))))

;; of_array
(define-fun of_array ((a (Array Int byte)) (f Int) (l Int)) us_t
  (us_tqtmk a (mk f l)))

;; first
(define-fun first ((a us_t)) Int
  (to_rep2 (rec__first (rt a))))

;; last
(define-fun last ((a us_t)) Int
  (to_rep2 (rec__last (rt a))))

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

(declare-const dummy5 us_t)

;; g
(declare-fun g (us_t) (Array Int byte))

;; dynamic_invariant
(define-fun dynamic_invariant ((temp___expr_667 us_t) (temp___is_init_663 Bool) (temp___skip_constant_664 Bool) (temp___do_toplevel_665 Bool) (temp___do_typ_inv_666 Bool)) Bool
  (=>
    (not (= temp___skip_constant_664 true))
    (dynamic_property
      0
      2147483647
      (first temp___expr_667)
      (last temp___expr_667))))

;; g__post_axiom
(assert true)

;; samplepolycbd_eta_1
(declare-fun samplepolycbd_eta_1 ((Array Int byte)) (Array Int t))

;; samplepolycbd_eta_1__post_axiom
(assert true)

(declare-const dummy6 (Array Int t))

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

(declare-datatypes ((map__ref2 0))
  (((map__refqtmk2 (map__content2 (Array Int (Array Int t)))))))

(declare-const dummy7 (Array Int (Array Int t)))

(declare-const value__size3 Int)

(declare-const object__size3 Int)

(declare-const component__size3 Int)

(declare-const alignment3 Int)

;; value__size_axiom
(assert (<= 0 value__size3))

;; object__size_axiom
(assert (<= 0 object__size3))

;; component__size_axiom
(assert (<= 0 component__size3))

;; alignment_axiom
(assert (<= 0 alignment3))

(declare-datatypes ((map__ref3 0))
  (((map__refqtmk3 (map__content3 (Array Int (Array Int (Array Int t))))))))

;; generate_a_hat_matrix
(declare-fun generate_a_hat_matrix ((Array Int byte)) (Array Int (Array Int (Array Int t))))

(declare-const random_d (Array Int byte))

(declare-const dummy8 (Array Int byte))

(declare-const value__size4 Int)

(declare-const object__size4 Int)

(declare-const component__size4 Int)

(declare-const alignment4 Int)

;; value__size_axiom
(assert (<= 0 value__size4))

;; object__size_axiom
(assert (<= 0 object__size4))

;; component__size_axiom
(assert (<= 0 component__size4))

;; alignment_axiom
(assert (<= 0 alignment4))

(declare-const dummy9 (Array Int byte))

(declare-const value__size5 Int)

(declare-const object__size5 Int)

(declare-const component__size5 Int)

(declare-const alignment5 Int)

;; value__size_axiom
(assert (<= 0 value__size5))

;; object__size_axiom
(assert (<= 0 object__size5))

;; component__size_axiom
(assert (<= 0 component__size5))

;; alignment_axiom
(assert (<= 0 alignment5))

(declare-datatypes ((us_split_fields 0))
  (((us_split_fieldsqtmk
    (rec__mlkem__pke_key__ek (Array Int byte))(rec__mlkem__pke_key__dk (Array Int byte))))))

(declare-datatypes ((us_rep 0))
  (((us_repqtmk (us_split_fields1 us_split_fields)))))

(declare-const value__size6 Int)

(declare-const object__size6 Int)

(declare-const alignment6 Int)

;; value__size_axiom
(assert (<= 0 value__size6))

;; object__size_axiom
(assert (<= 0 object__size6))

;; alignment_axiom
(assert (<= 0 alignment6))

(declare-const mlkem__pke_key__ek__first__bit Int)

(declare-const mlkem__pke_key__ek__last__bit Int)

(declare-const mlkem__pke_key__ek__position Int)

;; mlkem__pke_key__ek__first__bit_axiom
(assert (<= 0 mlkem__pke_key__ek__first__bit))

;; mlkem__pke_key__ek__last__bit_axiom
(assert (< mlkem__pke_key__ek__first__bit mlkem__pke_key__ek__last__bit))

;; mlkem__pke_key__ek__position_axiom
(assert (<= 0 mlkem__pke_key__ek__position))

(declare-const mlkem__pke_key__dk__first__bit Int)

(declare-const mlkem__pke_key__dk__last__bit Int)

(declare-const mlkem__pke_key__dk__position Int)

;; mlkem__pke_key__dk__first__bit_axiom
(assert (<= 0 mlkem__pke_key__dk__first__bit))

;; mlkem__pke_key__dk__last__bit_axiom
(assert (< mlkem__pke_key__dk__first__bit mlkem__pke_key__dk__last__bit))

;; mlkem__pke_key__dk__position_axiom
(assert (<= 0 mlkem__pke_key__dk__position))

(declare-const dummy10 us_rep)

(declare-const d_hash (Array Int byte))

(declare-const rho (Array Int byte))

(declare-const sigma (Array Int byte))

(declare-sort index_32 0)

(declare-const dummy11 index_32)

(declare-sort mlkem_encapsulation_key_index 0)

(declare-const dummy12 mlkem_encapsulation_key_index)

(declare-sort index_64 0)

(declare-const dummy13 index_64)

(declare-sort k_range 0)

;; in_range
(define-fun in_range3 ((x Int)) Bool
  (and (<= 0 x) (<= x 2)))

(declare-const dummy14 k_range)

(declare-sort index_poly_zq_vector_bytes 0)

(declare-const dummy15 index_poly_zq_vector_bytes)

(declare-sort t274b 0)

(declare-const dummy16 t274b)

;; d_hash__def_axiom
(assert
  (= d_hash (g (let ((temp___608 random_d)) (of_array temp___608 0 31)))))

;; rho__def_axiom
(assert
  (= rho (let ((temp___612 (let ((temp___610 31))
                             (let ((temp___609 0))
                               (let ((temp___611 d_hash)) temp___611)))))
           (let ((temp___613 temp___612)) temp___613))))

;; sigma__def_axiom
(assert
  (= sigma (let ((temp___617 (let ((temp___615 63))
                               (let ((temp___614 32))
                                 (let ((temp___616 d_hash)) temp___616)))))
             (let ((temp___618 (slide temp___617 32 0))) temp___618))))

;; Goal def'vc
;; File "mlkem.adb", line 1816, characters 0-0
(assert
  (not
  (forall ((s (Array Int (Array Int t))) (e (Array Int (Array Int t))))
    (=>
      (= (g (of_array random_d 0 31)) d_hash)
      (=>
        (=>
          (<= 0 31)
          (and (and (<= 0 0) (<= 0 63)) (and (<= 0 31) (<= 31 63))))
        (=>
          (= d_hash rho)
          (=>
            (=>
              (<= 32 63)
              (and (and (<= 0 32) (<= 32 63)) (and (<= 0 63) (<= 63 63))))
            (=>
              (= (slide d_hash 32 0) sigma)
              (forall ((n (_ BitVec 8)))
                (=>
                  (= n #x00)
                  (forall ((a_hat (Array Int (Array Int (Array Int t)))))
                    (=>
                      (= a_hat (generate_a_hat_matrix rho))
                      (forall ((n1 (_ BitVec 8)) (s1 (Array Int (Array Int t))))
                        (=>
                          (exists ((i Int))
                            (and
                              (= i 0)
                              (ite (= (and (ite (<= 0 i) true false) 
                                (ite (<= i 2)
                                  true
                                  false)) true)
                                (exists ((n2 (_ BitVec 8)) (s2 (Array Int (Array Int t))) (i1 Int))
                                  (and
                                    (= n2 ((_ int_to_bv 8) i1))
                                    (and
                                      (= (and (ite (and
                                                     (in_range3 i1)
                                                     (forall ((temp___3400 Int))
                                                       (=>
                                                         (and
                                                           (<= 0 temp___3400)
                                                           (<= temp___3400 2))
                                                         (=>
                                                           (or
                                                             (< 2 temp___3400)
                                                             (or
                                                               (< temp___3400 0)
                                                               (<= i1 temp___3400)))
                                                           (= (select s2 temp___3400) (select s temp___3400))))))
                                                true
                                                false) (ite (and
                                                              (<= 0 i1)
                                                              (<= i1 2))
                                                         true
                                                         false)) true)
                                      (and
                                        (= s1 (store s2 i1 (samplepolycbd_eta_1
                                                             (prf_eta_1
                                                               sigma
                                                               n2))))
                                        (and (= n1 (bvadd n2 #x01)) (= i1 2))))))
                                (and (= n1 n) (= s1 s)))))
                          (=>
                            (= n1 #x03)
                            (forall ((i Int))
                              (=>
                                (= i 0)
                                (=>
                                  (= (and (ite (<= 0 i) true false) (ite (<= i 2)
                                                                    true
                                                                    false)) true)
                                  (forall ((n2 (_ BitVec 8)) (e1 (Array Int (Array Int t))) (i1 Int))
                                    (=>
                                      (= n2 (bvadd #x03 ((_ int_to_bv 8) i1)))
                                      (=>
                                        (= (and (ite (and
                                                       (in_range3 i1)
                                                       (forall ((temp___3407 Int))
                                                         (=>
                                                           (and
                                                             (<= 0 temp___3407)
                                                             (<= temp___3407 2))
                                                           (=>
                                                             (or
                                                               (< 2 temp___3407)
                                                               (or
                                                                 (< temp___3407 0)
                                                                 (<= i1 temp___3407)))
                                                             (= (select e1 temp___3407) (select e temp___3407))))))
                                                  true
                                                  false) (ite (and
                                                                (<= 0 i1)
                                                                (<= i1 2))
                                                           true
                                                           false)) true)
                                        (forall ((e2 (Array Int (Array Int t))))
                                          (=>
                                            (= e2 (store e1 i1 (samplepolycbd_eta_1
                                                                 (prf_eta_1
                                                                   sigma
                                                                   n2))))
                                            (forall ((n3 (_ BitVec 8)))
                                              (=>
                                                (= n3 (bvadd n2 #x01))
                                                (=>
                                                  (not (= i1 2))
                                                  (forall ((i2 Int))
                                                    (=>
                                                      (= i2 (+ i1 1))
                                                      (= n3 (bvadd #x03 ((_ int_to_bv 8) i2)))))))))))))))))))))))))))))))

(check-sat)
(exit)
