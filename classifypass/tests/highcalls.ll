; ModuleID = './samples/highcalls.c'
source_filename = "./samples/highcalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@func_ptrs = dso_local global [50 x void (...)*] [void (...)* bitcast (void ()* @func_0 to void (...)*), void (...)* bitcast (void ()* @func_1 to void (...)*), void (...)* bitcast (void ()* @func_2 to void (...)*), void (...)* bitcast (void ()* @func_3 to void (...)*), void (...)* bitcast (void ()* @func_4 to void (...)*), void (...)* bitcast (void ()* @func_5 to void (...)*), void (...)* bitcast (void ()* @func_6 to void (...)*), void (...)* bitcast (void ()* @func_7 to void (...)*), void (...)* bitcast (void ()* @func_8 to void (...)*), void (...)* bitcast (void ()* @func_9 to void (...)*), void (...)* bitcast (void ()* @func_10 to void (...)*), void (...)* bitcast (void ()* @func_11 to void (...)*), void (...)* bitcast (void ()* @func_12 to void (...)*), void (...)* bitcast (void ()* @func_13 to void (...)*), void (...)* bitcast (void ()* @func_14 to void (...)*), void (...)* bitcast (void ()* @func_15 to void (...)*), void (...)* bitcast (void ()* @func_16 to void (...)*), void (...)* bitcast (void ()* @func_17 to void (...)*), void (...)* bitcast (void ()* @func_18 to void (...)*), void (...)* bitcast (void ()* @func_19 to void (...)*), void (...)* bitcast (void ()* @func_20 to void (...)*), void (...)* bitcast (void ()* @func_21 to void (...)*), void (...)* bitcast (void ()* @func_22 to void (...)*), void (...)* bitcast (void ()* @func_23 to void (...)*), void (...)* bitcast (void ()* @func_24 to void (...)*), void (...)* bitcast (void ()* @func_25 to void (...)*), void (...)* bitcast (void ()* @func_26 to void (...)*), void (...)* bitcast (void ()* @func_27 to void (...)*), void (...)* bitcast (void ()* @func_28 to void (...)*), void (...)* bitcast (void ()* @func_29 to void (...)*), void (...)* bitcast (void ()* @func_30 to void (...)*), void (...)* bitcast (void ()* @func_31 to void (...)*), void (...)* bitcast (void ()* @func_32 to void (...)*), void (...)* bitcast (void ()* @func_33 to void (...)*), void (...)* bitcast (void ()* @func_34 to void (...)*), void (...)* bitcast (void ()* @func_35 to void (...)*), void (...)* bitcast (void ()* @func_36 to void (...)*), void (...)* bitcast (void ()* @func_37 to void (...)*), void (...)* bitcast (void ()* @func_38 to void (...)*), void (...)* bitcast (void ()* @func_39 to void (...)*), void (...)* bitcast (void ()* @func_40 to void (...)*), void (...)* bitcast (void ()* @func_41 to void (...)*), void (...)* bitcast (void ()* @func_42 to void (...)*), void (...)* bitcast (void ()* @func_43 to void (...)*), void (...)* bitcast (void ()* @func_44 to void (...)*), void (...)* bitcast (void ()* @func_45 to void (...)*), void (...)* bitcast (void ()* @func_46 to void (...)*), void (...)* bitcast (void ()* @func_47 to void (...)*), void (...)* bitcast (void ()* @func_48 to void (...)*), void (...)* bitcast (void ()* @func_49 to void (...)*)], align 16, !dbg !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_0() #0 !dbg !20 {
entry:
  call void @func_1(), !dbg !24
  call void @func_15(), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_1() #0 !dbg !27 {
entry:
  call void @func_3(), !dbg !28
  ret void, !dbg !29
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_2() #0 !dbg !30 {
entry:
  call void @func_4(), !dbg !31
  ret void, !dbg !32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_3() #0 !dbg !33 {
