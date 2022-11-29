; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]

define void @matmult([10000 x float]* %a, [10000 x float]* %b, [10000 x float]* %out_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %a) nounwind, !map !14
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %b) nounwind, !map !20
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x float]* %out_r) nounwind, !map !24
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  %out_vec = alloca [100 x float], align 16
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %.preheader ]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %.preheader ]
  %next_mul2 = add i14 %phi_mul1, 100
  %exitcond4 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %i_1 = add i7 %i, 1
  br i1 %exitcond4, label %4, label %.preheader7

.preheader7:                                      ; preds = %.loopexit, %1
  %j = phi i7 [ %j_1, %1 ], [ 0, %.loopexit ]
  %exitcond3 = icmp eq i7 %j, -28
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %j_1 = add i7 %j, 1
  br i1 %exitcond3, label %.preheader6, label %1

; <label>:1                                       ; preds = %.preheader7
  %tmp_1 = zext i7 %j to i64
  %out_vec_addr = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_1
  store float 0.000000e+00, float* %out_vec_addr, align 4
  br label %.preheader7

.preheader6:                                      ; preds = %.preheader5, %.preheader7
  %k = phi i7 [ 0, %.preheader7 ], [ %k_1, %.preheader5 ]
  %phi_mul = phi i14 [ 0, %.preheader7 ], [ %next_mul, %.preheader5 ]
  %next_mul = add i14 %phi_mul, 100
  %exitcond2 = icmp eq i7 %k, -28
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %k_1 = add i7 %k, 1
  br i1 %exitcond2, label %.preheader, label %.preheader5.preheader

.preheader5.preheader:                            ; preds = %.preheader6
  %tmp_3_cast = zext i7 %k to i14
  %tmp_4 = add i14 %phi_mul1, %tmp_3_cast
  %tmp_4_cast = zext i14 %tmp_4 to i64
  %a_addr = getelementptr [10000 x float]* %a, i64 0, i64 %tmp_4_cast
  %a_load = load float* %a_addr, align 4
  br label %.preheader5

.preheader5:                                      ; preds = %2, %.preheader5.preheader
  %j1 = phi i7 [ %j_3, %2 ], [ 0, %.preheader5.preheader ]
  %exitcond1 = icmp eq i7 %j1, -28
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %j_3 = add i7 %j1, 1
  br i1 %exitcond1, label %.preheader6, label %2

; <label>:2                                       ; preds = %.preheader5
  %tmp_8 = zext i7 %j1 to i64
  %tmp_8_cast = zext i7 %j1 to i14
  %tmp_2 = add i14 %phi_mul, %tmp_8_cast
  %tmp_10_cast = zext i14 %tmp_2 to i64
  %b_addr = getelementptr [10000 x float]* %b, i64 0, i64 %tmp_10_cast
  %b_load = load float* %b_addr, align 4
  %tmp_9 = fmul float %a_load, %b_load
  %out_vec_addr_2 = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_8
  %out_vec_load_1 = load float* %out_vec_addr_2, align 4
  %tmp_s = fadd float %out_vec_load_1, %tmp_9
  store float %tmp_s, float* %out_vec_addr_2, align 4
  br label %.preheader5

.preheader:                                       ; preds = %.preheader6, %3
  %j2 = phi i7 [ %j_2, %3 ], [ 0, %.preheader6 ]
  %exitcond = icmp eq i7 %j2, -28
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100) nounwind
  %j_2 = add i7 %j2, 1
  br i1 %exitcond, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %tmp_5 = zext i7 %j2 to i64
  %tmp_5_cast = zext i7 %j2 to i14
  %tmp_7 = add i14 %phi_mul1, %tmp_5_cast
  %tmp_7_cast = zext i14 %tmp_7 to i64
  %out_addr = getelementptr [10000 x float]* %out_r, i64 0, i64 %tmp_7_cast
  %out_vec_addr_1 = getelementptr inbounds [100 x float]* %out_vec, i64 0, i64 %tmp_5
  %out_vec_load = load float* %out_vec_addr_1, align 4
  store float %out_vec_load, float* %out_addr, align 4
  br label %.preheader

; <label>:4                                       ; preds = %.loopexit
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
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
