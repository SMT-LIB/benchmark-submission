(set-info :smt-lib-version 2.6)
(set-logic UFDTLIA)
(set-info :source |
Generated by: Amar Shah
Generated on: 2024-12-11
Generator: Verus
Application: Verification of Rust Program
Target solver: z3
Time limit: 10
Benchmarks generated by the Rust verifier Verus (https://verus-lang.github.io/verus/guide/) on the project Atmosphere (https://mars-research.github.io/projects/atmo/) 
and processed using Mariposa (https://github.com/secure-foundations/mariposa).
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
(assert (=> fuel_defaults (forall ((id FuelId)) (! (= (fuel_bool id) (fuel_bool_default id)) :pattern ((fuel_bool id)) ))))
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
(assert (forall ((i Int)) (! (= i (const_int (CONST_INT i))) :pattern ((CONST_INT i)) )))
(assert (forall ((b Bool)) (! (has_type (B b) BOOL) :pattern ((has_type (B b) BOOL)) )))
(assert (forall ((x Poly) (t Type)) (! (and (has_type (as_type x t) t) (=> (has_type x t) (= x (as_type x t)))) :pattern ((as_type x t)) )))
(assert (forall ((x %%Function%%)) (! (= (mk_fun x) x) :pattern ((mk_fun x)) )))
(assert (forall ((x Bool)) (! (= x (%B (B x))) :pattern ((B x)) )))
(assert (forall ((x Int)) (! (= x (%I (I x))) :pattern ((I x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x BOOL) (= x (B (%B x)))) :pattern ((has_type x BOOL)) )))
(assert (forall ((x Poly)) (! (=> (has_type x INT) (= x (I (%I x)))) :pattern ((has_type x INT)) )))
(assert (forall ((x Poly)) (! (=> (has_type x NAT) (= x (I (%I x)))) :pattern ((has_type x NAT)) )))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (UINT bits)) (= x (I (%I x)))) :pattern ((has_type x (UINT bits))) )))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (SINT bits)) (= x (I (%I x)))) :pattern ((has_type x (SINT bits))) )))
(assert (forall ((x Poly)) (! (=> (has_type x CHAR) (= x (I (%I x)))) :pattern ((has_type x CHAR)) )))
(declare-fun ext_eq (Bool Type Poly Poly) Bool)
(assert (forall ((deep Bool) (t Type) (x Poly) (y Poly)) (! (= (= x y) (ext_eq deep t x y)) :pattern ((ext_eq deep t x y)) )))
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
(assert (forall ((i Int)) (! (and (<= 0 (nClip i)) (=> (<= 0 i) (= i (nClip i)))) :pattern ((nClip i)) )))
(assert (forall ((bits Int) (i Int)) (! (and (<= 0 (uClip bits i)) (< (uClip bits i) (uHi bits)) (=> (and (<= 0 i) (< i (uHi bits))) (= i (uClip bits i)))) :pattern ((uClip bits i)) )))
(assert (forall ((bits Int) (i Int)) (! (and (<= (iLo bits) (iClip bits i)) (< (iClip bits i) (iHi bits)) (=> (and (<= (iLo bits) i) (< i (iHi bits))) (= i (iClip bits i)))) :pattern ((iClip bits i)) )))
(assert (forall ((i Int)) (! (and (or (and (<= 0 (charClip i)) (<= (charClip i) 55295)) (and (<= 57344 (charClip i)) (<= (charClip i) 1114111))) (=> (or (and (<= 0 i) (<= i 55295)) (and (<= 57344 i) (<= i 1114111))) (= i (charClip i)))) :pattern ((charClip i)) )))
(declare-fun uInv (Int Int) Bool)
(declare-fun iInv (Int Int) Bool)
(declare-fun charInv (Int) Bool)
(assert (forall ((bits Int) (i Int)) (! (= (uInv bits i) (and (<= 0 i) (< i (uHi bits)))) :pattern ((uInv bits i)) )))
(assert (forall ((bits Int) (i Int)) (! (= (iInv bits i) (and (<= (iLo bits) i) (< i (iHi bits)))) :pattern ((iInv bits i)) )))
(assert (forall ((i Int)) (! (= (charInv i) (or (and (<= 0 i) (<= i 55295)) (and (<= 57344 i) (<= i 1114111)))) :pattern ((charInv i)) )))
(assert (forall ((x Int)) (! (has_type (I x) INT) :pattern ((has_type (I x) INT)) )))
(assert (forall ((x Int)) (! (=> (<= 0 x) (has_type (I x) NAT)) :pattern ((has_type (I x) NAT)) )))
(assert (forall ((bits Int) (x Int)) (! (=> (uInv bits x) (has_type (I x) (UINT bits))) :pattern ((has_type (I x) (UINT bits))) )))
(assert (forall ((bits Int) (x Int)) (! (=> (iInv bits x) (has_type (I x) (SINT bits))) :pattern ((has_type (I x) (SINT bits))) )))
(assert (forall ((x Int)) (! (=> (charInv x) (has_type (I x) CHAR)) :pattern ((has_type (I x) CHAR)) )))
(assert (forall ((x Poly)) (! (=> (has_type x NAT) (<= 0 (%I x))) :pattern ((has_type x NAT)) )))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (UINT bits)) (uInv bits (%I x))) :pattern ((has_type x (UINT bits))) )))
(assert (forall ((bits Int) (x Poly)) (! (=> (has_type x (SINT bits)) (iInv bits (%I x))) :pattern ((has_type x (SINT bits))) )))
(declare-fun Add (Int Int) Int)
(declare-fun Sub (Int Int) Int)
(assert (forall ((x Int) (y Int)) (! (= (Add x y) (+ x y)) :pattern ((Add x y)))))
(assert (forall ((x Int) (y Int)) (! (= (Sub x y) (- x y)) :pattern ((Sub x y)))))
(declare-fun bitxor (Poly Poly) Int)
(declare-fun bitand (Poly Poly) Int)
(declare-fun bitor (Poly Poly) Int)
(declare-fun bitshr (Poly Poly) Int)
(declare-fun bitshl (Poly Poly) Int)
(declare-fun bitnot (Poly) Int)
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitxor x y))) :pattern ((uClip bits (bitxor x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitxor x y))) :pattern ((iClip bits (bitxor x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitor x y))) :pattern ((uClip bits (bitor x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitor x y))) :pattern ((iClip bits (bitor x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (uInv bits (%I y))) (uInv bits (bitand x y))) :pattern ((uClip bits (bitand x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (iInv bits (%I y))) (iInv bits (bitand x y))) :pattern ((iClip bits (bitand x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (uInv bits (%I x)) (<= 0 (%I y))) (uInv bits (bitshr x y))) :pattern ((uClip bits (bitshr x y))) )))
(assert (forall ((x Poly) (y Poly) (bits Int)) (! (=> (and (iInv bits (%I x)) (<= 0 (%I y))) (iInv bits (bitshr x y))) :pattern ((iClip bits (bitshr x y))) )))
(declare-fun singular_mod (Int Int) Int)
(declare-fun closure_req (Type Dcr Type Poly Poly) Bool)
(declare-fun closure_ens (Type Dcr Type Poly Poly Poly) Bool)
(declare-fun height (Poly) Height)
(declare-fun height_lt (Height Height) Bool)
(declare-fun fun_from_recursive_field (Poly) Poly)
(declare-fun check_decrease_int (Int Int Bool) Bool)
(assert (forall ((cur Int) (prev Int) (otherwise Bool)) (! (= (check_decrease_int cur prev otherwise) (or (and (<= 0 cur) (< cur prev)) (and (= cur prev) otherwise))) :pattern ((check_decrease_int cur prev otherwise)) )))
(declare-fun check_decrease_height (Poly Poly Bool) Bool)
(assert (forall ((cur Poly) (prev Poly) (otherwise Bool)) (! (= (check_decrease_height cur prev otherwise) (or (height_lt (height cur) (height prev)) (and (= (height cur) (height prev)) otherwise))) :pattern ((check_decrease_height cur prev otherwise)) )))
(declare-fun partial-order (Height Height) Bool)
(assert (forall ((x Height)) (partial-order x x)))
(assert (forall ((x Height) (y Height)) (=> (and (partial-order x y) (partial-order y x)) (= x y))))
(assert (forall ((x Height) (y Height) (z Height)) (=> (and (partial-order x y) (partial-order y z)) (partial-order x z))))
(assert (forall ((x Height) (y Height)) (! (= (height_lt x y) (and (partial-order x y) (not (= x y)))) :pattern ((height_lt x y)))))
(declare-const fuel%lib!trap.impl&%0.is_Some. FuelId)
(declare-const fuel%lib!trap.impl&%0.is_None. FuelId)
(declare-const fuel%lib!trap.impl&%0.spec_unwrap. FuelId)
(declare-const fuel%lib!trap.impl&%0.get_Some_0. FuelId)
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
(assert (distinct fuel%lib!trap.impl&%0.is_Some. fuel%lib!trap.impl&%0.is_None. fuel%lib!trap.impl&%0.spec_unwrap. fuel%lib!trap.impl&%0.get_Some_0. fuel%vstd!array.group_array_axioms. fuel%vstd!map.group_map_axioms. fuel%vstd!multiset.group_multiset_axioms. fuel%vstd!raw_ptr.group_raw_ptr_axioms. fuel%vstd!seq.group_seq_axioms. fuel%vstd!seq_lib.group_seq_lib_default. fuel%vstd!set.group_set_axioms. fuel%vstd!set_lib.group_set_lib_axioms. fuel%vstd!slice.group_slice_axioms. fuel%vstd!string.group_string_axioms. fuel%vstd!std_specs.bits.group_bits_axioms. fuel%vstd!std_specs.control_flow.group_control_flow_axioms. fuel%vstd!std_specs.range.group_range_axioms. fuel%vstd!std_specs.vec.group_vec_axioms. fuel%vstd!group_vstd_default.))
(assert (fuel_bool_default fuel%vstd!group_vstd_default.))
(assert (=> (fuel_bool_default fuel%vstd!group_vstd_default.) (and (fuel_bool_default fuel%vstd!seq.group_seq_axioms.) (fuel_bool_default fuel%vstd!seq_lib.group_seq_lib_default.) (fuel_bool_default fuel%vstd!map.group_map_axioms.) (fuel_bool_default fuel%vstd!set.group_set_axioms.) (fuel_bool_default fuel%vstd!set_lib.group_set_lib_axioms.) (fuel_bool_default fuel%vstd!std_specs.bits.group_bits_axioms.) (fuel_bool_default fuel%vstd!std_specs.control_flow.group_control_flow_axioms.) (fuel_bool_default fuel%vstd!std_specs.vec.group_vec_axioms.) (fuel_bool_default fuel%vstd!slice.group_slice_axioms.) (fuel_bool_default fuel%vstd!array.group_array_axioms.) (fuel_bool_default fuel%vstd!multiset.group_multiset_axioms.) (fuel_bool_default fuel%vstd!string.group_string_axioms.) (fuel_bool_default fuel%vstd!std_specs.range.group_range_axioms.) (fuel_bool_default fuel%vstd!raw_ptr.group_raw_ptr_axioms.))))
(declare-datatypes ((lib!trap.TrapFrameOption. 0) (lib!trap.Registers. 0) (tuple%0. 0)) (((lib!trap.TrapFrameOption./TrapFrameOption (lib!trap.TrapFrameOption./TrapFrameOption/?reg lib!trap.Registers.) (lib!trap.TrapFrameOption./TrapFrameOption/?exists Bool))) ((lib!trap.Registers./Registers (lib!trap.Registers./Registers/?r15 Int) (lib!trap.Registers./Registers/?r14 Int) (lib!trap.Registers./Registers/?r13 Int) (lib!trap.Registers./Registers/?r12 Int) (lib!trap.Registers./Registers/?rbp Int) (lib!trap.Registers./Registers/?rbx Int) (lib!trap.Registers./Registers/?r11 Int) (lib!trap.Registers./Registers/?r10 Int) (lib!trap.Registers./Registers/?r9 Int) (lib!trap.Registers./Registers/?r8 Int) (lib!trap.Registers./Registers/?rcx Int) (lib!trap.Registers./Registers/?rdx Int) (lib!trap.Registers./Registers/?rsi Int) (lib!trap.Registers./Registers/?rdi Int) (lib!trap.Registers./Registers/?rax Int) (lib!trap.Registers./Registers/?error_code Int) (lib!trap.Registers./Registers/?rip Int) (lib!trap.Registers./Registers/?cs Int) (lib!trap.Registers./Registers/?flags Int) (lib!trap.Registers./Registers/?rsp Int) (lib!trap.Registers./Registers/?ss Int))) ((tuple%0./tuple%0 ))))
(declare-fun lib!trap.TrapFrameOption./TrapFrameOption/reg (lib!trap.TrapFrameOption.) lib!trap.Registers.)
(declare-fun lib!trap.TrapFrameOption./TrapFrameOption/exists (lib!trap.TrapFrameOption.) Bool)
(declare-fun lib!trap.Registers./Registers/r15 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r14 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r13 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r12 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rbp (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rbx (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r11 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r10 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r9 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/r8 (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rcx (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rdx (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rsi (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rdi (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rax (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/error_code (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rip (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/cs (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/flags (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/rsp (lib!trap.Registers.) Int)
(declare-fun lib!trap.Registers./Registers/ss (lib!trap.Registers.) Int)
(declare-const TYPE%lib!trap.TrapFrameOption. Type)
(declare-const TYPE%lib!trap.Registers. Type)
(declare-const TYPE%tuple%0. Type)
(declare-fun Poly%lib!trap.TrapFrameOption. (lib!trap.TrapFrameOption.) Poly)
(declare-fun %Poly%lib!trap.TrapFrameOption. (Poly) lib!trap.TrapFrameOption.)
(declare-fun Poly%lib!trap.Registers. (lib!trap.Registers.) Poly)
(declare-fun %Poly%lib!trap.Registers. (Poly) lib!trap.Registers.)
(declare-fun Poly%tuple%0. (tuple%0.) Poly)
(declare-fun %Poly%tuple%0. (Poly) tuple%0.)
(assert (forall ((x lib!trap.TrapFrameOption.)) (! (= x (%Poly%lib!trap.TrapFrameOption. (Poly%lib!trap.TrapFrameOption. x))) :pattern ((Poly%lib!trap.TrapFrameOption. x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.TrapFrameOption.) (= x (Poly%lib!trap.TrapFrameOption. (%Poly%lib!trap.TrapFrameOption. x)))) :pattern ((has_type x TYPE%lib!trap.TrapFrameOption.)) )))
(assert (forall ((_reg! lib!trap.Registers.) (_exists! Bool)) (! (=> (has_type (Poly%lib!trap.Registers. _reg!) TYPE%lib!trap.Registers.) (has_type (Poly%lib!trap.TrapFrameOption. (lib!trap.TrapFrameOption./TrapFrameOption _reg! _exists!)) TYPE%lib!trap.TrapFrameOption.)) :pattern ((has_type (Poly%lib!trap.TrapFrameOption. (lib!trap.TrapFrameOption./TrapFrameOption _reg! _exists!)) TYPE%lib!trap.TrapFrameOption.)) )))
(assert (forall ((x lib!trap.TrapFrameOption.)) (! (= (lib!trap.TrapFrameOption./TrapFrameOption/reg x) (lib!trap.TrapFrameOption./TrapFrameOption/?reg x)) :pattern ((lib!trap.TrapFrameOption./TrapFrameOption/reg x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.TrapFrameOption.) (has_type (Poly%lib!trap.Registers. (lib!trap.TrapFrameOption./TrapFrameOption/reg (%Poly%lib!trap.TrapFrameOption. x))) TYPE%lib!trap.Registers.)) :pattern ((lib!trap.TrapFrameOption./TrapFrameOption/reg (%Poly%lib!trap.TrapFrameOption. x)) (has_type x TYPE%lib!trap.TrapFrameOption.)) )))
(assert (forall ((x lib!trap.TrapFrameOption.)) (! (= (lib!trap.TrapFrameOption./TrapFrameOption/exists x) (lib!trap.TrapFrameOption./TrapFrameOption/?exists x)) :pattern ((lib!trap.TrapFrameOption./TrapFrameOption/exists x)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= x (%Poly%lib!trap.Registers. (Poly%lib!trap.Registers. x))) :pattern ((Poly%lib!trap.Registers. x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (= x (Poly%lib!trap.Registers. (%Poly%lib!trap.Registers. x)))) :pattern ((has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((_r15! Int) (_r14! Int) (_r13! Int) (_r12! Int) (_rbp! Int) (_rbx! Int) (_r11! Int) (_r10! Int) (_r9! Int) (_r8! Int) (_rcx! Int) (_rdx! Int) (_rsi! Int) (_rdi! Int) (_rax! Int) (_error_code! Int) (_rip! Int) (_cs! Int) (_flags! Int) (_rsp! Int) (_ss! Int)) (! (=> (and (uInv 64 _r15!) (uInv 64 _r14!) (uInv 64 _r13!) (uInv 64 _r12!) (uInv 64 _rbp!) (uInv 64 _rbx!) (uInv 64 _r11!) (uInv 64 _r10!) (uInv 64 _r9!) (uInv 64 _r8!) (uInv 64 _rcx!) (uInv 64 _rdx!) (uInv 64 _rsi!) (uInv 64 _rdi!) (uInv 64 _rax!) (uInv 64 _error_code!) (uInv 64 _rip!) (uInv 64 _cs!) (uInv 64 _flags!) (uInv 64 _rsp!) (uInv 64 _ss!)) (has_type (Poly%lib!trap.Registers. (lib!trap.Registers./Registers _r15! _r14! _r13! _r12! _rbp! _rbx! _r11! _r10! _r9! _r8! _rcx! _rdx! _rsi! _rdi! _rax! _error_code! _rip! _cs! _flags! _rsp! _ss!)) TYPE%lib!trap.Registers.)) :pattern ((has_type (Poly%lib!trap.Registers. (lib!trap.Registers./Registers _r15! _r14! _r13! _r12! _rbp! _rbx! _r11! _r10! _r9! _r8! _rcx! _rdx! _rsi! _rdi! _rax! _error_code! _rip! _cs! _flags! _rsp! _ss!)) TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r15 x) (lib!trap.Registers./Registers/?r15 x)) :pattern ((lib!trap.Registers./Registers/r15 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r15 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r15 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r14 x) (lib!trap.Registers./Registers/?r14 x)) :pattern ((lib!trap.Registers./Registers/r14 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r14 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r14 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r13 x) (lib!trap.Registers./Registers/?r13 x)) :pattern ((lib!trap.Registers./Registers/r13 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r13 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r13 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r12 x) (lib!trap.Registers./Registers/?r12 x)) :pattern ((lib!trap.Registers./Registers/r12 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r12 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r12 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rbp x) (lib!trap.Registers./Registers/?rbp x)) :pattern ((lib!trap.Registers./Registers/rbp x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rbp (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rbp (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rbx x) (lib!trap.Registers./Registers/?rbx x)) :pattern ((lib!trap.Registers./Registers/rbx x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rbx (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rbx (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r11 x) (lib!trap.Registers./Registers/?r11 x)) :pattern ((lib!trap.Registers./Registers/r11 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r11 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r11 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r10 x) (lib!trap.Registers./Registers/?r10 x)) :pattern ((lib!trap.Registers./Registers/r10 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r10 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r10 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r9 x) (lib!trap.Registers./Registers/?r9 x)) :pattern ((lib!trap.Registers./Registers/r9 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r9 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r9 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/r8 x) (lib!trap.Registers./Registers/?r8 x)) :pattern ((lib!trap.Registers./Registers/r8 x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/r8 (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/r8 (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rcx x) (lib!trap.Registers./Registers/?rcx x)) :pattern ((lib!trap.Registers./Registers/rcx x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rcx (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rcx (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rdx x) (lib!trap.Registers./Registers/?rdx x)) :pattern ((lib!trap.Registers./Registers/rdx x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rdx (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rdx (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rsi x) (lib!trap.Registers./Registers/?rsi x)) :pattern ((lib!trap.Registers./Registers/rsi x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rsi (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rsi (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rdi x) (lib!trap.Registers./Registers/?rdi x)) :pattern ((lib!trap.Registers./Registers/rdi x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rdi (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rdi (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rax x) (lib!trap.Registers./Registers/?rax x)) :pattern ((lib!trap.Registers./Registers/rax x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rax (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rax (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/error_code x) (lib!trap.Registers./Registers/?error_code x)) :pattern ((lib!trap.Registers./Registers/error_code x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/error_code (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/error_code (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rip x) (lib!trap.Registers./Registers/?rip x)) :pattern ((lib!trap.Registers./Registers/rip x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rip (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rip (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/cs x) (lib!trap.Registers./Registers/?cs x)) :pattern ((lib!trap.Registers./Registers/cs x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/cs (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/cs (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/flags x) (lib!trap.Registers./Registers/?flags x)) :pattern ((lib!trap.Registers./Registers/flags x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/flags (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/flags (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/rsp x) (lib!trap.Registers./Registers/?rsp x)) :pattern ((lib!trap.Registers./Registers/rsp x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/rsp (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/rsp (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x lib!trap.Registers.)) (! (= (lib!trap.Registers./Registers/ss x) (lib!trap.Registers./Registers/?ss x)) :pattern ((lib!trap.Registers./Registers/ss x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%lib!trap.Registers.) (uInv 64 (lib!trap.Registers./Registers/ss (%Poly%lib!trap.Registers. x)))) :pattern ((lib!trap.Registers./Registers/ss (%Poly%lib!trap.Registers. x)) (has_type x TYPE%lib!trap.Registers.)) )))
(assert (forall ((x tuple%0.)) (! (= x (%Poly%tuple%0. (Poly%tuple%0. x))) :pattern ((Poly%tuple%0. x)) )))
(assert (forall ((x Poly)) (! (=> (has_type x TYPE%tuple%0.) (= x (Poly%tuple%0. (%Poly%tuple%0. x)))) :pattern ((has_type x TYPE%tuple%0.)) )))
(assert (forall ((x tuple%0.)) (! (has_type (Poly%tuple%0. x) TYPE%tuple%0.) :pattern ((has_type (Poly%tuple%0. x) TYPE%tuple%0.)) )))
(declare-fun lib!trap.impl&%0.is_Some.? (Poly) Bool)
(declare-fun lib!trap.impl&%0.spec_unwrap.? (Poly) lib!trap.Registers.)
(declare-fun lib!trap.impl&%0.get_Some_0.? (Poly) lib!trap.Registers.)
(declare-fun lib!trap.impl&%0.is_None.? (Poly) Bool)
(assert (fuel_bool_default fuel%lib!trap.impl&%0.is_Some.))
(assert (=> (fuel_bool fuel%lib!trap.impl&%0.is_Some.) (forall ((self! Poly)) (! (= (lib!trap.impl&%0.is_Some.? self!) (lib!trap.TrapFrameOption./TrapFrameOption/exists (%Poly%lib!trap.TrapFrameOption. self!))) :pattern ((lib!trap.impl&%0.is_Some.? self!)) ))))
(declare-fun req%lib!trap.impl&%0.spec_unwrap. (Poly) Bool)
(declare-const %%global_location_label%%0 Bool)
(assert (forall ((self! Poly)) (! (= (req%lib!trap.impl&%0.spec_unwrap. self!) (=> %%global_location_label%%0 (lib!trap.impl&%0.is_Some.? self!))) :pattern ((req%lib!trap.impl&%0.spec_unwrap. self!)) )))
(assert (fuel_bool_default fuel%lib!trap.impl&%0.spec_unwrap.))
(assert (=> (fuel_bool fuel%lib!trap.impl&%0.spec_unwrap.) (forall ((self! Poly)) (! (= (lib!trap.impl&%0.spec_unwrap.? self!) (lib!trap.TrapFrameOption./TrapFrameOption/reg (%Poly%lib!trap.TrapFrameOption. self!))) :pattern ((lib!trap.impl&%0.spec_unwrap.? self!)) ))))
(assert (forall ((self! Poly)) (! (=> (has_type self! TYPE%lib!trap.TrapFrameOption.) (has_type (Poly%lib!trap.Registers. (lib!trap.impl&%0.spec_unwrap.? self!)) TYPE%lib!trap.Registers.)) :pattern ((lib!trap.impl&%0.spec_unwrap.? self!)) )))
(declare-fun req%lib!trap.impl&%0.get_Some_0. (Poly) Bool)
(declare-const %%global_location_label%%1 Bool)
(assert (forall ((self! Poly)) (! (= (req%lib!trap.impl&%0.get_Some_0. self!) (=> %%global_location_label%%1 (lib!trap.impl&%0.is_Some.? self!))) :pattern ((req%lib!trap.impl&%0.get_Some_0. self!)) )))
(assert (fuel_bool_default fuel%lib!trap.impl&%0.get_Some_0.))
(assert (=> (fuel_bool fuel%lib!trap.impl&%0.get_Some_0.) (forall ((self! Poly)) (! (= (lib!trap.impl&%0.get_Some_0.? self!) (lib!trap.TrapFrameOption./TrapFrameOption/reg (%Poly%lib!trap.TrapFrameOption. self!))) :pattern ((lib!trap.impl&%0.get_Some_0.? self!)) ))))
(assert (forall ((self! Poly)) (! (=> (has_type self! TYPE%lib!trap.TrapFrameOption.) (has_type (Poly%lib!trap.Registers. (lib!trap.impl&%0.get_Some_0.? self!)) TYPE%lib!trap.Registers.)) :pattern ((lib!trap.impl&%0.get_Some_0.? self!)) )))
(declare-fun ens%lib!trap.impl&%0.set_self_fast. (lib!trap.TrapFrameOption. lib!trap.TrapFrameOption. lib!trap.Registers.) Bool)
(assert (forall ((pre%self! lib!trap.TrapFrameOption.) (self! lib!trap.TrapFrameOption.) (src! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%0.set_self_fast. pre%self! self! src!) (and (has_type (Poly%lib!trap.TrapFrameOption. self!) TYPE%lib!trap.TrapFrameOption.) (lib!trap.impl&%0.is_Some.? (Poly%lib!trap.TrapFrameOption. self!)) (ext_eq false TYPE%lib!trap.Registers. (Poly%lib!trap.Registers. (lib!trap.impl&%0.get_Some_0.? (Poly%lib!trap.TrapFrameOption. self!))) (Poly%lib!trap.Registers. src!)))) :pattern ((ens%lib!trap.impl&%0.set_self_fast. pre%self! self! src!)) )))
(declare-fun req%lib!trap.impl&%0.set_dst_fast. (lib!trap.TrapFrameOption. lib!trap.Registers.) Bool)
(declare-const %%global_location_label%%2 Bool)
(assert (forall ((self! lib!trap.TrapFrameOption.) (pre%dst! lib!trap.Registers.)) (! (= (req%lib!trap.impl&%0.set_dst_fast. self! pre%dst!) (=> %%global_location_label%%2 (lib!trap.impl&%0.is_Some.? (Poly%lib!trap.TrapFrameOption. self!)))) :pattern ((req%lib!trap.impl&%0.set_dst_fast. self! pre%dst!)) )))
(declare-fun ens%lib!trap.impl&%0.set_dst_fast. (lib!trap.TrapFrameOption. lib!trap.Registers. lib!trap.Registers.) Bool)
(assert (forall ((self! lib!trap.TrapFrameOption.) (pre%dst! lib!trap.Registers.) (dst! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%0.set_dst_fast. self! pre%dst! dst!) (and (has_type (Poly%lib!trap.Registers. dst!) TYPE%lib!trap.Registers.) (ext_eq false TYPE%lib!trap.Registers. (Poly%lib!trap.Registers. dst!) (Poly%lib!trap.Registers. (lib!trap.impl&%0.get_Some_0.? (Poly%lib!trap.TrapFrameOption. self!)))))) :pattern ((ens%lib!trap.impl&%0.set_dst_fast. self! pre%dst! dst!)) )))
(declare-fun ens%lib!trap.impl&%4.zeroed. (Int lib!trap.Registers.) Bool)
(assert (forall ((no%param Int) (%return! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%4.zeroed. no%param %return!) (has_type (Poly%lib!trap.Registers. %return!) TYPE%lib!trap.Registers.)) :pattern ((ens%lib!trap.impl&%4.zeroed. no%param %return!)) )))
(declare-fun ens%lib!trap.impl&%4.random. (Int lib!trap.Registers.) Bool)
(assert (forall ((no%param Int) (%return! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%4.random. no%param %return!) (has_type (Poly%lib!trap.Registers. %return!) TYPE%lib!trap.Registers.)) :pattern ((ens%lib!trap.impl&%4.random. no%param %return!)) )))
(declare-fun ens%lib!trap.impl&%4.set_self_fast. (lib!trap.Registers. lib!trap.Registers. lib!trap.Registers.) Bool)
(assert (forall ((pre%self! lib!trap.Registers.) (self! lib!trap.Registers.) (src! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%4.set_self_fast. pre%self! self! src!) (and (has_type (Poly%lib!trap.Registers. self!) TYPE%lib!trap.Registers.) (= self! src!))) :pattern ((ens%lib!trap.impl&%4.set_self_fast. pre%self! self! src!)) )))
(assert (fuel_bool_default fuel%lib!trap.impl&%0.is_None.))
(assert (=> (fuel_bool fuel%lib!trap.impl&%0.is_None.) (forall ((self! Poly)) (! (= (lib!trap.impl&%0.is_None.? self!) (= (lib!trap.TrapFrameOption./TrapFrameOption/exists (%Poly%lib!trap.TrapFrameOption. self!)) false)) :pattern ((lib!trap.impl&%0.is_None.? self!)) ))))
(declare-fun ens%lib!trap.impl&%0.unwrap. (lib!trap.TrapFrameOption. lib!trap.Registers.) Bool)
(assert (forall ((self! lib!trap.TrapFrameOption.) (ret! lib!trap.Registers.)) (! (= (ens%lib!trap.impl&%0.unwrap. self! ret!) (and (has_type (Poly%lib!trap.Registers. ret!) TYPE%lib!trap.Registers.) (ext_eq false TYPE%lib!trap.Registers. (Poly%lib!trap.Registers. (lib!trap.impl&%0.get_Some_0.? (Poly%lib!trap.TrapFrameOption. self!))) (Poly%lib!trap.Registers. ret!)))) :pattern ((ens%lib!trap.impl&%0.unwrap. self! ret!)) )))
(declare-const ret! lib!trap.Registers.)
(declare-const self! lib!trap.TrapFrameOption.)
(assert fuel_defaults)
(assert (has_type (Poly%lib!trap.TrapFrameOption. self!) TYPE%lib!trap.TrapFrameOption.))
(declare-const %%location_label%%0 Bool)
(assert (not (=> (= ret! (lib!trap.TrapFrameOption./TrapFrameOption/reg (%Poly%lib!trap.TrapFrameOption. (Poly%lib!trap.TrapFrameOption. self!)))) (=> %%location_label%%0 (ext_eq false TYPE%lib!trap.Registers. (Poly%lib!trap.Registers. (lib!trap.impl&%0.get_Some_0.? (Poly%lib!trap.TrapFrameOption. self!))) (Poly%lib!trap.Registers. ret!))))))
(check-sat)
(exit)
