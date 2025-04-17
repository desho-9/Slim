; ModuleID = './samples/test1.ll'
source_filename = "./samples/test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  call void @llvm.dbg.declare(metadata i32* undef, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* undef, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 1, metadata !22, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 2, metadata !23, metadata !DIExpression()), !dbg !21
  %add = add nsw i32 1, 2, !dbg !24
  call void @llvm.dbg.value(metadata i32 %add, metadata !22, metadata !DIExpression()), !dbg !21
  ret i32 %add, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6-2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "samples/test1.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "99ec7171d3a25983d8add92418fef689")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Debian clang version 14.0.6-2"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 2, type: !12, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "./samples/test1.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "99ec7171d3a25983d8add92418fef689")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "c", scope: !10, file: !11, line: 3, type: !14)
!17 = !DILocation(line: 3, column: 9, scope: !10)
!18 = !DILocalVariable(name: "d", scope: !10, file: !11, line: 3, type: !14)
!19 = !DILocation(line: 3, column: 11, scope: !10)
!20 = !DILocalVariable(name: "e", scope: !10, file: !11, line: 4, type: !14)
!21 = !DILocation(line: 0, scope: !10)
!22 = !DILocalVariable(name: "a", scope: !10, file: !11, line: 3, type: !14)
!23 = !DILocalVariable(name: "b", scope: !10, file: !11, line: 3, type: !14)
!24 = !DILocation(line: 7, column: 7, scope: !10)
!25 = !DILocation(line: 21, column: 1, scope: !10)
