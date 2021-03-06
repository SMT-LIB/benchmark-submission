(set-info :smt-lib-version 2.6)
(set-logic QF_IDL)
(set-info :source | These instances are encoded from job shop scheduling problemencoded from job shop schedul-ing problem resembling 'https://clc-gitlab.cs.uiowa.edu:2443/SMT-LIB-benchmarks/QF_IDL/-/blob/master/job_shop/'. 
 Note that there exists a mistake in the encoding method of original instances, and we fix it in new instances. 
 This problem was added to SMT-LIB by Bohan Li.|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status unknown)
(declare-fun s1_1 () Int)
(declare-fun s1_2 () Int)
(declare-fun s2_1 () Int)
(declare-fun s2_2 () Int)
(declare-fun s3_1 () Int)
(declare-fun s3_2 () Int)
(declare-fun s4_1 () Int)
(declare-fun s4_2 () Int)
(declare-fun s5_1 () Int)
(declare-fun s5_2 () Int)
(declare-fun s6_1 () Int)
(declare-fun s6_2 () Int)
(declare-fun s7_1 () Int)
(declare-fun s7_2 () Int)
(declare-fun s8_1 () Int)
(declare-fun s8_2 () Int)
(declare-fun m1_1 () Int)
(declare-fun m1_2 () Int)
(declare-fun m2_1 () Int)
(declare-fun m2_2 () Int)
(declare-fun m3_1 () Int)
(declare-fun m3_2 () Int)
(declare-fun m4_1 () Int)
(declare-fun m4_2 () Int)
(declare-fun m5_1 () Int)
(declare-fun m5_2 () Int)
(declare-fun m6_1 () Int)
(declare-fun m6_2 () Int)
(declare-fun m7_1 () Int)
(declare-fun m7_2 () Int)
(declare-fun m8_1 () Int)
(declare-fun m8_2 () Int)
(declare-fun ref () Int)
(assert (and
(<= (- m1_1 ref) 3)
(>= (- m1_1 ref) 0)
(<= (- m1_2 ref) 3)
(>= (- m1_2 ref) 0)
(<= (- m2_1 ref) 3)
(>= (- m2_1 ref) 0)
(<= (- m2_2 ref) 3)
(>= (- m2_2 ref) 0)
(<= (- m3_1 ref) 3)
(>= (- m3_1 ref) 0)
(<= (- m3_2 ref) 3)
(>= (- m3_2 ref) 0)
(<= (- m4_1 ref) 3)
(>= (- m4_1 ref) 0)
(<= (- m4_2 ref) 3)
(>= (- m4_2 ref) 0)
(<= (- m5_1 ref) 3)
(>= (- m5_1 ref) 0)
(<= (- m5_2 ref) 3)
(>= (- m5_2 ref) 0)
(<= (- m6_1 ref) 3)
(>= (- m6_1 ref) 0)
(<= (- m6_2 ref) 3)
(>= (- m6_2 ref) 0)
(<= (- m7_1 ref) 3)
(>= (- m7_1 ref) 0)
(<= (- m7_2 ref) 3)
(>= (- m7_2 ref) 0)
(<= (- m8_1 ref) 3)
(>= (- m8_1 ref) 0)
(<= (- m8_2 ref) 3)
(>= (- m8_2 ref) 0)

(>= (- s1_1 ref) 0)
(>= (- s2_1 ref) 0)
(>= (- s3_1 ref) 0)
(>= (- s4_1 ref) 0)
(>= (- s5_1 ref) 0)
(>= (- s6_1 ref) 0)
(>= (- s7_1 ref) 0)
(>= (- s8_1 ref) 0)

(<= (- s1_2 ref) 9)
(<= (- s2_2 ref) 9)
(<= (- s3_2 ref) 9)
(<= (- s4_2 ref) 10)
(<= (- s5_2 ref) 9)
(<= (- s6_2 ref) 9)
(<= (- s7_2 ref) 9)
(<= (- s8_2 ref) 9)

(>= (- s1_2 s1_1) 3)
(>= (- s2_2 s2_1) 2)
(>= (- s3_2 s3_1) 4)
(>= (- s4_2 s4_1) 3)
(>= (- s5_2 s5_1) 2)
(>= (- s6_2 s6_1) 4)
(>= (- s7_2 s7_1) 4)
(>= (- s8_2 s8_1) 4)

(or (not (= (- m1_1 m2_1) 0)) (>= (- s1_1 s2_1) 2) (>= (- s2_1 s1_1) 3)) 
(or (not (= (- m1_1 m3_1) 0)) (>= (- s1_1 s3_1) 4) (>= (- s3_1 s1_1) 3)) 
(or (not (= (- m1_1 m4_1) 0)) (>= (- s1_1 s4_1) 3) (>= (- s4_1 s1_1) 3)) 
(or (not (= (- m1_1 m5_1) 0)) (>= (- s1_1 s5_1) 2) (>= (- s5_1 s1_1) 3)) 
(or (not (= (- m1_1 m6_1) 0)) (>= (- s1_1 s6_1) 4) (>= (- s6_1 s1_1) 3)) 
(or (not (= (- m1_1 m7_1) 0)) (>= (- s1_1 s7_1) 4) (>= (- s7_1 s1_1) 3)) 
(or (not (= (- m1_1 m8_1) 0)) (>= (- s1_1 s8_1) 4) (>= (- s8_1 s1_1) 3)) 
(or (not (= (- m2_1 m3_1) 0)) (>= (- s2_1 s3_1) 4) (>= (- s3_1 s2_1) 2)) 
(or (not (= (- m2_1 m4_1) 0)) (>= (- s2_1 s4_1) 3) (>= (- s4_1 s2_1) 2)) 
(or (not (= (- m2_1 m5_1) 0)) (>= (- s2_1 s5_1) 2) (>= (- s5_1 s2_1) 2)) 
(or (not (= (- m2_1 m6_1) 0)) (>= (- s2_1 s6_1) 4) (>= (- s6_1 s2_1) 2)) 
(or (not (= (- m2_1 m7_1) 0)) (>= (- s2_1 s7_1) 4) (>= (- s7_1 s2_1) 2)) 
(or (not (= (- m2_1 m8_1) 0)) (>= (- s2_1 s8_1) 4) (>= (- s8_1 s2_1) 2)) 
(or (not (= (- m3_1 m4_1) 0)) (>= (- s3_1 s4_1) 3) (>= (- s4_1 s3_1) 4)) 
(or (not (= (- m3_1 m5_1) 0)) (>= (- s3_1 s5_1) 2) (>= (- s5_1 s3_1) 4)) 
(or (not (= (- m3_1 m6_1) 0)) (>= (- s3_1 s6_1) 4) (>= (- s6_1 s3_1) 4)) 
(or (not (= (- m3_1 m7_1) 0)) (>= (- s3_1 s7_1) 4) (>= (- s7_1 s3_1) 4)) 
(or (not (= (- m3_1 m8_1) 0)) (>= (- s3_1 s8_1) 4) (>= (- s8_1 s3_1) 4)) 
(or (not (= (- m4_1 m5_1) 0)) (>= (- s4_1 s5_1) 2) (>= (- s5_1 s4_1) 3)) 
(or (not (= (- m4_1 m6_1) 0)) (>= (- s4_1 s6_1) 4) (>= (- s6_1 s4_1) 3)) 
(or (not (= (- m4_1 m7_1) 0)) (>= (- s4_1 s7_1) 4) (>= (- s7_1 s4_1) 3)) 
(or (not (= (- m4_1 m8_1) 0)) (>= (- s4_1 s8_1) 4) (>= (- s8_1 s4_1) 3)) 
(or (not (= (- m5_1 m6_1) 0)) (>= (- s5_1 s6_1) 4) (>= (- s6_1 s5_1) 2)) 
(or (not (= (- m5_1 m7_1) 0)) (>= (- s5_1 s7_1) 4) (>= (- s7_1 s5_1) 2)) 
(or (not (= (- m5_1 m8_1) 0)) (>= (- s5_1 s8_1) 4) (>= (- s8_1 s5_1) 2)) 
(or (not (= (- m6_1 m7_1) 0)) (>= (- s6_1 s7_1) 4) (>= (- s7_1 s6_1) 4)) 
(or (not (= (- m6_1 m8_1) 0)) (>= (- s6_1 s8_1) 4) (>= (- s8_1 s6_1) 4)) 
(or (not (= (- m7_1 m8_1) 0)) (>= (- s7_1 s8_1) 4) (>= (- s8_1 s7_1) 4)) 
(or (not (= (- m1_1 m2_2) 0)) (>= (- s1_1 s2_2) 3) (>= (- s2_2 s1_1) 3)) 
(or (not (= (- m1_1 m3_2) 0)) (>= (- s1_1 s3_2) 3) (>= (- s3_2 s1_1) 3)) 
(or (not (= (- m1_1 m4_2) 0)) (>= (- s1_1 s4_2) 2) (>= (- s4_2 s1_1) 3)) 
(or (not (= (- m1_1 m5_2) 0)) (>= (- s1_1 s5_2) 3) (>= (- s5_2 s1_1) 3)) 
(or (not (= (- m1_1 m6_2) 0)) (>= (- s1_1 s6_2) 3) (>= (- s6_2 s1_1) 3)) 
(or (not (= (- m1_1 m7_2) 0)) (>= (- s1_1 s7_2) 3) (>= (- s7_2 s1_1) 3)) 
(or (not (= (- m1_1 m8_2) 0)) (>= (- s1_1 s8_2) 3) (>= (- s8_2 s1_1) 3)) 
(or (not (= (- m2_1 m3_2) 0)) (>= (- s2_1 s3_2) 3) (>= (- s3_2 s2_1) 2)) 
(or (not (= (- m2_1 m4_2) 0)) (>= (- s2_1 s4_2) 2) (>= (- s4_2 s2_1) 2)) 
(or (not (= (- m2_1 m5_2) 0)) (>= (- s2_1 s5_2) 3) (>= (- s5_2 s2_1) 2)) 
(or (not (= (- m2_1 m6_2) 0)) (>= (- s2_1 s6_2) 3) (>= (- s6_2 s2_1) 2)) 
(or (not (= (- m2_1 m7_2) 0)) (>= (- s2_1 s7_2) 3) (>= (- s7_2 s2_1) 2)) 
(or (not (= (- m2_1 m8_2) 0)) (>= (- s2_1 s8_2) 3) (>= (- s8_2 s2_1) 2)) 
(or (not (= (- m3_1 m4_2) 0)) (>= (- s3_1 s4_2) 2) (>= (- s4_2 s3_1) 4)) 
(or (not (= (- m3_1 m5_2) 0)) (>= (- s3_1 s5_2) 3) (>= (- s5_2 s3_1) 4)) 
(or (not (= (- m3_1 m6_2) 0)) (>= (- s3_1 s6_2) 3) (>= (- s6_2 s3_1) 4)) 
(or (not (= (- m3_1 m7_2) 0)) (>= (- s3_1 s7_2) 3) (>= (- s7_2 s3_1) 4)) 
(or (not (= (- m3_1 m8_2) 0)) (>= (- s3_1 s8_2) 3) (>= (- s8_2 s3_1) 4)) 
(or (not (= (- m4_1 m5_2) 0)) (>= (- s4_1 s5_2) 3) (>= (- s5_2 s4_1) 3)) 
(or (not (= (- m4_1 m6_2) 0)) (>= (- s4_1 s6_2) 3) (>= (- s6_2 s4_1) 3)) 
(or (not (= (- m4_1 m7_2) 0)) (>= (- s4_1 s7_2) 3) (>= (- s7_2 s4_1) 3)) 
(or (not (= (- m4_1 m8_2) 0)) (>= (- s4_1 s8_2) 3) (>= (- s8_2 s4_1) 3)) 
(or (not (= (- m5_1 m6_2) 0)) (>= (- s5_1 s6_2) 3) (>= (- s6_2 s5_1) 2)) 
(or (not (= (- m5_1 m7_2) 0)) (>= (- s5_1 s7_2) 3) (>= (- s7_2 s5_1) 2)) 
(or (not (= (- m5_1 m8_2) 0)) (>= (- s5_1 s8_2) 3) (>= (- s8_2 s5_1) 2)) 
(or (not (= (- m6_1 m7_2) 0)) (>= (- s6_1 s7_2) 3) (>= (- s7_2 s6_1) 4)) 
(or (not (= (- m6_1 m8_2) 0)) (>= (- s6_1 s8_2) 3) (>= (- s8_2 s6_1) 4)) 
(or (not (= (- m7_1 m8_2) 0)) (>= (- s7_1 s8_2) 3) (>= (- s8_2 s7_1) 4)) 
(or (not (= (- m1_2 m2_1) 0)) (>= (- s1_2 s2_1) 2) (>= (- s2_1 s1_2) 3)) 
(or (not (= (- m1_2 m3_1) 0)) (>= (- s1_2 s3_1) 4) (>= (- s3_1 s1_2) 3)) 
(or (not (= (- m1_2 m4_1) 0)) (>= (- s1_2 s4_1) 3) (>= (- s4_1 s1_2) 3)) 
(or (not (= (- m1_2 m5_1) 0)) (>= (- s1_2 s5_1) 2) (>= (- s5_1 s1_2) 3)) 
(or (not (= (- m1_2 m6_1) 0)) (>= (- s1_2 s6_1) 4) (>= (- s6_1 s1_2) 3)) 
(or (not (= (- m1_2 m7_1) 0)) (>= (- s1_2 s7_1) 4) (>= (- s7_1 s1_2) 3)) 
(or (not (= (- m1_2 m8_1) 0)) (>= (- s1_2 s8_1) 4) (>= (- s8_1 s1_2) 3)) 
(or (not (= (- m2_2 m3_1) 0)) (>= (- s2_2 s3_1) 4) (>= (- s3_1 s2_2) 3)) 
(or (not (= (- m2_2 m4_1) 0)) (>= (- s2_2 s4_1) 3) (>= (- s4_1 s2_2) 3)) 
(or (not (= (- m2_2 m5_1) 0)) (>= (- s2_2 s5_1) 2) (>= (- s5_1 s2_2) 3)) 
(or (not (= (- m2_2 m6_1) 0)) (>= (- s2_2 s6_1) 4) (>= (- s6_1 s2_2) 3)) 
(or (not (= (- m2_2 m7_1) 0)) (>= (- s2_2 s7_1) 4) (>= (- s7_1 s2_2) 3)) 
(or (not (= (- m2_2 m8_1) 0)) (>= (- s2_2 s8_1) 4) (>= (- s8_1 s2_2) 3)) 
(or (not (= (- m3_2 m4_1) 0)) (>= (- s3_2 s4_1) 3) (>= (- s4_1 s3_2) 3)) 
(or (not (= (- m3_2 m5_1) 0)) (>= (- s3_2 s5_1) 2) (>= (- s5_1 s3_2) 3)) 
(or (not (= (- m3_2 m6_1) 0)) (>= (- s3_2 s6_1) 4) (>= (- s6_1 s3_2) 3)) 
(or (not (= (- m3_2 m7_1) 0)) (>= (- s3_2 s7_1) 4) (>= (- s7_1 s3_2) 3)) 
(or (not (= (- m3_2 m8_1) 0)) (>= (- s3_2 s8_1) 4) (>= (- s8_1 s3_2) 3)) 
(or (not (= (- m4_2 m5_1) 0)) (>= (- s4_2 s5_1) 2) (>= (- s5_1 s4_2) 2)) 
(or (not (= (- m4_2 m6_1) 0)) (>= (- s4_2 s6_1) 4) (>= (- s6_1 s4_2) 2)) 
(or (not (= (- m4_2 m7_1) 0)) (>= (- s4_2 s7_1) 4) (>= (- s7_1 s4_2) 2)) 
(or (not (= (- m4_2 m8_1) 0)) (>= (- s4_2 s8_1) 4) (>= (- s8_1 s4_2) 2)) 
(or (not (= (- m5_2 m6_1) 0)) (>= (- s5_2 s6_1) 4) (>= (- s6_1 s5_2) 3)) 
(or (not (= (- m5_2 m7_1) 0)) (>= (- s5_2 s7_1) 4) (>= (- s7_1 s5_2) 3)) 
(or (not (= (- m5_2 m8_1) 0)) (>= (- s5_2 s8_1) 4) (>= (- s8_1 s5_2) 3)) 
(or (not (= (- m6_2 m7_1) 0)) (>= (- s6_2 s7_1) 4) (>= (- s7_1 s6_2) 3)) 
(or (not (= (- m6_2 m8_1) 0)) (>= (- s6_2 s8_1) 4) (>= (- s8_1 s6_2) 3)) 
(or (not (= (- m7_2 m8_1) 0)) (>= (- s7_2 s8_1) 4) (>= (- s8_1 s7_2) 3)) 
(or (not (= (- m1_2 m2_2) 0)) (>= (- s1_2 s2_2) 3) (>= (- s2_2 s1_2) 3)) 
(or (not (= (- m1_2 m3_2) 0)) (>= (- s1_2 s3_2) 3) (>= (- s3_2 s1_2) 3)) 
(or (not (= (- m1_2 m4_2) 0)) (>= (- s1_2 s4_2) 2) (>= (- s4_2 s1_2) 3)) 
(or (not (= (- m1_2 m5_2) 0)) (>= (- s1_2 s5_2) 3) (>= (- s5_2 s1_2) 3)) 
(or (not (= (- m1_2 m6_2) 0)) (>= (- s1_2 s6_2) 3) (>= (- s6_2 s1_2) 3)) 
(or (not (= (- m1_2 m7_2) 0)) (>= (- s1_2 s7_2) 3) (>= (- s7_2 s1_2) 3)) 
(or (not (= (- m1_2 m8_2) 0)) (>= (- s1_2 s8_2) 3) (>= (- s8_2 s1_2) 3)) 
(or (not (= (- m2_2 m3_2) 0)) (>= (- s2_2 s3_2) 3) (>= (- s3_2 s2_2) 3)) 
(or (not (= (- m2_2 m4_2) 0)) (>= (- s2_2 s4_2) 2) (>= (- s4_2 s2_2) 3)) 
(or (not (= (- m2_2 m5_2) 0)) (>= (- s2_2 s5_2) 3) (>= (- s5_2 s2_2) 3)) 
(or (not (= (- m2_2 m6_2) 0)) (>= (- s2_2 s6_2) 3) (>= (- s6_2 s2_2) 3)) 
(or (not (= (- m2_2 m7_2) 0)) (>= (- s2_2 s7_2) 3) (>= (- s7_2 s2_2) 3)) 
(or (not (= (- m2_2 m8_2) 0)) (>= (- s2_2 s8_2) 3) (>= (- s8_2 s2_2) 3)) 
(or (not (= (- m3_2 m4_2) 0)) (>= (- s3_2 s4_2) 2) (>= (- s4_2 s3_2) 3)) 
(or (not (= (- m3_2 m5_2) 0)) (>= (- s3_2 s5_2) 3) (>= (- s5_2 s3_2) 3)) 
(or (not (= (- m3_2 m6_2) 0)) (>= (- s3_2 s6_2) 3) (>= (- s6_2 s3_2) 3)) 
(or (not (= (- m3_2 m7_2) 0)) (>= (- s3_2 s7_2) 3) (>= (- s7_2 s3_2) 3)) 
(or (not (= (- m3_2 m8_2) 0)) (>= (- s3_2 s8_2) 3) (>= (- s8_2 s3_2) 3)) 
(or (not (= (- m4_2 m5_2) 0)) (>= (- s4_2 s5_2) 3) (>= (- s5_2 s4_2) 2)) 
(or (not (= (- m4_2 m6_2) 0)) (>= (- s4_2 s6_2) 3) (>= (- s6_2 s4_2) 2)) 
(or (not (= (- m4_2 m7_2) 0)) (>= (- s4_2 s7_2) 3) (>= (- s7_2 s4_2) 2)) 
(or (not (= (- m4_2 m8_2) 0)) (>= (- s4_2 s8_2) 3) (>= (- s8_2 s4_2) 2)) 
(or (not (= (- m5_2 m6_2) 0)) (>= (- s5_2 s6_2) 3) (>= (- s6_2 s5_2) 3)) 
(or (not (= (- m5_2 m7_2) 0)) (>= (- s5_2 s7_2) 3) (>= (- s7_2 s5_2) 3)) 
(or (not (= (- m5_2 m8_2) 0)) (>= (- s5_2 s8_2) 3) (>= (- s8_2 s5_2) 3)) 
(or (not (= (- m6_2 m7_2) 0)) (>= (- s6_2 s7_2) 3) (>= (- s7_2 s6_2) 3)) 
(or (not (= (- m6_2 m8_2) 0)) (>= (- s6_2 s8_2) 3) (>= (- s8_2 s6_2) 3)) 
(or (not (= (- m7_2 m8_2) 0)) (>= (- s7_2 s8_2) 3) (>= (- s8_2 s7_2) 3)) 
))
(check-sat)
(exit)
