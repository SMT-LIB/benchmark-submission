(set-info :smt-lib-version 2.6)
(set-logic UFDTNIA)
(set-info :source |
Generated by: Amar Shah
Generated on: 2024-12-11
Generator: Verus
Application: Verification of Rust Program
Target solver: z3
Time limit: 10
Benchmarks generated by the Rust verifier Verus (https://verus-lang.github.io/verus/guide/) on the project Verus Systems (https://dl.acm.org/doi/10.1145/3694715.3695952) and processed using Mariposa (https://github.com/secure-foundations/mariposa). z3 solves this without nonlinear, but it cannot be expressed in SMTLib without a nonlinear theory.
This benchmarks was originally run with z3 with the following options:
    (set-option :auto_config false)
    (set-option :smt.mbqi false)
    (set-option :smt.case_split 3)
    (set-option :smt.qi.eager_threshold 100.0)
    (set-option :smt.delay_units true)
    (set-option :smt.arith.solver 2)
    (set-option :smt.arith.nl false)
    (set-option :pi.enabled false)
    (set-option :rewriter.sort_disjunctions false)
    (set-option :smt.arith.solver 6)
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unsat)
(declare-sort %%Function%% 0)
(declare-sort FuelId 0)
(declare-sort Fuel 0)
(declare-const zero Fuel)
(declare-fun succ (Fuel) Fuel)
(declare-fun fuel_bool (FuelId) Bool)
(declare-fun fuel_bool_default (FuelId) Bool)
(declare-const fuel_defaults Bool)
(assert (=> fuel_defaults (forall ((id FuelId)) (! (= (fuel_bool id) (fuel_bool_default id)) :pattern ((fuel_bool id))))))
(declare-datatypes ((fndef 0)) (((fndef_singleton ))))
(declare-sort Poly 0)
(declare-sort Height 0)
(declare-fun I (Int) Poly)
(declare-fun B (Bool) Poly)
(declare-fun F (fndef) Poly)
(declare-fun %I (Poly) Int)
(declare-fun %B (Poly) Bool)
(declare-fun %F (Poly) fndef)
(declare-sort Type 0)
(declare-const BOOL Type)
(declare-const INT Type)
(declare-const NAT Type)
(declare-const CHAR Type)
(declare-fun UINT (Int) Type)
(declare-fun SINT (Int) Type)
(declare-fun CONST_INT (Int) Type)
(declare-sort Dcr 0)
(declare-const $ Dcr)
(declare-fun REF (Dcr) Dcr)
(declare-fun MUT_REF (Dcr) Dcr)
(declare-fun BOX (Dcr Type Dcr) Dcr)
(declare-fun RC (Dcr Type Dcr) Dcr)
(declare-fun ARC (Dcr Type Dcr) Dcr)
(declare-fun GHOST (Dcr) Dcr)
(declare-fun TRACKED (Dcr) Dcr)
(declare-fun NEVER (Dcr) Dcr)
(declare-fun CONST_PTR (Dcr) Dcr)
(declare-fun ARRAY (Dcr Type Dcr Type) Type)
(declare-fun SLICE (Dcr Type) Type)
(declare-const STRSLICE Type)
(declare-const ALLOCATOR_GLOBAL Type)
(declare-fun PTR (Dcr Type) Type)
(declare-fun has_type (Poly Type) Bool)
(declare-fun as_type (Poly Type) Poly)
(declare-fun mk_fun (%%Function%%) %%Function%%)
(declare-fun const_int (Type) Int)
(assert (forall ((i Int)) (! (= i (const_int (CONST_INT i))) :pattern ((CONST_INT i)))))
(assert (forall ((b Bool)) (! (has_type (B b) BOOL) :pattern ((has_type (B b) BOOL)))))
(assert (forall ((x Poly) (True Type)) (! (and (has_type (as_type x True) True) (=> (has_type x True) (= x (as_type x True)))) :pattern ((as_type x True)))))
(assert (forall ((x %%Function%%)) (! (= (mk_fun x) x) :pattern ((mk_fun x)))))
(assert (forall ((x Bool)) (! (= x (%B (B x))) :pattern ((B x)))))
(assert (forall ((x Int)) (! (= x (%I (I x))) :pattern ((I x)))))
(assert (forall ((x Poly)) (! (=> (has_type x BOOL) (= x (B (%B x)))) :pattern ((has_type x BOOL)))))
(assert (forall ((x Poly)) (! (=> (has_type x INT) (= x (I (%I x)))) :pattern ((has_type x INT)))))
(assert (forall ((x Poly)) (! (=> (has_type x NAT) (= x (I (%I x)))) :pattern ((has_type x NAT)))))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (UINT bits)) (= x (I (%I x)))) :pattern ((has_type x (UINT bits))))))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (SINT bits)) (= x (I (%I x)))) :pattern ((has_type x (SINT bits))))))
(assert (forall ((x Poly)) (! (=> (has_type x CHAR) (= x (I (%I x)))) :pattern ((has_type x CHAR)))))
(declare-fun ext_eq (Bool Type Poly Poly) Bool)
(assert (forall ((deep Bool) (True Type) (x Poly) (y Poly)) (! (= (= x y) (ext_eq deep True x y)) :pattern ((ext_eq deep True x y)))))
(declare-const SZ Int)
(assert (= SZ 64))
(declare-fun uHi (Int) Int)
(declare-fun iLo (Int) Int)
(declare-fun iHi (Int) Int)
(assert (= (uHi 8) 256))
(assert (= (uHi 16) 65536))
(assert (= (uHi 32) 4294967296))
(assert (= (uHi 64) 18446744073709551616))
(assert (= (uHi 128) (+ 1 340282366920938463463374607431768211455)))
(assert (= (iLo 8) (- 128)))
(assert (= (iLo 16) (- 32768)))
(assert (= (iLo 32) (- 2147483648)))
(assert (= (iLo 64) (- 9223372036854775808)))
(assert (= (iLo 128) (- 170141183460469231731687303715884105728)))
(assert (= (iHi 8) 128))
(assert (= (iHi 16) 32768))
(assert (= (iHi 32) 2147483648))
(assert (= (iHi 64) 9223372036854775808))
(assert (= (iHi 128) 170141183460469231731687303715884105728))
(declare-fun nClip (Int) Int)
(declare-fun uClip (Int Int) Int)
(declare-fun iClip (Int Int) Int)
(declare-fun charClip (Int) Int)
(assert (forall ((i Int)) (! (and (<= 0 (nClip i)) (=> (<= 0 i) (= i (nClip i)))) :pattern ((nClip i)))))
(assert (forall ((bits Int) (i Int)) (! (and (<= 0 (uClip bits i)) (< (uClip bits i) (uHi bits)) (=> (and (<= 0 i) (< i (uHi bits))) (= i (uClip bits i)))) :pattern ((uClip bits i)))))
(assert (forall ((bits Int) (i Int)) (! (and (<= (iLo bits) (iClip bits i)) (< (iClip bits i) (iHi bits)) (=> (and (<= (iLo bits) i) (< i (iHi bits))) (= i (iClip bits i)))) :pattern ((iClip bits i)))))
(assert (forall ((i Int)) (! (and (or (and (<= 0 (charClip i)) (<= (charClip i) 55295)) (and (<= 57344 (charClip i)) (<= (charClip i) 1114111))) (=> (or (and (<= 0 i) (<= i 55295)) (and (<= 57344 i) (<= i 1114111))) (= i (charClip i)))) :pattern ((charClip i)))))
(declare-fun uInv (Int Int) Bool)
(declare-fun iInv (Int Int) Bool)
(declare-fun charInv (Int) Bool)
(assert (forall ((bits Int) (i Int)) (! (= (uInv bits i) (and (<= 0 i) (< i (uHi bits)))) :pattern ((uInv bits i)))))
(assert (forall ((bits Int) (i Int)) (! (= (iInv bits i) (and (<= (iLo bits) i) (< i (iHi bits)))) :pattern ((iInv bits i)))))
(assert (forall ((i Int)) (! (= (charInv i) (or (and (<= 0 i) (<= i 55295)) (and (<= 57344 i) (<= i 1114111)))) :pattern ((charInv i)))))
(assert (forall ((x Int)) (! (has_type (I x) INT) :pattern ((has_type (I x) INT)))))
(assert (forall ((x Int)) (! (=> (<= 0 x) (has_type (I x) NAT)) :pattern ((has_type (I x) NAT)))))
(assert (forall ((bits Int) (x Int)) (! (=> (uInv bits x) (has_type (I x) (UINT bits))) :pattern ((has_type (I x) (UINT bits))))))
(assert (forall ((bits Int) (x Int)) (! (=> (iInv bits x) (has_type (I x) (SINT bits))) :pattern ((has_type (I x) (SINT bits))))))
(assert (forall ((x Int)) (! (=> (charInv x) (has_type (I x) CHAR)) :pattern ((has_type (I x) CHAR)))))
(assert (forall ((x Poly)) (! (=> (has_type x NAT) (<= 0 (%I x))) :pattern ((has_type x NAT)))))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (UINT bits)) (uInv bits (%I x))) :pattern ((has_type x (UINT bits))))))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (SINT bits)) (iInv bits (%I x))) :pattern ((has_type x (SINT bits))))))
(declare-fun Add (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(declare-fun Mul (Int Int) Int)
(declare-fun EucDiv (Int Int) Int)
(declare-fun EucMod (Int Int) Int)
(assert (forall ((x Int) (y Int)) (! (= (Add x y) (+ x y)) :pattern ((Add x y)))))
(assert (forall ((x Int) (y Int)) (! (= (Sub x y) (- x y)) :pattern ((Sub x y)))))
(assert (forall ((x Int) (y Int)) (! (= (Mul x y) (* x y)) :pattern ((Mul x y)))))
(assert (forall ((x Int) (y Int)) (! (= (EucDiv x y) (div x y)) :pattern ((EucDiv x y)))))
(assert (forall ((x Int) (y Int)) (! (= (EucMod x y) (mod x y)) :pattern ((EucMod x y)))))
(assert (forall ((x Int) (y Int)) (! (=> (and (<= 0 x) (<= 0 y)) (<= 0 (Mul x y))) :pattern ((Mul x y)))))
(assert (forall ((x Int) (y Int)) (! (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (EucDiv x y)) (<= (EucDiv x y) x))) :pattern ((EucDiv x y)))))
(assert (forall ((x Int) (y Int)) (! (=> (and (<= 0 x) (< 0 y)) (and (<= 0 (EucMod x y)) (< (EucMod x y) y))) :pattern ((EucMod x y)))))
(declare-fun bitxor (Poly Poly) Int)
(declare-fun bitand (Poly Poly) Int)
(declare-fun bitor (Poly Poly) Int)
(declare-fun bitshr (Poly Poly) Int)
(declare-fun bitshl (Poly Poly) Int)
(declare-fun bitnot (Poly) Int)
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitxor x y))) :pattern ((uClip bits (bitxor x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitxor x y))) :pattern ((iClip bits (bitxor x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitor x y))) :pattern ((uClip bits (bitor x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitor x y))) :pattern ((iClip bits (bitor x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitand x y))) :pattern ((uClip bits (bitand x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitand x y))) :pattern ((iClip bits (bitand x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (<= 0 (%I y))) (uInv bits (bitshr x y))) :pattern ((uClip bits (bitshr x y))))))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (<= 0 (%I y))) (iInv bits (bitshr x y))) :pattern ((iClip bits (bitshr x y))))))
(declare-fun singular_mod (Int Int) Int)
(assert (forall ((x Int) (y Int)) (! (=> (not (= y 0)) (= (EucMod x y) (singular_mod x y))) :pattern ((singular_mod x y)))))
(declare-fun closure_req (Type Dcr Type Poly Poly) Bool)
(declare-fun closure_ens (Type Dcr Type Poly Poly Poly) Bool)
(declare-fun height (Poly) Height)
(declare-fun height_lt (Height Height) Bool)
(declare-fun fun_from_recursive_field (Poly) Poly)
(declare-fun check_decrease_int (Int Int Bool) Bool)
(assert (forall ((cur Int) (prev Int) (otherwise Bool)) (! (= (check_decrease_int cur prev otherwise) (or (and (<= 0 cur) (< cur prev)) (and (= cur prev) otherwise))) :pattern ((check_decrease_int cur prev otherwise)))))
(declare-fun check_decrease_height (Poly Poly Bool) Bool)
(assert (forall ((cur Poly) (prev Poly) (otherwise Bool)) (! (= (check_decrease_height cur prev otherwise) (or (height_lt (height cur) (height prev)) (and (= (height cur) (height prev)) otherwise))) :pattern ((check_decrease_height cur prev otherwise)))))
(declare-fun partial-order (Height Height) Bool)
(assert (forall ((x Height)) (partial-order x x)))
(assert (forall ((x Height) (y Height)) (=> (and (partial-order x y) (partial-order y x)) (= x y))))
(assert (forall ((x Height) (y Height) (z Height)) (=> (and (partial-order x y) (partial-order y z)) (partial-order x z))))
(assert (forall ((x Height) (y Height)) (! (= (height_lt x y) (and (partial-order x y) (not (= x y)))) :pattern ((height_lt x y)))))
(declare-const fuel%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. FuelId)
(declare-const fuel%lib!impl_u.indexing.nat_mul. FuelId)
(declare-const fuel%lib!definitions_t.index_from_offset. FuelId)
(declare-const fuel%lib!definitions_t.index_from_base_and_addr. FuelId)
(declare-const fuel%lib!definitions_t.entry_base_from_index. FuelId)
(declare-const fuel%lib!definitions_t.next_entry_base_from_index. FuelId)
(declare-const fuel%lib!definitions_t.aligned. FuelId)
(declare-const fuel%lib!definitions_t.between. FuelId)
(declare-const fuel%vstd!array.group_array_axioms. FuelId)
(declare-const fuel%vstd!map.group_map_axioms. FuelId)
(declare-const fuel%vstd!multiset.group_multiset_axioms. FuelId)
(declare-const fuel%vstd!raw_ptr.group_raw_ptr_axioms. FuelId)
(declare-const fuel%vstd!seq.group_seq_axioms. FuelId)
(declare-const fuel%vstd!seq_lib.group_seq_lib_default. FuelId)
(declare-const fuel%vstd!set.group_set_axioms. FuelId)
(declare-const fuel%vstd!set_lib.group_set_lib_axioms. FuelId)
(declare-const fuel%vstd!slice.group_slice_axioms. FuelId)
(declare-const fuel%vstd!string.group_string_axioms. FuelId)
(declare-const fuel%vstd!std_specs.bits.group_bits_axioms. FuelId)
(declare-const fuel%vstd!std_specs.control_flow.group_control_flow_axioms. FuelId)
(declare-const fuel%vstd!std_specs.range.group_range_axioms. FuelId)
(declare-const fuel%vstd!std_specs.vec.group_vec_axioms. FuelId)
(declare-const fuel%vstd!group_vstd_default. FuelId)
(assert (distinct fuel%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. fuel%lib!impl_u.indexing.nat_mul. fuel%lib!definitions_t.index_from_offset. fuel%lib!definitions_t.index_from_base_and_addr. fuel%lib!definitions_t.entry_base_from_index. fuel%lib!definitions_t.next_entry_base_from_index. fuel%lib!definitions_t.aligned. fuel%lib!definitions_t.between. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.))
(assert (fuel_bool_default fuel%vstd!group_vstd_default.))
(assert (=> (fuel_bool_default fuel%vstd!group_vstd_default.) (and (fuel_bool_default fuel%vstd!seq.group_seq_axioms.) (fuel_bool_default fuel%vstd!seq_lib.group_seq_lib_default.) (fuel_bool_default fuel%vstd!map.group_map_axioms.) (fuel_bool_default fuel%vstd!set.group_set_axioms.) (fuel_bool_default fuel%vstd!set_lib.group_set_lib_axioms.) (fuel_bool_default fuel%vstd!std_specs.bits.group_bits_axioms.) (fuel_bool_default fuel%vstd!std_specs.control_flow.group_control_flow_axioms.) (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.) (fuel_bool_default fuel%vstd!slice.group_slice_axioms.) (fuel_bool_default fuel%vstd!array.group_array_axioms.) (fuel_bool_default fuel%vstd!multiset.group_multiset_axioms.) (fuel_bool_default fuel%vstd!string.group_string_axioms.) (fuel_bool_default fuel%vstd!std_specs.range.group_range_axioms.) (fuel_bool_default fuel%vstd!raw_ptr.group_raw_ptr_axioms.))))
(declare-datatypes ((tuple%0. 0)) (((tuple%0./tuple%0 ))))
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert (forall ((x tuple%0.)) (! (= x (%Poly%tuple%0. (Poly%tuple%0. x))) :pattern ((Poly%tuple%0. x)))))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%tuple%0.) (= x (Poly%tuple%0. (%Poly%tuple%0. x)))) :pattern ((has_type x TYPE%tuple%0.)))))
(assert (forall ((x tuple%0.)) (! (has_type (Poly%tuple%0. x) TYPE%tuple%0.) :pattern ((has_type (Poly%tuple%0. x) TYPE%tuple%0.)))))
(declare-fun lib!definitions_t.aligned.? (Poly Poly) Bool)
(declare-fun lib!definitions_t.entry_base_from_index.? (Poly Poly Poly) Int)
(declare-fun lib!definitions_t.between.? (Poly Poly Poly) Bool)
(declare-fun lib!definitions_t.index_from_offset.? (Poly Poly) Int)
(declare-fun lib!definitions_t.index_from_base_and_addr.? (Poly Poly Poly) Int)
(declare-fun lib!definitions_t.next_entry_base_from_index.? (Poly Poly Poly) Int)
(declare-fun lib!impl_u.indexing.nat_mul.? (Poly Poly) Int)
(declare-fun req%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. (Int Int) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert (forall ((x! Int) (m! Int)) (! (= (req%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. x! m!) (=> %%global_location_label%%0 (> m! 0))) :pattern ((req%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. x! m!)))))
(declare-fun ens%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. (Int Int) Bool)
(assert (forall ((x! Int) (m! Int)) (! (= (ens%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. x! m!) (= (EucMod (Mul x! m!) m!) 0)) :pattern ((ens%vstd!arithmetic.div_mod.lemma_mod_multiples_basic. x! m!)))))
(assert (=> (fuel_bool fuel%vstd!arithmetic.div_mod.lemma_mod_multiples_basic.) (forall ((x! Int) (m! Int)) (! (=> (> m! 0) (= (EucMod (Mul x! m!) m!) 0)) :pattern ((EucMod (Mul x! m!) m!))))))
(assert (fuel_bool_default fuel%lib!definitions_t.aligned.))
(assert (=> (fuel_bool fuel%lib!definitions_t.aligned.) (forall ((addr! Poly) (size! Poly)) (! (= (lib!definitions_t.aligned.? addr! size!) (= (nClip (EucMod (%I addr!) (%I size!))) 0)) :pattern ((lib!definitions_t.aligned.? addr! size!))))))
(assert (fuel_bool_default fuel%lib!definitions_t.entry_base_from_index.))
(assert (=> (fuel_bool fuel%lib!definitions_t.entry_base_from_index.) (forall ((base! Poly) (idx! Poly) (entry_size! Poly)) (! (= (lib!definitions_t.entry_base_from_index.? base! idx! entry_size!) (nClip (Add (%I base!) (nClip (Mul (%I idx!) (%I entry_size!)))))) :pattern ((lib!definitions_t.entry_base_from_index.? base! idx! entry_size!))))))
(assert (forall ((base! Poly) (idx! Poly) (entry_size! Poly)) (! (=> (and (has_type base! NAT) (has_type idx! NAT) (has_type entry_size! NAT)) (<= 0 (lib!definitions_t.entry_base_from_index.? base! idx! entry_size!))) :pattern ((lib!definitions_t.entry_base_from_index.? base! idx! entry_size!)))))
(assert (fuel_bool_default fuel%lib!definitions_t.between.))
(assert (=> (fuel_bool fuel%lib!definitions_t.between.) (forall ((x! Poly) (a! Poly) (b! Poly)) (! (= (lib!definitions_t.between.? x! a! b!) (and (<= (%I a!) (%I x!)) (< (%I x!) (%I b!)))) :pattern ((lib!definitions_t.between.? x! a! b!))))))
(declare-fun req%lib!definitions_t.index_from_offset. (Poly Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert (forall ((offset! Poly) (entry_size! Poly)) (! (= (req%lib!definitions_t.index_from_offset. offset! entry_size!) (=> %%global_location_label%%1 (> (%I entry_size!) 0))) :pattern ((req%lib!definitions_t.index_from_offset. offset! entry_size!)))))
(assert (fuel_bool_default fuel%lib!definitions_t.index_from_offset.))
(assert (=> (fuel_bool fuel%lib!definitions_t.index_from_offset.) (forall ((offset! Poly) (entry_size! Poly)) (! (= (lib!definitions_t.index_from_offset.? offset! entry_size!) (nClip (EucDiv (%I offset!) (%I entry_size!)))) :pattern ((lib!definitions_t.index_from_offset.? offset! entry_size!))))))
(assert (forall ((offset! Poly) (entry_size! Poly)) (! (=> (and (has_type offset! NAT) (has_type entry_size! NAT)) (<= 0 (lib!definitions_t.index_from_offset.? offset! entry_size!))) :pattern ((lib!definitions_t.index_from_offset.? offset! entry_size!)))))
(declare-fun req%lib!definitions_t.index_from_base_and_addr. (Poly Poly Poly) Bool)
(declare-const %%global_location_label%%2 Bool)
(declare-const %%global_location_label%%3 Bool)
(assert (forall ((base! Poly) (addr! Poly) (entry_size! Poly)) (! (= (req%lib!definitions_t.index_from_base_and_addr. base! addr! entry_size!) (and (=> %%global_location_label%%2 (>= (%I addr!) (%I base!))) (=> %%global_location_label%%3 (> (%I entry_size!) 0)))) :pattern ((req%lib!definitions_t.index_from_base_and_addr. base! addr! entry_size!)))))
(assert (fuel_bool_default fuel%lib!definitions_t.index_from_base_and_addr.))
(assert (=> (fuel_bool fuel%lib!definitions_t.index_from_base_and_addr.) (forall ((base! Poly) (addr! Poly) (entry_size! Poly)) (! (= (lib!definitions_t.index_from_base_and_addr.? base! addr! entry_size!) (lib!definitions_t.index_from_offset.? (I (nClip (Sub (%I addr!) (%I base!)))) entry_size!)) :pattern ((lib!definitions_t.index_from_base_and_addr.? base! addr! entry_size!))))))
(assert (forall ((base! Poly) (addr! Poly) (entry_size! Poly)) (! (=> (and (has_type base! NAT) (has_type addr! NAT) (has_type entry_size! NAT)) (<= 0 (lib!definitions_t.index_from_base_and_addr.? base! addr! entry_size!))) :pattern ((lib!definitions_t.index_from_base_and_addr.? base! addr! entry_size!)))))
(assert (fuel_bool_default fuel%lib!definitions_t.next_entry_base_from_index.))
(assert (=> (fuel_bool fuel%lib!definitions_t.next_entry_base_from_index.) (forall ((base! Poly) (idx! Poly) (entry_size! Poly)) (! (= (lib!definitions_t.next_entry_base_from_index.? base! idx! entry_size!) (nClip (Add (%I base!) (nClip (Mul (nClip (Add (%I idx!) 1)) (%I entry_size!)))))) :pattern ((lib!definitions_t.next_entry_base_from_index.? base! idx! entry_size!))))))
(assert (forall ((base! Poly) (idx! Poly) (entry_size! Poly)) (! (=> (and (has_type base! NAT) (has_type idx! NAT) (has_type entry_size! NAT)) (<= 0 (lib!definitions_t.next_entry_base_from_index.? base! idx! entry_size!))) :pattern ((lib!definitions_t.next_entry_base_from_index.? base! idx! entry_size!)))))
(declare-fun req%lib!extra.mult_less_mono_both1. (Int Int Int Int) Bool)
(declare-const %%global_location_label%%4 Bool)
(declare-const %%global_location_label%%5 Bool)
(declare-const %%global_location_label%%6 Bool)
(declare-const %%global_location_label%%7 Bool)
(assert (forall ((a! Int) (b! Int) (c! Int) (d! Int)) (! (= (req%lib!extra.mult_less_mono_both1. a! b! c! d!) (and (=> %%global_location_label%%4 (< a! c!)) (=> %%global_location_label%%5 (<= b! d!)) (=> %%global_location_label%%6 (< 0 c!)) (=> %%global_location_label%%7 (< 0 d!)))) :pattern ((req%lib!extra.mult_less_mono_both1. a! b! c! d!)))))
(declare-fun ens%lib!extra.mult_less_mono_both1. (Int Int Int Int) Bool)
(assert (forall ((a! Int) (b! Int) (c! Int) (d! Int)) (! (= (ens%lib!extra.mult_less_mono_both1. a! b! c! d!) (< (nClip (Mul a! b!)) (nClip (Mul c! d!)))) :pattern ((ens%lib!extra.mult_less_mono_both1. a! b! c! d!)))))
(declare-fun req%lib!extra.aligned_transitive. (Int Int Int) Bool)
(declare-const %%global_location_label%%8 Bool)
(declare-const %%global_location_label%%9 Bool)
(declare-const %%global_location_label%%10 Bool)
(declare-const %%global_location_label%%11 Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (req%lib!extra.aligned_transitive. a! b! c!) (and (=> %%global_location_label%%8 (< 0 b!)) (=> %%global_location_label%%9 (< 0 c!)) (=> %%global_location_label%%10 (lib!definitions_t.aligned.? (I a!) (I b!))) (=> %%global_location_label%%11 (lib!definitions_t.aligned.? (I b!) (I c!))))) :pattern ((req%lib!extra.aligned_transitive. a! b! c!)))))
(declare-fun ens%lib!extra.aligned_transitive. (Int Int Int) Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (ens%lib!extra.aligned_transitive. a! b! c!) (lib!definitions_t.aligned.? (I a!) (I c!))) :pattern ((ens%lib!extra.aligned_transitive. a! b! c!)))))
(declare-fun req%lib!extra.mod_add_zero. (Int Int Int) Bool)
(declare-const %%global_location_label%%12 Bool)
(declare-const %%global_location_label%%13 Bool)
(declare-const %%global_location_label%%14 Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (req%lib!extra.mod_add_zero. a! b! c!) (and (=> %%global_location_label%%12 (lib!definitions_t.aligned.? (I a!) (I c!))) (=> %%global_location_label%%13 (lib!definitions_t.aligned.? (I b!) (I c!))) (=> %%global_location_label%%14 (> c! 0)))) :pattern ((req%lib!extra.mod_add_zero. a! b! c!)))))
(declare-fun ens%lib!extra.mod_add_zero. (Int Int Int) Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (ens%lib!extra.mod_add_zero. a! b! c!) (lib!definitions_t.aligned.? (I (nClip (Add a! b!))) (I c!))) :pattern ((ens%lib!extra.mod_add_zero. a! b! c!)))))
(declare-fun req%lib!impl_u.indexing.lemma_entry_base_from_index. (Int Int Int) Bool)
(declare-const %%global_location_label%%15 Bool)
(assert (forall ((base! Int) (idx! Int) (entry_size! Int)) (! (= (req%lib!impl_u.indexing.lemma_entry_base_from_index. base! idx! entry_size!) (=> %%global_location_label%%15 (< 0 entry_size!))) :pattern ((req%lib!impl_u.indexing.lemma_entry_base_from_index. base! idx! entry_size!)))))
(declare-fun ens%lib!impl_u.indexing.lemma_entry_base_from_index. (Int Int Int) Bool)
(assert (forall ((base! Int) (idx! Int) (entry_size! Int)) (! (= (ens%lib!impl_u.indexing.lemma_entry_base_from_index. base! idx! entry_size!) (and (forall ((idx2$ Poly)) (! (=> (has_type idx2$ NAT) (=> (< idx! (%I idx2$)) (< (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (lib!definitions_t.entry_base_from_index.? (I base!) idx2$ (I entry_size!))))) :pattern ((lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (lib!definitions_t.entry_base_from_index.? (I base!) idx2$ (I entry_size!))))) (forall ((idx2$ Poly)) (! (=> (has_type idx2$ NAT) (=> (< idx! (%I idx2$)) (<= (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (lib!definitions_t.entry_base_from_index.? (I base!) idx2$ (I entry_size!))))) :pattern ((lib!definitions_t.entry_base_from_index.? (I base!) idx2$ (I entry_size!))))) (= (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (lib!definitions_t.entry_base_from_index.? (I base!) (I (nClip (Add idx! 1))) (I entry_size!))) (= (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (nClip (Add (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) entry_size!))) (= (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!)) (nClip (Add entry_size! (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!))))) (forall ((n$ Poly)) (! (=> (has_type n$ NAT) (=> (and (and (< 0 (%I n$)) (lib!definitions_t.aligned.? (I base!) n$)) (lib!definitions_t.aligned.? (I entry_size!) n$)) (lib!definitions_t.aligned.? (I (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!))) n$))) :pattern ((lib!definitions_t.aligned.? (I (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!))) n$)))) (forall ((n$ Poly)) (! (=> (has_type n$ NAT) (=> (and (and (< 0 (%I n$)) (lib!definitions_t.aligned.? (I base!) n$)) (lib!definitions_t.aligned.? (I entry_size!) n$)) (lib!definitions_t.aligned.? (I (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!))) n$))) :pattern ((lib!definitions_t.aligned.? (I (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx!) (I entry_size!))) n$)))) (=> (lib!definitions_t.aligned.? (I base!) (I entry_size!)) (lib!definitions_t.aligned.? (I (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!))) (I entry_size!))) (<= base! (lib!definitions_t.entry_base_from_index.? (I base!) (I idx!) (I entry_size!))))) :pattern ((ens%lib!impl_u.indexing.lemma_entry_base_from_index. base! idx! entry_size!)))))
(assert (fuel_bool_default fuel%lib!impl_u.indexing.nat_mul.))
(assert (=> (fuel_bool fuel%lib!impl_u.indexing.nat_mul.) (forall ((a! Poly) (b! Poly)) (! (= (lib!impl_u.indexing.nat_mul.? a! b!) (nClip (Mul (%I a!) (%I b!)))) :pattern ((lib!impl_u.indexing.nat_mul.? a! b!))))))
(assert (forall ((a! Poly) (b! Poly)) (! (=> (and (has_type a! NAT) (has_type b! NAT)) (<= 0 (lib!impl_u.indexing.nat_mul.? a! b!))) :pattern ((lib!impl_u.indexing.nat_mul.? a! b!)))))
(declare-fun req%lib!extra.mod_mult_zero_implies_mod_zero. (Int Int Int) Bool)
(declare-const %%global_location_label%%16 Bool)
(declare-const %%global_location_label%%17 Bool)
(declare-const %%global_location_label%%18 Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (req%lib!extra.mod_mult_zero_implies_mod_zero. a! b! c!) (and (=> %%global_location_label%%16 (lib!definitions_t.aligned.? (I a!) (I (nClip (Mul b! c!))))) (=> %%global_location_label%%17 (> b! 0)) (=> %%global_location_label%%18 (> c! 0)))) :pattern ((req%lib!extra.mod_mult_zero_implies_mod_zero. a! b! c!)))))
(declare-fun ens%lib!extra.mod_mult_zero_implies_mod_zero. (Int Int Int) Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (ens%lib!extra.mod_mult_zero_implies_mod_zero. a! b! c!) (lib!definitions_t.aligned.? (I a!) (I b!))) :pattern ((ens%lib!extra.mod_mult_zero_implies_mod_zero. a! b! c!)))))
(declare-fun req%lib!impl_u.indexing.lemma_entry_base_from_index_support. (Int Int Int) Bool)
(declare-const %%global_location_label%%19 Bool)
(assert (forall ((base! Int) (idx! Int) (entry_size! Int)) (! (= (req%lib!impl_u.indexing.lemma_entry_base_from_index_support. base! idx! entry_size!) (=> %%global_location_label%%19 (> entry_size! 0))) :pattern ((req%lib!impl_u.indexing.lemma_entry_base_from_index_support. base! idx! entry_size!)))))
(declare-fun ens%lib!impl_u.indexing.lemma_entry_base_from_index_support. (Int Int Int) Bool)
(assert (forall ((base! Int) (idx! Int) (entry_size! Int)) (! (= (ens%lib!impl_u.indexing.lemma_entry_base_from_index_support. base! idx! entry_size!) (and (forall ((a$ Int) (b$ Int)) (! (=> (and (<= 0 a$) (<= 0 b$)) (= (lib!impl_u.indexing.nat_mul.? (I a$) (I b$)) (nClip (Mul a$ b$)))) :pattern ((nClip (Mul a$ b$))))) (forall ((a$ Poly) (b$ Poly)) (! (=> (and (has_type a$ NAT) (has_type b$ NAT)) (= (lib!impl_u.indexing.nat_mul.? a$ b$) (lib!impl_u.indexing.nat_mul.? b$ a$))) :pattern ((lib!impl_u.indexing.nat_mul.? a$ b$)) :pattern ((lib!impl_u.indexing.nat_mul.? b$ a$)))) (forall ((a$ Poly)) (! (=> (has_type a$ NAT) (=> (and (lib!definitions_t.aligned.? (I base!) (I (lib!impl_u.indexing.nat_mul.? (I entry_size!) a$))) (> (%I a$) 0)) (lib!definitions_t.aligned.? (I base!) (I entry_size!)))) :pattern ((lib!definitions_t.aligned.? (I base!) (I (lib!impl_u.indexing.nat_mul.? (I entry_size!) a$)))))))) :pattern ((ens%lib!impl_u.indexing.lemma_entry_base_from_index_support. base! idx! entry_size!)))))
(declare-fun req%lib!extra.subtract_mod_eq_zero. (Int Int Int) Bool)
(declare-const %%global_location_label%%20 Bool)
(declare-const %%global_location_label%%21 Bool)
(declare-const %%global_location_label%%22 Bool)
(declare-const %%global_location_label%%23 Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (req%lib!extra.subtract_mod_eq_zero. a! b! c!) (and (=> %%global_location_label%%20 (lib!definitions_t.aligned.? (I a!) (I c!))) (=> %%global_location_label%%21 (lib!definitions_t.aligned.? (I b!) (I c!))) (=> %%global_location_label%%22 (<= a! b!)) (=> %%global_location_label%%23 (> c! 0)))) :pattern ((req%lib!extra.subtract_mod_eq_zero. a! b! c!)))))
(declare-fun ens%lib!extra.subtract_mod_eq_zero. (Int Int Int) Bool)
(assert (forall ((a! Int) (b! Int) (c! Int)) (! (= (ens%lib!extra.subtract_mod_eq_zero. a! b! c!) (lib!definitions_t.aligned.? (I (nClip (Sub b! a!))) (I c!))) :pattern ((ens%lib!extra.subtract_mod_eq_zero. a! b! c!)))))
(declare-fun req%lib!extra.div_mul_cancel. (Int Int) Bool)
(declare-const %%global_location_label%%24 Bool)
(declare-const %%global_location_label%%25 Bool)
(assert (forall ((a! Int) (b! Int)) (! (= (req%lib!extra.div_mul_cancel. a! b!) (and (=> %%global_location_label%%24 (lib!definitions_t.aligned.? (I a!) (I b!))) (=> %%global_location_label%%25 (not (= b! 0))))) :pattern ((req%lib!extra.div_mul_cancel. a! b!)))))
(declare-fun ens%lib!extra.div_mul_cancel. (Int Int) Bool)
(assert (forall ((a! Int) (b! Int)) (! (= (ens%lib!extra.div_mul_cancel. a! b!) (= (nClip (Mul (nClip (EucDiv a! b!)) b!)) a!)) :pattern ((ens%lib!extra.div_mul_cancel. a! b!)))))
(declare-fun req%lib!impl_u.indexing.lemma_index_from_base_and_addr. (Int Int Int Int) Bool)
(declare-const %%global_location_label%%26 Bool)
(declare-const %%global_location_label%%27 Bool)
(declare-const %%global_location_label%%28 Bool)
(assert (forall ((base! Int) (addr! Int) (entry_size! Int) (num_entries! Int)) (! (= (req%lib!impl_u.indexing.lemma_index_from_base_and_addr. base! addr! entry_size! num_entries!) (and (=> %%global_location_label%%26 (>= addr! base!)) (=> %%global_location_label%%27 (< addr! (lib!definitions_t.entry_base_from_index.? (I base!) (I num_entries!) (I entry_size!)))) (=> %%global_location_label%%28 (> entry_size! 0)))) :pattern ((req%lib!impl_u.indexing.lemma_index_from_base_and_addr. base! addr! entry_size! num_entries!)))))
(declare-fun ens%lib!impl_u.indexing.lemma_index_from_base_and_addr. (Int Int Int Int) Bool)
(assert (forall ((base! Int) (addr! Int) (entry_size! Int) (num_entries! Int)) (! (= (ens%lib!impl_u.indexing.lemma_index_from_base_and_addr. base! addr! entry_size! num_entries!) (let ((idx$ (lib!definitions_t.index_from_base_and_addr.? (I base!) (I addr!) (I entry_size!)))) (and (and (< idx$ num_entries!) (lib!definitions_t.between.? (I addr!) (I (lib!definitions_t.entry_base_from_index.? (I base!) (I idx$) (I entry_size!))) (I (lib!definitions_t.next_entry_base_from_index.? (I base!) (I idx$) (I entry_size!))))) (=> (and (lib!definitions_t.aligned.? (I base!) (I entry_size!)) (lib!definitions_t.aligned.? (I addr!) (I entry_size!))) (= addr! (lib!definitions_t.entry_base_from_index.? (I base!) (I idx$) (I entry_size!))))))) :pattern ((ens%lib!impl_u.indexing.lemma_index_from_base_and_addr. base! addr! entry_size! num_entries!)))))
(declare-const base! Int)
(declare-const addr! Int)
(declare-const entry_size! Int)
(declare-const num_entries! Int)
(declare-const tmp%1 Int)
(declare-const idx@ Int)
(assert fuel_defaults)
(assert (<= 0 base!))
(assert (<= 0 addr!))
(assert (<= 0 entry_size!))
(assert (<= 0 num_entries!))
(assert (<= 0 idx@))
(declare-const %%location_label%%0 Bool)
(assert (not (=> (>= addr! base!) (=> (< addr! (lib!definitions_t.entry_base_from_index.? (I base!) (I num_entries!) (I entry_size!))) (=> (> entry_size! 0) (=> (= idx@ (lib!definitions_t.index_from_offset.? (I (nClip (Sub addr! base!))) (I entry_size!))) (=> %%location_label%%0 (< idx@ num_entries!))))))))
(check-sat)
(exit)
