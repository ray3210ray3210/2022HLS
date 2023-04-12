; ModuleID = 'E:/Xilinx/Vitis/LabB/solution5/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"class.hls::stream<blockvec, 0>" = type { %struct.blockvec }
%struct.blockvec = type { [16 x i32] }
%struct.blockmat = type { [16 x [16 x i32]] }

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_blockmatmul_ir(%"class.hls::stream<blockvec, 0>"* noalias nocapture nonnull dereferenceable(64) %Arows, %"class.hls::stream<blockvec, 0>"* noalias nocapture nonnull dereferenceable(64) %Bcols, %struct.blockmat* noalias nocapture nonnull dereferenceable(1024) %ABpartial, i32 %it) local_unnamed_addr #1 {
entry:
  %Arows_copy = alloca i512, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i512* %Arows_copy, i32 0) ]
  %Bcols_copy = alloca i512, align 512
  call void @llvm.sideeffect() #9 [ "stream_interface"(i512* %Bcols_copy, i32 0) ]
  %ABpartial_copy = alloca [16 x [16 x i32]], align 512
  call fastcc void @copy_in(%"class.hls::stream<blockvec, 0>"* nonnull %Arows, i512* nonnull align 512 %Arows_copy, %"class.hls::stream<blockvec, 0>"* nonnull %Bcols, i512* nonnull align 512 %Bcols_copy, %struct.blockmat* nonnull %ABpartial, [16 x [16 x i32]]* nonnull align 512 %ABpartial_copy)
  call void @apatb_blockmatmul_hw(i512* %Arows_copy, i512* %Bcols_copy, [16 x [16 x i32]]* %ABpartial_copy, i32 %it)
  call void @copy_back(%"class.hls::stream<blockvec, 0>"* %Arows, i512* %Arows_copy, %"class.hls::stream<blockvec, 0>"* %Bcols, i512* %Bcols_copy, %struct.blockmat* %ABpartial, [16 x [16 x i32]]* %ABpartial_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(%"class.hls::stream<blockvec, 0>"* noalias "unpacked"="0", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<blockvec, 0>"* noalias "unpacked"="2", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %struct.blockmat* noalias readonly "unpacked"="4", [16 x [16 x i32]]* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i512* align 512 %1, %"class.hls::stream<blockvec, 0>"* %0)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i512* align 512 %3, %"class.hls::stream<blockvec, 0>"* %2)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat([16 x [16 x i32]]* align 512 %5, %struct.blockmat* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.blockmat([16 x [16 x i32]]* noalias nocapture align 512 "unpacked"="0.0", %struct.blockmat* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.blockmat* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx2 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop3

for.loop3:                                        ; preds = %for.loop3, %for.loop
  %for.loop.idx41 = phi i64 [ 0, %for.loop ], [ %for.loop.idx4.next, %for.loop3 ]
  %dst.addr610 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %0, i32 0, i64 %for.loop.idx2, i64 %for.loop.idx41
  %src.addr711 = getelementptr %struct.blockmat, %struct.blockmat* %1, i32 0, i32 0, i64 %for.loop.idx2, i64 %for.loop.idx41
  %3 = load i32, i32* %src.addr711, align 4
  store i32 %3, i32* %dst.addr610, align 4
  %for.loop.idx4.next = add nuw nsw i64 %for.loop.idx41, 1
  %exitcond = icmp ne i64 %for.loop.idx4.next, 16
  br i1 %exitcond, label %for.loop3, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop3
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond3 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond3, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(%"class.hls::stream<blockvec, 0>"* noalias "unpacked"="0", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<blockvec, 0>"* noalias "unpacked"="2", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %struct.blockmat* noalias "unpacked"="4", [16 x [16 x i32]]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %0, i512* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %2, i512* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* %4, [16 x [16 x i32]]* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* noalias "unpacked"="0", [16 x [16 x i32]]* noalias nocapture readonly align 512 "unpacked"="1.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %struct.blockmat* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx2 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop3

for.loop3:                                        ; preds = %for.loop3, %for.loop
  %for.loop.idx41 = phi i64 [ 0, %for.loop ], [ %for.loop.idx4.next, %for.loop3 ]
  %dst.addr610 = getelementptr %struct.blockmat, %struct.blockmat* %0, i32 0, i32 0, i64 %for.loop.idx2, i64 %for.loop.idx41
  %src.addr711 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* %1, i32 0, i64 %for.loop.idx2, i64 %for.loop.idx41
  %3 = load i32, i32* %src.addr711, align 4
  store i32 %3, i32* %dst.addr610, align 4
  %for.loop.idx4.next = add nuw nsw i64 %for.loop.idx41, 1
  %exitcond = icmp ne i64 %for.loop.idx4.next, 16
  br i1 %exitcond, label %for.loop3, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop3
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond3 = icmp ne i64 %for.loop.idx.next, 16
  br i1 %exitcond3, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>"(i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq i512* %0, null
  %3 = icmp eq %"class.hls::stream<blockvec, 0>"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.14"(i512* nonnull align 512 %0, %"class.hls::stream<blockvec, 0>"* nonnull %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.14"(i512* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed", %"class.hls::stream<blockvec, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca %"class.hls::stream<blockvec, 0>"
  %3 = alloca i512
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast %"class.hls::stream<blockvec, 0>"* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_64(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast %"class.hls::stream<blockvec, 0>"* %2 to i8*
  %7 = bitcast %"class.hls::stream<blockvec, 0>"* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %6, i8* %7)
  %8 = load volatile %"class.hls::stream<blockvec, 0>", %"class.hls::stream<blockvec, 0>"* %2
  %9 = call i512 @"_llvm.fpga.pack.bits.i512.s_class.hls::stream<blockvec, 0>s"(%"class.hls::stream<blockvec, 0>" %8)
  store i512 %9, i512* %3
  %10 = bitcast i512* %3 to i8*
  %11 = bitcast i512* %0 to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal i512 @"_llvm.fpga.pack.bits.i512.s_class.hls::stream<blockvec, 0>s"(%"class.hls::stream<blockvec, 0>" %A) #7 {
  %A.0 = extractvalue %"class.hls::stream<blockvec, 0>" %A, 0
  %A.0.0 = extractvalue %struct.blockvec %A.0, 0
  %A.0.0.0 = extractvalue [16 x i32] %A.0.0, 0
  %1 = zext i32 %A.0.0.0 to i512
  %A.0.0.1 = extractvalue [16 x i32] %A.0.0, 1
  %2 = zext i32 %A.0.0.1 to i512
  %3 = shl i512 %2, 32
  %4 = or i512 %3, %1
  %A.0.0.2 = extractvalue [16 x i32] %A.0.0, 2
  %5 = zext i32 %A.0.0.2 to i512
  %6 = shl i512 %5, 64
  %7 = or i512 %4, %6
  %A.0.0.3 = extractvalue [16 x i32] %A.0.0, 3
  %8 = zext i32 %A.0.0.3 to i512
  %9 = shl i512 %8, 96
  %10 = or i512 %7, %9
  %A.0.0.4 = extractvalue [16 x i32] %A.0.0, 4
  %11 = zext i32 %A.0.0.4 to i512
  %12 = shl i512 %11, 128
  %A.0.0.5 = extractvalue [16 x i32] %A.0.0, 5
  %13 = zext i32 %A.0.0.5 to i512
  %14 = shl i512 %13, 160
  %15 = or i512 %10, %12
  %A.0.0.6 = extractvalue [16 x i32] %A.0.0, 6
  %16 = zext i32 %A.0.0.6 to i512
  %17 = shl i512 %16, 192
  %A.0.0.7 = extractvalue [16 x i32] %A.0.0, 7
  %18 = zext i32 %A.0.0.7 to i512
  %19 = shl i512 %18, 224
  %A.0.0.8 = extractvalue [16 x i32] %A.0.0, 8
  %20 = zext i32 %A.0.0.8 to i512
  %21 = shl i512 %20, 256
  %A.0.0.9 = extractvalue [16 x i32] %A.0.0, 9
  %22 = zext i32 %A.0.0.9 to i512
  %23 = shl i512 %22, 288
  %A.0.0.10 = extractvalue [16 x i32] %A.0.0, 10
  %24 = zext i32 %A.0.0.10 to i512
  %25 = shl i512 %24, 320
  %A.0.0.11 = extractvalue [16 x i32] %A.0.0, 11
  %26 = zext i32 %A.0.0.11 to i512
  %27 = shl i512 %26, 352
  %A.0.0.12 = extractvalue [16 x i32] %A.0.0, 12
  %28 = zext i32 %A.0.0.12 to i512
  %29 = shl i512 %28, 384
  %A.0.0.13 = extractvalue [16 x i32] %A.0.0, 13
  %30 = zext i32 %A.0.0.13 to i512
  %31 = shl i512 %30, 416
  %A.0.0.14 = extractvalue [16 x i32] %A.0.0, 14
  %32 = zext i32 %A.0.0.14 to i512
  %33 = shl i512 %32, 448
  %A.0.0.15 = extractvalue [16 x i32] %A.0.0, 15
  %34 = zext i32 %A.0.0.15 to i512
  %35 = shl i512 %34, 480
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i512 %15, %14
  %.masked2.masked.masked.masked.masked.masked.masked.masked = or i512 %.masked.masked.masked.masked.masked.masked.masked.masked.masked, %17
  %.masked.masked.masked.masked.masked.masked.masked = or i512 %.masked2.masked.masked.masked.masked.masked.masked.masked, %19
  %.masked5.masked.masked.masked.masked.masked = or i512 %.masked.masked.masked.masked.masked.masked.masked, %21
  %.masked.masked.masked.masked.masked = or i512 %.masked5.masked.masked.masked.masked.masked, %23
  %.masked7.masked.masked.masked = or i512 %.masked.masked.masked.masked.masked, %25
  %.masked.masked.masked = or i512 %.masked7.masked.masked.masked, %27
  %.masked9.masked = or i512 %.masked.masked.masked, %29
  %.masked = or i512 %.masked9.masked, %31
  %36 = or i512 %.masked, %33
  %37 = or i512 %36, %35
  ret i512 %37
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* noalias "fpga.caller.interfaces"="layout_transformed", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #5 {
entry:
  %2 = icmp eq %"class.hls::stream<blockvec, 0>"* %0, null
  %3 = icmp eq i512* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  call fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.22"(%"class.hls::stream<blockvec, 0>"* nonnull %0, i512* nonnull align 512 %1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream<blockvec, 0>.22"(%"class.hls::stream<blockvec, 0>"* noalias nocapture "fpga.caller.interfaces"="layout_transformed", i512* noalias nocapture align 512 "fpga.caller.interfaces"="layout_transformed") unnamed_addr #6 {
entry:
  %2 = alloca i512
  %3 = alloca %"class.hls::stream<blockvec, 0>"
  br label %empty

empty:                                            ; preds = %push, %entry
  %4 = bitcast i512* %1 to i8*
  %5 = call i1 @fpga_fifo_not_empty_64(i8* %4)
  br i1 %5, label %push, label %ret

push:                                             ; preds = %empty
  %6 = bitcast i512* %2 to i8*
  %7 = bitcast i512* %1 to i8*
  call void @fpga_fifo_pop_64(i8* %6, i8* %7)
  %8 = load volatile i512, i512* %2
  %9 = call [16 x i32] @"_llvm.fpga.unpack.bits.s_class.hls::stream<blockvec, 0>s.i512"(i512 %8)
  %oldret1 = insertvalue %struct.blockvec undef, [16 x i32] %9, 0
  %oldret = insertvalue %"class.hls::stream<blockvec, 0>" undef, %struct.blockvec %oldret1, 0
  store %"class.hls::stream<blockvec, 0>" %oldret, %"class.hls::stream<blockvec, 0>"* %3
  %10 = bitcast %"class.hls::stream<blockvec, 0>"* %3 to i8*
  %11 = bitcast %"class.hls::stream<blockvec, 0>"* %0 to i8*
  call void @fpga_fifo_push_64(i8* %10, i8* %11)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define internal [16 x i32] @"_llvm.fpga.unpack.bits.s_class.hls::stream<blockvec, 0>s.i512"(i512 %A) #7 {
  %1 = trunc i512 %A to i32
  %.0 = insertvalue [16 x i32] undef, i32 %1, 0
  %2 = lshr i512 %A, 32
  %3 = trunc i512 %2 to i32
  %.1 = insertvalue [16 x i32] %.0, i32 %3, 1
  %4 = lshr i512 %A, 64
  %5 = trunc i512 %4 to i32
  %.2 = insertvalue [16 x i32] %.1, i32 %5, 2
  %6 = lshr i512 %A, 96
  %7 = trunc i512 %6 to i32
  %.3 = insertvalue [16 x i32] %.2, i32 %7, 3
  %8 = lshr i512 %A, 128
  %9 = trunc i512 %8 to i32
  %.4 = insertvalue [16 x i32] %.3, i32 %9, 4
  %10 = lshr i512 %A, 160
  %11 = trunc i512 %10 to i32
  %.5 = insertvalue [16 x i32] %.4, i32 %11, 5
  %12 = lshr i512 %A, 192
  %13 = trunc i512 %12 to i32
  %.6 = insertvalue [16 x i32] %.5, i32 %13, 6
  %14 = lshr i512 %A, 224
  %15 = trunc i512 %14 to i32
  %.7 = insertvalue [16 x i32] %.6, i32 %15, 7
  %16 = lshr i512 %A, 256
  %17 = trunc i512 %16 to i32
  %.8 = insertvalue [16 x i32] %.7, i32 %17, 8
  %18 = lshr i512 %A, 288
  %19 = trunc i512 %18 to i32
  %.9 = insertvalue [16 x i32] %.8, i32 %19, 9
  %20 = lshr i512 %A, 320
  %21 = trunc i512 %20 to i32
  %.10 = insertvalue [16 x i32] %.9, i32 %21, 10
  %22 = lshr i512 %A, 352
  %23 = trunc i512 %22 to i32
  %.11 = insertvalue [16 x i32] %.10, i32 %23, 11
  %24 = lshr i512 %A, 384
  %25 = trunc i512 %24 to i32
  %.12 = insertvalue [16 x i32] %.11, i32 %25, 12
  %26 = lshr i512 %A, 416
  %27 = trunc i512 %26 to i32
  %.13 = insertvalue [16 x i32] %.12, i32 %27, 13
  %28 = lshr i512 %A, 448
  %29 = trunc i512 %28 to i32
  %.14 = insertvalue [16 x i32] %.13, i32 %29, 14
  %30 = lshr i512 %A, 480
  %31 = trunc i512 %30 to i32
  %.15 = insertvalue [16 x i32] %.14, i32 %31, 15
  ret [16 x i32] %.15
}

declare void @apatb_blockmatmul_hw(i512*, i512*, [16 x [16 x i32]]*, i32)

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_back(%"class.hls::stream<blockvec, 0>"* noalias "unpacked"="0", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="1", %"class.hls::stream<blockvec, 0>"* noalias "unpacked"="2", i512* noalias align 512 "fpga.caller.interfaces"="layout_transformed" "unpacked"="3", %struct.blockmat* noalias "unpacked"="4", [16 x [16 x i32]]* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %0, i512* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream<blockvec, 0>.19"(%"class.hls::stream<blockvec, 0>"* %2, i512* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0struct.blockmat.4(%struct.blockmat* %4, [16 x [16 x i32]]* align 512 %5)
  ret void
}

define void @blockmatmul_hw_stub_wrapper(i512*, i512*, [16 x [16 x i32]]*, i32) #8 {
entry:
  %4 = alloca %"class.hls::stream<blockvec, 0>"
  %5 = alloca %"class.hls::stream<blockvec, 0>"
  %6 = alloca %struct.blockmat
  call void @copy_out(%"class.hls::stream<blockvec, 0>"* %4, i512* %0, %"class.hls::stream<blockvec, 0>"* %5, i512* %1, %struct.blockmat* %6, [16 x [16 x i32]]* %2)
  call void @blockmatmul_hw_stub(%"class.hls::stream<blockvec, 0>"* %4, %"class.hls::stream<blockvec, 0>"* %5, %struct.blockmat* %6, i32 %3)
  call void @copy_in(%"class.hls::stream<blockvec, 0>"* %4, i512* %0, %"class.hls::stream<blockvec, 0>"* %5, i512* %1, %struct.blockmat* %6, [16 x [16 x i32]]* %2)
  ret void
}

declare void @blockmatmul_hw_stub(%"class.hls::stream<blockvec, 0>"*, %"class.hls::stream<blockvec, 0>"*, %struct.blockmat*, i32)

declare i1 @fpga_fifo_not_empty_64(i8*)

declare void @fpga_fifo_pop_64(i8*, i8*)

declare void @fpga_fifo_push_64(i8*, i8*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #6 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #7 = { alwaysinline nounwind readnone }
attributes #8 = { "fpga.wrapper.func"="stub" }
attributes #9 = { inaccessiblememonly nounwind "xlx.port.bitwidth"="512" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
