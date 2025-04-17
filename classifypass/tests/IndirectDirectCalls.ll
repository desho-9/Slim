; ModuleID = './samples/IndirectDirectCalls.c'
source_filename = "./samples/IndirectDirectCalls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Task = type { [20 x i8], i32 (i32, i32)*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Log: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Program started\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Addition\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Multiplication\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Task: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Null function pointer\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Task processed\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Program ended\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @log_message(i8* noundef %msg) #0 !dbg !10 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i8*, i8** %msg.addr, align 8, !dbg !20
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef %0), !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @error_message(i8* noundef %msg) #0 !dbg !23 {
entry:
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i8*, i8** %msg.addr, align 8, !dbg !26
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_sum(i32 noundef %a, i32 noundef %b) #0 !dbg !29 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i32, i32* %a.addr, align 4, !dbg !37
  %1 = load i32, i32* %b.addr, align 4, !dbg !38
  %add = add nsw i32 %0, %1, !dbg !39
  ret i32 %add, !dbg !40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_product(i32 noundef %a, i32 noundef %b) #0 !dbg !41 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load i32, i32* %a.addr, align 4, !dbg !46
  %1 = load i32, i32* %b.addr, align 4, !dbg !47
  %mul = mul nsw i32 %0, %1, !dbg !48
  ret i32 %mul, !dbg !49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !dbg !50 {
entry:
  %retval = alloca i32, align 4
  %tasks = alloca %struct.Task*, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @log_message(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !53
  call void @llvm.dbg.declare(metadata %struct.Task** %tasks, metadata !54, metadata !DIExpression()), !dbg !67
  %call = call noalias i8* @malloc(i64 noundef 120) #4, !dbg !68
  %0 = bitcast i8* %call to %struct.Task*, !dbg !68
  store %struct.Task* %0, %struct.Task** %tasks, align 8, !dbg !67
  %1 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !69
  %tobool = icmp ne %struct.Task* %1, null, !dbg !69
  br i1 %tobool, label %if.end, label %if.then, !dbg !71

if.then:                                          ; preds = %entry
  call void @error_message(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)), !dbg !72
  store i32 1, i32* %retval, align 4, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %entry
  %2 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !75
  %arrayidx = getelementptr inbounds %struct.Task, %struct.Task* %2, i64 0, !dbg !75
  %name = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx, i32 0, i32 0, !dbg !76
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i64 0, i64 0, !dbg !75
  %call1 = call i8* @strcpy(i8* noundef %arraydecay, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)) #4, !dbg !77
  %3 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !78
  %arrayidx2 = getelementptr inbounds %struct.Task, %struct.Task* %3, i64 0, !dbg !78
  %op = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx2, i32 0, i32 1, !dbg !79
  store i32 (i32, i32)* @compute_sum, i32 (i32, i32)** %op, align 8, !dbg !80
  %4 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !81
  %arrayidx3 = getelementptr inbounds %struct.Task, %struct.Task* %4, i64 0, !dbg !81
  %arg1 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx3, i32 0, i32 2, !dbg !82
  store i32 5, i32* %arg1, align 8, !dbg !83
  %5 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !84
  %arrayidx4 = getelementptr inbounds %struct.Task, %struct.Task* %5, i64 0, !dbg !84
  %arg2 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx4, i32 0, i32 3, !dbg !85
  store i32 3, i32* %arg2, align 4, !dbg !86
  %6 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !87
  %arrayidx5 = getelementptr inbounds %struct.Task, %struct.Task* %6, i64 1, !dbg !87
  %name6 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx5, i32 0, i32 0, !dbg !88
  %arraydecay7 = getelementptr inbounds [20 x i8], [20 x i8]* %name6, i64 0, i64 0, !dbg !87
  %call8 = call i8* @strcpy(i8* noundef %arraydecay7, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !89
  %7 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !90
  %arrayidx9 = getelementptr inbounds %struct.Task, %struct.Task* %7, i64 1, !dbg !90
  %op10 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx9, i32 0, i32 1, !dbg !91
  store i32 (i32, i32)* @compute_product, i32 (i32, i32)** %op10, align 8, !dbg !92
  %8 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !93
  %arrayidx11 = getelementptr inbounds %struct.Task, %struct.Task* %8, i64 1, !dbg !93
  %arg112 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx11, i32 0, i32 2, !dbg !94
  store i32 4, i32* %arg112, align 8, !dbg !95
  %9 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !96
  %arrayidx13 = getelementptr inbounds %struct.Task, %struct.Task* %9, i64 1, !dbg !96
  %arg214 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx13, i32 0, i32 3, !dbg !97
  store i32 6, i32* %arg214, align 4, !dbg !98
  %10 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !99
  %arrayidx15 = getelementptr inbounds %struct.Task, %struct.Task* %10, i64 2, !dbg !99
  %name16 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx15, i32 0, i32 0, !dbg !100
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %name16, i64 0, i64 0, !dbg !99
  %call18 = call i8* @strcpy(i8* noundef %arraydecay17, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !101
  %11 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !102
  %arrayidx19 = getelementptr inbounds %struct.Task, %struct.Task* %11, i64 2, !dbg !102
  %op20 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx19, i32 0, i32 1, !dbg !103
  store i32 (i32, i32)* null, i32 (i32, i32)** %op20, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !108

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4, !dbg !109
  %cmp = icmp slt i32 %12, 3, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !112

for.body:                                         ; preds = %for.cond
  %13 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !113
  %14 = load i32, i32* %i, align 4, !dbg !115
  %idxprom = sext i32 %14 to i64, !dbg !113
  %arrayidx21 = getelementptr inbounds %struct.Task, %struct.Task* %13, i64 %idxprom, !dbg !113
  %name22 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx21, i32 0, i32 0, !dbg !116
  %arraydecay23 = getelementptr inbounds [20 x i8], [20 x i8]* %name22, i64 0, i64 0, !dbg !113
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef %arraydecay23), !dbg !117
  %15 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !118
  %16 = load i32, i32* %i, align 4, !dbg !120
  %idxprom25 = sext i32 %16 to i64, !dbg !118
  %arrayidx26 = getelementptr inbounds %struct.Task, %struct.Task* %15, i64 %idxprom25, !dbg !118
  %op27 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx26, i32 0, i32 1, !dbg !121
  %17 = load i32 (i32, i32)*, i32 (i32, i32)** %op27, align 8, !dbg !121
  %tobool28 = icmp ne i32 (i32, i32)* %17, null, !dbg !118
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !122

if.then29:                                        ; preds = %for.body
  call void @llvm.dbg.declare(metadata i32* %result, metadata !123, metadata !DIExpression()), !dbg !125
  %18 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !126
  %19 = load i32, i32* %i, align 4, !dbg !127
  %idxprom30 = sext i32 %19 to i64, !dbg !126
  %arrayidx31 = getelementptr inbounds %struct.Task, %struct.Task* %18, i64 %idxprom30, !dbg !126
  %op32 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx31, i32 0, i32 1, !dbg !128
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %op32, align 8, !dbg !128
  %21 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !129
  %22 = load i32, i32* %i, align 4, !dbg !130
  %idxprom33 = sext i32 %22 to i64, !dbg !129
  %arrayidx34 = getelementptr inbounds %struct.Task, %struct.Task* %21, i64 %idxprom33, !dbg !129
  %arg135 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx34, i32 0, i32 2, !dbg !131
  %23 = load i32, i32* %arg135, align 8, !dbg !131
  %24 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !132
  %25 = load i32, i32* %i, align 4, !dbg !133
  %idxprom36 = sext i32 %25 to i64, !dbg !132
  %arrayidx37 = getelementptr inbounds %struct.Task, %struct.Task* %24, i64 %idxprom36, !dbg !132
  %arg238 = getelementptr inbounds %struct.Task, %struct.Task* %arrayidx37, i32 0, i32 3, !dbg !134
  %26 = load i32, i32* %arg238, align 4, !dbg !134
  %call39 = call i32 %20(i32 noundef %23, i32 noundef %26), !dbg !126
  store i32 %call39, i32* %result, align 4, !dbg !125
  %27 = load i32, i32* %result, align 4, !dbg !135
  %call40 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 noundef %27), !dbg !136
  br label %if.end41, !dbg !137