entry:
  call void @func_2(), !dbg !34
  call void @func_5(), !dbg !35
  ret void, !dbg !36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_4() #0 !dbg !37 {
entry:
  call void @func_6(), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_5() #0 !dbg !40 {
entry:
  call void @func_7(), !dbg !41
  ret void, !dbg !42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_6() #0 !dbg !43 {
entry:
  call void @func_8(), !dbg !44
  call void @func_9(), !dbg !45
  ret void, !dbg !46
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_7() #0 !dbg !47 {
entry:
  call void @func_10(), !dbg !48
  ret void, !dbg !49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_8() #0 !dbg !50 {
entry:
  call void @func_11(), !dbg !51
  ret void, !dbg !52
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_9() #0 !dbg !53 {
entry:
  call void @func_12(), !dbg !54
  ret void, !dbg !55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_10() #0 !dbg !56 {
entry:
  call void @func_13(), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_11() #0 !dbg !59 {
entry:
  call void @func_14(), !dbg !60
  call void @func_15(), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_12() #0 !dbg !63 {
entry:
  call void @func_16(), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_13() #0 !dbg !66 {
entry:
  call void @func_17(), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_14() #0 !dbg !69 {
entry:
  call void @func_18(), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_15() #0 !dbg !72 {
entry:
  call void @func_19(), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_16() #0 !dbg !75 {
entry:
  call void @func_20(), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_17() #0 !dbg !78 {
entry:
  call void @func_21(), !dbg !79
  ret void, !dbg !80
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_18() #0 !dbg !81 {
entry:
  call void @func_22(), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_19() #0 !dbg !84 {
entry:
  call void @func_23(), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_20() #0 !dbg !87 {
entry:
  call void @func_24(), !dbg !88
  call void @func_25(), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_21() #0 !dbg !91 {
entry:
  call void @func_26(), !dbg !92
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_22() #0 !dbg !94 {
entry:
  call void @func_27(), !dbg !95
  ret void, !dbg !96
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_23() #0 !dbg !97 {
entry:
  call void @func_28(), !dbg !98
  ret void, !dbg !99
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_24() #0 !dbg !100 {
entry:
  call void @func_29(), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_25() #0 !dbg !103 {
entry:
  call void @func_30(), !dbg !104
  ret void, !dbg !105
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_26() #0 !dbg !106 {
entry:
  call void @func_31(), !dbg !107
  ret void, !dbg !108
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_27() #0 !dbg !109 {
entry:
  call void @func_32(), !dbg !110
  ret void, !dbg !111
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_28() #0 !dbg !112 {
entry:
  call void @func_33(), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_29() #0 !dbg !115 {
entry:
  call void @func_34(), !dbg !116
  ret void, !dbg !117
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_30() #0 !dbg !118 {
entry:
  call void @func_35(), !dbg !119
  ret void, !dbg !120
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_31() #0 !dbg !121 {
entry:
  call void @func_36(), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_32() #0 !dbg !124 {
entry:
  call void @func_37(), !dbg !125
  ret void, !dbg !126
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_33() #0 !dbg !127 {
entry:
  call void @func_38(), !dbg !128
  ret void, !dbg !129
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_34() #0 !dbg !130 {
entry:
  call void @func_39(), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_35() #0 !dbg !133 {
entry:
  call void @func_40(), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_36() #0 !dbg !136 {
entry:
  call void @func_41(), !dbg !137
  ret void, !dbg !138
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_37() #0 !dbg !139 {
entry:
  call void @func_42(), !dbg !140
  ret void, !dbg !141
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_38() #0 !dbg !142 {
entry:
  call void @func_43(), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_39() #0 !dbg !145 {
entry:
  call void @func_44(), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_40() #0 !dbg !148 {
