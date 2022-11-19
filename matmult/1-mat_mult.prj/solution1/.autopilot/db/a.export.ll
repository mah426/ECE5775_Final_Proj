; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]

define void @matmult([10000 x i32]* %a_V, [10000 x i32]* %b_V, [10000 x i32]* %out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %a_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %b_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %out_V), !map !45
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader22, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %.preheader22 ]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %.preheader22 ]
  %next_mul2 = add i14 %phi_mul1, 100
  %exitcond1 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %i_1 = add i7 %i, 1
  br i1 %exitcond1, label %2, label %.preheader22

.preheader22:                                     ; preds = %.preheader, %.loopexit
  %j = phi i7 [ 0, %.loopexit ], [ %j_1, %.preheader ]
  %exitcond2 = icmp eq i7 %j, -28
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %j_1 = add i7 %j, 1
  br i1 %exitcond2, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader22
  %tmp_2_cast = zext i7 %j to i14
  %tmp_3 = add i14 %phi_mul1, %tmp_2_cast
  %tmp_3_cast = zext i14 %tmp_3 to i64
  %out_V_addr = getelementptr [10000 x i32]* %out_V, i64 0, i64 %tmp_3_cast
  br label %.preheader

.preheader:                                       ; preds = %1, %.preheader.preheader
  %k = phi i7 [ %k_1, %1 ], [ 0, %.preheader.preheader ]
  %phi_mul = phi i14 [ %next_mul, %1 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i7 %k, -28
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %k_1 = add i7 %k, 1
  br i1 %exitcond, label %.preheader22, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_4_cast = zext i7 %k to i14
  %tmp_6 = add i14 %phi_mul1, %tmp_4_cast
  %tmp_6_cast = zext i14 %tmp_6 to i64
  %a_V_addr = getelementptr [10000 x i32]* %a_V, i64 0, i64 %tmp_6_cast
  %next_mul = add i14 %phi_mul, 100
  %tmp_8 = add i14 %phi_mul, %tmp_2_cast
  %tmp_8_cast = zext i14 %tmp_8 to i64
  %b_V_addr = getelementptr [10000 x i32]* %b_V, i64 0, i64 %tmp_8_cast
  %a_V_load = load i32* %a_V_addr, align 4
  %b_V_load = load i32* %b_V_addr, align 4
  %p_s = mul i32 %b_V_load, %a_V_load
  %out_V_load = load i32* %out_V_addr, align 4
  %tmp_5 = add i32 %p_s, %out_V_load
  store i32 %tmp_5, i32* %out_V_addr, align 4
  br label %.preheader

; <label>:2                                       ; preds = %.loopexit
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

!opencl.kernels = !{!0, !7, !13, !19, !19, !19, !25, !25}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"bit32_t [100]*", metadata !"bit32_t [100]*", metadata !"bit32_t [100]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, false> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{metadata !29, [1 x i32]* @llvm_global_ctors_0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"llvm.global_ctors.0", metadata !33, metadata !"", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 1}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"a.V", metadata !39, metadata !"uint32", i32 0, i32 31}
!39 = metadata !{metadata !40, metadata !40}
!40 = metadata !{i32 0, i32 99, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"b.V", metadata !39, metadata !"uint32", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"out.V", metadata !39, metadata !"uint32", i32 0, i32 31}