if.else:                                          ; preds = %for.body
  call void @error_message(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0)), !dbg !138
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then29
  call void @log_message(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)), !dbg !140
  br label %for.inc, !dbg !141

for.inc:                                          ; preds = %if.end41
  %28 = load i32, i32* %i, align 4, !dbg !142
  %inc = add nsw i32 %28, 1, !dbg !142
  store i32 %inc, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !143, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  %29 = load %struct.Task*, %struct.Task** %tasks, align 8, !dbg !147
  %30 = bitcast %struct.Task* %29 to i8*, !dbg !147
  call void @free(i8* noundef %30) #4, !dbg !148
  call void @log_message(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0)), !dbg !149
  store i32 0, i32* %retval, align 4, !dbg !150
  br label %return, !dbg !150

return:                                           ; preds = %for.end, %if.then
  %31 = load i32, i32* %retval, align 4, !dbg !151
  ret i32 %31, !dbg !151
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6-2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "samples/IndirectDirectCalls.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "f724d867078fb3345738c09a5c84f8b0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Debian clang version 14.0.6-2"}
!10 = distinct !DISubprogram(name: "log_message", scope: !11, file: !11, line: 5, type: !12, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!11 = !DIFile(filename: "./samples/IndirectDirectCalls.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "f724d867078fb3345738c09a5c84f8b0")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!17 = !{}
!18 = !DILocalVariable(name: "msg", arg: 1, scope: !10, file: !11, line: 5, type: !14)
!19 = !DILocation(line: 5, column: 30, scope: !10)
!20 = !DILocation(line: 6, column: 25, scope: !10)
!21 = !DILocation(line: 6, column: 5, scope: !10)
!22 = !DILocation(line: 7, column: 1, scope: !10)
!23 = distinct !DISubprogram(name: "error_message", scope: !11, file: !11, line: 9, type: !12, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!24 = !DILocalVariable(name: "msg", arg: 1, scope: !23, file: !11, line: 9, type: !14)
!25 = !DILocation(line: 9, column: 32, scope: !23)
!26 = !DILocation(line: 10, column: 27, scope: !23)
!27 = !DILocation(line: 10, column: 5, scope: !23)
!28 = !DILocation(line: 11, column: 1, scope: !23)
!29 = distinct !DISubprogram(name: "compute_sum", scope: !11, file: !11, line: 13, type: !30, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !32, !32}
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !11, line: 13, type: !32)
!34 = !DILocation(line: 13, column: 21, scope: !29)
!35 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !11, line: 13, type: !32)
!36 = !DILocation(line: 13, column: 28, scope: !29)
!37 = !DILocation(line: 14, column: 12, scope: !29)
!38 = !DILocation(line: 14, column: 16, scope: !29)
!39 = !DILocation(line: 14, column: 14, scope: !29)
!40 = !DILocation(line: 14, column: 5, scope: !29)
!41 = distinct !DISubprogram(name: "compute_product", scope: !11, file: !11, line: 17, type: !30, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!42 = !DILocalVariable(name: "a", arg: 1, scope: !41, file: !11, line: 17, type: !32)
!43 = !DILocation(line: 17, column: 25, scope: !41)
!44 = !DILocalVariable(name: "b", arg: 2, scope: !41, file: !11, line: 17, type: !32)
!45 = !DILocation(line: 17, column: 32, scope: !41)
!46 = !DILocation(line: 18, column: 12, scope: !41)
!47 = !DILocation(line: 18, column: 16, scope: !41)
!48 = !DILocation(line: 18, column: 14, scope: !41)
!49 = !DILocation(line: 18, column: 5, scope: !41)
!50 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 30, type: !51, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !17)
!51 = !DISubroutineType(types: !52)
!52 = !{!32}
!53 = !DILocation(line: 32, column: 5, scope: !50)
!54 = !DILocalVariable(name: "tasks", scope: !50, file: !11, line: 34, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Task", file: !11, line: 23, size: 320, elements: !57)
!57 = !{!58, !62, !65, !66}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !56, file: !11, line: 24, baseType: !59, size: 160)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 20)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !56, file: !11, line: 25, baseType: !63, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "operation_func", file: !11, line: 21, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "arg1", scope: !56, file: !11, line: 26, baseType: !32, size: 32, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "arg2", scope: !56, file: !11, line: 27, baseType: !32, size: 32, offset: 288)
!67 = !DILocation(line: 34, column: 18, scope: !50)
!68 = !DILocation(line: 34, column: 26, scope: !50)
!69 = !DILocation(line: 35, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !50, file: !11, line: 35, column: 9)
!71 = !DILocation(line: 35, column: 9, scope: !50)
!72 = !DILocation(line: 36, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !11, line: 35, column: 17)
!74 = !DILocation(line: 37, column: 9, scope: !73)
!75 = !DILocation(line: 40, column: 12, scope: !50)
!76 = !DILocation(line: 40, column: 21, scope: !50)
!77 = !DILocation(line: 40, column: 5, scope: !50)
!78 = !DILocation(line: 41, column: 5, scope: !50)
!79 = !DILocation(line: 41, column: 14, scope: !50)
!80 = !DILocation(line: 41, column: 17, scope: !50)
!81 = !DILocation(line: 42, column: 5, scope: !50)
!82 = !DILocation(line: 42, column: 14, scope: !50)
!83 = !DILocation(line: 42, column: 19, scope: !50)
!84 = !DILocation(line: 43, column: 5, scope: !50)
!85 = !DILocation(line: 43, column: 14, scope: !50)
!86 = !DILocation(line: 43, column: 19, scope: !50)
!87 = !DILocation(line: 45, column: 12, scope: !50)
!88 = !DILocation(line: 45, column: 21, scope: !50)
!89 = !DILocation(line: 45, column: 5, scope: !50)
!90 = !DILocation(line: 46, column: 5, scope: !50)
!91 = !DILocation(line: 46, column: 14, scope: !50)
!92 = !DILocation(line: 46, column: 17, scope: !50)
!93 = !DILocation(line: 47, column: 5, scope: !50)
!94 = !DILocation(line: 47, column: 14, scope: !50)
!95 = !DILocation(line: 47, column: 19, scope: !50)
!96 = !DILocation(line: 48, column: 5, scope: !50)
!97 = !DILocation(line: 48, column: 14, scope: !50)
!98 = !DILocation(line: 48, column: 19, scope: !50)
!99 = !DILocation(line: 50, column: 12, scope: !50)
!100 = !DILocation(line: 50, column: 21, scope: !50)
!101 = !DILocation(line: 50, column: 5, scope: !50)
!102 = !DILocation(line: 51, column: 5, scope: !50)
!103 = !DILocation(line: 51, column: 14, scope: !50)
!104 = !DILocation(line: 51, column: 17, scope: !50)
!105 = !DILocalVariable(name: "i", scope: !106, file: !11, line: 53, type: !32)
!106 = distinct !DILexicalBlock(scope: !50, file: !11, line: 53, column: 5)
!107 = !DILocation(line: 53, column: 14, scope: !106)
!108 = !DILocation(line: 53, column: 10, scope: !106)
!109 = !DILocation(line: 53, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !11, line: 53, column: 5)
!111 = !DILocation(line: 53, column: 23, scope: !110)
!112 = !DILocation(line: 53, column: 5, scope: !106)
!113 = !DILocation(line: 54, column: 30, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !11, line: 53, column: 33)
!115 = !DILocation(line: 54, column: 36, scope: !114)
!116 = !DILocation(line: 54, column: 39, scope: !114)
!117 = !DILocation(line: 54, column: 9, scope: !114)
!118 = !DILocation(line: 57, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !11, line: 57, column: 13)
!120 = !DILocation(line: 57, column: 19, scope: !119)
!121 = !DILocation(line: 57, column: 22, scope: !119)
!122 = !DILocation(line: 57, column: 13, scope: !114)
!123 = !DILocalVariable(name: "result", scope: !124, file: !11, line: 58, type: !32)
!124 = distinct !DILexicalBlock(scope: !119, file: !11, line: 57, column: 26)
!125 = !DILocation(line: 58, column: 17, scope: !124)
!126 = !DILocation(line: 58, column: 26, scope: !124)
!127 = !DILocation(line: 58, column: 32, scope: !124)
!128 = !DILocation(line: 58, column: 35, scope: !124)
!129 = !DILocation(line: 58, column: 38, scope: !124)
!130 = !DILocation(line: 58, column: 44, scope: !124)
!131 = !DILocation(line: 58, column: 47, scope: !124)
!132 = !DILocation(line: 58, column: 53, scope: !124)
!133 = !DILocation(line: 58, column: 59, scope: !124)
!134 = !DILocation(line: 58, column: 62, scope: !124)
!135 = !DILocation(line: 59, column: 36, scope: !124)
!136 = !DILocation(line: 59, column: 13, scope: !124)
!137 = !DILocation(line: 60, column: 9, scope: !124)
!138 = !DILocation(line: 61, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !119, file: !11, line: 60, column: 16)
!140 = !DILocation(line: 65, column: 9, scope: !114)
!141 = !DILocation(line: 66, column: 5, scope: !114)
!142 = !DILocation(line: 53, column: 29, scope: !110)
!143 = !DILocation(line: 53, column: 5, scope: !110)
!144 = distinct !{!144, !112, !145, !146}
!145 = !DILocation(line: 66, column: 5, scope: !106)
!146 = !{!"llvm.loop.mustprogress"}
!147 = !DILocation(line: 68, column: 10, scope: !50)
!148 = !DILocation(line: 68, column: 5, scope: !50)
!149 = !DILocation(line: 70, column: 5, scope: !50)
!150 = !DILocation(line: 71, column: 5, scope: !50)
!151 = !DILocation(line: 72, column: 1, scope: !50)