entry:
  call void @func_45(), !dbg !149
  ret void, !dbg !150
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_41() #0 !dbg !151 {
entry:
  call void @func_46(), !dbg !152
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_42() #0 !dbg !154 {
entry:
  call void @func_47(), !dbg !155
  ret void, !dbg !156
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_43() #0 !dbg !157 {
entry:
  call void @func_48(), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_44() #0 !dbg !160 {
entry:
  call void @func_49(), !dbg !161
  ret void, !dbg !162
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_45() #0 !dbg !163 {
entry:
  call void @func_0(), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_46() #0 !dbg !166 {
entry:
  call void @func_1(), !dbg !167
  ret void, !dbg !168
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_47() #0 !dbg !169 {
entry:
  call void @func_2(), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_48() #0 !dbg !172 {
entry:
  call void @func_3(), !dbg !173
  ret void, !dbg !174
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @func_49() #0 !dbg !175 {
entry:
  call void @func_4(), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !178 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @func_0(), !dbg !182
  call void @func_5(), !dbg !183
  call void @func_10(), !dbg !184
  call void @func_15(), !dbg !185
  call void @func_20(), !dbg !186
  call void @func_25(), !dbg !187
  call void @func_30(), !dbg !188
  call void @func_35(), !dbg !189
  call void @func_40(), !dbg !190
  call void @func_45(), !dbg !191
  call void @func_1(), !dbg !192
  call void @func_6(), !dbg !193
  call void @func_11(), !dbg !194
  call void @func_16(), !dbg !195
  call void @func_21(), !dbg !196
  call void @func_26(), !dbg !197
  call void @func_31(), !dbg !198
  call void @func_36(), !dbg !199
  call void @func_41(), !dbg !200
  call void @func_46(), !dbg !201
  call void @func_2(), !dbg !202
  call void @func_7(), !dbg !203
  call void @func_12(), !dbg !204
  call void @func_17(), !dbg !205
  call void @func_22(), !dbg !206
  call void @func_27(), !dbg !207
  call void @func_32(), !dbg !208
  call void @func_37(), !dbg !209
  call void @func_42(), !dbg !210
  call void @func_47(), !dbg !211
  %0 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 3), align 8, !dbg !212
  call void (...) %0(), !dbg !212
  %1 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 6), align 16, !dbg !213
  call void (...) %1(), !dbg !213
  %2 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 9), align 8, !dbg !214
  call void (...) %2(), !dbg !214
  %3 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 12), align 16, !dbg !215
  call void (...) %3(), !dbg !215
  %4 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 15), align 8, !dbg !216
  call void (...) %4(), !dbg !216
  %5 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 18), align 16, !dbg !217
  call void (...) %5(), !dbg !217
  %6 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 21), align 8, !dbg !218
  call void (...) %6(), !dbg !218
  %7 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 24), align 16, !dbg !219
  call void (...) %7(), !dbg !219
  %8 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 27), align 8, !dbg !220
  call void (...) %8(), !dbg !220
  %9 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 30), align 16, !dbg !221
  call void (...) %9(), !dbg !221
  %10 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 33), align 8, !dbg !222
  call void (...) %10(), !dbg !222
  %11 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 36), align 16, !dbg !223
  call void (...) %11(), !dbg !223
  %12 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 39), align 8, !dbg !224
  call void (...) %12(), !dbg !224
  %13 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 42), align 16, !dbg !225
  call void (...) %13(), !dbg !225
  %14 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 45), align 8, !dbg !226
  call void (...) %14(), !dbg !226
  %15 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 48), align 16, !dbg !227
  call void (...) %15(), !dbg !227
  %16 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 0), align 16, !dbg !228
  call void (...) %16(), !dbg !228
  %17 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 5), align 8, !dbg !229
  call void (...) %17(), !dbg !229
  %18 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 10), align 16, !dbg !230
  call void (...) %18(), !dbg !230
  %19 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 20), align 16, !dbg !231
  call void (...) %19(), !dbg !231
  %20 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 25), align 8, !dbg !232
  call void (...) %20(), !dbg !232
  %21 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 35), align 8, !dbg !233
  call void (...) %21(), !dbg !233
  %22 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 38), align 16, !dbg !234
  call void (...) %22(), !dbg !234
  %23 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 22), align 16, !dbg !235
  call void (...) %23(), !dbg !235
  %24 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 13), align 8, !dbg !236
  call void (...) %24(), !dbg !236
  %25 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 2), align 16, !dbg !237
  call void (...) %25(), !dbg !237
  %26 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 17), align 8, !dbg !238
  call void (...) %26(), !dbg !238
  %27 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 44), align 16, !dbg !239
  call void (...) %27(), !dbg !239
  %28 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 8), align 16, !dbg !240
  call void (...) %28(), !dbg !240
  %29 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 19), align 8, !dbg !241
  call void (...) %29(), !dbg !241
  %30 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 28), align 16, !dbg !242
  call void (...) %30(), !dbg !242
  %31 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 31), align 8, !dbg !243
  call void (...) %31(), !dbg !243
  %32 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 41), align 8, !dbg !244
  call void (...) %32(), !dbg !244
  %33 = load void (...)*, void (...)** getelementptr inbounds ([50 x void (...)*], [50 x void (...)*]* @func_ptrs, i64 0, i64 47), align 8, !dbg !245
  call void (...) %33(), !dbg !245
  ret i32 0, !dbg !246
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "func_ptrs", scope: !2, file: !5, line: 105, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "samples/highcalls.c", directory: "/home/vnit/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "e7b516ac2fbf85a94e20812f06e8ce8f")
!4 = !{!0}
!5 = !DIFile(filename: "./samples/highcalls.c", directory: "/home/vnit/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "e7b516ac2fbf85a94e20812f06e8ce8f")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !10)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{null, null}
!10 = !{!11}
!11 = !DISubrange(count: 50)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "func_0", scope: !5, file: !5, line: 54, type: !21, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{}
!24 = !DILocation(line: 54, column: 17, scope: !20)
!25 = !DILocation(line: 54, column: 27, scope: !20)
!26 = !DILocation(line: 54, column: 38, scope: !20)
!27 = distinct !DISubprogram(name: "func_1", scope: !5, file: !5, line: 55, type: !21, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!28 = !DILocation(line: 55, column: 17, scope: !27)
!29 = !DILocation(line: 55, column: 27, scope: !27)
!30 = distinct !DISubprogram(name: "func_2", scope: !5, file: !5, line: 56, type: !21, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!31 = !DILocation(line: 56, column: 17, scope: !30)
!32 = !DILocation(line: 56, column: 27, scope: !30)
!33 = distinct !DISubprogram(name: "func_3", scope: !5, file: !5, line: 57, type: !21, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!34 = !DILocation(line: 57, column: 17, scope: !33)
!35 = !DILocation(line: 57, column: 27, scope: !33)
!36 = !DILocation(line: 57, column: 37, scope: !33)
!37 = distinct !DISubprogram(name: "func_4", scope: !5, file: !5, line: 58, type: !21, scopeLine: 58, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!38 = !DILocation(line: 58, column: 17, scope: !37)
!39 = !DILocation(line: 58, column: 27, scope: !37)
!40 = distinct !DISubprogram(name: "func_5", scope: !5, file: !5, line: 59, type: !21, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!41 = !DILocation(line: 59, column: 17, scope: !40)
!42 = !DILocation(line: 59, column: 27, scope: !40)
!43 = distinct !DISubprogram(name: "func_6", scope: !5, file: !5, line: 60, type: !21, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!44 = !DILocation(line: 60, column: 17, scope: !43)
!45 = !DILocation(line: 60, column: 27, scope: !43)
!46 = !DILocation(line: 60, column: 37, scope: !43)
!47 = distinct !DISubprogram(name: "func_7", scope: !5, file: !5, line: 61, type: !21, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!48 = !DILocation(line: 61, column: 17, scope: !47)
!49 = !DILocation(line: 61, column: 28, scope: !47)
!50 = distinct !DISubprogram(name: "func_8", scope: !5, file: !5, line: 62, type: !21, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!51 = !DILocation(line: 62, column: 17, scope: !50)
!52 = !DILocation(line: 62, column: 28, scope: !50)
!53 = distinct !DISubprogram(name: "func_9", scope: !5, file: !5, line: 63, type: !21, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!54 = !DILocation(line: 63, column: 17, scope: !53)
!55 = !DILocation(line: 63, column: 28, scope: !53)
!56 = distinct !DISubprogram(name: "func_10", scope: !5, file: !5, line: 64, type: !21, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!57 = !DILocation(line: 64, column: 18, scope: !56)
!58 = !DILocation(line: 64, column: 29, scope: !56)
!59 = distinct !DISubprogram(name: "func_11", scope: !5, file: !5, line: 65, type: !21, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!60 = !DILocation(line: 65, column: 18, scope: !59)
!61 = !DILocation(line: 65, column: 29, scope: !59)
!62 = !DILocation(line: 65, column: 40, scope: !59)
!63 = distinct !DISubprogram(name: "func_12", scope: !5, file: !5, line: 66, type: !21, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!64 = !DILocation(line: 66, column: 18, scope: !63)
!65 = !DILocation(line: 66, column: 29, scope: !63)
!66 = distinct !DISubprogram(name: "func_13", scope: !5, file: !5, line: 67, type: !21, scopeLine: 67, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!67 = !DILocation(line: 67, column: 18, scope: !66)
!68 = !DILocation(line: 67, column: 29, scope: !66)
!69 = distinct !DISubprogram(name: "func_14", scope: !5, file: !5, line: 68, type: !21, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!70 = !DILocation(line: 68, column: 18, scope: !69)
!71 = !DILocation(line: 68, column: 29, scope: !69)
!72 = distinct !DISubprogram(name: "func_15", scope: !5, file: !5, line: 69, type: !21, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!73 = !DILocation(line: 69, column: 18, scope: !72)
!74 = !DILocation(line: 69, column: 29, scope: !72)
!75 = distinct !DISubprogram(name: "func_16", scope: !5, file: !5, line: 70, type: !21, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!76 = !DILocation(line: 70, column: 18, scope: !75)
!77 = !DILocation(line: 70, column: 29, scope: !75)
!78 = distinct !DISubprogram(name: "func_17", scope: !5, file: !5, line: 71, type: !21, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!79 = !DILocation(line: 71, column: 18, scope: !78)
!80 = !DILocation(line: 71, column: 29, scope: !78)
!81 = distinct !DISubprogram(name: "func_18", scope: !5, file: !5, line: 72, type: !21, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!82 = !DILocation(line: 72, column: 18, scope: !81)
!83 = !DILocation(line: 72, column: 29, scope: !81)
!84 = distinct !DISubprogram(name: "func_19", scope: !5, file: !5, line: 73, type: !21, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!85 = !DILocation(line: 73, column: 18, scope: !84)
!86 = !DILocation(line: 73, column: 29, scope: !84)
!87 = distinct !DISubprogram(name: "func_20", scope: !5, file: !5, line: 74, type: !21, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!88 = !DILocation(line: 74, column: 18, scope: !87)
!89 = !DILocation(line: 74, column: 29, scope: !87)
!90 = !DILocation(line: 74, column: 40, scope: !87)
!91 = distinct !DISubprogram(name: "func_21", scope: !5, file: !5, line: 75, type: !21, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!92 = !DILocation(line: 75, column: 18, scope: !91)
!93 = !DILocation(line: 75, column: 29, scope: !91)
!94 = distinct !DISubprogram(name: "func_22", scope: !5, file: !5, line: 76, type: !21, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!95 = !DILocation(line: 76, column: 18, scope: !94)
!96 = !DILocation(line: 76, column: 29, scope: !94)
!97 = distinct !DISubprogram(name: "func_23", scope: !5, file: !5, line: 77, type: !21, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!98 = !DILocation(line: 77, column: 18, scope: !97)
!99 = !DILocation(line: 77, column: 29, scope: !97)
!100 = distinct !DISubprogram(name: "func_24", scope: !5, file: !5, line: 78, type: !21, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!101 = !DILocation(line: 78, column: 18, scope: !100)
!102 = !DILocation(line: 78, column: 29, scope: !100)
!103 = distinct !DISubprogram(name: "func_25", scope: !5, file: !5, line: 79, type: !21, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!104 = !DILocation(line: 79, column: 18, scope: !103)
!105 = !DILocation(line: 79, column: 29, scope: !103)
!106 = distinct !DISubprogram(name: "func_26", scope: !5, file: !5, line: 80, type: !21, scopeLine: 80, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!107 = !DILocation(line: 80, column: 18, scope: !106)
!108 = !DILocation(line: 80, column: 29, scope: !106)
!109 = distinct !DISubprogram(name: "func_27", scope: !5, file: !5, line: 81, type: !21, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!110 = !DILocation(line: 81, column: 18, scope: !109)
!111 = !DILocation(line: 81, column: 29, scope: !109)
!112 = distinct !DISubprogram(name: "func_28", scope: !5, file: !5, line: 82, type: !21, scopeLine: 82, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!113 = !DILocation(line: 82, column: 18, scope: !112)
!114 = !DILocation(line: 82, column: 29, scope: !112)
!115 = distinct !DISubprogram(name: "func_29", scope: !5, file: !5, line: 83, type: !21, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!116 = !DILocation(line: 83, column: 18, scope: !115)
!117 = !DILocation(line: 83, column: 29, scope: !115)
!118 = distinct !DISubprogram(name: "func_30", scope: !5, file: !5, line: 84, type: !21, scopeLine: 84, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!119 = !DILocation(line: 84, column: 18, scope: !118)
!120 = !DILocation(line: 84, column: 29, scope: !118)
!121 = distinct !DISubprogram(name: "func_31", scope: !5, file: !5, line: 85, type: !21, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!122 = !DILocation(line: 85, column: 18, scope: !121)
!123 = !DILocation(line: 85, column: 29, scope: !121)
!124 = distinct !DISubprogram(name: "func_32", scope: !5, file: !5, line: 86, type: !21, scopeLine: 86, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!125 = !DILocation(line: 86, column: 18, scope: !124)
!126 = !DILocation(line: 86, column: 29, scope: !124)
!127 = distinct !DISubprogram(name: "func_33", scope: !5, file: !5, line: 87, type: !21, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!128 = !DILocation(line: 87, column: 18, scope: !127)
!129 = !DILocation(line: 87, column: 29, scope: !127)
!130 = distinct !DISubprogram(name: "func_34", scope: !5, file: !5, line: 88, type: !21, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!131 = !DILocation(line: 88, column: 18, scope: !130)
!132 = !DILocation(line: 88, column: 29, scope: !130)
!133 = distinct !DISubprogram(name: "func_35", scope: !5, file: !5, line: 89, type: !21, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!134 = !DILocation(line: 89, column: 18, scope: !133)
!135 = !DILocation(line: 89, column: 29, scope: !133)
!136 = distinct !DISubprogram(name: "func_36", scope: !5, file: !5, line: 90, type: !21, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!137 = !DILocation(line: 90, column: 18, scope: !136)
!138 = !DILocation(line: 90, column: 29, scope: !136)
!139 = distinct !DISubprogram(name: "func_37", scope: !5, file: !5, line: 91, type: !21, scopeLine: 91, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!140 = !DILocation(line: 91, column: 18, scope: !139)
!141 = !DILocation(line: 91, column: 29, scope: !139)
!142 = distinct !DISubprogram(name: "func_38", scope: !5, file: !5, line: 92, type: !21, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!143 = !DILocation(line: 92, column: 18, scope: !142)
!144 = !DILocation(line: 92, column: 29, scope: !142)
!145 = distinct !DISubprogram(name: "func_39", scope: !5, file: !5, line: 93, type: !21, scopeLine: 93, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!146 = !DILocation(line: 93, column: 18, scope: !145)
!147 = !DILocation(line: 93, column: 29, scope: !145)
!148 = distinct !DISubprogram(name: "func_40", scope: !5, file: !5, line: 94, type: !21, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!149 = !DILocation(line: 94, column: 18, scope: !148)
!150 = !DILocation(line: 94, column: 29, scope: !148)
!151 = distinct !DISubprogram(name: "func_41", scope: !5, file: !5, line: 95, type: !21, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!152 = !DILocation(line: 95, column: 18, scope: !151)
!153 = !DILocation(line: 95, column: 29, scope: !151)
!154 = distinct !DISubprogram(name: "func_42", scope: !5, file: !5, line: 96, type: !21, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!155 = !DILocation(line: 96, column: 18, scope: !154)
!156 = !DILocation(line: 96, column: 29, scope: !154)
!157 = distinct !DISubprogram(name: "func_43", scope: !5, file: !5, line: 97, type: !21, scopeLine: 97, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!158 = !DILocation(line: 97, column: 18, scope: !157)
!159 = !DILocation(line: 97, column: 29, scope: !157)
!160 = distinct !DISubprogram(name: "func_44", scope: !5, file: !5, line: 98, type: !21, scopeLine: 98, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!161 = !DILocation(line: 98, column: 18, scope: !160)
!162 = !DILocation(line: 98, column: 29, scope: !160)
!163 = distinct !DISubprogram(name: "func_45", scope: !5, file: !5, line: 99, type: !21, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!164 = !DILocation(line: 99, column: 18, scope: !163)
!165 = !DILocation(line: 99, column: 28, scope: !163)
!166 = distinct !DISubprogram(name: "func_46", scope: !5, file: !5, line: 100, type: !21, scopeLine: 100, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!167 = !DILocation(line: 100, column: 18, scope: !166)
!168 = !DILocation(line: 100, column: 28, scope: !166)
!169 = distinct !DISubprogram(name: "func_47", scope: !5, file: !5, line: 101, type: !21, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!170 = !DILocation(line: 101, column: 18, scope: !169)
!171 = !DILocation(line: 101, column: 28, scope: !169)
!172 = distinct !DISubprogram(name: "func_48", scope: !5, file: !5, line: 102, type: !21, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!173 = !DILocation(line: 102, column: 18, scope: !172)
!174 = !DILocation(line: 102, column: 28, scope: !172)
!175 = distinct !DISubprogram(name: "func_49", scope: !5, file: !5, line: 103, type: !21, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!176 = !DILocation(line: 103, column: 18, scope: !175)
!177 = !DILocation(line: 103, column: 28, scope: !175)
!178 = distinct !DISubprogram(name: "main", scope: !5, file: !5, line: 118, type: !179, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !23)
!179 = !DISubroutineType(types: !180)
!180 = !{!181}
!181 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!182 = !DILocation(line: 119, column: 5, scope: !178)
!183 = !DILocation(line: 119, column: 15, scope: !178)
!184 = !DILocation(line: 119, column: 25, scope: !178)
!185 = !DILocation(line: 119, column: 36, scope: !178)
!186 = !DILocation(line: 119, column: 47, scope: !178)
!187 = !DILocation(line: 120, column: 5, scope: !178)
!188 = !DILocation(line: 120, column: 16, scope: !178)
!189 = !DILocation(line: 120, column: 27, scope: !178)
!190 = !DILocation(line: 120, column: 38, scope: !178)
!191 = !DILocation(line: 120, column: 49, scope: !178)
!192 = !DILocation(line: 121, column: 5, scope: !178)
!193 = !DILocation(line: 121, column: 15, scope: !178)
!194 = !DILocation(line: 121, column: 25, scope: !178)
!195 = !DILocation(line: 121, column: 36, scope: !178)
!196 = !DILocation(line: 121, column: 47, scope: !178)
!197 = !DILocation(line: 122, column: 5, scope: !178)
!198 = !DILocation(line: 122, column: 16, scope: !178)
!199 = !DILocation(line: 122, column: 27, scope: !178)
!200 = !DILocation(line: 122, column: 38, scope: !178)
!201 = !DILocation(line: 122, column: 49, scope: !178)
!202 = !DILocation(line: 123, column: 5, scope: !178)
!203 = !DILocation(line: 123, column: 15, scope: !178)
!204 = !DILocation(line: 123, column: 25, scope: !178)
!205 = !DILocation(line: 123, column: 36, scope: !178)
!206 = !DILocation(line: 123, column: 47, scope: !178)
!207 = !DILocation(line: 124, column: 5, scope: !178)
!208 = !DILocation(line: 124, column: 16, scope: !178)
!209 = !DILocation(line: 124, column: 27, scope: !178)
!210 = !DILocation(line: 124, column: 38, scope: !178)
!211 = !DILocation(line: 124, column: 49, scope: !178)
!212 = !DILocation(line: 126, column: 5, scope: !178)
!213 = !DILocation(line: 127, column: 5, scope: !178)
!214 = !DILocation(line: 128, column: 5, scope: !178)
!215 = !DILocation(line: 129, column: 5, scope: !178)
!216 = !DILocation(line: 130, column: 5, scope: !178)
!217 = !DILocation(line: 131, column: 5, scope: !178)
!218 = !DILocation(line: 132, column: 5, scope: !178)
!219 = !DILocation(line: 133, column: 5, scope: !178)
!220 = !DILocation(line: 134, column: 5, scope: !178)
!221 = !DILocation(line: 135, column: 5, scope: !178)
!222 = !DILocation(line: 136, column: 5, scope: !178)
!223 = !DILocation(line: 137, column: 5, scope: !178)
!224 = !DILocation(line: 138, column: 5, scope: !178)
!225 = !DILocation(line: 139, column: 5, scope: !178)
!226 = !DILocation(line: 140, column: 5, scope: !178)
!227 = !DILocation(line: 141, column: 5, scope: !178)
!228 = !DILocation(line: 142, column: 5, scope: !178)
!229 = !DILocation(line: 143, column: 5, scope: !178)
!230 = !DILocation(line: 144, column: 5, scope: !178)
!231 = !DILocation(line: 145, column: 5, scope: !178)
!232 = !DILocation(line: 146, column: 5, scope: !178)
!233 = !DILocation(line: 147, column: 5, scope: !178)
!234 = !DILocation(line: 148, column: 5, scope: !178)
!235 = !DILocation(line: 149, column: 5, scope: !178)
!236 = !DILocation(line: 150, column: 5, scope: !178)
!237 = !DILocation(line: 151, column: 5, scope: !178)
!238 = !DILocation(line: 152, column: 5, scope: !178)
!239 = !DILocation(line: 153, column: 5, scope: !178)
!240 = !DILocation(line: 154, column: 5, scope: !178)
!241 = !DILocation(line: 155, column: 5, scope: !178)
!242 = !DILocation(line: 156, column: 5, scope: !178)
!243 = !DILocation(line: 157, column: 5, scope: !178)
!244 = !DILocation(line: 158, column: 5, scope: !178)
!245 = !DILocation(line: 159, column: 5, scope: !178)
!246 = !DILocation(line: 161, column: 5, scope: !178)
