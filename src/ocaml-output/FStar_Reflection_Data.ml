open Prims
type name = Prims.string Prims.list
type vconst =
  | C_Unit
  | C_Int of Prims.int
  | C_True
  | C_False
  | C_String of Prims.string
let uu___is_C_Unit: vconst -> Prims.bool =
  fun projectee  ->
    match projectee with | C_Unit  -> true | uu____15 -> false
let uu___is_C_Int: vconst -> Prims.bool =
  fun projectee  ->
    match projectee with | C_Int _0 -> true | uu____21 -> false
let __proj__C_Int__item___0: vconst -> Prims.int =
  fun projectee  -> match projectee with | C_Int _0 -> _0
let uu___is_C_True: vconst -> Prims.bool =
  fun projectee  ->
    match projectee with | C_True  -> true | uu____34 -> false
let uu___is_C_False: vconst -> Prims.bool =
  fun projectee  ->
    match projectee with | C_False  -> true | uu____39 -> false
let uu___is_C_String: vconst -> Prims.bool =
  fun projectee  ->
    match projectee with | C_String _0 -> true | uu____45 -> false
let __proj__C_String__item___0: vconst -> Prims.string =
  fun projectee  -> match projectee with | C_String _0 -> _0
type pattern =
  | Pat_Constant of vconst
  | Pat_Cons of (FStar_Syntax_Syntax.fv,pattern Prims.list)
  FStar_Pervasives_Native.tuple2
  | Pat_Var of FStar_Syntax_Syntax.bv
  | Pat_Wild of FStar_Syntax_Syntax.bv
let uu___is_Pat_Constant: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | Pat_Constant _0 -> true | uu____81 -> false
let __proj__Pat_Constant__item___0: pattern -> vconst =
  fun projectee  -> match projectee with | Pat_Constant _0 -> _0
let uu___is_Pat_Cons: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | Pat_Cons _0 -> true | uu____101 -> false
let __proj__Pat_Cons__item___0:
  pattern ->
    (FStar_Syntax_Syntax.fv,pattern Prims.list)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Pat_Cons _0 -> _0
let uu___is_Pat_Var: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | Pat_Var _0 -> true | uu____133 -> false
let __proj__Pat_Var__item___0: pattern -> FStar_Syntax_Syntax.bv =
  fun projectee  -> match projectee with | Pat_Var _0 -> _0
let uu___is_Pat_Wild: pattern -> Prims.bool =
  fun projectee  ->
    match projectee with | Pat_Wild _0 -> true | uu____147 -> false
let __proj__Pat_Wild__item___0: pattern -> FStar_Syntax_Syntax.bv =
  fun projectee  -> match projectee with | Pat_Wild _0 -> _0
type branch =
  (pattern,FStar_Syntax_Syntax.term) FStar_Pervasives_Native.tuple2
