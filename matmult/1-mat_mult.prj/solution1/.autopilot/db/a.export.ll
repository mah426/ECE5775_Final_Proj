; ModuleID = '/home/nrb74/ece5775/ECE5775_Final_Proj/matmult/1-mat_mult.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@matmult_str = internal unnamed_addr constant [8 x i8] c"matmult\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_2\00", align 1
@p_str1 = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_1\00", align 1
@p_str = private unnamed_addr constant [16 x i8] c"LOOP_MAT_MULT_0\00", align 1

define void @matmult([10000 x i32]* %a_V, [10000 x i32]* %b_V, [10000 x i32]* %out_V) {
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %a_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %b_V), !map !46
  call void (...)* @_ssdm_op_SpecBitsMap([10000 x i32]* %out_V), !map !50
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @matmult_str) nounwind
  br label %1

; <label>:1                                       ; preds = %8, %0
  %i = phi i7 [ 0, %0 ], [ %i_1, %8 ]
  %phi_mul1 = phi i14 [ 0, %0 ], [ %next_mul2, %8 ]
  %next_mul2 = add i14 %phi_mul1, 100
  %exitcond1 = icmp eq i7 %i, -28
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %i_1 = add i7 %i, 1
  br i1 %exitcond1, label %9, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str)
  br label %3

; <label>:3                                       ; preds = %7, %2
  %j = phi i7 [ 0, %2 ], [ %j_1, %7 ]
  %exitcond2 = icmp eq i7 %j, -28
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %j_1 = add i7 %j, 1
  br i1 %exitcond2, label %8, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str1) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str1)
  %tmp_2_cast = zext i7 %j to i14
  %tmp_7 = add i14 %phi_mul1, %tmp_2_cast
  %tmp_7_cast = zext i14 %tmp_7 to i64
  %out_V_addr = getelementptr [10000 x i32]* %out_V, i64 0, i64 %tmp_7_cast
  br label %5

; <label>:5                                       ; preds = %6, %4
  %out_V_load = phi i32 [ 0, %4 ], [ %tmp_5, %6 ]
  %k = phi i7 [ 0, %4 ], [ %k_1, %6 ]
  %phi_mul = phi i14 [ 0, %4 ], [ %next_mul, %6 ]
  store i32 %out_V_load, i32* %out_V_addr, align 4
  %exitcond = icmp eq i7 %k, -28
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 100, i64 100, i64 100)
  %k_1 = add i7 %k, 1
  br i1 %exitcond, label %7, label %6

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str2) nounwind
  %tmp_4_cast = zext i7 %k to i14
  %tmp_8 = add i14 %phi_mul1, %tmp_4_cast
  %tmp_8_cast = zext i14 %tmp_8 to i64
  %a_V_addr = getelementptr [10000 x i32]* %a_V, i64 0, i64 %tmp_8_cast
  %next_mul = add i14 %phi_mul, 100
  %tmp_s = add i14 %phi_mul, %tmp_2_cast
  %tmp_10_cast = zext i14 %tmp_s to i64
  %b_V_addr = getelementptr [10000 x i32]* %b_V, i64 0, i64 %tmp_10_cast
  %a_V_load = load i32* %a_V_addr, align 4
  %b_V_load = load i32* %b_V_addr, align 4
  %p_s = mul i32 %b_V_load, %a_V_load
  %tmp_5 = add i32 %p_s, %out_V_load
  br label %5

; <label>:7                                       ; preds = %5
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str1, i32 %tmp_3)
  br label %3

; <label>:8                                       ; preds = %3
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str, i32 %tmp_1)
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

!opencl.kernels = !{!0, !7, !13, !19, !19, !19, !25, !25, !28, !28, !19, !19, !31}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!33}

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
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !12, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!33 = metadata !{metadata !34, [1 x i32]* @llvm_global_ctors_0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"llvm.global_ctors.0", metadata !38, metadata !"", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"a.V", metadata !44, metadata !"uint32", i32 0, i32 31}
!44 = metadata !{metadata !45, metadata !45}
!45 = metadata !{i32 0, i32 99, i32 1}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"b.V", metadata !44, metadata !"uint32", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"out.V", metadata !44, metadata !"uint32", i32 0, i32 31}
