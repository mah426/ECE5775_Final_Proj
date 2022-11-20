; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00" ; [#uses=1 type=[8 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@p_str2 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@p_str1 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_1\00", align 1 ; [#uses=3 type=[16 x i8]*]
@p_str = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_0\00", align 1 ; [#uses=3 type=[16 x i8]*]

; [#uses=0]
define void @matmult([10000 x float]* %a, [10000 x float]* %b, [10000 x float]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %b) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %out) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  call void @llvm.dbg.value(metadata !{[10000 x float]* %a}, i64 0, metadata !28), !dbg !42 ; [debug line = 15:20] [debug variable = a]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %b}, i64 0, metadata !43), !dbg !44 ; [debug line = 15:38] [debug variable = b]
  call void @llvm.dbg.value(metadata !{[10000 x float]* %out}, i64 0, metadata !45), !dbg !46 ; [debug line = 15:57] [debug variable = out]
  br label %1, !dbg !47                           ; [debug line = 16:35]

; <label>:1                                       ; preds = %8, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %8 ]             ; [#uses=2 type=i7]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %8 ] ; [#uses=3 type=i14]
  %next_mul2 = add i14 %phi_mul1, 100             ; [#uses=1 type=i14]
  %exitcond2 = icmp eq i7 %i, -28, !dbg !47       ; [#uses=1 type=i1] [debug line = 16:35]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %i_1 = add i7 %i, 1, !dbg !50                   ; [#uses=1 type=i7] [debug line = 16:46]
  br i1 %exitcond2, label %9, label %2, !dbg !47  ; [debug line = 16:35]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind, !dbg !51 ; [debug line = 16:52]
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind, !dbg !51 ; [#uses=1 type=i32] [debug line = 16:52]
  br label %3, !dbg !53                           ; [debug line = 17:40]

; <label>:3                                       ; preds = %7, %2
  %j = phi i7 [ 0, %2 ], [ %j_1, %7 ]             ; [#uses=3 type=i7]
  %exitcond1 = icmp eq i7 %j, -28, !dbg !53       ; [#uses=1 type=i1] [debug line = 17:40]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %j_1 = add i7 %j, 1, !dbg !55                   ; [#uses=1 type=i7] [debug line = 17:51]
  br i1 %exitcond1, label %8, label %4, !dbg !53  ; [debug line = 17:40]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind, !dbg !56 ; [debug line = 17:57]
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1) nounwind, !dbg !56 ; [#uses=1 type=i32] [debug line = 17:57]
  %tmp_2_cast = zext i7 %j to i14, !dbg !58       ; [#uses=2 type=i14] [debug line = 18:13]
  %tmp_9 = add i14 %phi_mul1, %tmp_2_cast, !dbg !58 ; [#uses=1 type=i14] [debug line = 18:13]
  %tmp_9_cast = zext i14 %tmp_9 to i64, !dbg !58  ; [#uses=1 type=i64] [debug line = 18:13]
  %out_addr = getelementptr [10000 x float]* %out, i64 0, i64 %tmp_9_cast, !dbg !58 ; [#uses=1 type=float*] [debug line = 18:13]
  br label %5, !dbg !59                           ; [debug line = 19:44]

; <label>:5                                       ; preds = %6, %4
  %storemerge = phi float [ 0.000000e+00, %4 ], [ %tmp_7, %6 ] ; [#uses=2 type=float]
  %k = phi i7 [ 0, %4 ], [ %k_1, %6 ]             ; [#uses=3 type=i7]
  %phi_mul = phi i14 [ 0, %4 ], [ %next_mul, %6 ] ; [#uses=2 type=i14]
  store float %storemerge, float* %out_addr, align 4, !dbg !61 ; [debug line = 20:17]
  %exitcond = icmp eq i7 %k, -28, !dbg !59        ; [#uses=1 type=i1] [debug line = 19:44]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind ; [#uses=0 type=i32]
  %k_1 = add i7 %k, 1, !dbg !63                   ; [#uses=1 type=i7] [debug line = 19:55]
  br i1 %exitcond, label %7, label %6, !dbg !59   ; [debug line = 19:44]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind, !dbg !64 ; [debug line = 19:61]
  %tmp_5_cast = zext i7 %k to i14, !dbg !61       ; [#uses=1 type=i14] [debug line = 20:17]
  %tmp_s = add i14 %phi_mul1, %tmp_5_cast, !dbg !61 ; [#uses=1 type=i14] [debug line = 20:17]
  %tmp_10_cast = zext i14 %tmp_s to i64, !dbg !61 ; [#uses=1 type=i64] [debug line = 20:17]
  %a_addr = getelementptr [10000 x float]* %a, i64 0, i64 %tmp_10_cast, !dbg !61 ; [#uses=1 type=float*] [debug line = 20:17]
  %next_mul = add i14 %phi_mul, 100               ; [#uses=1 type=i14]
  %tmp_2 = add i14 %phi_mul, %tmp_2_cast, !dbg !61 ; [#uses=1 type=i14] [debug line = 20:17]
  %tmp_12_cast = zext i14 %tmp_2 to i64, !dbg !61 ; [#uses=1 type=i64] [debug line = 20:17]
  %b_addr = getelementptr [10000 x float]* %b, i64 0, i64 %tmp_12_cast, !dbg !61 ; [#uses=1 type=float*] [debug line = 20:17]
  %a_load = load float* %a_addr, align 4, !dbg !61 ; [#uses=1 type=float] [debug line = 20:17]
  %b_load = load float* %b_addr, align 4, !dbg !61 ; [#uses=1 type=float] [debug line = 20:17]
  %tmp_6 = fmul float %a_load, %b_load, !dbg !61  ; [#uses=1 type=float] [debug line = 20:17]
  %tmp_7 = fadd float %storemerge, %tmp_6, !dbg !61 ; [#uses=1 type=float] [debug line = 20:17]
  call void @llvm.dbg.value(metadata !{i7 %k_1}, i64 0, metadata !65), !dbg !63 ; [debug line = 19:55] [debug variable = k]
  br label %5, !dbg !63                           ; [debug line = 19:55]

; <label>:7                                       ; preds = %5
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_4) nounwind, !dbg !67 ; [#uses=0 type=i32] [debug line = 22:9]
  call void @llvm.dbg.value(metadata !{i7 %j_1}, i64 0, metadata !68), !dbg !55 ; [debug line = 17:51] [debug variable = j]
  br label %3, !dbg !55                           ; [debug line = 17:51]

; <label>:8                                       ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_1) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 23:5]
  call void @llvm.dbg.value(metadata !{i7 %i_1}, i64 0, metadata !70), !dbg !50 ; [debug line = 16:46] [debug variable = i]
  br label %1, !dbg !50                           ; [debug line = 16:46]

; <label>:9                                       ; preds = %1
  ret void, !dbg !71                              ; [debug line = 24:1]
}

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
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
!28 = metadata !{i32 786689, metadata !29, metadata !"a", null, i32 15, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!29 = metadata !{i32 786478, i32 0, metadata !30, metadata !"matmult", metadata !"matmult", metadata !"_Z7matmultPA100_fS0_S0_", metadata !30, i32 15, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !38, i32 15} ; [ DW_TAG_subprogram ]
!30 = metadata !{i32 786473, metadata !"matmult.cpp", metadata !"/home/nrb74/ece5775/ECE5775_Final_Proj/matmult", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !33, metadata !33, metadata !33}
!33 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 3200, i64 32, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 99}       ; [ DW_TAG_subrange_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 320000, i64 32, i32 0, i32 0, metadata !35, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !37, metadata !37}
!42 = metadata !{i32 15, i32 20, metadata !29, null}
!43 = metadata !{i32 786689, metadata !29, metadata !"b", null, i32 15, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 15, i32 38, metadata !29, null}
!45 = metadata !{i32 786689, metadata !29, metadata !"out", null, i32 15, metadata !40, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!46 = metadata !{i32 15, i32 57, metadata !29, null}
!47 = metadata !{i32 16, i32 35, metadata !48, null}
!48 = metadata !{i32 786443, metadata !49, i32 16, i32 21, metadata !30, i32 1} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 786443, metadata !29, i32 15, i32 71, metadata !30, i32 0} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 16, i32 46, metadata !48, null}
!51 = metadata !{i32 16, i32 52, metadata !52, null}
!52 = metadata !{i32 786443, metadata !48, i32 16, i32 51, metadata !30, i32 2} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 17, i32 40, metadata !54, null}
!54 = metadata !{i32 786443, metadata !52, i32 17, i32 26, metadata !30, i32 3} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 17, i32 51, metadata !54, null}
!56 = metadata !{i32 17, i32 57, metadata !57, null}
!57 = metadata !{i32 786443, metadata !54, i32 17, i32 56, metadata !30, i32 4} ; [ DW_TAG_lexical_block ]
!58 = metadata !{i32 18, i32 13, metadata !57, null}
!59 = metadata !{i32 19, i32 44, metadata !60, null}
!60 = metadata !{i32 786443, metadata !57, i32 19, i32 30, metadata !30, i32 5} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 20, i32 17, metadata !62, null}
!62 = metadata !{i32 786443, metadata !60, i32 19, i32 60, metadata !30, i32 6} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 19, i32 55, metadata !60, null}
!64 = metadata !{i32 19, i32 61, metadata !62, null}
!65 = metadata !{i32 786688, metadata !60, metadata !"k", metadata !30, i32 19, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 22, i32 9, metadata !57, null}
!68 = metadata !{i32 786688, metadata !54, metadata !"j", metadata !30, i32 17, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 23, i32 5, metadata !52, null}
!70 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !30, i32 16, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 24, i32 1, metadata !49, null}
