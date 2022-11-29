; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00" ; [#uses=1 type=[8 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]

; [#uses=0]
define void @matmult([10000 x float]* %a, [10000 x float]* %b, [10000 x float]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %b) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %out) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  %out_vec = alloca [100 x float], align 16       ; [#uses=3 type=[100 x float]*]
  call void @llvm.dbg.declare(metadata !{[100 x float]* %out_vec}, metadata !28), !dbg !43 ; [debug line = 28:15] [debug variable = out_vec]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %a}, i64 0, metadata !44), !dbg !47 ; [debug line = 26:20] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %b}, i64 0, metadata !48), !dbg !49 ; [debug line = 26:38] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %out}, i64 0, metadata !50), !dbg !51 ; [debug line = 26:57] [debug variable = out]
  br label %.loopexit, !dbg !52                   ; [debug line = 27:19]

.loopexit:                                        ; preds = %.preheader, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %.preheader ]    ; [#uses=2 type=i7]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %.preheader ] ; [#uses=3 type=i14]
  %next_mul2 = add i14 %phi_mul1, 100             ; [#uses=1 type=i14]
  %exitcond4 = icmp eq i7 %i, -28, !dbg !52       ; [#uses=1 type=i1] [debug line = 27:19]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !53                   ; [#uses=1 type=i7] [debug line = 27:30]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !54), !dbg !53 ; [debug line = 27:30] [debug variable = i]
  br i1 %exitcond4, label %4, label %.preheader7, !dbg !52 ; [debug line = 27:19]

.preheader7:                                      ; preds = %1, %.loopexit
  %j = phi i7 [ %j_1, %1 ], [ 0, %.loopexit ]     ; [#uses=3 type=i7]
  %exitcond3 = icmp eq i7 %j, -28, !dbg !56       ; [#uses=1 type=i1] [debug line = 29:23]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_1 = add i7 %j, 1, !dbg !58                   ; [#uses=1 type=i7] [debug line = 29:34]
  br i1 %exitcond3, label %.preheader6, label %1, !dbg !56 ; [debug line = 29:23]

; <label>:1                                       ; preds = %.preheader7
  %tmp_1 = zext i7 %j to i64, !dbg !59            ; [#uses=1 type=i64] [debug line = 30:13]
  %out_vec_addr = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_1, !dbg !59 ; [#uses=1 type=float*] [debug line = 30:13]
  store float 0.000000e+00, float* %out_vec_addr, align 4, !dbg !59 ; [debug line = 30:13]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !61), !dbg !58 ; [debug line = 29:34] [debug variable = j]
  br label %.preheader7, !dbg !58                 ; [debug line = 29:34]

.preheader6:                                      ; preds = %.preheader5, %.preheader7
  %k = phi i7 [ 0, %.preheader7 ], [ %k_1, %.preheader5 ] ; [#uses=3 type=i7]
  %phi_mul = phi i14 [ 0, %.preheader7 ], [ %next_mul, %.preheader5 ] ; [#uses=2 type=i14]
  %next_mul = add i14 %phi_mul, 100               ; [#uses=1 type=i14]
  %exitcond2 = icmp eq i7 %k, -28, !dbg !62       ; [#uses=1 type=i1] [debug line = 32:23]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %k_1 = add i7 %k, 1, !dbg !64                   ; [#uses=1 type=i7] [debug line = 32:34]
  call void @llvm.dbg.value(metadata !{i7 %k_1}, i64 0, metadata !65), !dbg !64 ; [debug line = 32:34] [debug variable = k]
  br i1 %exitcond2, label %.preheader, label %.preheader5.preheader, !dbg !62 ; [debug line = 32:23]

.preheader5.preheader:                            ; preds = %.preheader6
  %tmp_3_cast = zext i7 %k to i14, !dbg !66       ; [#uses=1 type=i14] [debug line = 34:17]
  %tmp_4 = add i14 %phi_mul1, %tmp_3_cast, !dbg !66 ; [#uses=1 type=i14] [debug line = 34:17]
  %tmp_4_cast = zext i14 %tmp_4 to i64, !dbg !66  ; [#uses=1 type=i64] [debug line = 34:17]
  %a_addr = getelementptr [10000 x float]* %a, i64 0, i64 %tmp_4_cast, !dbg !66 ; [#uses=1 type=float*] [debug line = 34:17]
  %a_load = load float* %a_addr, align 4, !dbg !66 ; [#uses=1 type=float] [debug line = 34:17]
  br label %.preheader5, !dbg !70                 ; [debug line = 33:27]

.preheader5:                                      ; preds = %2, %.preheader5.preheader
  %j1 = phi i7 [ %j_3, %2 ], [ 0, %.preheader5.preheader ] ; [#uses=4 type=i7]
  %exitcond1 = icmp eq i7 %j1, -28, !dbg !70      ; [#uses=1 type=i1] [debug line = 33:27]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_3 = add i7 %j1, 1, !dbg !71                  ; [#uses=1 type=i7] [debug line = 33:38]
  br i1 %exitcond1, label %.preheader6, label %2, !dbg !70 ; [debug line = 33:27]

; <label>:2                                       ; preds = %.preheader5
  %tmp_8 = zext i7 %j1 to i64, !dbg !66           ; [#uses=1 type=i64] [debug line = 34:17]
  %tmp_8_cast = zext i7 %j1 to i14, !dbg !66      ; [#uses=1 type=i14] [debug line = 34:17]
  %tmp_2 = add i14 %phi_mul, %tmp_8_cast, !dbg !66 ; [#uses=1 type=i14] [debug line = 34:17]
  %tmp_10_cast = zext i14 %tmp_2 to i64, !dbg !66 ; [#uses=1 type=i64] [debug line = 34:17]
  %b_addr = getelementptr [10000 x float]* %b, i64 0, i64 %tmp_10_cast, !dbg !66 ; [#uses=1 type=float*] [debug line = 34:17]
  %b_load = load float* %b_addr, align 4, !dbg !66 ; [#uses=1 type=float] [debug line = 34:17]
  %tmp_9 = fmul float %a_load, %b_load, !dbg !66  ; [#uses=1 type=float] [debug line = 34:17]
  %out_vec_addr_2 = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_8, !dbg !66 ; [#uses=2 type=float*] [debug line = 34:17]
  %out_vec_load_1 = load float* %out_vec_addr_2, align 4, !dbg !66 ; [#uses=1 type=float] [debug line = 34:17]
  %tmp_s = fadd float %out_vec_load_1, %tmp_9, !dbg !66 ; [#uses=1 type=float] [debug line = 34:17]
  store float %tmp_s, float* %out_vec_addr_2, align 4, !dbg !66 ; [debug line = 34:17]
  call void @llvm.dbg.value(metadata !{i7 %j_3}, i64 0, metadata !72), !dbg !71 ; [debug line = 33:38] [debug variable = j]
  br label %.preheader5, !dbg !71                 ; [debug line = 33:38]

.preheader:                                       ; preds = %3, %.preheader6
  %j2 = phi i7 [ %j_2, %3 ], [ 0, %.preheader6 ]  ; [#uses=4 type=i7]
  %exitcond = icmp eq i7 %j2, -28, !dbg !73       ; [#uses=1 type=i1] [debug line = 37:23]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_2 = add i7 %j2, 1, !dbg !75                  ; [#uses=1 type=i7] [debug line = 37:34]
  br i1 %exitcond, label %.loopexit, label %3, !dbg !73 ; [debug line = 37:23]

; <label>:3                                       ; preds = %.preheader
  %tmp_5 = zext i7 %j2 to i64, !dbg !76           ; [#uses=1 type=i64] [debug line = 38:13]
  %tmp_5_cast = zext i7 %j2 to i14, !dbg !76      ; [#uses=1 type=i14] [debug line = 38:13]
  %tmp_7 = add i14 %phi_mul1, %tmp_5_cast, !dbg !76 ; [#uses=1 type=i14] [debug line = 38:13]
  %tmp_7_cast = zext i14 %tmp_7 to i64, !dbg !76  ; [#uses=1 type=i64] [debug line = 38:13]
  %out_addr = getelementptr [10000 x float]* %out, i64 0, i64 %tmp_7_cast, !dbg !76 ; [#uses=1 type=float*] [debug line = 38:13]
  %out_vec_addr_1 = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_5, !dbg !76 ; [#uses=1 type=float*] [debug line = 38:13]
  %out_vec_load = load float* %out_vec_addr_1, align 4, !dbg !76 ; [#uses=1 type=float] [debug line = 38:13]
  store float %out_vec_load, float* %out_addr, align 4, !dbg !76 ; [debug line = 38:13]
  call void @llvm.dbg.value(metadata !{i7 %j_2}, i64 0, metadata !78), !dbg !75 ; [debug line = 37:34] [debug variable = j]
  br label %.preheader, !dbg !75                  ; [debug line = 37:34]

; <label>:4                                       ; preds = %.loopexit
  ret void, !dbg !79                              ; [debug line = 41:1]
}

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=5]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!7}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float [100]*", metadata !"float [100]*", metadata !"float [100]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !"", i32 0, i32 31}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"a", metadata !18, metadata !"float", i32 0, i32 31}
!18 = metadata !{metadata !19, metadata !19}
!19 = metadata !{i32 0, i32 99, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"b", metadata !18, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 31, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"out", metadata !18, metadata !"float", i32 0, i32 31}
!28 = metadata !{i32 786688, metadata !29, metadata !"out_vec", metadata !33, i32 28, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 786443, metadata !30, i32 27, i32 35, metadata !33, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 786443, metadata !31, i32 27, i32 5, metadata !33, i32 1} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 786443, metadata !32, i32 26, i32 71, metadata !33, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 786478, i32 0, metadata !33, metadata !"matmult", metadata !"matmult", metadata !"_Z7matmultPA100_fS0_S0_", metadata !33, i32 26, metadata !34, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !41, i32 26} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786473, metadata !"matmult.cpp", metadata !"/home/nrb74/ece5775/ECE5775_Final_Proj/matmult", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{null, metadata !36, metadata !36, metadata !36}
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ]
!37 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !38, metadata !39, i32 0, i32 0} ; [ DW_TAG_array_type ]
!38 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!43 = metadata !{i32 28, i32 15, metadata !29, null}
!44 = metadata !{i32 786689, metadata !32, metadata !"a", null, i32 26, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !38, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !40, metadata !40}
!47 = metadata !{i32 26, i32 20, metadata !32, null}
!48 = metadata !{i32 786689, metadata !32, metadata !"b", null, i32 26, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 26, i32 38, metadata !32, null}
!50 = metadata !{i32 786689, metadata !32, metadata !"out", null, i32 26, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!51 = metadata !{i32 26, i32 57, metadata !32, null}
!52 = metadata !{i32 27, i32 19, metadata !30, null}
!53 = metadata !{i32 27, i32 30, metadata !30, null}
!54 = metadata !{i32 786688, metadata !30, metadata !"i", metadata !33, i32 27, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!56 = metadata !{i32 29, i32 23, metadata !57, null}
!57 = metadata !{i32 786443, metadata !29, i32 29, i32 9, metadata !33, i32 3} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 29, i32 34, metadata !57, null}
!59 = metadata !{i32 30, i32 13, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 29, i32 39, metadata !33, i32 4} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 786688, metadata !57, metadata !"j", metadata !33, i32 29, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!62 = metadata !{i32 32, i32 23, metadata !63, null}
!63 = metadata !{i32 786443, metadata !29, i32 32, i32 9, metadata !33, i32 5} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 32, i32 34, metadata !63, null}
!65 = metadata !{i32 786688, metadata !63, metadata !"k", metadata !33, i32 32, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 34, i32 17, metadata !67, null}
!67 = metadata !{i32 786443, metadata !68, i32 33, i32 43, metadata !33, i32 8} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 786443, metadata !69, i32 33, i32 13, metadata !33, i32 7} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !63, i32 32, i32 39, metadata !33, i32 6} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 33, i32 27, metadata !68, null}
!71 = metadata !{i32 33, i32 38, metadata !68, null}
!72 = metadata !{i32 786688, metadata !68, metadata !"j", metadata !33, i32 33, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 37, i32 23, metadata !74, null}
!74 = metadata !{i32 786443, metadata !29, i32 37, i32 9, metadata !33, i32 9} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 37, i32 34, metadata !74, null}
!76 = metadata !{i32 38, i32 13, metadata !77, null}
!77 = metadata !{i32 786443, metadata !74, i32 37, i32 39, metadata !33, i32 10} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786688, metadata !74, metadata !"j", metadata !33, i32 37, metadata !55, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 41, i32 1, metadata !31, null}
