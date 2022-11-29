; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_2\00", align 1
@p_str1 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_1\00", align 1
@p_str = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_0\00", align 1

define void @matmult([10000 x float]* %a, [10000 x float]* %b, [10000 x float]* %out_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %b) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %out_r) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  br label %1

; <label>:1                                       ; preds = %8, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %8 ]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %8 ]
  %next_mul2 = add i14 %phi_mul1, 100
  %exitcond2 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %i, 1
  br i1 %exitcond2, label %9, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %7, %2
  %j = phi i7 [ 0, %2 ], [ %j_1, %7 ]
  %exitcond1 = icmp eq i7 %j, -28
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %j_1 = add i7 %j, 1
  br i1 %exitcond1, label %8, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1) nounwind
  %tmp_2_cast = zext i7 %j to i14
  %tmp_9 = add i14 %phi_mul1, %tmp_2_cast
  %tmp_9_cast = zext i14 %tmp_9 to i64
  %out_addr = getelementptr [10000 x float]* %out_r, i64 0, i64 %tmp_9_cast
  br label %5

; <label>:5                                       ; preds = %6, %4
  %storemerge = phi float [ 0.000000e+00, %4 ], [ %tmp_7, %6 ]
  %k = phi i7 [ 0, %4 ], [ %k_1, %6 ]
  %phi_mul = phi i14 [ 0, %4 ], [ %next_mul, %6 ]
  store float %storemerge, float* %out_addr, align 4
  %exitcond = icmp eq i7 %k, -28
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %k_1 = add i7 %k, 1
  br i1 %exitcond, label %7, label %6

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind
  %tmp_5_cast = zext i7 %k to i14
  %tmp_s = add i14 %phi_mul1, %tmp_5_cast
  %tmp_10_cast = zext i14 %tmp_s to i64
  %a_addr = getelementptr [10000 x float]* %a, i64 0, i64 %tmp_10_cast
  %next_mul = add i14 %phi_mul, 100
  %tmp_2 = add i14 %phi_mul, %tmp_2_cast
  %tmp_12_cast = zext i14 %tmp_2 to i64
  %b_addr = getelementptr [10000 x float]* %b, i64 0, i64 %tmp_12_cast
  %a_load = load float* %a_addr, align 4
  %b_load = load float* %b_addr, align 4
  %tmp_6 = fmul float %a_load, %b_load
  %tmp_7 = fadd float %storemerge, %tmp_6
  br label %5

; <label>:7                                       ; preds = %5
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_4) nounwind
  br label %3

; <label>:8                                       ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_1) nounwind
  br label %1

; <label>:9                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

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