type term_view =
  | Tv_Var of FStar_Syntax_Syntax.binder
  | Tv_FVar of FStar_Syntax_Syntax.fv
  | Tv_App of (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
  FStar_Pervasives_Native.tuple2
  | Tv_Abs of (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
  FStar_Pervasives_Native.tuple2
  | Tv_Arrow of (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
  FStar_Pervasives_Native.tuple2
  | Tv_Type of Prims.unit
  | Tv_Refine of (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
  FStar_Pervasives_Native.tuple2
  | Tv_Const of vconst
  | Tv_Uvar of (Prims.int,FStar_Syntax_Syntax.typ)
  FStar_Pervasives_Native.tuple2
  | Tv_Match of (FStar_Syntax_Syntax.term,branch Prims.list)
  FStar_Pervasives_Native.tuple2
  | Tv_Unknown
let uu___is_Tv_Var: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Var _0 -> true | uu____231 -> false
let __proj__Tv_Var__item___0: term_view -> FStar_Syntax_Syntax.binder =
  fun projectee  -> match projectee with | Tv_Var _0 -> _0
let uu___is_Tv_FVar: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_FVar _0 -> true | uu____245 -> false
let __proj__Tv_FVar__item___0: term_view -> FStar_Syntax_Syntax.fv =
  fun projectee  -> match projectee with | Tv_FVar _0 -> _0
let uu___is_Tv_App: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_App _0 -> true | uu____263 -> false
let __proj__Tv_App__item___0:
  term_view ->
    (FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_App _0 -> _0
let uu___is_Tv_Abs: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Abs _0 -> true | uu____293 -> false
let __proj__Tv_Abs__item___0:
  term_view ->
    (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_Abs _0 -> _0
let uu___is_Tv_Arrow: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Arrow _0 -> true | uu____323 -> false
let __proj__Tv_Arrow__item___0:
  term_view ->
    (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_Arrow _0 -> _0
let uu___is_Tv_Type: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Type _0 -> true | uu____349 -> false
let __proj__Tv_Type__item___0: term_view -> Prims.unit = fun projectee  -> ()
let uu___is_Tv_Refine: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Refine _0 -> true | uu____367 -> false
let __proj__Tv_Refine__item___0:
  term_view ->
    (FStar_Syntax_Syntax.binder,FStar_Syntax_Syntax.term)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_Refine _0 -> _0
let uu___is_Tv_Const: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Const _0 -> true | uu____393 -> false
let __proj__Tv_Const__item___0: term_view -> vconst =
  fun projectee  -> match projectee with | Tv_Const _0 -> _0
let uu___is_Tv_Uvar: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Uvar _0 -> true | uu____411 -> false
let __proj__Tv_Uvar__item___0:
  term_view ->
    (Prims.int,FStar_Syntax_Syntax.typ) FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_Uvar _0 -> _0
let uu___is_Tv_Match: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Match _0 -> true | uu____443 -> false
let __proj__Tv_Match__item___0:
  term_view ->
    (FStar_Syntax_Syntax.term,branch Prims.list)
      FStar_Pervasives_Native.tuple2
  = fun projectee  -> match projectee with | Tv_Match _0 -> _0
let uu___is_Tv_Unknown: term_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Tv_Unknown  -> true | uu____474 -> false
type ctor =
  | Ctor of (name,FStar_Syntax_Syntax.typ) FStar_Pervasives_Native.tuple2
let uu___is_Ctor: ctor -> Prims.bool = fun projectee  -> true
let __proj__Ctor__item___0:
  ctor -> (name,FStar_Syntax_Syntax.typ) FStar_Pervasives_Native.tuple2 =
  fun projectee  -> match projectee with | Ctor _0 -> _0
type sigelt_view =
  | Sg_Inductive of
  (name,FStar_Syntax_Syntax.binder Prims.list,FStar_Syntax_Syntax.typ,
  ctor Prims.list) FStar_Pervasives_Native.tuple4
  | Unk
let uu___is_Sg_Inductive: sigelt_view -> Prims.bool =
  fun projectee  ->
    match projectee with | Sg_Inductive _0 -> true | uu____537 -> false
let __proj__Sg_Inductive__item___0:
  sigelt_view ->
    (name,FStar_Syntax_Syntax.binder Prims.list,FStar_Syntax_Syntax.typ,
      ctor Prims.list) FStar_Pervasives_Native.tuple4
  = fun projectee  -> match projectee with | Sg_Inductive _0 -> _0
let uu___is_Unk: sigelt_view -> Prims.bool =
  fun projectee  -> match projectee with | Unk  -> true | uu____586 -> false
type norm_step =
  | Simpl
  | WHNF
  | Primops
  | Delta
let uu___is_Simpl: norm_step -> Prims.bool =
  fun projectee  ->
    match projectee with | Simpl  -> true | uu____591 -> false
let uu___is_WHNF: norm_step -> Prims.bool =
  fun projectee  -> match projectee with | WHNF  -> true | uu____596 -> false
let uu___is_Primops: norm_step -> Prims.bool =
  fun projectee  ->
    match projectee with | Primops  -> true | uu____601 -> false
let uu___is_Delta: norm_step -> Prims.bool =
  fun projectee  ->
    match projectee with | Delta  -> true | uu____606 -> false
let fstar_refl_lid: Prims.string Prims.list -> FStar_Ident.lident =
  fun s  ->
    FStar_Ident.lid_of_path (FStar_List.append ["FStar"; "Reflection"] s)
      FStar_Range.dummyRange
let lid_as_tm: FStar_Ident.lident -> FStar_Syntax_Syntax.term =
  fun l  ->
    let uu____619 =
      FStar_Syntax_Syntax.lid_as_fv l FStar_Syntax_Syntax.Delta_constant
        FStar_Pervasives_Native.None in
    FStar_All.pipe_right uu____619 FStar_Syntax_Syntax.fv_to_tm
let lid_as_data_tm: FStar_Ident.lident -> FStar_Syntax_Syntax.term =
  fun l  ->
    let uu____624 =
      FStar_Syntax_Syntax.lid_as_fv l FStar_Syntax_Syntax.Delta_constant
        (FStar_Pervasives_Native.Some FStar_Syntax_Syntax.Data_ctor) in
    FStar_Syntax_Syntax.fv_to_tm uu____624
let fstar_refl_types_lid: Prims.string -> FStar_Ident.lident =
  fun s  -> fstar_refl_lid ["Types"; s]
let fstar_refl_syntax_lid: Prims.string -> FStar_Ident.lident =
  fun s  -> fstar_refl_lid ["Syntax"; s]
let mk_refl_types_lid_as_term: Prims.string -> FStar_Syntax_Syntax.term =
  fun s  -> let uu____637 = fstar_refl_types_lid s in lid_as_tm uu____637
let mk_refl_syntax_lid_as_term: Prims.string -> FStar_Syntax_Syntax.term =
  fun s  -> let uu____642 = fstar_refl_syntax_lid s in lid_as_tm uu____642
let fstar_refl_lid_as_data_tm:
  Prims.string Prims.list -> FStar_Syntax_Syntax.term =
  fun s  -> let uu____651 = fstar_refl_lid s in lid_as_data_tm uu____651
let fstar_refl_term: FStar_Syntax_Syntax.term =
  mk_refl_types_lid_as_term "term"
let fstar_refl_env: FStar_Syntax_Syntax.term =
  mk_refl_types_lid_as_term "env"
let fstar_refl_fvar: FStar_Syntax_Syntax.term =
  mk_refl_types_lid_as_term "fv"
let fstar_refl_binder: FStar_Syntax_Syntax.term =
  mk_refl_types_lid_as_term "binder"
let fstar_refl_binders: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "binders"
let fstar_refl_term_view: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "term_view"
let fstar_refl_sigelt: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "sigelt"
let fstar_refl_ctor: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "ctor"
let fstar_refl_pattern: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "pattern"
let fstar_refl_branch: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "branch"
let ref_C_Unit_lid: FStar_Ident.lident = fstar_refl_syntax_lid "C_Unit"
let ref_C_True_lid: FStar_Ident.lident = fstar_refl_syntax_lid "C_True"
let ref_C_False_lid: FStar_Ident.lident = fstar_refl_syntax_lid "C_False"
let ref_C_Int_lid: FStar_Ident.lident = fstar_refl_syntax_lid "C_Int"
let ref_C_String_lid: FStar_Ident.lident = fstar_refl_syntax_lid "C_String"
let ref_C_Unit: FStar_Syntax_Syntax.term = lid_as_data_tm ref_C_Unit_lid
let ref_C_True: FStar_Syntax_Syntax.term = lid_as_data_tm ref_C_True_lid
let ref_C_False: FStar_Syntax_Syntax.term = lid_as_data_tm ref_C_False_lid
let ref_C_Int: FStar_Syntax_Syntax.term = lid_as_data_tm ref_C_Int_lid
let ref_C_String: FStar_Syntax_Syntax.term = lid_as_data_tm ref_C_String_lid
let ref_Pat_Constant_lid: FStar_Ident.lident =
  fstar_refl_syntax_lid "Pat_Constant"
let ref_Pat_Cons_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Pat_Cons"
let ref_Pat_Var_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Pat_Var"
let ref_Pat_Wild_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Pat_Wild"
let ref_Pat_Constant: FStar_Syntax_Syntax.term =
  lid_as_data_tm ref_Pat_Constant_lid
let ref_Pat_Cons: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Pat_Cons_lid
let ref_Pat_Var: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Pat_Var_lid
let ref_Pat_Wild: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Pat_Wild_lid
let ref_Tv_Var_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Var"
let ref_Tv_FVar_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_FVar"
let ref_Tv_App_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_App"
let ref_Tv_Abs_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Abs"
let ref_Tv_Arrow_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Arrow"
let ref_Tv_Type_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Type"
let ref_Tv_Refine_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Refine"
let ref_Tv_Const_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Const"
let ref_Tv_Uvar_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Uvar"
let ref_Tv_Match_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Tv_Match"
let ref_Tv_Unknown_lid: FStar_Ident.lident =
  fstar_refl_syntax_lid "Tv_Unknown"
let ref_Tv_Var: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Var_lid
let ref_Tv_FVar: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_FVar_lid
let ref_Tv_App: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_App_lid
let ref_Tv_Abs: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Abs_lid
let ref_Tv_Arrow: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Arrow_lid
let ref_Tv_Type: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Type_lid
let ref_Tv_Refine: FStar_Syntax_Syntax.term =
  lid_as_data_tm ref_Tv_Refine_lid
let ref_Tv_Const: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Const_lid
let ref_Tv_Uvar: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Uvar_lid
let ref_Tv_Match: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Tv_Match_lid
let ref_Tv_Unknown: FStar_Syntax_Syntax.term =
  lid_as_data_tm ref_Tv_Unknown_lid
let ref_Sg_Inductive_lid: FStar_Ident.lident =
  fstar_refl_syntax_lid "Sg_Inductive"
let ref_Unk_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Unk"
let ref_Ctor_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Ctor"
let ref_Sg_Inductive: FStar_Syntax_Syntax.term =
  lid_as_data_tm ref_Sg_Inductive_lid
let ref_Unk: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Unk_lid
let ref_Ctor: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Ctor_lid
type order =
  | Lt
  | Eq
  | Gt
let uu___is_Lt: order -> Prims.bool =
  fun projectee  -> match projectee with | Lt  -> true | uu____656 -> false
let uu___is_Eq: order -> Prims.bool =
  fun projectee  -> match projectee with | Eq  -> true | uu____661 -> false
let uu___is_Gt: order -> Prims.bool =
  fun projectee  -> match projectee with | Gt  -> true | uu____666 -> false
let ord_Lt_lid: FStar_Ident.lident =
  FStar_Ident.lid_of_path ["FStar"; "Order"; "Lt"] FStar_Range.dummyRange
let ord_Eq_lid: FStar_Ident.lident =
  FStar_Ident.lid_of_path ["FStar"; "Order"; "Eq"] FStar_Range.dummyRange
let ord_Gt_lid: FStar_Ident.lident =
  FStar_Ident.lid_of_path ["FStar"; "Order"; "Gt"] FStar_Range.dummyRange
let ord_Lt: FStar_Syntax_Syntax.term = lid_as_data_tm ord_Lt_lid
let ord_Eq: FStar_Syntax_Syntax.term = lid_as_data_tm ord_Eq_lid
let ord_Gt: FStar_Syntax_Syntax.term = lid_as_data_tm ord_Gt_lid
let fstar_refl_norm_step: FStar_Syntax_Syntax.term =
  mk_refl_syntax_lid_as_term "norm_step"
let ref_Simpl_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Simpl"
let ref_WHNF_lid: FStar_Ident.lident = fstar_refl_syntax_lid "WHNF"
let ref_Primops_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Primops"
let ref_Delta_lid: FStar_Ident.lident = fstar_refl_syntax_lid "Delta"
let ref_Simpl: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Simpl_lid
let ref_WHNF: FStar_Syntax_Syntax.term = lid_as_data_tm ref_WHNF_lid
let ref_Primops: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Primops_lid
let ref_Delta: FStar_Syntax_Syntax.term = lid_as_data_tm ref_Delta_lid
let t_binder: FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax =
  let uu____669 = fstar_refl_types_lid "binder" in
  FStar_All.pipe_left FStar_TypeChecker_Common.tabbrev uu____669
let t_term: FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax =
  let uu____674 = fstar_refl_types_lid "term" in
  FStar_All.pipe_left FStar_TypeChecker_Common.tabbrev uu____674
let t_fv: FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax =
  let uu____679 = fstar_refl_types_lid "fv" in
  FStar_All.pipe_left FStar_TypeChecker_Common.tabbrev uu____679
let t_binders: FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax =
  let uu____684 = fstar_refl_syntax_lid "binders" in
  FStar_All.pipe_left FStar_TypeChecker_Common.tabbrev uu____684
let t_norm_step: FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax =
  let uu____689 = fstar_refl_syntax_lid "norm_step" in
  FStar_All.pipe_left FStar_TypeChecker_Common.tabbrev uu____689