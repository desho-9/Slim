; ModuleID = 'tests/test4.ll'
source_filename = "test4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@u = dso_local global i32 0, align 4
@y = dso_local global ptr null, align 8
@x = dso_local global ptr null, align 8
@v = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  store ptr @u, ptr @y, align 8
  %2 = call noalias ptr @malloc(i64 noundef 4) #2
  store ptr %2, ptr @x, align 8
  %3 = load ptr, ptr @y, align 8
  %4 = icmp ugt ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call noalias ptr @malloc(i64 noundef 4) #2
  store ptr %6, ptr @x, align 8
  br label %9

7:                                                ; preds = %0
  %8 = call noalias ptr @malloc(i64 noundef 1) #2
  store ptr %8, ptr @x, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = load ptr, ptr @x, align 8
  %11 = load i32, ptr %10, align 4
  ret i32 %11
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Debian clang version 16.0.6 (27+b1)"}
