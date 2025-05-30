(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source |
Generated by: Bohan Li
Generated on: 2025-3-18
Application: Optimization Modulo Theories
Target solver: Z3
These instances are selected from the non-incremental instance collection of QF_NIA under the /20170427-VeryMax/ directory, where the random variables are designated as the maximization objective function to generate OMT(NIA) instances. 
We adopt a linear search methodology, incrementally raising the lower bound of the objective function while invoking the SMT solver incrementally throughout the process. 
We observe that such incremental instances present notable computational challenges for solvers, even though their non-incremental counterparts can be solved within a reasonable time limit.
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(declare-fun Nl7__const_5^01 () Int)
(declare-fun Nl7i4^01 () Int)
(declare-fun Nl7j5^01 () Int)
(declare-fun Nl7k6^01 () Int)
(declare-fun Nl10__const_5^01 () Int)
(declare-fun Nl10i4^01 () Int)
(declare-fun Nl10j5^01 () Int)
(declare-fun Nl10k6^01 () Int)
(declare-fun Nl7__const_5^02 () Int)
(declare-fun Nl7i4^02 () Int)
(declare-fun Nl7j5^02 () Int)
(declare-fun Nl7k6^02 () Int)
(declare-fun Nl10__const_5^02 () Int)
(declare-fun Nl10i4^02 () Int)
(declare-fun Nl10j5^02 () Int)
(declare-fun Nl10k6^02 () Int)
(declare-fun Nl7__const_5^03 () Int)
(declare-fun Nl7i4^03 () Int)
(declare-fun Nl7j5^03 () Int)
(declare-fun Nl7k6^03 () Int)
(declare-fun Nl10__const_5^03 () Int)
(declare-fun Nl10i4^03 () Int)
(declare-fun Nl10j5^03 () Int)
(declare-fun Nl10k6^03 () Int)
(declare-fun lam0n0 () Int)
(declare-fun lam0n1 () Int)
(declare-fun lam0n2 () Int)
(declare-fun lam0n3 () Int)
(declare-fun lam0n4 () Int)
(declare-fun Nl7CT1 () Int)
(declare-fun Nl7CT2 () Int)
(declare-fun Nl7CT3 () Int)
(declare-fun lam1n0 () Int)
(declare-fun lam1n1 () Int)
(declare-fun lam1n2 () Int)
(declare-fun lam1n3 () Int)
(declare-fun lam1n4 () Int)
(declare-fun lam2n0 () Int)
(declare-fun lam2n1 () Int)
(declare-fun lam2n2 () Int)
(declare-fun lam2n3 () Int)
(declare-fun lam2n4 () Int)
(declare-fun lam3n0 () Int)
(declare-fun lam3n1 () Int)
(declare-fun lam3n2 () Int)
(declare-fun lam3n3 () Int)
(declare-fun lam3n4 () Int)
(declare-fun lam4n0 () Int)
(declare-fun lam4n1 () Int)
(declare-fun lam4n2 () Int)
(declare-fun lam4n3 () Int)
(declare-fun lam5n0 () Int)
(declare-fun lam5n1 () Int)
(declare-fun lam5n2 () Int)
(declare-fun lam5n3 () Int)
(declare-fun Nl10CT1 () Int)
(declare-fun lam6n0 () Int)
(declare-fun lam6n1 () Int)
(declare-fun lam6n2 () Int)
(declare-fun lam6n3 () Int)
(declare-fun Nl10CT2 () Int)
(declare-fun lam7n0 () Int)
(declare-fun lam7n1 () Int)
(declare-fun lam7n2 () Int)
(declare-fun lam7n3 () Int)
(declare-fun Nl10CT3 () Int)
(declare-fun lam8n0 () Int)
(declare-fun lam8n1 () Int)
(declare-fun lam8n2 () Int)
(declare-fun lam8n3 () Int)
(declare-fun lam9n0 () Int)
(declare-fun lam9n1 () Int)
(declare-fun lam9n2 () Int)
(declare-fun lam9n3 () Int)
(declare-fun lam10n0 () Int)
(declare-fun lam10n1 () Int)
(declare-fun lam10n2 () Int)
(declare-fun lam10n3 () Int)
(declare-fun lam11n0 () Int)
(declare-fun lam11n1 () Int)
(declare-fun lam11n2 () Int)
(declare-fun lam11n3 () Int)
(declare-fun lam12n0 () Int)
(declare-fun lam12n1 () Int)
(declare-fun lam12n2 () Int)
(declare-fun lam12n3 () Int)
(declare-fun lam13n0 () Int)
(declare-fun lam13n1 () Int)
(declare-fun lam13n2 () Int)
(declare-fun lam13n3 () Int)
(declare-fun lam14n0 () Int)
(declare-fun lam14n1 () Int)
(declare-fun lam14n2 () Int)
(declare-fun lam14n3 () Int)
(declare-fun lam15n0 () Int)
(declare-fun lam15n1 () Int)
(declare-fun lam15n2 () Int)
(declare-fun lam15n3 () Int)
(declare-fun lam16n0 () Int)
(declare-fun lam16n1 () Int)
(declare-fun lam16n2 () Int)
(declare-fun lam17n0 () Int)
(declare-fun lam17n1 () Int)
(declare-fun lam17n2 () Int)
(declare-fun lam18n0 () Int)
(declare-fun lam18n1 () Int)
(declare-fun lam18n2 () Int)
(declare-fun __const_5^0 () Int)
(declare-fun j5^0 () Int)
(declare-fun i4^0 () Int)
(declare-fun k6^0 () Int)
(declare-fun lam22n0 () Int)
(declare-fun lam22n1 () Int)
(declare-fun lam22n2 () Int)
(declare-fun lam22n3 () Int)
(declare-fun RFN1_CT () Int)
(declare-fun RFN1_k6^0 () Int)
(declare-fun RFN1___const_5^0 () Int)
(declare-fun RFN1_j5^0 () Int)
(declare-fun lam26n0 () Int)
(declare-fun lam26n1 () Int)
(declare-fun lam26n2 () Int)
(declare-fun lam26n3 () Int)
(declare-fun lam30n0 () Int)
(declare-fun lam30n1 () Int)
(declare-fun lam30n2 () Int)
(declare-fun lam30n3 () Int)
(declare-fun lam20n0 () Int)
(declare-fun lam20n1 () Int)
(declare-fun lam20n2 () Int)
(declare-fun lam20n3 () Int)
(declare-fun lam21n0 () Int)
(declare-fun lam21n1 () Int)
(declare-fun lam21n2 () Int)
(declare-fun lam21n3 () Int)
(declare-fun lam24n0 () Int)
(declare-fun lam24n1 () Int)
(declare-fun lam24n2 () Int)
(declare-fun lam24n3 () Int)
(declare-fun lam25n0 () Int)
(declare-fun lam25n1 () Int)
(declare-fun lam25n2 () Int)
(declare-fun lam25n3 () Int)
(declare-fun lam28n0 () Int)
(declare-fun lam28n1 () Int)
(declare-fun lam28n2 () Int)
(declare-fun lam28n3 () Int)
(declare-fun lam29n0 () Int)
(declare-fun lam29n1 () Int)
(declare-fun lam29n2 () Int)
(declare-fun lam29n3 () Int)
(declare-fun lam19n0 () Int)
(declare-fun lam19n1 () Int)
(declare-fun lam19n2 () Int)
(declare-fun lam19n3 () Int)
(declare-fun lam23n0 () Int)
(declare-fun lam23n1 () Int)
(declare-fun lam23n2 () Int)
(declare-fun lam23n3 () Int)
(declare-fun lam27n0 () Int)
(declare-fun lam27n1 () Int)
(declare-fun lam27n2 () Int)
(declare-fun lam27n3 () Int)
(assert ( and ( <= ( - 1 ) Nl7__const_5^01 ) ( <= Nl7__const_5^01 1 ) ( <= ( - 1 ) Nl7i4^01 ) ( <= Nl7i4^01 1 ) ( <= ( - 1 ) Nl7j5^01 ) ( <= Nl7j5^01 1 ) ( <= ( - 1 ) Nl7k6^01 ) ( <= Nl7k6^01 1 ) ( <= ( - 1 ) Nl10__const_5^01 ) ( <= Nl10__const_5^01 1 ) ( <= ( - 1 ) Nl10i4^01 ) ( <= Nl10i4^01 1 ) ( <= ( - 1 ) Nl10j5^01 ) ( <= Nl10j5^01 1 ) ( <= ( - 1 ) Nl10k6^01 ) ( <= Nl10k6^01 1 ) ( <= ( - 1 ) Nl7__const_5^02 ) ( <= Nl7__const_5^02 1 ) ( <= ( - 1 ) Nl7i4^02 ) ( <= Nl7i4^02 1 ) ( <= ( - 1 ) Nl7j5^02 ) ( <= Nl7j5^02 1 ) ( <= ( - 1 ) Nl7k6^02 ) ( <= Nl7k6^02 1 ) ( <= ( - 1 ) Nl10__const_5^02 ) ( <= Nl10__const_5^02 1 ) ( <= ( - 1 ) Nl10i4^02 ) ( <= Nl10i4^02 1 ) ( <= ( - 1 ) Nl10j5^02 ) ( <= Nl10j5^02 1 ) ( <= ( - 1 ) Nl10k6^02 ) ( <= Nl10k6^02 1 ) ( <= ( - 1 ) Nl7__const_5^03 ) ( <= Nl7__const_5^03 1 ) ( <= ( - 1 ) Nl7i4^03 ) ( <= Nl7i4^03 1 ) ( <= ( - 1 ) Nl7j5^03 ) ( <= Nl7j5^03 1 ) ( <= ( - 1 ) Nl7k6^03 ) ( <= Nl7k6^03 1 ) ( <= ( - 1 ) Nl10__const_5^03 ) ( <= Nl10__const_5^03 1 ) ( <= ( - 1 ) Nl10i4^03 ) ( <= Nl10i4^03 1 ) ( <= ( - 1 ) Nl10j5^03 ) ( <= Nl10j5^03 1 ) ( <= ( - 1 ) Nl10k6^03 ) ( <= Nl10k6^03 1 ) ))
(assert ( or ( and ( >= lam0n0 0 ) ( >= lam0n1 0 ) ( >= lam0n2 0 ) ( >= lam0n3 0 ) ( >= lam0n4 0 ) ( > ( + ( * 1 lam0n0 ) ( * 1 lam0n1 ) ( * Nl7CT1 lam0n2 ) ( * Nl7CT2 lam0n3 ) ( * Nl7CT3 lam0n4 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam0n0 ) ( * ( - 1 ) lam0n1 ) ( * Nl7__const_5^01 lam0n2 ) ( * Nl7__const_5^02 lam0n3 ) ( * Nl7__const_5^03 lam0n4 ) ) 0 ) ( = ( + ( * 1 lam0n1 ) ( * Nl7i4^01 lam0n2 ) ( * Nl7i4^02 lam0n3 ) ( * Nl7i4^03 lam0n4 ) ) 0 ) ( = ( + ( * ( - 1 ) lam0n0 ) ( * Nl7j5^01 lam0n2 ) ( * Nl7j5^02 lam0n3 ) ( * Nl7j5^03 lam0n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam0n2 ) ( * Nl7k6^02 lam0n3 ) ( * Nl7k6^03 lam0n4 ) ) 0 ) ) ( and ( >= lam1n0 0 ) ( >= lam1n1 0 ) ( >= lam1n2 0 ) ( >= lam1n3 0 ) ( >= lam1n4 0 ) ( > ( + ( * 1 lam1n0 ) ( * 1 lam1n1 ) ( * Nl7CT1 lam1n2 ) ( * Nl7CT2 lam1n3 ) ( * Nl7CT3 lam1n4 ) ( - 1 ( + ( + Nl7CT1 ( * Nl7i4^01 1 ) ) ( * Nl7j5^01 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam1n0 ) ( * ( - 1 ) lam1n1 ) ( * Nl7__const_5^01 lam1n2 ) ( * Nl7__const_5^02 lam1n3 ) ( * Nl7__const_5^03 lam1n4 ) ( - ( + 0 Nl7__const_5^01 ) ) ) 0 ) ( = ( + ( * 1 lam1n1 ) ( * Nl7i4^01 lam1n2 ) ( * Nl7i4^02 lam1n3 ) ( * Nl7i4^03 lam1n4 ) ( - ( + 0 ( * Nl7i4^01 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam1n0 ) ( * Nl7j5^01 lam1n2 ) ( * Nl7j5^02 lam1n3 ) ( * Nl7j5^03 lam1n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam1n2 ) ( * Nl7k6^02 lam1n3 ) ( * Nl7k6^03 lam1n4 ) ( - ( + 0 Nl7k6^01 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam0n0 0 ) ( >= lam0n1 0 ) ( >= lam0n2 0 ) ( >= lam0n3 0 ) ( >= lam0n4 0 ) ( > ( + ( * 1 lam0n0 ) ( * 1 lam0n1 ) ( * Nl7CT1 lam0n2 ) ( * Nl7CT2 lam0n3 ) ( * Nl7CT3 lam0n4 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam0n0 ) ( * ( - 1 ) lam0n1 ) ( * Nl7__const_5^01 lam0n2 ) ( * Nl7__const_5^02 lam0n3 ) ( * Nl7__const_5^03 lam0n4 ) ) 0 ) ( = ( + ( * 1 lam0n1 ) ( * Nl7i4^01 lam0n2 ) ( * Nl7i4^02 lam0n3 ) ( * Nl7i4^03 lam0n4 ) ) 0 ) ( = ( + ( * ( - 1 ) lam0n0 ) ( * Nl7j5^01 lam0n2 ) ( * Nl7j5^02 lam0n3 ) ( * Nl7j5^03 lam0n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam0n2 ) ( * Nl7k6^02 lam0n3 ) ( * Nl7k6^03 lam0n4 ) ) 0 ) ) ( and ( >= lam2n0 0 ) ( >= lam2n1 0 ) ( >= lam2n2 0 ) ( >= lam2n3 0 ) ( >= lam2n4 0 ) ( > ( + ( * 1 lam2n0 ) ( * 1 lam2n1 ) ( * Nl7CT1 lam2n2 ) ( * Nl7CT2 lam2n3 ) ( * Nl7CT3 lam2n4 ) ( - 1 ( + ( + Nl7CT2 ( * Nl7i4^02 1 ) ) ( * Nl7j5^02 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam2n0 ) ( * ( - 1 ) lam2n1 ) ( * Nl7__const_5^01 lam2n2 ) ( * Nl7__const_5^02 lam2n3 ) ( * Nl7__const_5^03 lam2n4 ) ( - ( + 0 Nl7__const_5^02 ) ) ) 0 ) ( = ( + ( * 1 lam2n1 ) ( * Nl7i4^01 lam2n2 ) ( * Nl7i4^02 lam2n3 ) ( * Nl7i4^03 lam2n4 ) ( - ( + 0 ( * Nl7i4^02 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam2n0 ) ( * Nl7j5^01 lam2n2 ) ( * Nl7j5^02 lam2n3 ) ( * Nl7j5^03 lam2n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam2n2 ) ( * Nl7k6^02 lam2n3 ) ( * Nl7k6^03 lam2n4 ) ( - ( + 0 Nl7k6^02 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam0n0 0 ) ( >= lam0n1 0 ) ( >= lam0n2 0 ) ( >= lam0n3 0 ) ( >= lam0n4 0 ) ( > ( + ( * 1 lam0n0 ) ( * 1 lam0n1 ) ( * Nl7CT1 lam0n2 ) ( * Nl7CT2 lam0n3 ) ( * Nl7CT3 lam0n4 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam0n0 ) ( * ( - 1 ) lam0n1 ) ( * Nl7__const_5^01 lam0n2 ) ( * Nl7__const_5^02 lam0n3 ) ( * Nl7__const_5^03 lam0n4 ) ) 0 ) ( = ( + ( * 1 lam0n1 ) ( * Nl7i4^01 lam0n2 ) ( * Nl7i4^02 lam0n3 ) ( * Nl7i4^03 lam0n4 ) ) 0 ) ( = ( + ( * ( - 1 ) lam0n0 ) ( * Nl7j5^01 lam0n2 ) ( * Nl7j5^02 lam0n3 ) ( * Nl7j5^03 lam0n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam0n2 ) ( * Nl7k6^02 lam0n3 ) ( * Nl7k6^03 lam0n4 ) ) 0 ) ) ( and ( >= lam3n0 0 ) ( >= lam3n1 0 ) ( >= lam3n2 0 ) ( >= lam3n3 0 ) ( >= lam3n4 0 ) ( > ( + ( * 1 lam3n0 ) ( * 1 lam3n1 ) ( * Nl7CT1 lam3n2 ) ( * Nl7CT2 lam3n3 ) ( * Nl7CT3 lam3n4 ) ( - 1 ( + ( + Nl7CT3 ( * Nl7i4^03 1 ) ) ( * Nl7j5^03 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam3n0 ) ( * ( - 1 ) lam3n1 ) ( * Nl7__const_5^01 lam3n2 ) ( * Nl7__const_5^02 lam3n3 ) ( * Nl7__const_5^03 lam3n4 ) ( - ( + 0 Nl7__const_5^03 ) ) ) 0 ) ( = ( + ( * 1 lam3n1 ) ( * Nl7i4^01 lam3n2 ) ( * Nl7i4^02 lam3n3 ) ( * Nl7i4^03 lam3n4 ) ( - ( + 0 ( * Nl7i4^03 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam3n0 ) ( * Nl7j5^01 lam3n2 ) ( * Nl7j5^02 lam3n3 ) ( * Nl7j5^03 lam3n4 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam3n2 ) ( * Nl7k6^02 lam3n3 ) ( * Nl7k6^03 lam3n4 ) ( - ( + 0 Nl7k6^03 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam4n0 0 ) ( >= lam4n1 0 ) ( >= lam4n2 0 ) ( >= lam4n3 0 ) ( > ( + ( * Nl7CT1 lam4n1 ) ( * Nl7CT2 lam4n2 ) ( * Nl7CT3 lam4n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam4n0 ) ( * Nl7__const_5^01 lam4n1 ) ( * Nl7__const_5^02 lam4n2 ) ( * Nl7__const_5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7i4^01 lam4n1 ) ( * Nl7i4^02 lam4n2 ) ( * Nl7i4^03 lam4n3 ) ) 0 ) ( = ( + ( * 1 lam4n0 ) ( * Nl7j5^01 lam4n1 ) ( * Nl7j5^02 lam4n2 ) ( * Nl7j5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam4n1 ) ( * Nl7k6^02 lam4n2 ) ( * Nl7k6^03 lam4n3 ) ) 0 ) ) ( and ( >= lam5n0 0 ) ( >= lam5n1 0 ) ( >= lam5n2 0 ) ( >= lam5n3 0 ) ( > ( + ( * Nl7CT1 lam5n1 ) ( * Nl7CT2 lam5n2 ) ( * Nl7CT3 lam5n3 ) ( - 1 ( + Nl10CT1 ( * Nl10k6^01 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam5n0 ) ( * Nl7__const_5^01 lam5n1 ) ( * Nl7__const_5^02 lam5n2 ) ( * Nl7__const_5^03 lam5n3 ) ( - ( + 0 Nl10__const_5^01 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam5n1 ) ( * Nl7i4^02 lam5n2 ) ( * Nl7i4^03 lam5n3 ) ( - ( + 0 Nl10i4^01 ) ) ) 0 ) ( = ( + ( * 1 lam5n0 ) ( * Nl7j5^01 lam5n1 ) ( * Nl7j5^02 lam5n2 ) ( * Nl7j5^03 lam5n3 ) ( - ( + 0 Nl10j5^01 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam5n1 ) ( * Nl7k6^02 lam5n2 ) ( * Nl7k6^03 lam5n3 ) ) 0 ) ) ))
(assert ( or ( and ( >= lam4n0 0 ) ( >= lam4n1 0 ) ( >= lam4n2 0 ) ( >= lam4n3 0 ) ( > ( + ( * Nl7CT1 lam4n1 ) ( * Nl7CT2 lam4n2 ) ( * Nl7CT3 lam4n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam4n0 ) ( * Nl7__const_5^01 lam4n1 ) ( * Nl7__const_5^02 lam4n2 ) ( * Nl7__const_5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7i4^01 lam4n1 ) ( * Nl7i4^02 lam4n2 ) ( * Nl7i4^03 lam4n3 ) ) 0 ) ( = ( + ( * 1 lam4n0 ) ( * Nl7j5^01 lam4n1 ) ( * Nl7j5^02 lam4n2 ) ( * Nl7j5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam4n1 ) ( * Nl7k6^02 lam4n2 ) ( * Nl7k6^03 lam4n3 ) ) 0 ) ) ( and ( >= lam6n0 0 ) ( >= lam6n1 0 ) ( >= lam6n2 0 ) ( >= lam6n3 0 ) ( > ( + ( * Nl7CT1 lam6n1 ) ( * Nl7CT2 lam6n2 ) ( * Nl7CT3 lam6n3 ) ( - 1 ( + Nl10CT2 ( * Nl10k6^02 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam6n0 ) ( * Nl7__const_5^01 lam6n1 ) ( * Nl7__const_5^02 lam6n2 ) ( * Nl7__const_5^03 lam6n3 ) ( - ( + 0 Nl10__const_5^02 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam6n1 ) ( * Nl7i4^02 lam6n2 ) ( * Nl7i4^03 lam6n3 ) ( - ( + 0 Nl10i4^02 ) ) ) 0 ) ( = ( + ( * 1 lam6n0 ) ( * Nl7j5^01 lam6n1 ) ( * Nl7j5^02 lam6n2 ) ( * Nl7j5^03 lam6n3 ) ( - ( + 0 Nl10j5^02 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam6n1 ) ( * Nl7k6^02 lam6n2 ) ( * Nl7k6^03 lam6n3 ) ) 0 ) ) ))
(assert ( or ( and ( >= lam4n0 0 ) ( >= lam4n1 0 ) ( >= lam4n2 0 ) ( >= lam4n3 0 ) ( > ( + ( * Nl7CT1 lam4n1 ) ( * Nl7CT2 lam4n2 ) ( * Nl7CT3 lam4n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam4n0 ) ( * Nl7__const_5^01 lam4n1 ) ( * Nl7__const_5^02 lam4n2 ) ( * Nl7__const_5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7i4^01 lam4n1 ) ( * Nl7i4^02 lam4n2 ) ( * Nl7i4^03 lam4n3 ) ) 0 ) ( = ( + ( * 1 lam4n0 ) ( * Nl7j5^01 lam4n1 ) ( * Nl7j5^02 lam4n2 ) ( * Nl7j5^03 lam4n3 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam4n1 ) ( * Nl7k6^02 lam4n2 ) ( * Nl7k6^03 lam4n3 ) ) 0 ) ) ( and ( >= lam7n0 0 ) ( >= lam7n1 0 ) ( >= lam7n2 0 ) ( >= lam7n3 0 ) ( > ( + ( * Nl7CT1 lam7n1 ) ( * Nl7CT2 lam7n2 ) ( * Nl7CT3 lam7n3 ) ( - 1 ( + Nl10CT3 ( * Nl10k6^03 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam7n0 ) ( * Nl7__const_5^01 lam7n1 ) ( * Nl7__const_5^02 lam7n2 ) ( * Nl7__const_5^03 lam7n3 ) ( - ( + 0 Nl10__const_5^03 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam7n1 ) ( * Nl7i4^02 lam7n2 ) ( * Nl7i4^03 lam7n3 ) ( - ( + 0 Nl10i4^03 ) ) ) 0 ) ( = ( + ( * 1 lam7n0 ) ( * Nl7j5^01 lam7n1 ) ( * Nl7j5^02 lam7n2 ) ( * Nl7j5^03 lam7n3 ) ( - ( + 0 Nl10j5^03 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam7n1 ) ( * Nl7k6^02 lam7n2 ) ( * Nl7k6^03 lam7n3 ) ) 0 ) ) ))
(assert ( or ( and ( >= lam8n0 0 ) ( >= lam8n1 0 ) ( >= lam8n2 0 ) ( >= lam8n3 0 ) ( > ( + ( * 1 lam8n0 ) ( * Nl10CT1 lam8n1 ) ( * Nl10CT2 lam8n2 ) ( * Nl10CT3 lam8n3 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam8n0 ) ( * Nl10__const_5^01 lam8n1 ) ( * Nl10__const_5^02 lam8n2 ) ( * Nl10__const_5^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam8n1 ) ( * Nl10i4^02 lam8n2 ) ( * Nl10i4^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam8n1 ) ( * Nl10j5^02 lam8n2 ) ( * Nl10j5^03 lam8n3 ) ) 0 ) ( = ( + ( * ( - 1 ) lam8n0 ) ( * Nl10k6^01 lam8n1 ) ( * Nl10k6^02 lam8n2 ) ( * Nl10k6^03 lam8n3 ) ) 0 ) ) ( and ( >= lam9n0 0 ) ( >= lam9n1 0 ) ( >= lam9n2 0 ) ( >= lam9n3 0 ) ( > ( + ( * 1 lam9n0 ) ( * Nl10CT1 lam9n1 ) ( * Nl10CT2 lam9n2 ) ( * Nl10CT3 lam9n3 ) ( - 1 ( + Nl7CT1 ( * Nl7j5^01 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam9n0 ) ( * Nl10__const_5^01 lam9n1 ) ( * Nl10__const_5^02 lam9n2 ) ( * Nl10__const_5^03 lam9n3 ) ( - ( + 0 Nl7__const_5^01 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam9n1 ) ( * Nl10i4^02 lam9n2 ) ( * Nl10i4^03 lam9n3 ) ( - ( + 0 Nl7i4^01 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam9n1 ) ( * Nl10j5^02 lam9n2 ) ( * Nl10j5^03 lam9n3 ) ( - ( + 0 ( * Nl7j5^01 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam9n0 ) ( * Nl10k6^01 lam9n1 ) ( * Nl10k6^02 lam9n2 ) ( * Nl10k6^03 lam9n3 ) ( - ( + 0 Nl7k6^01 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam8n0 0 ) ( >= lam8n1 0 ) ( >= lam8n2 0 ) ( >= lam8n3 0 ) ( > ( + ( * 1 lam8n0 ) ( * Nl10CT1 lam8n1 ) ( * Nl10CT2 lam8n2 ) ( * Nl10CT3 lam8n3 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam8n0 ) ( * Nl10__const_5^01 lam8n1 ) ( * Nl10__const_5^02 lam8n2 ) ( * Nl10__const_5^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam8n1 ) ( * Nl10i4^02 lam8n2 ) ( * Nl10i4^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam8n1 ) ( * Nl10j5^02 lam8n2 ) ( * Nl10j5^03 lam8n3 ) ) 0 ) ( = ( + ( * ( - 1 ) lam8n0 ) ( * Nl10k6^01 lam8n1 ) ( * Nl10k6^02 lam8n2 ) ( * Nl10k6^03 lam8n3 ) ) 0 ) ) ( and ( >= lam10n0 0 ) ( >= lam10n1 0 ) ( >= lam10n2 0 ) ( >= lam10n3 0 ) ( > ( + ( * 1 lam10n0 ) ( * Nl10CT1 lam10n1 ) ( * Nl10CT2 lam10n2 ) ( * Nl10CT3 lam10n3 ) ( - 1 ( + Nl7CT2 ( * Nl7j5^02 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam10n0 ) ( * Nl10__const_5^01 lam10n1 ) ( * Nl10__const_5^02 lam10n2 ) ( * Nl10__const_5^03 lam10n3 ) ( - ( + 0 Nl7__const_5^02 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam10n1 ) ( * Nl10i4^02 lam10n2 ) ( * Nl10i4^03 lam10n3 ) ( - ( + 0 Nl7i4^02 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam10n1 ) ( * Nl10j5^02 lam10n2 ) ( * Nl10j5^03 lam10n3 ) ( - ( + 0 ( * Nl7j5^02 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam10n0 ) ( * Nl10k6^01 lam10n1 ) ( * Nl10k6^02 lam10n2 ) ( * Nl10k6^03 lam10n3 ) ( - ( + 0 Nl7k6^02 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam8n0 0 ) ( >= lam8n1 0 ) ( >= lam8n2 0 ) ( >= lam8n3 0 ) ( > ( + ( * 1 lam8n0 ) ( * Nl10CT1 lam8n1 ) ( * Nl10CT2 lam8n2 ) ( * Nl10CT3 lam8n3 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam8n0 ) ( * Nl10__const_5^01 lam8n1 ) ( * Nl10__const_5^02 lam8n2 ) ( * Nl10__const_5^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam8n1 ) ( * Nl10i4^02 lam8n2 ) ( * Nl10i4^03 lam8n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam8n1 ) ( * Nl10j5^02 lam8n2 ) ( * Nl10j5^03 lam8n3 ) ) 0 ) ( = ( + ( * ( - 1 ) lam8n0 ) ( * Nl10k6^01 lam8n1 ) ( * Nl10k6^02 lam8n2 ) ( * Nl10k6^03 lam8n3 ) ) 0 ) ) ( and ( >= lam11n0 0 ) ( >= lam11n1 0 ) ( >= lam11n2 0 ) ( >= lam11n3 0 ) ( > ( + ( * 1 lam11n0 ) ( * Nl10CT1 lam11n1 ) ( * Nl10CT2 lam11n2 ) ( * Nl10CT3 lam11n3 ) ( - 1 ( + Nl7CT3 ( * Nl7j5^03 1 ) ) ) ) 0 ) ( = ( + ( * 1 lam11n0 ) ( * Nl10__const_5^01 lam11n1 ) ( * Nl10__const_5^02 lam11n2 ) ( * Nl10__const_5^03 lam11n3 ) ( - ( + 0 Nl7__const_5^03 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam11n1 ) ( * Nl10i4^02 lam11n2 ) ( * Nl10i4^03 lam11n3 ) ( - ( + 0 Nl7i4^03 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam11n1 ) ( * Nl10j5^02 lam11n2 ) ( * Nl10j5^03 lam11n3 ) ( - ( + 0 ( * Nl7j5^03 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam11n0 ) ( * Nl10k6^01 lam11n1 ) ( * Nl10k6^02 lam11n2 ) ( * Nl10k6^03 lam11n3 ) ( - ( + 0 Nl7k6^03 ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam12n0 0 ) ( >= lam12n1 0 ) ( >= lam12n2 0 ) ( >= lam12n3 0 ) ( > ( + ( * Nl10CT1 lam12n1 ) ( * Nl10CT2 lam12n2 ) ( * Nl10CT3 lam12n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam12n0 ) ( * Nl10__const_5^01 lam12n1 ) ( * Nl10__const_5^02 lam12n2 ) ( * Nl10__const_5^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam12n1 ) ( * Nl10i4^02 lam12n2 ) ( * Nl10i4^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam12n1 ) ( * Nl10j5^02 lam12n2 ) ( * Nl10j5^03 lam12n3 ) ) 0 ) ( = ( + ( * 1 lam12n0 ) ( * Nl10k6^01 lam12n1 ) ( * Nl10k6^02 lam12n2 ) ( * Nl10k6^03 lam12n3 ) ) 0 ) ) ( and ( >= lam13n0 0 ) ( >= lam13n1 0 ) ( >= lam13n2 0 ) ( >= lam13n3 0 ) ( > ( + ( * Nl10CT1 lam13n1 ) ( * Nl10CT2 lam13n2 ) ( * Nl10CT3 lam13n3 ) ( - 1 ( + Nl10CT1 ( * Nl10k6^01 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam13n0 ) ( * Nl10__const_5^01 lam13n1 ) ( * Nl10__const_5^02 lam13n2 ) ( * Nl10__const_5^03 lam13n3 ) ( - ( + 0 Nl10__const_5^01 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam13n1 ) ( * Nl10i4^02 lam13n2 ) ( * Nl10i4^03 lam13n3 ) ( - ( + 0 Nl10i4^01 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam13n1 ) ( * Nl10j5^02 lam13n2 ) ( * Nl10j5^03 lam13n3 ) ( - ( + 0 Nl10j5^01 ) ) ) 0 ) ( = ( + ( * 1 lam13n0 ) ( * Nl10k6^01 lam13n1 ) ( * Nl10k6^02 lam13n2 ) ( * Nl10k6^03 lam13n3 ) ( - ( + 0 ( * Nl10k6^01 1 ) ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam12n0 0 ) ( >= lam12n1 0 ) ( >= lam12n2 0 ) ( >= lam12n3 0 ) ( > ( + ( * Nl10CT1 lam12n1 ) ( * Nl10CT2 lam12n2 ) ( * Nl10CT3 lam12n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam12n0 ) ( * Nl10__const_5^01 lam12n1 ) ( * Nl10__const_5^02 lam12n2 ) ( * Nl10__const_5^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam12n1 ) ( * Nl10i4^02 lam12n2 ) ( * Nl10i4^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam12n1 ) ( * Nl10j5^02 lam12n2 ) ( * Nl10j5^03 lam12n3 ) ) 0 ) ( = ( + ( * 1 lam12n0 ) ( * Nl10k6^01 lam12n1 ) ( * Nl10k6^02 lam12n2 ) ( * Nl10k6^03 lam12n3 ) ) 0 ) ) ( and ( >= lam14n0 0 ) ( >= lam14n1 0 ) ( >= lam14n2 0 ) ( >= lam14n3 0 ) ( > ( + ( * Nl10CT1 lam14n1 ) ( * Nl10CT2 lam14n2 ) ( * Nl10CT3 lam14n3 ) ( - 1 ( + Nl10CT2 ( * Nl10k6^02 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam14n0 ) ( * Nl10__const_5^01 lam14n1 ) ( * Nl10__const_5^02 lam14n2 ) ( * Nl10__const_5^03 lam14n3 ) ( - ( + 0 Nl10__const_5^02 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam14n1 ) ( * Nl10i4^02 lam14n2 ) ( * Nl10i4^03 lam14n3 ) ( - ( + 0 Nl10i4^02 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam14n1 ) ( * Nl10j5^02 lam14n2 ) ( * Nl10j5^03 lam14n3 ) ( - ( + 0 Nl10j5^02 ) ) ) 0 ) ( = ( + ( * 1 lam14n0 ) ( * Nl10k6^01 lam14n1 ) ( * Nl10k6^02 lam14n2 ) ( * Nl10k6^03 lam14n3 ) ( - ( + 0 ( * Nl10k6^02 1 ) ) ) ) 0 ) ) ))
(assert ( or ( and ( >= lam12n0 0 ) ( >= lam12n1 0 ) ( >= lam12n2 0 ) ( >= lam12n3 0 ) ( > ( + ( * Nl10CT1 lam12n1 ) ( * Nl10CT2 lam12n2 ) ( * Nl10CT3 lam12n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam12n0 ) ( * Nl10__const_5^01 lam12n1 ) ( * Nl10__const_5^02 lam12n2 ) ( * Nl10__const_5^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam12n1 ) ( * Nl10i4^02 lam12n2 ) ( * Nl10i4^03 lam12n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam12n1 ) ( * Nl10j5^02 lam12n2 ) ( * Nl10j5^03 lam12n3 ) ) 0 ) ( = ( + ( * 1 lam12n0 ) ( * Nl10k6^01 lam12n1 ) ( * Nl10k6^02 lam12n2 ) ( * Nl10k6^03 lam12n3 ) ) 0 ) ) ( and ( >= lam15n0 0 ) ( >= lam15n1 0 ) ( >= lam15n2 0 ) ( >= lam15n3 0 ) ( > ( + ( * Nl10CT1 lam15n1 ) ( * Nl10CT2 lam15n2 ) ( * Nl10CT3 lam15n3 ) ( - 1 ( + Nl10CT3 ( * Nl10k6^03 1 ) ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam15n0 ) ( * Nl10__const_5^01 lam15n1 ) ( * Nl10__const_5^02 lam15n2 ) ( * Nl10__const_5^03 lam15n3 ) ( - ( + 0 Nl10__const_5^03 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam15n1 ) ( * Nl10i4^02 lam15n2 ) ( * Nl10i4^03 lam15n3 ) ( - ( + 0 Nl10i4^03 ) ) ) 0 ) ( = ( + ( * Nl10j5^01 lam15n1 ) ( * Nl10j5^02 lam15n2 ) ( * Nl10j5^03 lam15n3 ) ( - ( + 0 Nl10j5^03 ) ) ) 0 ) ( = ( + ( * 1 lam15n0 ) ( * Nl10k6^01 lam15n1 ) ( * Nl10k6^02 lam15n2 ) ( * Nl10k6^03 lam15n3 ) ( - ( + 0 ( * Nl10k6^03 1 ) ) ) ) 0 ) ) ))
(assert ( and ( <= ( + 1 __const_5^0 ( * ( - 1 ) j5^0 ) ) 0 ) ( <= ( + 1 ( * ( - 1 ) __const_5^0 ) ) 0 ) ( <= ( + __const_5^0 ( * ( - 1 ) i4^0 ) ) 0 ) ( <= ( + ( + ( + Nl7CT1 ( * Nl7i4^01 1 ) ) ( * Nl7j5^01 1 ) ) ( * ( + 0 Nl7__const_5^01 ) __const_5^0 ) ( * ( + 0 Nl7k6^01 ) k6^0 ) ) 0 ) ( <= ( + ( + ( + Nl7CT2 ( * Nl7i4^02 1 ) ) ( * Nl7j5^02 1 ) ) ( * ( + 0 Nl7__const_5^02 ) __const_5^0 ) ( * ( + 0 Nl7k6^02 ) k6^0 ) ) 0 ) ( <= ( + ( + ( + Nl7CT3 ( * Nl7i4^03 1 ) ) ( * Nl7j5^03 1 ) ) ( * ( + 0 Nl7__const_5^03 ) __const_5^0 ) ( * ( + 0 Nl7k6^03 ) k6^0 ) ) 0 ) ))
(assert ( or ( and ( and ( and ( >= lam22n0 0 ) ( >= lam22n1 0 ) ( >= lam22n2 0 ) ( >= lam22n3 0 ) ( > ( + ( * Nl7CT1 lam22n1 ) ( * Nl7CT2 lam22n2 ) ( * Nl7CT3 lam22n3 ) ( - 1 ( - ( + RFN1_CT ( * RFN1_k6^0 1 ) ) RFN1_CT ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam22n0 ) ( * Nl7__const_5^01 lam22n1 ) ( * Nl7__const_5^02 lam22n2 ) ( * Nl7__const_5^03 lam22n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam22n1 ) ( * Nl7i4^02 lam22n2 ) ( * Nl7i4^03 lam22n3 ) ) 0 ) ( = ( + ( * 1 lam22n0 ) ( * Nl7j5^01 lam22n1 ) ( * Nl7j5^02 lam22n2 ) ( * Nl7j5^03 lam22n3 ) ( - ( - ( + 0 RFN1_j5^0 ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam22n1 ) ( * Nl7k6^02 lam22n2 ) ( * Nl7k6^03 lam22n3 ) ( - ( - RFN1_k6^0 ) ) ) 0 ) ) ( and ( >= lam26n0 0 ) ( >= lam26n1 0 ) ( >= lam26n2 0 ) ( >= lam26n3 0 ) ( > ( + ( * 1 lam26n0 ) ( * Nl10CT1 lam26n1 ) ( * Nl10CT2 lam26n2 ) ( * Nl10CT3 lam26n3 ) ( - 1 ( - ( + RFN1_CT ( * RFN1_j5^0 1 ) ) RFN1_CT ) ) ) 0 ) ( = ( + ( * 1 lam26n0 ) ( * Nl10__const_5^01 lam26n1 ) ( * Nl10__const_5^02 lam26n2 ) ( * Nl10__const_5^03 lam26n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam26n1 ) ( * Nl10i4^02 lam26n2 ) ( * Nl10i4^03 lam26n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam26n1 ) ( * Nl10j5^02 lam26n2 ) ( * Nl10j5^03 lam26n3 ) ( - ( - ( + 0 ( * RFN1_j5^0 1 ) ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam26n0 ) ( * Nl10k6^01 lam26n1 ) ( * Nl10k6^02 lam26n2 ) ( * Nl10k6^03 lam26n3 ) ( - ( - ( + 0 RFN1_k6^0 ) RFN1_k6^0 ) ) ) 0 ) ) ( and ( >= lam30n0 0 ) ( >= lam30n1 0 ) ( >= lam30n2 0 ) ( >= lam30n3 0 ) ( > ( + ( * Nl10CT1 lam30n1 ) ( * Nl10CT2 lam30n2 ) ( * Nl10CT3 lam30n3 ) ( - 1 ( - ( + RFN1_CT ( * RFN1_k6^0 1 ) ) RFN1_CT ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam30n0 ) ( * Nl10__const_5^01 lam30n1 ) ( * Nl10__const_5^02 lam30n2 ) ( * Nl10__const_5^03 lam30n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam30n1 ) ( * Nl10i4^02 lam30n2 ) ( * Nl10i4^03 lam30n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam30n1 ) ( * Nl10j5^02 lam30n2 ) ( * Nl10j5^03 lam30n3 ) ( - ( - ( + 0 RFN1_j5^0 ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * 1 lam30n0 ) ( * Nl10k6^01 lam30n1 ) ( * Nl10k6^02 lam30n2 ) ( * Nl10k6^03 lam30n3 ) ( - ( - ( + 0 ( * RFN1_k6^0 1 ) ) RFN1_k6^0 ) ) ) 0 ) ) ) ( or ( and ( and ( >= lam20n0 0 ) ( >= lam20n1 0 ) ( >= lam20n2 0 ) ( >= lam20n3 0 ) ( > ( + ( * Nl7CT1 lam20n1 ) ( * Nl7CT2 lam20n2 ) ( * Nl7CT3 lam20n3 ) ( - 1 ( - RFN1_CT ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam20n0 ) ( * Nl7__const_5^01 lam20n1 ) ( * Nl7__const_5^02 lam20n2 ) ( * Nl7__const_5^03 lam20n3 ) ( - ( - RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam20n1 ) ( * Nl7i4^02 lam20n2 ) ( * Nl7i4^03 lam20n3 ) ) 0 ) ( = ( + ( * 1 lam20n0 ) ( * Nl7j5^01 lam20n1 ) ( * Nl7j5^02 lam20n2 ) ( * Nl7j5^03 lam20n3 ) ( - ( - RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam20n1 ) ( * Nl7k6^02 lam20n2 ) ( * Nl7k6^03 lam20n3 ) ( - ( - RFN1_k6^0 ) ) ) 0 ) ) ( and ( >= lam21n0 0 ) ( >= lam21n1 0 ) ( >= lam21n2 0 ) ( >= lam21n3 0 ) ( > ( + ( * Nl7CT1 lam21n1 ) ( * Nl7CT2 lam21n2 ) ( * Nl7CT3 lam21n3 ) ( - 1 ( + ( - ( + RFN1_CT ( * RFN1_k6^0 1 ) ) RFN1_CT ) 1 ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam21n0 ) ( * Nl7__const_5^01 lam21n1 ) ( * Nl7__const_5^02 lam21n2 ) ( * Nl7__const_5^03 lam21n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl7i4^01 lam21n1 ) ( * Nl7i4^02 lam21n2 ) ( * Nl7i4^03 lam21n3 ) ) 0 ) ( = ( + ( * 1 lam21n0 ) ( * Nl7j5^01 lam21n1 ) ( * Nl7j5^02 lam21n2 ) ( * Nl7j5^03 lam21n3 ) ( - ( - ( + 0 RFN1_j5^0 ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * Nl7k6^01 lam21n1 ) ( * Nl7k6^02 lam21n2 ) ( * Nl7k6^03 lam21n3 ) ( - ( - RFN1_k6^0 ) ) ) 0 ) ) ) ( and ( and ( >= lam24n0 0 ) ( >= lam24n1 0 ) ( >= lam24n2 0 ) ( >= lam24n3 0 ) ( > ( + ( * 1 lam24n0 ) ( * Nl10CT1 lam24n1 ) ( * Nl10CT2 lam24n2 ) ( * Nl10CT3 lam24n3 ) ( - 1 ( - RFN1_CT ) ) ) 0 ) ( = ( + ( * 1 lam24n0 ) ( * Nl10__const_5^01 lam24n1 ) ( * Nl10__const_5^02 lam24n2 ) ( * Nl10__const_5^03 lam24n3 ) ( - ( - RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam24n1 ) ( * Nl10i4^02 lam24n2 ) ( * Nl10i4^03 lam24n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam24n1 ) ( * Nl10j5^02 lam24n2 ) ( * Nl10j5^03 lam24n3 ) ( - ( - RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam24n0 ) ( * Nl10k6^01 lam24n1 ) ( * Nl10k6^02 lam24n2 ) ( * Nl10k6^03 lam24n3 ) ( - ( - RFN1_k6^0 ) ) ) 0 ) ) ( and ( >= lam25n0 0 ) ( >= lam25n1 0 ) ( >= lam25n2 0 ) ( >= lam25n3 0 ) ( > ( + ( * 1 lam25n0 ) ( * Nl10CT1 lam25n1 ) ( * Nl10CT2 lam25n2 ) ( * Nl10CT3 lam25n3 ) ( - 1 ( + ( - ( + RFN1_CT ( * RFN1_j5^0 1 ) ) RFN1_CT ) 1 ) ) ) 0 ) ( = ( + ( * 1 lam25n0 ) ( * Nl10__const_5^01 lam25n1 ) ( * Nl10__const_5^02 lam25n2 ) ( * Nl10__const_5^03 lam25n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam25n1 ) ( * Nl10i4^02 lam25n2 ) ( * Nl10i4^03 lam25n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam25n1 ) ( * Nl10j5^02 lam25n2 ) ( * Nl10j5^03 lam25n3 ) ( - ( - ( + 0 ( * RFN1_j5^0 1 ) ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam25n0 ) ( * Nl10k6^01 lam25n1 ) ( * Nl10k6^02 lam25n2 ) ( * Nl10k6^03 lam25n3 ) ( - ( - ( + 0 RFN1_k6^0 ) RFN1_k6^0 ) ) ) 0 ) ) ) ( and ( and ( >= lam28n0 0 ) ( >= lam28n1 0 ) ( >= lam28n2 0 ) ( >= lam28n3 0 ) ( > ( + ( * Nl10CT1 lam28n1 ) ( * Nl10CT2 lam28n2 ) ( * Nl10CT3 lam28n3 ) ( - 1 ( - RFN1_CT ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam28n0 ) ( * Nl10__const_5^01 lam28n1 ) ( * Nl10__const_5^02 lam28n2 ) ( * Nl10__const_5^03 lam28n3 ) ( - ( - RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam28n1 ) ( * Nl10i4^02 lam28n2 ) ( * Nl10i4^03 lam28n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam28n1 ) ( * Nl10j5^02 lam28n2 ) ( * Nl10j5^03 lam28n3 ) ( - ( - RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * 1 lam28n0 ) ( * Nl10k6^01 lam28n1 ) ( * Nl10k6^02 lam28n2 ) ( * Nl10k6^03 lam28n3 ) ( - ( - RFN1_k6^0 ) ) ) 0 ) ) ( and ( >= lam29n0 0 ) ( >= lam29n1 0 ) ( >= lam29n2 0 ) ( >= lam29n3 0 ) ( > ( + ( * Nl10CT1 lam29n1 ) ( * Nl10CT2 lam29n2 ) ( * Nl10CT3 lam29n3 ) ( - 1 ( + ( - ( + RFN1_CT ( * RFN1_k6^0 1 ) ) RFN1_CT ) 1 ) ) ) 0 ) ( = ( + ( * ( - 1 ) lam29n0 ) ( * Nl10__const_5^01 lam29n1 ) ( * Nl10__const_5^02 lam29n2 ) ( * Nl10__const_5^03 lam29n3 ) ( - ( - ( + 0 RFN1___const_5^0 ) RFN1___const_5^0 ) ) ) 0 ) ( = ( + ( * Nl10i4^01 lam29n1 ) ( * Nl10i4^02 lam29n2 ) ( * Nl10i4^03 lam29n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam29n1 ) ( * Nl10j5^02 lam29n2 ) ( * Nl10j5^03 lam29n3 ) ( - ( - ( + 0 RFN1_j5^0 ) RFN1_j5^0 ) ) ) 0 ) ( = ( + ( * 1 lam29n0 ) ( * Nl10k6^01 lam29n1 ) ( * Nl10k6^02 lam29n2 ) ( * Nl10k6^03 lam29n3 ) ( - ( - ( + 0 ( * RFN1_k6^0 1 ) ) RFN1_k6^0 ) ) ) 0 ) ) ) ) ) ( or ( and ( >= lam19n0 0 ) ( >= lam19n1 0 ) ( >= lam19n2 0 ) ( >= lam19n3 0 ) ( > ( + ( * Nl7CT1 lam19n1 ) ( * Nl7CT2 lam19n2 ) ( * Nl7CT3 lam19n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam19n0 ) ( * Nl7__const_5^01 lam19n1 ) ( * Nl7__const_5^02 lam19n2 ) ( * Nl7__const_5^03 lam19n3 ) ) 0 ) ( = ( + ( * Nl7i4^01 lam19n1 ) ( * Nl7i4^02 lam19n2 ) ( * Nl7i4^03 lam19n3 ) ) 0 ) ( = ( + ( * 1 lam19n0 ) ( * Nl7j5^01 lam19n1 ) ( * Nl7j5^02 lam19n2 ) ( * Nl7j5^03 lam19n3 ) ) 0 ) ( = ( + ( * Nl7k6^01 lam19n1 ) ( * Nl7k6^02 lam19n2 ) ( * Nl7k6^03 lam19n3 ) ) 0 ) ) ( and ( >= lam23n0 0 ) ( >= lam23n1 0 ) ( >= lam23n2 0 ) ( >= lam23n3 0 ) ( > ( + ( * 1 lam23n0 ) ( * Nl10CT1 lam23n1 ) ( * Nl10CT2 lam23n2 ) ( * Nl10CT3 lam23n3 ) ( - 1 ) ) 0 ) ( = ( + ( * 1 lam23n0 ) ( * Nl10__const_5^01 lam23n1 ) ( * Nl10__const_5^02 lam23n2 ) ( * Nl10__const_5^03 lam23n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam23n1 ) ( * Nl10i4^02 lam23n2 ) ( * Nl10i4^03 lam23n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam23n1 ) ( * Nl10j5^02 lam23n2 ) ( * Nl10j5^03 lam23n3 ) ) 0 ) ( = ( + ( * ( - 1 ) lam23n0 ) ( * Nl10k6^01 lam23n1 ) ( * Nl10k6^02 lam23n2 ) ( * Nl10k6^03 lam23n3 ) ) 0 ) ) ( and ( >= lam27n0 0 ) ( >= lam27n1 0 ) ( >= lam27n2 0 ) ( >= lam27n3 0 ) ( > ( + ( * Nl10CT1 lam27n1 ) ( * Nl10CT2 lam27n2 ) ( * Nl10CT3 lam27n3 ) ( - 1 ) ) 0 ) ( = ( + ( * ( - 1 ) lam27n0 ) ( * Nl10__const_5^01 lam27n1 ) ( * Nl10__const_5^02 lam27n2 ) ( * Nl10__const_5^03 lam27n3 ) ) 0 ) ( = ( + ( * Nl10i4^01 lam27n1 ) ( * Nl10i4^02 lam27n2 ) ( * Nl10i4^03 lam27n3 ) ) 0 ) ( = ( + ( * Nl10j5^01 lam27n1 ) ( * Nl10j5^02 lam27n2 ) ( * Nl10j5^03 lam27n3 ) ) 0 ) ( = ( + ( * 1 lam27n0 ) ( * Nl10k6^01 lam27n1 ) ( * Nl10k6^02 lam27n2 ) ( * Nl10k6^03 lam27n3 ) ) 0 ) ) ) ))
(push 1)
(assert (>= Nl10__const_5^01 (- 1000)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 900)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 800)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 700)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 600)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 500)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 400)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 300)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 200)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 (- 100)))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 0))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 100))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 200))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 300))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 400))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 500))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 600))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 700))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 800))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 900))
(set-info :status unknown)
(check-sat)
(pop 1)
(push 1)
(assert (>= Nl10__const_5^01 1000))
(set-info :status unknown)
(check-sat)
(pop 1)
(exit)
