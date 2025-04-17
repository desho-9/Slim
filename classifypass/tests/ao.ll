; ModuleID = './samples/ao.c'
source_filename = "./samples/ao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Sphere = type { %struct._vec, double }
%struct._vec = type { double, double, double }
%struct._Plane = type { %struct._vec, %struct._vec }
%struct._Isect = type { double, %struct._vec, %struct._vec, i32 }
%struct._Ray = type { %struct._vec, %struct._vec }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, [3 x i8], [1 x i8], i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@spheres = dso_local global [3 x %struct._Sphere] zeroinitializer, align 16, !dbg !0
@plane = dso_local global %struct._Plane zeroinitializer, align 8, !dbg !12
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fp\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"./samples/ao.c\00", align 1
@__PRETTY_FUNCTION__.saveppm = private unnamed_addr constant [54 x i8] c"void saveppm(const char *, int, int, unsigned char *)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"P6\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ao.ppm\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ray_sphere_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Sphere* noundef %sphere) #0 !dbg !42 {
entry:
  %isect.addr = alloca %struct._Isect*, align 8
  %ray.addr = alloca %struct._Ray*, align 8
  %sphere.addr = alloca %struct._Sphere*, align 8
  %rs = alloca %struct._vec, align 8
  %B = alloca double, align 8
  %C = alloca double, align 8
  %D = alloca double, align 8
  %t = alloca double, align 8
  store %struct._Isect* %isect, %struct._Isect** %isect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Isect** %isect.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct._Ray* %ray, %struct._Ray** %ray.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Ray** %ray.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store %struct._Sphere* %sphere, %struct._Sphere** %sphere.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Sphere** %sphere.addr, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._vec* %rs, metadata !69, metadata !DIExpression()), !dbg !70
  %0 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !71
  %org = getelementptr inbounds %struct._Ray, %struct._Ray* %0, i32 0, i32 0, !dbg !72
  %x = getelementptr inbounds %struct._vec, %struct._vec* %org, i32 0, i32 0, !dbg !73
  %1 = load double, double* %x, align 8, !dbg !73
  %2 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !74
  %center = getelementptr inbounds %struct._Sphere, %struct._Sphere* %2, i32 0, i32 0, !dbg !75
  %x1 = getelementptr inbounds %struct._vec, %struct._vec* %center, i32 0, i32 0, !dbg !76
  %3 = load double, double* %x1, align 8, !dbg !76
  %sub = fsub double %1, %3, !dbg !77
  %x2 = getelementptr inbounds %struct._vec, %struct._vec* %rs, i32 0, i32 0, !dbg !78
  store double %sub, double* %x2, align 8, !dbg !79
  %4 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !80
  %org3 = getelementptr inbounds %struct._Ray, %struct._Ray* %4, i32 0, i32 0, !dbg !81
  %y = getelementptr inbounds %struct._vec, %struct._vec* %org3, i32 0, i32 1, !dbg !82
  %5 = load double, double* %y, align 8, !dbg !82
  %6 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !83
  %center4 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %6, i32 0, i32 0, !dbg !84
  %y5 = getelementptr inbounds %struct._vec, %struct._vec* %center4, i32 0, i32 1, !dbg !85
  %7 = load double, double* %y5, align 8, !dbg !85
  %sub6 = fsub double %5, %7, !dbg !86
  %y7 = getelementptr inbounds %struct._vec, %struct._vec* %rs, i32 0, i32 1, !dbg !87
  store double %sub6, double* %y7, align 8, !dbg !88
  %8 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !89
  %org8 = getelementptr inbounds %struct._Ray, %struct._Ray* %8, i32 0, i32 0, !dbg !90
  %z = getelementptr inbounds %struct._vec, %struct._vec* %org8, i32 0, i32 2, !dbg !91
  %9 = load double, double* %z, align 8, !dbg !91
  %10 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !92
  %center9 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %10, i32 0, i32 0, !dbg !93
  %z10 = getelementptr inbounds %struct._vec, %struct._vec* %center9, i32 0, i32 2, !dbg !94
  %11 = load double, double* %z10, align 8, !dbg !94
  %sub11 = fsub double %9, %11, !dbg !95
  %z12 = getelementptr inbounds %struct._vec, %struct._vec* %rs, i32 0, i32 2, !dbg !96
  store double %sub11, double* %z12, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %B, metadata !98, metadata !DIExpression()), !dbg !99
  %12 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !100
  %dir = getelementptr inbounds %struct._Ray, %struct._Ray* %12, i32 0, i32 1, !dbg !101
  %call = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %rs, %struct._vec* noundef byval(%struct._vec) align 8 %dir), !dbg !102
  store double %call, double* %B, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %C, metadata !103, metadata !DIExpression()), !dbg !104
  %call13 = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %rs, %struct._vec* noundef byval(%struct._vec) align 8 %rs), !dbg !105
  %13 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !106
  %radius = getelementptr inbounds %struct._Sphere, %struct._Sphere* %13, i32 0, i32 1, !dbg !107
  %14 = load double, double* %radius, align 8, !dbg !107
  %15 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !108
  %radius14 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %15, i32 0, i32 1, !dbg !109
  %16 = load double, double* %radius14, align 8, !dbg !109
  %neg = fneg double %14, !dbg !110
  %17 = call double @llvm.fmuladd.f64(double %neg, double %16, double %call13), !dbg !110
  store double %17, double* %C, align 8, !dbg !104
  call void @llvm.dbg.declare(metadata double* %D, metadata !111, metadata !DIExpression()), !dbg !112
  %18 = load double, double* %B, align 8, !dbg !113
  %19 = load double, double* %B, align 8, !dbg !114
  %20 = load double, double* %C, align 8, !dbg !115
  %neg15 = fneg double %20, !dbg !116
  %21 = call double @llvm.fmuladd.f64(double %18, double %19, double %neg15), !dbg !116
  store double %21, double* %D, align 8, !dbg !112
  %22 = load double, double* %D, align 8, !dbg !117
  %cmp = fcmp ogt double %22, 0.000000e+00, !dbg !119
  br i1 %cmp, label %if.then, label %if.end61, !dbg !120

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %t, metadata !121, metadata !DIExpression()), !dbg !123
  %23 = load double, double* %B, align 8, !dbg !124
  %fneg = fneg double %23, !dbg !125
  %24 = load double, double* %D, align 8, !dbg !126
  %call16 = call double @sqrt(double noundef %24) #7, !dbg !127
  %sub17 = fsub double %fneg, %call16, !dbg !128
  store double %sub17, double* %t, align 8, !dbg !123
  %25 = load double, double* %t, align 8, !dbg !129
  %cmp18 = fcmp ogt double %25, 0.000000e+00, !dbg !131
  br i1 %cmp18, label %land.lhs.true, label %if.end, !dbg !132

land.lhs.true:                                    ; preds = %if.then
  %26 = load double, double* %t, align 8, !dbg !133
  %27 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !134
  %t19 = getelementptr inbounds %struct._Isect, %struct._Isect* %27, i32 0, i32 0, !dbg !135
  %28 = load double, double* %t19, align 8, !dbg !135
  %cmp20 = fcmp olt double %26, %28, !dbg !136
  br i1 %cmp20, label %if.then21, label %if.end, !dbg !137

if.then21:                                        ; preds = %land.lhs.true
  %29 = load double, double* %t, align 8, !dbg !138
  %30 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !140
  %t22 = getelementptr inbounds %struct._Isect, %struct._Isect* %30, i32 0, i32 0, !dbg !141
  store double %29, double* %t22, align 8, !dbg !142
  %31 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !143
  %hit = getelementptr inbounds %struct._Isect, %struct._Isect* %31, i32 0, i32 3, !dbg !144
  store i32 1, i32* %hit, align 8, !dbg !145
  %32 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !146
  %org23 = getelementptr inbounds %struct._Ray, %struct._Ray* %32, i32 0, i32 0, !dbg !147
  %x24 = getelementptr inbounds %struct._vec, %struct._vec* %org23, i32 0, i32 0, !dbg !148
  %33 = load double, double* %x24, align 8, !dbg !148
  %34 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !149
  %dir25 = getelementptr inbounds %struct._Ray, %struct._Ray* %34, i32 0, i32 1, !dbg !150
  %x26 = getelementptr inbounds %struct._vec, %struct._vec* %dir25, i32 0, i32 0, !dbg !151
  %35 = load double, double* %x26, align 8, !dbg !151
  %36 = load double, double* %t, align 8, !dbg !152
  %37 = call double @llvm.fmuladd.f64(double %35, double %36, double %33), !dbg !153
  %38 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !154
  %p = getelementptr inbounds %struct._Isect, %struct._Isect* %38, i32 0, i32 1, !dbg !155
  %x27 = getelementptr inbounds %struct._vec, %struct._vec* %p, i32 0, i32 0, !dbg !156
  store double %37, double* %x27, align 8, !dbg !157
  %39 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !158
  %org28 = getelementptr inbounds %struct._Ray, %struct._Ray* %39, i32 0, i32 0, !dbg !159
  %y29 = getelementptr inbounds %struct._vec, %struct._vec* %org28, i32 0, i32 1, !dbg !160
  %40 = load double, double* %y29, align 8, !dbg !160
  %41 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !161
  %dir30 = getelementptr inbounds %struct._Ray, %struct._Ray* %41, i32 0, i32 1, !dbg !162
  %y31 = getelementptr inbounds %struct._vec, %struct._vec* %dir30, i32 0, i32 1, !dbg !163
  %42 = load double, double* %y31, align 8, !dbg !163
  %43 = load double, double* %t, align 8, !dbg !164
  %44 = call double @llvm.fmuladd.f64(double %42, double %43, double %40), !dbg !165
  %45 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !166
  %p32 = getelementptr inbounds %struct._Isect, %struct._Isect* %45, i32 0, i32 1, !dbg !167
  %y33 = getelementptr inbounds %struct._vec, %struct._vec* %p32, i32 0, i32 1, !dbg !168
  store double %44, double* %y33, align 8, !dbg !169
  %46 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !170
  %org34 = getelementptr inbounds %struct._Ray, %struct._Ray* %46, i32 0, i32 0, !dbg !171
  %z35 = getelementptr inbounds %struct._vec, %struct._vec* %org34, i32 0, i32 2, !dbg !172
  %47 = load double, double* %z35, align 8, !dbg !172
  %48 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !173
  %dir36 = getelementptr inbounds %struct._Ray, %struct._Ray* %48, i32 0, i32 1, !dbg !174
  %z37 = getelementptr inbounds %struct._vec, %struct._vec* %dir36, i32 0, i32 2, !dbg !175
  %49 = load double, double* %z37, align 8, !dbg !175
  %50 = load double, double* %t, align 8, !dbg !176
  %51 = call double @llvm.fmuladd.f64(double %49, double %50, double %47), !dbg !177
  %52 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !178
  %p38 = getelementptr inbounds %struct._Isect, %struct._Isect* %52, i32 0, i32 1, !dbg !179
  %z39 = getelementptr inbounds %struct._vec, %struct._vec* %p38, i32 0, i32 2, !dbg !180
  store double %51, double* %z39, align 8, !dbg !181
  %53 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !182
  %p40 = getelementptr inbounds %struct._Isect, %struct._Isect* %53, i32 0, i32 1, !dbg !183
  %x41 = getelementptr inbounds %struct._vec, %struct._vec* %p40, i32 0, i32 0, !dbg !184
  %54 = load double, double* %x41, align 8, !dbg !184
  %55 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !185
  %center42 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %55, i32 0, i32 0, !dbg !186
  %x43 = getelementptr inbounds %struct._vec, %struct._vec* %center42, i32 0, i32 0, !dbg !187
  %56 = load double, double* %x43, align 8, !dbg !187
  %sub44 = fsub double %54, %56, !dbg !188
  %57 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !189
  %n = getelementptr inbounds %struct._Isect, %struct._Isect* %57, i32 0, i32 2, !dbg !190
  %x45 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 0, !dbg !191
  store double %sub44, double* %x45, align 8, !dbg !192
  %58 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !193
  %p46 = getelementptr inbounds %struct._Isect, %struct._Isect* %58, i32 0, i32 1, !dbg !194
  %y47 = getelementptr inbounds %struct._vec, %struct._vec* %p46, i32 0, i32 1, !dbg !195
  %59 = load double, double* %y47, align 8, !dbg !195
  %60 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !196
  %center48 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %60, i32 0, i32 0, !dbg !197
  %y49 = getelementptr inbounds %struct._vec, %struct._vec* %center48, i32 0, i32 1, !dbg !198
  %61 = load double, double* %y49, align 8, !dbg !198
  %sub50 = fsub double %59, %61, !dbg !199
  %62 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !200
  %n51 = getelementptr inbounds %struct._Isect, %struct._Isect* %62, i32 0, i32 2, !dbg !201
  %y52 = getelementptr inbounds %struct._vec, %struct._vec* %n51, i32 0, i32 1, !dbg !202
  store double %sub50, double* %y52, align 8, !dbg !203
  %63 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !204
  %p53 = getelementptr inbounds %struct._Isect, %struct._Isect* %63, i32 0, i32 1, !dbg !205
  %z54 = getelementptr inbounds %struct._vec, %struct._vec* %p53, i32 0, i32 2, !dbg !206
  %64 = load double, double* %z54, align 8, !dbg !206
  %65 = load %struct._Sphere*, %struct._Sphere** %sphere.addr, align 8, !dbg !207
  %center55 = getelementptr inbounds %struct._Sphere, %struct._Sphere* %65, i32 0, i32 0, !dbg !208
  %z56 = getelementptr inbounds %struct._vec, %struct._vec* %center55, i32 0, i32 2, !dbg !209
  %66 = load double, double* %z56, align 8, !dbg !209
  %sub57 = fsub double %64, %66, !dbg !210
  %67 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !211
  %n58 = getelementptr inbounds %struct._Isect, %struct._Isect* %67, i32 0, i32 2, !dbg !212
  %z59 = getelementptr inbounds %struct._vec, %struct._vec* %n58, i32 0, i32 2, !dbg !213
  store double %sub57, double* %z59, align 8, !dbg !214
  %68 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !215
  %n60 = getelementptr inbounds %struct._Isect, %struct._Isect* %68, i32 0, i32 2, !dbg !216
  call void @vnormalize(%struct._vec* noundef %n60), !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then21, %land.lhs.true, %if.then
  br label %if.end61, !dbg !219

if.end61:                                         ; preds = %if.end, %entry
  ret void, !dbg !220
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %v0, %struct._vec* noundef byval(%struct._vec) align 8 %v1) #0 !dbg !221 {
entry:
  call void @llvm.dbg.declare(metadata %struct._vec* %v0, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata %struct._vec* %v1, metadata !226, metadata !DIExpression()), !dbg !227
  %x = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 0, !dbg !228
  %0 = load double, double* %x, align 8, !dbg !228
  %x1 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 0, !dbg !229
  %1 = load double, double* %x1, align 8, !dbg !229
  %y = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 1, !dbg !230
  %2 = load double, double* %y, align 8, !dbg !230
  %y2 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 1, !dbg !231
  %3 = load double, double* %y2, align 8, !dbg !231
  %mul3 = fmul double %2, %3, !dbg !232
  %4 = call double @llvm.fmuladd.f64(double %0, double %1, double %mul3), !dbg !233
  %z = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 2, !dbg !234
  %5 = load double, double* %z, align 8, !dbg !234
  %z4 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 2, !dbg !235
  %6 = load double, double* %z4, align 8, !dbg !235
  %7 = call double @llvm.fmuladd.f64(double %5, double %6, double %4), !dbg !236
  ret double %7, !dbg !237
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @vnormalize(%struct._vec* noundef %c) #0 !dbg !238 {
entry:
  %c.addr = alloca %struct._vec*, align 8
  %length = alloca double, align 8
  store %struct._vec* %c, %struct._vec** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._vec** %c.addr, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata double* %length, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !246
  %1 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !247
  %call = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %0, %struct._vec* noundef byval(%struct._vec) align 8 %1), !dbg !248
  %call1 = call double @sqrt(double noundef %call) #7, !dbg !249
  store double %call1, double* %length, align 8, !dbg !245
  %2 = load double, double* %length, align 8, !dbg !250
  %3 = call double @llvm.fabs.f64(double %2), !dbg !252
  %cmp = fcmp ogt double %3, 1.000000e-17, !dbg !253
  br i1 %cmp, label %if.then, label %if.end, !dbg !254

if.then:                                          ; preds = %entry
  %4 = load double, double* %length, align 8, !dbg !255
  %5 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !257
  %x = getelementptr inbounds %struct._vec, %struct._vec* %5, i32 0, i32 0, !dbg !258
  %6 = load double, double* %x, align 8, !dbg !259
  %div = fdiv double %6, %4, !dbg !259
  store double %div, double* %x, align 8, !dbg !259
  %7 = load double, double* %length, align 8, !dbg !260
  %8 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !261
  %y = getelementptr inbounds %struct._vec, %struct._vec* %8, i32 0, i32 1, !dbg !262
  %9 = load double, double* %y, align 8, !dbg !263
  %div2 = fdiv double %9, %7, !dbg !263
  store double %div2, double* %y, align 8, !dbg !263
  %10 = load double, double* %length, align 8, !dbg !264
  %11 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !265
  %z = getelementptr inbounds %struct._vec, %struct._vec* %11, i32 0, i32 2, !dbg !266
  %12 = load double, double* %z, align 8, !dbg !267
  %div3 = fdiv double %12, %10, !dbg !267
  store double %div3, double* %z, align 8, !dbg !267
  br label %if.end, !dbg !268

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !269
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ray_plane_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Plane* noundef %plane) #0 !dbg !270 {
entry:
  %isect.addr = alloca %struct._Isect*, align 8
  %ray.addr = alloca %struct._Ray*, align 8
  %plane.addr = alloca %struct._Plane*, align 8
  %d = alloca double, align 8
  %v = alloca double, align 8
  %t = alloca double, align 8
  store %struct._Isect* %isect, %struct._Isect** %isect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Isect** %isect.addr, metadata !275, metadata !DIExpression()), !dbg !276
  store %struct._Ray* %ray, %struct._Ray** %ray.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Ray** %ray.addr, metadata !277, metadata !DIExpression()), !dbg !278
  store %struct._Plane* %plane, %struct._Plane** %plane.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Plane** %plane.addr, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata double* %d, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load %struct._Plane*, %struct._Plane** %plane.addr, align 8, !dbg !283
  %p = getelementptr inbounds %struct._Plane, %struct._Plane* %0, i32 0, i32 0, !dbg !284
  %1 = load %struct._Plane*, %struct._Plane** %plane.addr, align 8, !dbg !285
  %n = getelementptr inbounds %struct._Plane, %struct._Plane* %1, i32 0, i32 1, !dbg !286
  %call = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %p, %struct._vec* noundef byval(%struct._vec) align 8 %n), !dbg !287
  %fneg = fneg double %call, !dbg !288
  store double %fneg, double* %d, align 8, !dbg !282
  call void @llvm.dbg.declare(metadata double* %v, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !291
  %dir = getelementptr inbounds %struct._Ray, %struct._Ray* %2, i32 0, i32 1, !dbg !292
  %3 = load %struct._Plane*, %struct._Plane** %plane.addr, align 8, !dbg !293
  %n1 = getelementptr inbounds %struct._Plane, %struct._Plane* %3, i32 0, i32 1, !dbg !294
  %call2 = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %dir, %struct._vec* noundef byval(%struct._vec) align 8 %n1), !dbg !295
  store double %call2, double* %v, align 8, !dbg !290
  %4 = load double, double* %v, align 8, !dbg !296
  %5 = call double @llvm.fabs.f64(double %4), !dbg !298
  %cmp = fcmp olt double %5, 1.000000e-17, !dbg !299
  br i1 %cmp, label %if.then, label %if.end, !dbg !300

if.then:                                          ; preds = %entry
  br label %if.end28, !dbg !301

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata double* %t, metadata !302, metadata !DIExpression()), !dbg !303
  %6 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !304
  %org = getelementptr inbounds %struct._Ray, %struct._Ray* %6, i32 0, i32 0, !dbg !305
  %7 = load %struct._Plane*, %struct._Plane** %plane.addr, align 8, !dbg !306
  %n3 = getelementptr inbounds %struct._Plane, %struct._Plane* %7, i32 0, i32 1, !dbg !307
  %call4 = call double @vdot(%struct._vec* noundef byval(%struct._vec) align 8 %org, %struct._vec* noundef byval(%struct._vec) align 8 %n3), !dbg !308
  %8 = load double, double* %d, align 8, !dbg !309
  %add = fadd double %call4, %8, !dbg !310
  %fneg5 = fneg double %add, !dbg !311
  %9 = load double, double* %v, align 8, !dbg !312
  %div = fdiv double %fneg5, %9, !dbg !313
  store double %div, double* %t, align 8, !dbg !303
  %10 = load double, double* %t, align 8, !dbg !314
  %cmp6 = fcmp ogt double %10, 0.000000e+00, !dbg !316
  br i1 %cmp6, label %land.lhs.true, label %if.end28, !dbg !317

land.lhs.true:                                    ; preds = %if.end
  %11 = load double, double* %t, align 8, !dbg !318
  %12 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !319
  %t7 = getelementptr inbounds %struct._Isect, %struct._Isect* %12, i32 0, i32 0, !dbg !320
  %13 = load double, double* %t7, align 8, !dbg !320
  %cmp8 = fcmp olt double %11, %13, !dbg !321
  br i1 %cmp8, label %if.then9, label %if.end28, !dbg !322

if.then9:                                         ; preds = %land.lhs.true
  %14 = load double, double* %t, align 8, !dbg !323
  %15 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !325
  %t10 = getelementptr inbounds %struct._Isect, %struct._Isect* %15, i32 0, i32 0, !dbg !326
  store double %14, double* %t10, align 8, !dbg !327
  %16 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !328
  %hit = getelementptr inbounds %struct._Isect, %struct._Isect* %16, i32 0, i32 3, !dbg !329
  store i32 1, i32* %hit, align 8, !dbg !330
  %17 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !331
  %org11 = getelementptr inbounds %struct._Ray, %struct._Ray* %17, i32 0, i32 0, !dbg !332
  %x = getelementptr inbounds %struct._vec, %struct._vec* %org11, i32 0, i32 0, !dbg !333
  %18 = load double, double* %x, align 8, !dbg !333
  %19 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !334
  %dir12 = getelementptr inbounds %struct._Ray, %struct._Ray* %19, i32 0, i32 1, !dbg !335
  %x13 = getelementptr inbounds %struct._vec, %struct._vec* %dir12, i32 0, i32 0, !dbg !336
  %20 = load double, double* %x13, align 8, !dbg !336
  %21 = load double, double* %t, align 8, !dbg !337
  %22 = call double @llvm.fmuladd.f64(double %20, double %21, double %18), !dbg !338
  %23 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !339
  %p14 = getelementptr inbounds %struct._Isect, %struct._Isect* %23, i32 0, i32 1, !dbg !340
  %x15 = getelementptr inbounds %struct._vec, %struct._vec* %p14, i32 0, i32 0, !dbg !341
  store double %22, double* %x15, align 8, !dbg !342
  %24 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !343
  %org16 = getelementptr inbounds %struct._Ray, %struct._Ray* %24, i32 0, i32 0, !dbg !344
  %y = getelementptr inbounds %struct._vec, %struct._vec* %org16, i32 0, i32 1, !dbg !345
  %25 = load double, double* %y, align 8, !dbg !345
  %26 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !346
  %dir17 = getelementptr inbounds %struct._Ray, %struct._Ray* %26, i32 0, i32 1, !dbg !347
  %y18 = getelementptr inbounds %struct._vec, %struct._vec* %dir17, i32 0, i32 1, !dbg !348
  %27 = load double, double* %y18, align 8, !dbg !348
  %28 = load double, double* %t, align 8, !dbg !349
  %29 = call double @llvm.fmuladd.f64(double %27, double %28, double %25), !dbg !350
  %30 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !351
  %p19 = getelementptr inbounds %struct._Isect, %struct._Isect* %30, i32 0, i32 1, !dbg !352
  %y20 = getelementptr inbounds %struct._vec, %struct._vec* %p19, i32 0, i32 1, !dbg !353
  store double %29, double* %y20, align 8, !dbg !354
  %31 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !355
  %org21 = getelementptr inbounds %struct._Ray, %struct._Ray* %31, i32 0, i32 0, !dbg !356
  %z = getelementptr inbounds %struct._vec, %struct._vec* %org21, i32 0, i32 2, !dbg !357
  %32 = load double, double* %z, align 8, !dbg !357
  %33 = load %struct._Ray*, %struct._Ray** %ray.addr, align 8, !dbg !358
  %dir22 = getelementptr inbounds %struct._Ray, %struct._Ray* %33, i32 0, i32 1, !dbg !359
  %z23 = getelementptr inbounds %struct._vec, %struct._vec* %dir22, i32 0, i32 2, !dbg !360
  %34 = load double, double* %z23, align 8, !dbg !360
  %35 = load double, double* %t, align 8, !dbg !361
  %36 = call double @llvm.fmuladd.f64(double %34, double %35, double %32), !dbg !362
  %37 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !363
  %p24 = getelementptr inbounds %struct._Isect, %struct._Isect* %37, i32 0, i32 1, !dbg !364
  %z25 = getelementptr inbounds %struct._vec, %struct._vec* %p24, i32 0, i32 2, !dbg !365
  store double %36, double* %z25, align 8, !dbg !366
  %38 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !367
  %n26 = getelementptr inbounds %struct._Isect, %struct._Isect* %38, i32 0, i32 2, !dbg !368
  %39 = load %struct._Plane*, %struct._Plane** %plane.addr, align 8, !dbg !369
  %n27 = getelementptr inbounds %struct._Plane, %struct._Plane* %39, i32 0, i32 1, !dbg !370
  %40 = bitcast %struct._vec* %n26 to i8*, !dbg !370
  %41 = bitcast %struct._vec* %n27 to i8*, !dbg !370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false), !dbg !370
  br label %if.end28, !dbg !371

if.end28:                                         ; preds = %if.then, %if.then9, %land.lhs.true, %if.end
  ret void, !dbg !372
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @orthoBasis(%struct._vec* noundef %basis, %struct._vec* noundef byval(%struct._vec) align 8 %n) #0 !dbg !373 {
entry:
  %basis.addr = alloca %struct._vec*, align 8
  store %struct._vec* %basis, %struct._vec** %basis.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._vec** %basis.addr, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata %struct._vec* %n, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !380
  %arrayidx = getelementptr inbounds %struct._vec, %struct._vec* %0, i64 2, !dbg !380
  %1 = bitcast %struct._vec* %arrayidx to i8*, !dbg !381
  %2 = bitcast %struct._vec* %n to i8*, !dbg !381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false), !dbg !381
  %3 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !382
  %arrayidx1 = getelementptr inbounds %struct._vec, %struct._vec* %3, i64 1, !dbg !382
  %x = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx1, i32 0, i32 0, !dbg !383
  store double 0.000000e+00, double* %x, align 8, !dbg !384
  %4 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !385
  %arrayidx2 = getelementptr inbounds %struct._vec, %struct._vec* %4, i64 1, !dbg !385
  %y = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx2, i32 0, i32 1, !dbg !386
  store double 0.000000e+00, double* %y, align 8, !dbg !387
  %5 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !388
  %arrayidx3 = getelementptr inbounds %struct._vec, %struct._vec* %5, i64 1, !dbg !388
  %z = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx3, i32 0, i32 2, !dbg !389
  store double 0.000000e+00, double* %z, align 8, !dbg !390
  %x4 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 0, !dbg !391
  %6 = load double, double* %x4, align 8, !dbg !391
  %cmp = fcmp olt double %6, 6.000000e-01, !dbg !393
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !394

land.lhs.true:                                    ; preds = %entry
  %x5 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 0, !dbg !395
  %7 = load double, double* %x5, align 8, !dbg !395
  %cmp6 = fcmp ogt double %7, -6.000000e-01, !dbg !396
  br i1 %cmp6, label %if.then, label %if.else, !dbg !397

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !398
  %arrayidx7 = getelementptr inbounds %struct._vec, %struct._vec* %8, i64 1, !dbg !398
  %x8 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx7, i32 0, i32 0, !dbg !400
  store double 1.000000e+00, double* %x8, align 8, !dbg !401
  br label %if.end30, !dbg !402

if.else:                                          ; preds = %land.lhs.true, %entry
  %y9 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 1, !dbg !403
  %9 = load double, double* %y9, align 8, !dbg !403
  %cmp10 = fcmp olt double %9, 6.000000e-01, !dbg !405
  br i1 %cmp10, label %land.lhs.true11, label %if.else17, !dbg !406

land.lhs.true11:                                  ; preds = %if.else
  %y12 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 1, !dbg !407
  %10 = load double, double* %y12, align 8, !dbg !407
  %cmp13 = fcmp ogt double %10, -6.000000e-01, !dbg !408
  br i1 %cmp13, label %if.then14, label %if.else17, !dbg !409

if.then14:                                        ; preds = %land.lhs.true11
  %11 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !410
  %arrayidx15 = getelementptr inbounds %struct._vec, %struct._vec* %11, i64 1, !dbg !410
  %y16 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx15, i32 0, i32 1, !dbg !412
  store double 1.000000e+00, double* %y16, align 8, !dbg !413
  br label %if.end29, !dbg !414

if.else17:                                        ; preds = %land.lhs.true11, %if.else
  %z18 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 2, !dbg !415
  %12 = load double, double* %z18, align 8, !dbg !415
  %cmp19 = fcmp olt double %12, 6.000000e-01, !dbg !417
  br i1 %cmp19, label %land.lhs.true20, label %if.else26, !dbg !418

land.lhs.true20:                                  ; preds = %if.else17
  %z21 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 2, !dbg !419
  %13 = load double, double* %z21, align 8, !dbg !419
  %cmp22 = fcmp ogt double %13, -6.000000e-01, !dbg !420
  br i1 %cmp22, label %if.then23, label %if.else26, !dbg !421

if.then23:                                        ; preds = %land.lhs.true20
  %14 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !422
  %arrayidx24 = getelementptr inbounds %struct._vec, %struct._vec* %14, i64 1, !dbg !422
  %z25 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx24, i32 0, i32 2, !dbg !424
  store double 1.000000e+00, double* %z25, align 8, !dbg !425
  br label %if.end, !dbg !426

if.else26:                                        ; preds = %land.lhs.true20, %if.else17
  %15 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !427
  %arrayidx27 = getelementptr inbounds %struct._vec, %struct._vec* %15, i64 1, !dbg !427
  %x28 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx27, i32 0, i32 0, !dbg !429
  store double 1.000000e+00, double* %x28, align 8, !dbg !430
  br label %if.end

if.end:                                           ; preds = %if.else26, %if.then23
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.then14
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then
  %16 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !431
  %arrayidx31 = getelementptr inbounds %struct._vec, %struct._vec* %16, i64 0, !dbg !431
  %17 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !432
  %arrayidx32 = getelementptr inbounds %struct._vec, %struct._vec* %17, i64 1, !dbg !432
  %18 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !433
  %arrayidx33 = getelementptr inbounds %struct._vec, %struct._vec* %18, i64 2, !dbg !433
  call void @vcross(%struct._vec* noundef %arrayidx31, %struct._vec* noundef byval(%struct._vec) align 8 %arrayidx32, %struct._vec* noundef byval(%struct._vec) align 8 %arrayidx33), !dbg !434
  %19 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !435
  %arrayidx34 = getelementptr inbounds %struct._vec, %struct._vec* %19, i64 0, !dbg !435
  call void @vnormalize(%struct._vec* noundef %arrayidx34), !dbg !436
  %20 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !437
  %arrayidx35 = getelementptr inbounds %struct._vec, %struct._vec* %20, i64 1, !dbg !437
  %21 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !438
  %arrayidx36 = getelementptr inbounds %struct._vec, %struct._vec* %21, i64 2, !dbg !438
  %22 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !439
  %arrayidx37 = getelementptr inbounds %struct._vec, %struct._vec* %22, i64 0, !dbg !439
  call void @vcross(%struct._vec* noundef %arrayidx35, %struct._vec* noundef byval(%struct._vec) align 8 %arrayidx36, %struct._vec* noundef byval(%struct._vec) align 8 %arrayidx37), !dbg !440
  %23 = load %struct._vec*, %struct._vec** %basis.addr, align 8, !dbg !441
  %arrayidx38 = getelementptr inbounds %struct._vec, %struct._vec* %23, i64 1, !dbg !441
  call void @vnormalize(%struct._vec* noundef %arrayidx38), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind uwtable
define internal void @vcross(%struct._vec* noundef %c, %struct._vec* noundef byval(%struct._vec) align 8 %v0, %struct._vec* noundef byval(%struct._vec) align 8 %v1) #0 !dbg !444 {
entry:
  %c.addr = alloca %struct._vec*, align 8
  store %struct._vec* %c, %struct._vec** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._vec** %c.addr, metadata !447, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.declare(metadata %struct._vec* %v0, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata %struct._vec* %v1, metadata !451, metadata !DIExpression()), !dbg !452
  %y = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 1, !dbg !453
  %0 = load double, double* %y, align 8, !dbg !453
  %z = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 2, !dbg !454
  %1 = load double, double* %z, align 8, !dbg !454
  %z1 = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 2, !dbg !455
  %2 = load double, double* %z1, align 8, !dbg !455
  %y2 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 1, !dbg !456
  %3 = load double, double* %y2, align 8, !dbg !456
  %mul3 = fmul double %2, %3, !dbg !457
  %neg = fneg double %mul3, !dbg !458
  %4 = call double @llvm.fmuladd.f64(double %0, double %1, double %neg), !dbg !458
  %5 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !459
  %x = getelementptr inbounds %struct._vec, %struct._vec* %5, i32 0, i32 0, !dbg !460
  store double %4, double* %x, align 8, !dbg !461
  %z4 = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 2, !dbg !462
  %6 = load double, double* %z4, align 8, !dbg !462
  %x5 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 0, !dbg !463
  %7 = load double, double* %x5, align 8, !dbg !463
  %x6 = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 0, !dbg !464
  %8 = load double, double* %x6, align 8, !dbg !464
  %z7 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 2, !dbg !465
  %9 = load double, double* %z7, align 8, !dbg !465
  %mul8 = fmul double %8, %9, !dbg !466
  %neg9 = fneg double %mul8, !dbg !467
  %10 = call double @llvm.fmuladd.f64(double %6, double %7, double %neg9), !dbg !467
  %11 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !468
  %y10 = getelementptr inbounds %struct._vec, %struct._vec* %11, i32 0, i32 1, !dbg !469
  store double %10, double* %y10, align 8, !dbg !470
  %x11 = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 0, !dbg !471
  %12 = load double, double* %x11, align 8, !dbg !471
  %y12 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 1, !dbg !472
  %13 = load double, double* %y12, align 8, !dbg !472
  %y13 = getelementptr inbounds %struct._vec, %struct._vec* %v0, i32 0, i32 1, !dbg !473
  %14 = load double, double* %y13, align 8, !dbg !473
  %x14 = getelementptr inbounds %struct._vec, %struct._vec* %v1, i32 0, i32 0, !dbg !474
  %15 = load double, double* %x14, align 8, !dbg !474
  %mul15 = fmul double %14, %15, !dbg !475
  %neg16 = fneg double %mul15, !dbg !476
  %16 = call double @llvm.fmuladd.f64(double %12, double %13, double %neg16), !dbg !476
  %17 = load %struct._vec*, %struct._vec** %c.addr, align 8, !dbg !477
  %z17 = getelementptr inbounds %struct._vec, %struct._vec* %17, i32 0, i32 2, !dbg !478
  store double %16, double* %z17, align 8, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ambient_occlusion(%struct._vec* noundef %col, %struct._Isect* noundef %isect) #0 !dbg !481 {
entry:
  %col.addr = alloca %struct._vec*, align 8
  %isect.addr = alloca %struct._Isect*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ntheta = alloca i32, align 4
  %nphi = alloca i32, align 4
  %eps = alloca double, align 8
  %p = alloca %struct._vec, align 8
  %basis = alloca [3 x %struct._vec], align 16
  %occlusion = alloca double, align 8
  %theta = alloca double, align 8
  %phi = alloca double, align 8
  %x18 = alloca double, align 8
  %y21 = alloca double, align 8
  %z24 = alloca double, align 8
  %rx = alloca double, align 8
  %ry = alloca double, align 8
  %rz = alloca double, align 8
  %ray = alloca %struct._Ray, align 8
  %occIsect = alloca %struct._Isect, align 8
  store %struct._vec* %col, %struct._vec** %col.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._vec** %col.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store %struct._Isect* %isect, %struct._Isect** %isect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._Isect** %isect.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i32* %i, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i32* %j, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata i32* %ntheta, metadata !494, metadata !DIExpression()), !dbg !495
  store i32 8, i32* %ntheta, align 4, !dbg !495
  call void @llvm.dbg.declare(metadata i32* %nphi, metadata !496, metadata !DIExpression()), !dbg !497
  store i32 8, i32* %nphi, align 4, !dbg !497
  call void @llvm.dbg.declare(metadata double* %eps, metadata !498, metadata !DIExpression()), !dbg !499
  store double 1.000000e-04, double* %eps, align 8, !dbg !499
  call void @llvm.dbg.declare(metadata %struct._vec* %p, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !502
  %p1 = getelementptr inbounds %struct._Isect, %struct._Isect* %0, i32 0, i32 1, !dbg !503
  %x = getelementptr inbounds %struct._vec, %struct._vec* %p1, i32 0, i32 0, !dbg !504
  %1 = load double, double* %x, align 8, !dbg !504
  %2 = load double, double* %eps, align 8, !dbg !505
  %3 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !506
  %n = getelementptr inbounds %struct._Isect, %struct._Isect* %3, i32 0, i32 2, !dbg !507
  %x2 = getelementptr inbounds %struct._vec, %struct._vec* %n, i32 0, i32 0, !dbg !508
  %4 = load double, double* %x2, align 8, !dbg !508
  %5 = call double @llvm.fmuladd.f64(double %2, double %4, double %1), !dbg !509
  %x3 = getelementptr inbounds %struct._vec, %struct._vec* %p, i32 0, i32 0, !dbg !510
  store double %5, double* %x3, align 8, !dbg !511
  %6 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !512
  %p4 = getelementptr inbounds %struct._Isect, %struct._Isect* %6, i32 0, i32 1, !dbg !513
  %y = getelementptr inbounds %struct._vec, %struct._vec* %p4, i32 0, i32 1, !dbg !514
  %7 = load double, double* %y, align 8, !dbg !514
  %8 = load double, double* %eps, align 8, !dbg !515
  %9 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !516
  %n5 = getelementptr inbounds %struct._Isect, %struct._Isect* %9, i32 0, i32 2, !dbg !517
  %y6 = getelementptr inbounds %struct._vec, %struct._vec* %n5, i32 0, i32 1, !dbg !518
  %10 = load double, double* %y6, align 8, !dbg !518
  %11 = call double @llvm.fmuladd.f64(double %8, double %10, double %7), !dbg !519
  %y7 = getelementptr inbounds %struct._vec, %struct._vec* %p, i32 0, i32 1, !dbg !520
  store double %11, double* %y7, align 8, !dbg !521
  %12 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !522
  %p8 = getelementptr inbounds %struct._Isect, %struct._Isect* %12, i32 0, i32 1, !dbg !523
  %z = getelementptr inbounds %struct._vec, %struct._vec* %p8, i32 0, i32 2, !dbg !524
  %13 = load double, double* %z, align 8, !dbg !524
  %14 = load double, double* %eps, align 8, !dbg !525
  %15 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !526
  %n9 = getelementptr inbounds %struct._Isect, %struct._Isect* %15, i32 0, i32 2, !dbg !527
  %z10 = getelementptr inbounds %struct._vec, %struct._vec* %n9, i32 0, i32 2, !dbg !528
  %16 = load double, double* %z10, align 8, !dbg !528
  %17 = call double @llvm.fmuladd.f64(double %14, double %16, double %13), !dbg !529
  %z11 = getelementptr inbounds %struct._vec, %struct._vec* %p, i32 0, i32 2, !dbg !530
  store double %17, double* %z11, align 8, !dbg !531
  call void @llvm.dbg.declare(metadata [3 x %struct._vec]* %basis, metadata !532, metadata !DIExpression()), !dbg !534
  %arraydecay = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 0, !dbg !535
  %18 = load %struct._Isect*, %struct._Isect** %isect.addr, align 8, !dbg !536
  %n12 = getelementptr inbounds %struct._Isect, %struct._Isect* %18, i32 0, i32 2, !dbg !537
  call void @orthoBasis(%struct._vec* noundef %arraydecay, %struct._vec* noundef byval(%struct._vec) align 8 %n12), !dbg !538
  call void @llvm.dbg.declare(metadata double* %occlusion, metadata !539, metadata !DIExpression()), !dbg !540
  store double 0.000000e+00, double* %occlusion, align 8, !dbg !540
  store i32 0, i32* %j, align 4, !dbg !541
  br label %for.cond, !dbg !543

for.cond:                                         ; preds = %for.inc59, %entry
  %19 = load i32, i32* %j, align 4, !dbg !544
  %20 = load i32, i32* %ntheta, align 4, !dbg !546
  %cmp = icmp slt i32 %19, %20, !dbg !547
  br i1 %cmp, label %for.body, label %for.end61, !dbg !548

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !549
  br label %for.cond13, !dbg !552

for.cond13:                                       ; preds = %for.inc, %for.body
  %21 = load i32, i32* %i, align 4, !dbg !553
  %22 = load i32, i32* %nphi, align 4, !dbg !555
  %cmp14 = icmp slt i32 %21, %22, !dbg !556
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !557

for.body15:                                       ; preds = %for.cond13
  call void @llvm.dbg.declare(metadata double* %theta, metadata !558, metadata !DIExpression()), !dbg !560
  %call = call double @drand48() #7, !dbg !561
  %call16 = call double @sqrt(double noundef %call) #7, !dbg !562
  store double %call16, double* %theta, align 8, !dbg !560
  call void @llvm.dbg.declare(metadata double* %phi, metadata !563, metadata !DIExpression()), !dbg !564
  %call17 = call double @drand48() #7, !dbg !565
  %mul = fmul double 0x401921FB54442D18, %call17, !dbg !566
  store double %mul, double* %phi, align 8, !dbg !564
  call void @llvm.dbg.declare(metadata double* %x18, metadata !567, metadata !DIExpression()), !dbg !568
  %23 = load double, double* %phi, align 8, !dbg !569
  %call19 = call double @cos(double noundef %23) #7, !dbg !570
  %24 = load double, double* %theta, align 8, !dbg !571
  %mul20 = fmul double %call19, %24, !dbg !572
  store double %mul20, double* %x18, align 8, !dbg !568
  call void @llvm.dbg.declare(metadata double* %y21, metadata !573, metadata !DIExpression()), !dbg !574
  %25 = load double, double* %phi, align 8, !dbg !575
  %call22 = call double @sin(double noundef %25) #7, !dbg !576
  %26 = load double, double* %theta, align 8, !dbg !577
  %mul23 = fmul double %call22, %26, !dbg !578
  store double %mul23, double* %y21, align 8, !dbg !574
  call void @llvm.dbg.declare(metadata double* %z24, metadata !579, metadata !DIExpression()), !dbg !580
  %27 = load double, double* %theta, align 8, !dbg !581
  %28 = load double, double* %theta, align 8, !dbg !582
  %neg = fneg double %27, !dbg !583
  %29 = call double @llvm.fmuladd.f64(double %neg, double %28, double 1.000000e+00), !dbg !583
  %call26 = call double @sqrt(double noundef %29) #7, !dbg !584
  store double %call26, double* %z24, align 8, !dbg !580
  call void @llvm.dbg.declare(metadata double* %rx, metadata !585, metadata !DIExpression()), !dbg !586
  %30 = load double, double* %x18, align 8, !dbg !587
  %arrayidx = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 0, !dbg !588
  %x27 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx, i32 0, i32 0, !dbg !589
  %31 = load double, double* %x27, align 16, !dbg !589
  %32 = load double, double* %y21, align 8, !dbg !590
  %arrayidx29 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 1, !dbg !591
  %x30 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx29, i32 0, i32 0, !dbg !592
  %33 = load double, double* %x30, align 8, !dbg !592
  %mul31 = fmul double %32, %33, !dbg !593
  %34 = call double @llvm.fmuladd.f64(double %30, double %31, double %mul31), !dbg !594
  %35 = load double, double* %z24, align 8, !dbg !595
  %arrayidx32 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 2, !dbg !596
  %x33 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx32, i32 0, i32 0, !dbg !597
  %36 = load double, double* %x33, align 16, !dbg !597
  %37 = call double @llvm.fmuladd.f64(double %35, double %36, double %34), !dbg !598
  store double %37, double* %rx, align 8, !dbg !586
  call void @llvm.dbg.declare(metadata double* %ry, metadata !599, metadata !DIExpression()), !dbg !600
  %38 = load double, double* %x18, align 8, !dbg !601
  %arrayidx35 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 0, !dbg !602
  %y36 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx35, i32 0, i32 1, !dbg !603
  %39 = load double, double* %y36, align 8, !dbg !603
  %40 = load double, double* %y21, align 8, !dbg !604
  %arrayidx38 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 1, !dbg !605
  %y39 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx38, i32 0, i32 1, !dbg !606
  %41 = load double, double* %y39, align 8, !dbg !606
  %mul40 = fmul double %40, %41, !dbg !607
  %42 = call double @llvm.fmuladd.f64(double %38, double %39, double %mul40), !dbg !608
  %43 = load double, double* %z24, align 8, !dbg !609
  %arrayidx41 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 2, !dbg !610
  %y42 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx41, i32 0, i32 1, !dbg !611
  %44 = load double, double* %y42, align 8, !dbg !611
  %45 = call double @llvm.fmuladd.f64(double %43, double %44, double %42), !dbg !612
  store double %45, double* %ry, align 8, !dbg !600
  call void @llvm.dbg.declare(metadata double* %rz, metadata !613, metadata !DIExpression()), !dbg !614
  %46 = load double, double* %x18, align 8, !dbg !615
  %arrayidx44 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 0, !dbg !616
  %z45 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx44, i32 0, i32 2, !dbg !617
  %47 = load double, double* %z45, align 16, !dbg !617
  %48 = load double, double* %y21, align 8, !dbg !618
  %arrayidx47 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 1, !dbg !619
  %z48 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx47, i32 0, i32 2, !dbg !620
  %49 = load double, double* %z48, align 8, !dbg !620
  %mul49 = fmul double %48, %49, !dbg !621
  %50 = call double @llvm.fmuladd.f64(double %46, double %47, double %mul49), !dbg !622
  %51 = load double, double* %z24, align 8, !dbg !623
  %arrayidx50 = getelementptr inbounds [3 x %struct._vec], [3 x %struct._vec]* %basis, i64 0, i64 2, !dbg !624
  %z51 = getelementptr inbounds %struct._vec, %struct._vec* %arrayidx50, i32 0, i32 2, !dbg !625
  %52 = load double, double* %z51, align 16, !dbg !625
  %53 = call double @llvm.fmuladd.f64(double %51, double %52, double %50), !dbg !626
  store double %53, double* %rz, align 8, !dbg !614
  call void @llvm.dbg.declare(metadata %struct._Ray* %ray, metadata !627, metadata !DIExpression()), !dbg !628
  %org = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 0, !dbg !629
  %54 = bitcast %struct._vec* %org to i8*, !dbg !630
  %55 = bitcast %struct._vec* %p to i8*, !dbg !630
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false), !dbg !630
  %56 = load double, double* %rx, align 8, !dbg !631
  %dir = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !632
  %x53 = getelementptr inbounds %struct._vec, %struct._vec* %dir, i32 0, i32 0, !dbg !633
  store double %56, double* %x53, align 8, !dbg !634
  %57 = load double, double* %ry, align 8, !dbg !635
  %dir54 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !636
  %y55 = getelementptr inbounds %struct._vec, %struct._vec* %dir54, i32 0, i32 1, !dbg !637
  store double %57, double* %y55, align 8, !dbg !638
  %58 = load double, double* %rz, align 8, !dbg !639
  %dir56 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !640
  %z57 = getelementptr inbounds %struct._vec, %struct._vec* %dir56, i32 0, i32 2, !dbg !641
  store double %58, double* %z57, align 8, !dbg !642
  call void @llvm.dbg.declare(metadata %struct._Isect* %occIsect, metadata !643, metadata !DIExpression()), !dbg !644
  %t = getelementptr inbounds %struct._Isect, %struct._Isect* %occIsect, i32 0, i32 0, !dbg !645
  store double 1.000000e+17, double* %t, align 8, !dbg !646
  %hit = getelementptr inbounds %struct._Isect, %struct._Isect* %occIsect, i32 0, i32 3, !dbg !647
  store i32 0, i32* %hit, align 8, !dbg !648
  call void @ray_sphere_intersect(%struct._Isect* noundef %occIsect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0)), !dbg !649
  call void @ray_sphere_intersect(%struct._Isect* noundef %occIsect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1)), !dbg !650
  call void @ray_sphere_intersect(%struct._Isect* noundef %occIsect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2)), !dbg !651
  call void @ray_plane_intersect(%struct._Isect* noundef %occIsect, %struct._Ray* noundef %ray, %struct._Plane* noundef @plane), !dbg !652
  %hit58 = getelementptr inbounds %struct._Isect, %struct._Isect* %occIsect, i32 0, i32 3, !dbg !653
  %59 = load i32, i32* %hit58, align 8, !dbg !653
  %tobool = icmp ne i32 %59, 0, !dbg !655
  br i1 %tobool, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %for.body15
  %60 = load double, double* %occlusion, align 8, !dbg !657
  %add = fadd double %60, 1.000000e+00, !dbg !657
  store double %add, double* %occlusion, align 8, !dbg !657
  br label %if.end, !dbg !658

if.end:                                           ; preds = %if.then, %for.body15
  br label %for.inc, !dbg !659

for.inc:                                          ; preds = %if.end
  %61 = load i32, i32* %i, align 4, !dbg !660
  %inc = add nsw i32 %61, 1, !dbg !660
  store i32 %inc, i32* %i, align 4, !dbg !660
  br label %for.cond13, !dbg !661, !llvm.loop !662

for.end:                                          ; preds = %for.cond13
  br label %for.inc59, !dbg !665

for.inc59:                                        ; preds = %for.end
  %62 = load i32, i32* %j, align 4, !dbg !666
  %inc60 = add nsw i32 %62, 1, !dbg !666
  store i32 %inc60, i32* %j, align 4, !dbg !666
  br label %for.cond, !dbg !667, !llvm.loop !668

for.end61:                                        ; preds = %for.cond
  %63 = load i32, i32* %ntheta, align 4, !dbg !670
  %64 = load i32, i32* %nphi, align 4, !dbg !671
  %mul62 = mul nsw i32 %63, %64, !dbg !672
  %conv = sitofp i32 %mul62 to double, !dbg !670
  %65 = load double, double* %occlusion, align 8, !dbg !673
  %sub = fsub double %conv, %65, !dbg !674
  %66 = load i32, i32* %ntheta, align 4, !dbg !675
  %67 = load i32, i32* %nphi, align 4, !dbg !676
  %mul63 = mul nsw i32 %66, %67, !dbg !677
  %conv64 = sitofp i32 %mul63 to double, !dbg !678
  %div = fdiv double %sub, %conv64, !dbg !679
  store double %div, double* %occlusion, align 8, !dbg !680
  %68 = load double, double* %occlusion, align 8, !dbg !681
  %69 = load %struct._vec*, %struct._vec** %col.addr, align 8, !dbg !682
  %x65 = getelementptr inbounds %struct._vec, %struct._vec* %69, i32 0, i32 0, !dbg !683
  store double %68, double* %x65, align 8, !dbg !684
  %70 = load double, double* %occlusion, align 8, !dbg !685
  %71 = load %struct._vec*, %struct._vec** %col.addr, align 8, !dbg !686
  %y66 = getelementptr inbounds %struct._vec, %struct._vec* %71, i32 0, i32 1, !dbg !687
  store double %70, double* %y66, align 8, !dbg !688
  %72 = load double, double* %occlusion, align 8, !dbg !689
  %73 = load %struct._vec*, %struct._vec** %col.addr, align 8, !dbg !690
  %z67 = getelementptr inbounds %struct._vec, %struct._vec* %73, i32 0, i32 2, !dbg !691
  store double %72, double* %z67, align 8, !dbg !692
  ret void, !dbg !693
}

; Function Attrs: nounwind
declare double @drand48() #2

; Function Attrs: nounwind
declare double @cos(double noundef) #2

; Function Attrs: nounwind
declare double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i8 @clamp(double noundef %f) #0 !dbg !694 {
entry:
  %f.addr = alloca double, align 8
  %i = alloca i32, align 4
  store double %f, double* %f.addr, align 8
  call void @llvm.dbg.declare(metadata double* %f.addr, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata i32* %i, metadata !699, metadata !DIExpression()), !dbg !700
  %0 = load double, double* %f.addr, align 8, !dbg !701
  %mul = fmul double %0, 2.555000e+02, !dbg !702
  %conv = fptosi double %mul to i32, !dbg !703
  store i32 %conv, i32* %i, align 4, !dbg !700
  %1 = load i32, i32* %i, align 4, !dbg !704
  %cmp = icmp slt i32 %1, 0, !dbg !706
  br i1 %cmp, label %if.then, label %if.end, !dbg !707

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !708
  br label %if.end, !dbg !709

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %i, align 4, !dbg !710
  %cmp2 = icmp sgt i32 %2, 255, !dbg !712
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !713

if.then4:                                         ; preds = %if.end
  store i32 255, i32* %i, align 4, !dbg !714
  br label %if.end5, !dbg !715

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !716
  %conv6 = trunc i32 %3 to i8, !dbg !717
  ret i8 %conv6, !dbg !718
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @render(i8* noundef %img, i32 noundef %w, i32 noundef %h, i32 noundef %nsubsamples) #0 !dbg !719 {
entry:
  %img.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %nsubsamples.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %fimg = alloca double*, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %ray = alloca %struct._Ray, align 8
  %isect = alloca %struct._Isect, align 8
  %col = alloca %struct._vec, align 8
  store i8* %img, i8** %img.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %img.addr, metadata !722, metadata !DIExpression()), !dbg !723
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !724, metadata !DIExpression()), !dbg !725
  store i32 %h, i32* %h.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %h.addr, metadata !726, metadata !DIExpression()), !dbg !727
  store i32 %nsubsamples, i32* %nsubsamples.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nsubsamples.addr, metadata !728, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.declare(metadata i32* %x, metadata !730, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.declare(metadata i32* %y, metadata !732, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata i32* %u, metadata !734, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.declare(metadata i32* %v, metadata !736, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.declare(metadata double** %fimg, metadata !738, metadata !DIExpression()), !dbg !739
  %0 = load i32, i32* %w.addr, align 4, !dbg !740
  %conv = sext i32 %0 to i64, !dbg !740
  %mul = mul i64 8, %conv, !dbg !741
  %1 = load i32, i32* %h.addr, align 4, !dbg !742
  %conv1 = sext i32 %1 to i64, !dbg !742
  %mul2 = mul i64 %mul, %conv1, !dbg !743
  %mul3 = mul i64 %mul2, 3, !dbg !744
  %call = call noalias i8* @malloc(i64 noundef %mul3) #7, !dbg !745
  %2 = bitcast i8* %call to double*, !dbg !746
  store double* %2, double** %fimg, align 8, !dbg !739
  %3 = load double*, double** %fimg, align 8, !dbg !747
  %4 = bitcast double* %3 to i8*, !dbg !748
  %5 = load i32, i32* %w.addr, align 4, !dbg !749
  %conv4 = sext i32 %5 to i64, !dbg !749
  %mul5 = mul i64 8, %conv4, !dbg !750
  %6 = load i32, i32* %h.addr, align 4, !dbg !751
  %conv6 = sext i32 %6 to i64, !dbg !751
  %mul7 = mul i64 %mul5, %conv6, !dbg !752
  %mul8 = mul i64 %mul7, 3, !dbg !753
  call void @llvm.memset.p0i8.i64(i8* align 1 %4, i8 0, i64 %mul8, i1 false), !dbg !748
  store i32 0, i32* %y, align 4, !dbg !754
  br label %for.cond, !dbg !756

for.cond:                                         ; preds = %for.inc146, %entry
  %7 = load i32, i32* %y, align 4, !dbg !757
  %8 = load i32, i32* %h.addr, align 4, !dbg !759
  %cmp = icmp slt i32 %7, %8, !dbg !760
  br i1 %cmp, label %for.body, label %for.end148, !dbg !761

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4, !dbg !762
  br label %for.cond10, !dbg !765

for.cond10:                                       ; preds = %for.inc143, %for.body
  %9 = load i32, i32* %x, align 4, !dbg !766
  %10 = load i32, i32* %w.addr, align 4, !dbg !768
  %cmp11 = icmp slt i32 %9, %10, !dbg !769
  br i1 %cmp11, label %for.body13, label %for.end145, !dbg !770

for.body13:                                       ; preds = %for.cond10
  store i32 0, i32* %v, align 4, !dbg !771
  br label %for.cond14, !dbg !774

for.cond14:                                       ; preds = %for.inc74, %for.body13
  %11 = load i32, i32* %v, align 4, !dbg !775
  %12 = load i32, i32* %nsubsamples.addr, align 4, !dbg !777
  %cmp15 = icmp slt i32 %11, %12, !dbg !778
  br i1 %cmp15, label %for.body17, label %for.end76, !dbg !779

for.body17:                                       ; preds = %for.cond14
  store i32 0, i32* %u, align 4, !dbg !780
  br label %for.cond18, !dbg !783

for.cond18:                                       ; preds = %for.inc, %for.body17
  %13 = load i32, i32* %u, align 4, !dbg !784
  %14 = load i32, i32* %nsubsamples.addr, align 4, !dbg !786
  %cmp19 = icmp slt i32 %13, %14, !dbg !787
  br i1 %cmp19, label %for.body21, label %for.end, !dbg !788

for.body21:                                       ; preds = %for.cond18
  call void @llvm.dbg.declare(metadata double* %px, metadata !789, metadata !DIExpression()), !dbg !791
  %15 = load i32, i32* %x, align 4, !dbg !792
  %conv22 = sitofp i32 %15 to double, !dbg !792
  %16 = load i32, i32* %u, align 4, !dbg !793
  %conv23 = sitofp i32 %16 to double, !dbg !793
  %17 = load i32, i32* %nsubsamples.addr, align 4, !dbg !794
  %conv24 = sitofp i32 %17 to double, !dbg !795
  %div = fdiv double %conv23, %conv24, !dbg !796
  %add = fadd double %conv22, %div, !dbg !797
  %18 = load i32, i32* %w.addr, align 4, !dbg !798
  %conv25 = sitofp i32 %18 to double, !dbg !798
  %div26 = fdiv double %conv25, 2.000000e+00, !dbg !799
  %sub = fsub double %add, %div26, !dbg !800
  %19 = load i32, i32* %w.addr, align 4, !dbg !801
  %conv27 = sitofp i32 %19 to double, !dbg !801
  %div28 = fdiv double %conv27, 2.000000e+00, !dbg !802
  %div29 = fdiv double %sub, %div28, !dbg !803
  store double %div29, double* %px, align 8, !dbg !791
  call void @llvm.dbg.declare(metadata double* %py, metadata !804, metadata !DIExpression()), !dbg !805
  %20 = load i32, i32* %y, align 4, !dbg !806
  %conv30 = sitofp i32 %20 to double, !dbg !806
  %21 = load i32, i32* %v, align 4, !dbg !807
  %conv31 = sitofp i32 %21 to double, !dbg !807
  %22 = load i32, i32* %nsubsamples.addr, align 4, !dbg !808
  %conv32 = sitofp i32 %22 to double, !dbg !809
  %div33 = fdiv double %conv31, %conv32, !dbg !810
  %add34 = fadd double %conv30, %div33, !dbg !811
  %23 = load i32, i32* %h.addr, align 4, !dbg !812
  %conv35 = sitofp i32 %23 to double, !dbg !812
  %div36 = fdiv double %conv35, 2.000000e+00, !dbg !813
  %sub37 = fsub double %add34, %div36, !dbg !814
  %fneg = fneg double %sub37, !dbg !815
  %24 = load i32, i32* %h.addr, align 4, !dbg !816
  %conv38 = sitofp i32 %24 to double, !dbg !816
  %div39 = fdiv double %conv38, 2.000000e+00, !dbg !817
  %div40 = fdiv double %fneg, %div39, !dbg !818
  store double %div40, double* %py, align 8, !dbg !805
  call void @llvm.dbg.declare(metadata %struct._Ray* %ray, metadata !819, metadata !DIExpression()), !dbg !820
  %org = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 0, !dbg !821
  %x41 = getelementptr inbounds %struct._vec, %struct._vec* %org, i32 0, i32 0, !dbg !822
  store double 0.000000e+00, double* %x41, align 8, !dbg !823
  %org42 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 0, !dbg !824
  %y43 = getelementptr inbounds %struct._vec, %struct._vec* %org42, i32 0, i32 1, !dbg !825
  store double 0.000000e+00, double* %y43, align 8, !dbg !826
  %org44 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 0, !dbg !827
  %z = getelementptr inbounds %struct._vec, %struct._vec* %org44, i32 0, i32 2, !dbg !828
  store double 0.000000e+00, double* %z, align 8, !dbg !829
  %25 = load double, double* %px, align 8, !dbg !830
  %dir = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !831
  %x45 = getelementptr inbounds %struct._vec, %struct._vec* %dir, i32 0, i32 0, !dbg !832
  store double %25, double* %x45, align 8, !dbg !833
  %26 = load double, double* %py, align 8, !dbg !834
  %dir46 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !835
  %y47 = getelementptr inbounds %struct._vec, %struct._vec* %dir46, i32 0, i32 1, !dbg !836
  store double %26, double* %y47, align 8, !dbg !837
  %dir48 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !838
  %z49 = getelementptr inbounds %struct._vec, %struct._vec* %dir48, i32 0, i32 2, !dbg !839
  store double -1.000000e+00, double* %z49, align 8, !dbg !840
  %dir50 = getelementptr inbounds %struct._Ray, %struct._Ray* %ray, i32 0, i32 1, !dbg !841
  call void @vnormalize(%struct._vec* noundef %dir50), !dbg !842
  call void @llvm.dbg.declare(metadata %struct._Isect* %isect, metadata !843, metadata !DIExpression()), !dbg !844
  %t = getelementptr inbounds %struct._Isect, %struct._Isect* %isect, i32 0, i32 0, !dbg !845
  store double 1.000000e+17, double* %t, align 8, !dbg !846
  %hit = getelementptr inbounds %struct._Isect, %struct._Isect* %isect, i32 0, i32 3, !dbg !847
  store i32 0, i32* %hit, align 8, !dbg !848
  call void @ray_sphere_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0)), !dbg !849
  call void @ray_sphere_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1)), !dbg !850
  call void @ray_sphere_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Sphere* noundef getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2)), !dbg !851
  call void @ray_plane_intersect(%struct._Isect* noundef %isect, %struct._Ray* noundef %ray, %struct._Plane* noundef @plane), !dbg !852
  %hit51 = getelementptr inbounds %struct._Isect, %struct._Isect* %isect, i32 0, i32 3, !dbg !853
  %27 = load i32, i32* %hit51, align 8, !dbg !853
  %tobool = icmp ne i32 %27, 0, !dbg !855
  br i1 %tobool, label %if.then, label %if.end, !dbg !856

if.then:                                          ; preds = %for.body21
  call void @llvm.dbg.declare(metadata %struct._vec* %col, metadata !857, metadata !DIExpression()), !dbg !859
  call void @ambient_occlusion(%struct._vec* noundef %col, %struct._Isect* noundef %isect), !dbg !860
  %x52 = getelementptr inbounds %struct._vec, %struct._vec* %col, i32 0, i32 0, !dbg !861
  %28 = load double, double* %x52, align 8, !dbg !861
  %29 = load double*, double** %fimg, align 8, !dbg !862
  %30 = load i32, i32* %y, align 4, !dbg !863
  %31 = load i32, i32* %w.addr, align 4, !dbg !864
  %mul53 = mul nsw i32 %30, %31, !dbg !865
  %32 = load i32, i32* %x, align 4, !dbg !866
  %add54 = add nsw i32 %mul53, %32, !dbg !867
  %mul55 = mul nsw i32 3, %add54, !dbg !868
  %add56 = add nsw i32 %mul55, 0, !dbg !869
  %idxprom = sext i32 %add56 to i64, !dbg !862
  %arrayidx = getelementptr inbounds double, double* %29, i64 %idxprom, !dbg !862
  %33 = load double, double* %arrayidx, align 8, !dbg !870
  %add57 = fadd double %33, %28, !dbg !870
  store double %add57, double* %arrayidx, align 8, !dbg !870
  %y58 = getelementptr inbounds %struct._vec, %struct._vec* %col, i32 0, i32 1, !dbg !871
  %34 = load double, double* %y58, align 8, !dbg !871
  %35 = load double*, double** %fimg, align 8, !dbg !872
  %36 = load i32, i32* %y, align 4, !dbg !873
  %37 = load i32, i32* %w.addr, align 4, !dbg !874
  %mul59 = mul nsw i32 %36, %37, !dbg !875
  %38 = load i32, i32* %x, align 4, !dbg !876
  %add60 = add nsw i32 %mul59, %38, !dbg !877
  %mul61 = mul nsw i32 3, %add60, !dbg !878
  %add62 = add nsw i32 %mul61, 1, !dbg !879
  %idxprom63 = sext i32 %add62 to i64, !dbg !872
  %arrayidx64 = getelementptr inbounds double, double* %35, i64 %idxprom63, !dbg !872
  %39 = load double, double* %arrayidx64, align 8, !dbg !880
  %add65 = fadd double %39, %34, !dbg !880
  store double %add65, double* %arrayidx64, align 8, !dbg !880
  %z66 = getelementptr inbounds %struct._vec, %struct._vec* %col, i32 0, i32 2, !dbg !881
  %40 = load double, double* %z66, align 8, !dbg !881
  %41 = load double*, double** %fimg, align 8, !dbg !882
  %42 = load i32, i32* %y, align 4, !dbg !883
  %43 = load i32, i32* %w.addr, align 4, !dbg !884
  %mul67 = mul nsw i32 %42, %43, !dbg !885
  %44 = load i32, i32* %x, align 4, !dbg !886
  %add68 = add nsw i32 %mul67, %44, !dbg !887
  %mul69 = mul nsw i32 3, %add68, !dbg !888
  %add70 = add nsw i32 %mul69, 2, !dbg !889
  %idxprom71 = sext i32 %add70 to i64, !dbg !882
  %arrayidx72 = getelementptr inbounds double, double* %41, i64 %idxprom71, !dbg !882
  %45 = load double, double* %arrayidx72, align 8, !dbg !890
  %add73 = fadd double %45, %40, !dbg !890
  store double %add73, double* %arrayidx72, align 8, !dbg !890
  br label %if.end, !dbg !891

if.end:                                           ; preds = %if.then, %for.body21
  br label %for.inc, !dbg !892

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %u, align 4, !dbg !893
  %inc = add nsw i32 %46, 1, !dbg !893
  store i32 %inc, i32* %u, align 4, !dbg !893
  br label %for.cond18, !dbg !894, !llvm.loop !895

for.end:                                          ; preds = %for.cond18
  br label %for.inc74, !dbg !897

for.inc74:                                        ; preds = %for.end
  %47 = load i32, i32* %v, align 4, !dbg !898
  %inc75 = add nsw i32 %47, 1, !dbg !898
  store i32 %inc75, i32* %v, align 4, !dbg !898
  br label %for.cond14, !dbg !899, !llvm.loop !900

for.end76:                                        ; preds = %for.cond14
  %48 = load i32, i32* %nsubsamples.addr, align 4, !dbg !902
  %49 = load i32, i32* %nsubsamples.addr, align 4, !dbg !903
  %mul77 = mul nsw i32 %48, %49, !dbg !904
  %conv78 = sitofp i32 %mul77 to double, !dbg !905
  %50 = load double*, double** %fimg, align 8, !dbg !906
  %51 = load i32, i32* %y, align 4, !dbg !907
  %52 = load i32, i32* %w.addr, align 4, !dbg !908
  %mul79 = mul nsw i32 %51, %52, !dbg !909
  %53 = load i32, i32* %x, align 4, !dbg !910
  %add80 = add nsw i32 %mul79, %53, !dbg !911
  %mul81 = mul nsw i32 3, %add80, !dbg !912
  %add82 = add nsw i32 %mul81, 0, !dbg !913
  %idxprom83 = sext i32 %add82 to i64, !dbg !906
  %arrayidx84 = getelementptr inbounds double, double* %50, i64 %idxprom83, !dbg !906
  %54 = load double, double* %arrayidx84, align 8, !dbg !914
  %div85 = fdiv double %54, %conv78, !dbg !914
  store double %div85, double* %arrayidx84, align 8, !dbg !914
  %55 = load i32, i32* %nsubsamples.addr, align 4, !dbg !915
  %56 = load i32, i32* %nsubsamples.addr, align 4, !dbg !916
  %mul86 = mul nsw i32 %55, %56, !dbg !917
  %conv87 = sitofp i32 %mul86 to double, !dbg !918
  %57 = load double*, double** %fimg, align 8, !dbg !919
  %58 = load i32, i32* %y, align 4, !dbg !920
  %59 = load i32, i32* %w.addr, align 4, !dbg !921
  %mul88 = mul nsw i32 %58, %59, !dbg !922
  %60 = load i32, i32* %x, align 4, !dbg !923
  %add89 = add nsw i32 %mul88, %60, !dbg !924
  %mul90 = mul nsw i32 3, %add89, !dbg !925
  %add91 = add nsw i32 %mul90, 1, !dbg !926
  %idxprom92 = sext i32 %add91 to i64, !dbg !919
  %arrayidx93 = getelementptr inbounds double, double* %57, i64 %idxprom92, !dbg !919
  %61 = load double, double* %arrayidx93, align 8, !dbg !927
  %div94 = fdiv double %61, %conv87, !dbg !927
  store double %div94, double* %arrayidx93, align 8, !dbg !927
  %62 = load i32, i32* %nsubsamples.addr, align 4, !dbg !928
  %63 = load i32, i32* %nsubsamples.addr, align 4, !dbg !929
  %mul95 = mul nsw i32 %62, %63, !dbg !930
  %conv96 = sitofp i32 %mul95 to double, !dbg !931
  %64 = load double*, double** %fimg, align 8, !dbg !932
  %65 = load i32, i32* %y, align 4, !dbg !933
  %66 = load i32, i32* %w.addr, align 4, !dbg !934
  %mul97 = mul nsw i32 %65, %66, !dbg !935
  %67 = load i32, i32* %x, align 4, !dbg !936
  %add98 = add nsw i32 %mul97, %67, !dbg !937
  %mul99 = mul nsw i32 3, %add98, !dbg !938
  %add100 = add nsw i32 %mul99, 2, !dbg !939
  %idxprom101 = sext i32 %add100 to i64, !dbg !932
  %arrayidx102 = getelementptr inbounds double, double* %64, i64 %idxprom101, !dbg !932
  %68 = load double, double* %arrayidx102, align 8, !dbg !940
  %div103 = fdiv double %68, %conv96, !dbg !940
  store double %div103, double* %arrayidx102, align 8, !dbg !940
  %69 = load double*, double** %fimg, align 8, !dbg !941
  %70 = load i32, i32* %y, align 4, !dbg !942
  %71 = load i32, i32* %w.addr, align 4, !dbg !943
  %mul104 = mul nsw i32 %70, %71, !dbg !944
  %72 = load i32, i32* %x, align 4, !dbg !945
  %add105 = add nsw i32 %mul104, %72, !dbg !946
  %mul106 = mul nsw i32 3, %add105, !dbg !947
  %add107 = add nsw i32 %mul106, 0, !dbg !948
  %idxprom108 = sext i32 %add107 to i64, !dbg !941
  %arrayidx109 = getelementptr inbounds double, double* %69, i64 %idxprom108, !dbg !941
  %73 = load double, double* %arrayidx109, align 8, !dbg !941
  %call110 = call zeroext i8 @clamp(double noundef %73), !dbg !949
  %74 = load i8*, i8** %img.addr, align 8, !dbg !950
  %75 = load i32, i32* %y, align 4, !dbg !951
  %76 = load i32, i32* %w.addr, align 4, !dbg !952
  %mul111 = mul nsw i32 %75, %76, !dbg !953
  %77 = load i32, i32* %x, align 4, !dbg !954
  %add112 = add nsw i32 %mul111, %77, !dbg !955
  %mul113 = mul nsw i32 3, %add112, !dbg !956
  %add114 = add nsw i32 %mul113, 0, !dbg !957
  %idxprom115 = sext i32 %add114 to i64, !dbg !950
  %arrayidx116 = getelementptr inbounds i8, i8* %74, i64 %idxprom115, !dbg !950
  store i8 %call110, i8* %arrayidx116, align 1, !dbg !958
  %78 = load double*, double** %fimg, align 8, !dbg !959
  %79 = load i32, i32* %y, align 4, !dbg !960
  %80 = load i32, i32* %w.addr, align 4, !dbg !961
  %mul117 = mul nsw i32 %79, %80, !dbg !962
  %81 = load i32, i32* %x, align 4, !dbg !963
  %add118 = add nsw i32 %mul117, %81, !dbg !964
  %mul119 = mul nsw i32 3, %add118, !dbg !965
  %add120 = add nsw i32 %mul119, 1, !dbg !966
  %idxprom121 = sext i32 %add120 to i64, !dbg !959
  %arrayidx122 = getelementptr inbounds double, double* %78, i64 %idxprom121, !dbg !959
  %82 = load double, double* %arrayidx122, align 8, !dbg !959
  %call123 = call zeroext i8 @clamp(double noundef %82), !dbg !967
  %83 = load i8*, i8** %img.addr, align 8, !dbg !968
  %84 = load i32, i32* %y, align 4, !dbg !969
  %85 = load i32, i32* %w.addr, align 4, !dbg !970
  %mul124 = mul nsw i32 %84, %85, !dbg !971
  %86 = load i32, i32* %x, align 4, !dbg !972
  %add125 = add nsw i32 %mul124, %86, !dbg !973
  %mul126 = mul nsw i32 3, %add125, !dbg !974
  %add127 = add nsw i32 %mul126, 1, !dbg !975
  %idxprom128 = sext i32 %add127 to i64, !dbg !968
  %arrayidx129 = getelementptr inbounds i8, i8* %83, i64 %idxprom128, !dbg !968
  store i8 %call123, i8* %arrayidx129, align 1, !dbg !976
  %87 = load double*, double** %fimg, align 8, !dbg !977
  %88 = load i32, i32* %y, align 4, !dbg !978
  %89 = load i32, i32* %w.addr, align 4, !dbg !979
  %mul130 = mul nsw i32 %88, %89, !dbg !980
  %90 = load i32, i32* %x, align 4, !dbg !981
  %add131 = add nsw i32 %mul130, %90, !dbg !982
  %mul132 = mul nsw i32 3, %add131, !dbg !983
  %add133 = add nsw i32 %mul132, 2, !dbg !984
  %idxprom134 = sext i32 %add133 to i64, !dbg !977
  %arrayidx135 = getelementptr inbounds double, double* %87, i64 %idxprom134, !dbg !977
  %91 = load double, double* %arrayidx135, align 8, !dbg !977
  %call136 = call zeroext i8 @clamp(double noundef %91), !dbg !985
  %92 = load i8*, i8** %img.addr, align 8, !dbg !986
  %93 = load i32, i32* %y, align 4, !dbg !987
  %94 = load i32, i32* %w.addr, align 4, !dbg !988
  %mul137 = mul nsw i32 %93, %94, !dbg !989
  %95 = load i32, i32* %x, align 4, !dbg !990
  %add138 = add nsw i32 %mul137, %95, !dbg !991
  %mul139 = mul nsw i32 3, %add138, !dbg !992
  %add140 = add nsw i32 %mul139, 2, !dbg !993
  %idxprom141 = sext i32 %add140 to i64, !dbg !986
  %arrayidx142 = getelementptr inbounds i8, i8* %92, i64 %idxprom141, !dbg !986
  store i8 %call136, i8* %arrayidx142, align 1, !dbg !994
  br label %for.inc143, !dbg !995

for.inc143:                                       ; preds = %for.end76
  %96 = load i32, i32* %x, align 4, !dbg !996
  %inc144 = add nsw i32 %96, 1, !dbg !996
  store i32 %inc144, i32* %x, align 4, !dbg !996
  br label %for.cond10, !dbg !997, !llvm.loop !998

for.end145:                                       ; preds = %for.cond10
  br label %for.inc146, !dbg !1000

for.inc146:                                       ; preds = %for.end145
  %97 = load i32, i32* %y, align 4, !dbg !1001
  %inc147 = add nsw i32 %97, 1, !dbg !1001
  store i32 %inc147, i32* %y, align 4, !dbg !1001
  br label %for.cond, !dbg !1002, !llvm.loop !1003

for.end148:                                       ; preds = %for.cond
  ret void, !dbg !1005
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_scene() #0 !dbg !1006 {
entry:
  store double -2.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0, i32 0, i32 0), align 16, !dbg !1009
  store double 0.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0, i32 0, i32 1), align 8, !dbg !1010
  store double -3.500000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0, i32 0, i32 2), align 16, !dbg !1011
  store double 5.000000e-01, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 0, i32 1), align 8, !dbg !1012
  store double -5.000000e-01, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1, i32 0, i32 0), align 16, !dbg !1013
  store double 0.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1, i32 0, i32 1), align 8, !dbg !1014
  store double -3.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1, i32 0, i32 2), align 16, !dbg !1015
  store double 5.000000e-01, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 1, i32 1), align 8, !dbg !1016
  store double 1.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2, i32 0, i32 0), align 16, !dbg !1017
  store double 0.000000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2, i32 0, i32 1), align 8, !dbg !1018
  store double -2.200000e+00, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2, i32 0, i32 2), align 16, !dbg !1019
  store double 5.000000e-01, double* getelementptr inbounds ([3 x %struct._Sphere], [3 x %struct._Sphere]* @spheres, i64 0, i64 2, i32 1), align 8, !dbg !1020
  store double 0.000000e+00, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 0, i32 0), align 8, !dbg !1021
  store double -5.000000e-01, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 0, i32 1), align 8, !dbg !1022
  store double 0.000000e+00, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 0, i32 2), align 8, !dbg !1023
  store double 0.000000e+00, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 1, i32 0), align 8, !dbg !1024
  store double 1.000000e+00, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 1, i32 1), align 8, !dbg !1025
  store double 0.000000e+00, double* getelementptr inbounds (%struct._Plane, %struct._Plane* @plane, i32 0, i32 1, i32 2), align 8, !dbg !1026
  ret void, !dbg !1027
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @saveppm(i8* noundef %fname, i32 noundef %w, i32 noundef %h, i8* noundef %img) #0 !dbg !1028 {
entry:
  %fname.addr = alloca i8*, align 8
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %img.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %fname, i8** %fname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fname.addr, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !1036, metadata !DIExpression()), !dbg !1037
  store i32 %h, i32* %h.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %h.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  store i8* %img, i8** %img.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %img.addr, metadata !1040, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !1042, metadata !DIExpression()), !dbg !1102
  %0 = load i8*, i8** %fname.addr, align 8, !dbg !1103
  %call = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)), !dbg !1104
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !1105
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1106
  %tobool = icmp ne %struct._IO_FILE* %1, null, !dbg !1106
  br i1 %tobool, label %if.then, label %if.else, !dbg !1109

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !1109

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 noundef 321, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.saveppm, i64 0, i64 0)) #8, !dbg !1106
  unreachable, !dbg !1106

if.end:                                           ; preds = %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1110
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)), !dbg !1111
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1112
  %4 = load i32, i32* %w.addr, align 4, !dbg !1113
  %5 = load i32, i32* %h.addr, align 4, !dbg !1114
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 noundef %4, i32 noundef %5), !dbg !1115
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1116
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !1117
  %7 = load i8*, i8** %img.addr, align 8, !dbg !1118
  %8 = load i32, i32* %w.addr, align 4, !dbg !1119
  %9 = load i32, i32* %h.addr, align 4, !dbg !1120
  %mul = mul nsw i32 %8, %9, !dbg !1121
  %mul4 = mul nsw i32 %mul, 3, !dbg !1122
  %conv = sext i32 %mul4 to i64, !dbg !1119
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1123
  %call5 = call i64 @fwrite(i8* noundef %7, i64 noundef %conv, i64 noundef 1, %struct._IO_FILE* noundef %10), !dbg !1124
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !1125
  %call6 = call i32 @fclose(%struct._IO_FILE* noundef %11), !dbg !1126
  ret void, !dbg !1127
}

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #5

; Function Attrs: cold noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #6

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #5

declare i64 @fwrite(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #5

declare i32 @fclose(%struct._IO_FILE* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !dbg !1128 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %img = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1132, metadata !DIExpression()), !dbg !1133
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1134, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata i8** %img, metadata !1136, metadata !DIExpression()), !dbg !1137
  %call = call noalias i8* @malloc(i64 noundef 12582912) #7, !dbg !1138
  store i8* %call, i8** %img, align 8, !dbg !1137
  call void @init_scene(), !dbg !1139
  %0 = load i8*, i8** %img, align 8, !dbg !1140
  call void @render(i8* noundef %0, i32 noundef 2048, i32 noundef 2048, i32 noundef 2), !dbg !1141
  %1 = load i8*, i8** %img, align 8, !dbg !1142
  call void @saveppm(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 noundef 2048, i32 noundef 2048, i8* noundef %1), !dbg !1143
  ret i32 0, !dbg !1144
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "spheres", scope: !2, file: !14, line: 48, type: !26, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Debian clang version 14.0.6-2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "samples/ao.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "5144ce31115e7ba9fef718ec8a06b060")
!4 = !{!5, !6, !7, !8, !9, !10}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!11 = !{!0, !12}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "plane", scope: !2, file: !14, line: 49, type: !15, isLocal: false, isDefinition: true)
!14 = !DIFile(filename: "./samples/ao.c", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "5144ce31115e7ba9fef718ec8a06b060")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Plane", file: !14, line: 40, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Plane", file: !14, line: 35, size: 384, elements: !17)
!17 = !{!18, !25}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !16, file: !14, line: 37, baseType: !19, size: 192)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "vec", file: !14, line: 17, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vec", file: !14, line: 12, size: 192, elements: !21)
!21 = !{!22, !23, !24}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !20, file: !14, line: 14, baseType: !5, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !20, file: !14, line: 15, baseType: !5, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !20, file: !14, line: 16, baseType: !5, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !16, file: !14, line: 38, baseType: !19, size: 192, offset: 192)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 768, elements: !32)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sphere", file: !14, line: 33, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sphere", file: !14, line: 28, size: 256, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !28, file: !14, line: 30, baseType: !19, size: 192)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "radius", scope: !28, file: !14, line: 31, baseType: !5, size: 64, offset: 192)
!32 = !{!33}
!33 = !DISubrange(count: 3)
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 7, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"Debian clang version 14.0.6-2"}
!42 = distinct !DISubprogram(name: "ray_sphere_intersect", scope: !14, file: !14, line: 76, type: !43, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !53, !60}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Isect", file: !14, line: 26, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Isect", file: !14, line: 20, size: 512, elements: !48)
!48 = !{!49, !50, !51, !52}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !47, file: !14, line: 22, baseType: !5, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !47, file: !14, line: 23, baseType: !19, size: 192, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !47, file: !14, line: 24, baseType: !19, size: 192, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "hit", scope: !47, file: !14, line: 25, baseType: !6, size: 32, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ray", file: !14, line: 46, baseType: !56)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ray", file: !14, line: 42, size: 384, elements: !57)
!57 = !{!58, !59}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "org", scope: !56, file: !14, line: 44, baseType: !19, size: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !56, file: !14, line: 45, baseType: !19, size: 192, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!62 = !{}
!63 = !DILocalVariable(name: "isect", arg: 1, scope: !42, file: !14, line: 76, type: !45)
!64 = !DILocation(line: 76, column: 29, scope: !42)
!65 = !DILocalVariable(name: "ray", arg: 2, scope: !42, file: !14, line: 76, type: !53)
!66 = !DILocation(line: 76, column: 47, scope: !42)
!67 = !DILocalVariable(name: "sphere", arg: 3, scope: !42, file: !14, line: 76, type: !60)
!68 = !DILocation(line: 76, column: 66, scope: !42)
!69 = !DILocalVariable(name: "rs", scope: !42, file: !14, line: 78, type: !19)
!70 = !DILocation(line: 78, column: 9, scope: !42)
!71 = !DILocation(line: 80, column: 12, scope: !42)
!72 = !DILocation(line: 80, column: 17, scope: !42)
!73 = !DILocation(line: 80, column: 21, scope: !42)
!74 = !DILocation(line: 80, column: 25, scope: !42)
!75 = !DILocation(line: 80, column: 33, scope: !42)
!76 = !DILocation(line: 80, column: 40, scope: !42)
!77 = !DILocation(line: 80, column: 23, scope: !42)
!78 = !DILocation(line: 80, column: 8, scope: !42)
!79 = !DILocation(line: 80, column: 10, scope: !42)
!80 = !DILocation(line: 81, column: 12, scope: !42)
!81 = !DILocation(line: 81, column: 17, scope: !42)
!82 = !DILocation(line: 81, column: 21, scope: !42)
!83 = !DILocation(line: 81, column: 25, scope: !42)
!84 = !DILocation(line: 81, column: 33, scope: !42)
!85 = !DILocation(line: 81, column: 40, scope: !42)
!86 = !DILocation(line: 81, column: 23, scope: !42)
!87 = !DILocation(line: 81, column: 8, scope: !42)
!88 = !DILocation(line: 81, column: 10, scope: !42)
!89 = !DILocation(line: 82, column: 12, scope: !42)
!90 = !DILocation(line: 82, column: 17, scope: !42)
!91 = !DILocation(line: 82, column: 21, scope: !42)
!92 = !DILocation(line: 82, column: 25, scope: !42)
!93 = !DILocation(line: 82, column: 33, scope: !42)
!94 = !DILocation(line: 82, column: 40, scope: !42)
!95 = !DILocation(line: 82, column: 23, scope: !42)
!96 = !DILocation(line: 82, column: 8, scope: !42)
!97 = !DILocation(line: 82, column: 10, scope: !42)
!98 = !DILocalVariable(name: "B", scope: !42, file: !14, line: 84, type: !5)
!99 = !DILocation(line: 84, column: 12, scope: !42)
!100 = !DILocation(line: 84, column: 25, scope: !42)
!101 = !DILocation(line: 84, column: 30, scope: !42)
!102 = !DILocation(line: 84, column: 16, scope: !42)
!103 = !DILocalVariable(name: "C", scope: !42, file: !14, line: 85, type: !5)
!104 = !DILocation(line: 85, column: 12, scope: !42)
!105 = !DILocation(line: 85, column: 16, scope: !42)
!106 = !DILocation(line: 85, column: 31, scope: !42)
!107 = !DILocation(line: 85, column: 39, scope: !42)
!108 = !DILocation(line: 85, column: 48, scope: !42)
!109 = !DILocation(line: 85, column: 56, scope: !42)
!110 = !DILocation(line: 85, column: 29, scope: !42)
!111 = !DILocalVariable(name: "D", scope: !42, file: !14, line: 86, type: !5)
!112 = !DILocation(line: 86, column: 12, scope: !42)
!113 = !DILocation(line: 86, column: 16, scope: !42)
!114 = !DILocation(line: 86, column: 20, scope: !42)
!115 = !DILocation(line: 86, column: 24, scope: !42)
!116 = !DILocation(line: 86, column: 22, scope: !42)
!117 = !DILocation(line: 88, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !42, file: !14, line: 88, column: 9)
!119 = !DILocation(line: 88, column: 11, scope: !118)
!120 = !DILocation(line: 88, column: 9, scope: !42)
!121 = !DILocalVariable(name: "t", scope: !122, file: !14, line: 89, type: !5)
!122 = distinct !DILexicalBlock(scope: !118, file: !14, line: 88, column: 18)
!123 = !DILocation(line: 89, column: 16, scope: !122)
!124 = !DILocation(line: 89, column: 21, scope: !122)
!125 = !DILocation(line: 89, column: 20, scope: !122)
!126 = !DILocation(line: 89, column: 30, scope: !122)
!127 = !DILocation(line: 89, column: 25, scope: !122)
!128 = !DILocation(line: 89, column: 23, scope: !122)
!129 = !DILocation(line: 91, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !122, file: !14, line: 91, column: 13)
!131 = !DILocation(line: 91, column: 16, scope: !130)
!132 = !DILocation(line: 91, column: 23, scope: !130)
!133 = !DILocation(line: 91, column: 27, scope: !130)
!134 = !DILocation(line: 91, column: 31, scope: !130)
!135 = !DILocation(line: 91, column: 38, scope: !130)
!136 = !DILocation(line: 91, column: 29, scope: !130)
!137 = !DILocation(line: 91, column: 13, scope: !122)
!138 = !DILocation(line: 92, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !14, line: 91, column: 42)
!140 = !DILocation(line: 92, column: 13, scope: !139)
!141 = !DILocation(line: 92, column: 20, scope: !139)
!142 = !DILocation(line: 92, column: 22, scope: !139)
!143 = !DILocation(line: 93, column: 13, scope: !139)
!144 = !DILocation(line: 93, column: 20, scope: !139)
!145 = !DILocation(line: 93, column: 24, scope: !139)
!146 = !DILocation(line: 95, column: 26, scope: !139)
!147 = !DILocation(line: 95, column: 31, scope: !139)
!148 = !DILocation(line: 95, column: 35, scope: !139)
!149 = !DILocation(line: 95, column: 39, scope: !139)
!150 = !DILocation(line: 95, column: 44, scope: !139)
!151 = !DILocation(line: 95, column: 48, scope: !139)
!152 = !DILocation(line: 95, column: 52, scope: !139)
!153 = !DILocation(line: 95, column: 37, scope: !139)
!154 = !DILocation(line: 95, column: 13, scope: !139)
!155 = !DILocation(line: 95, column: 20, scope: !139)
!156 = !DILocation(line: 95, column: 22, scope: !139)
!157 = !DILocation(line: 95, column: 24, scope: !139)
!158 = !DILocation(line: 96, column: 26, scope: !139)
!159 = !DILocation(line: 96, column: 31, scope: !139)
!160 = !DILocation(line: 96, column: 35, scope: !139)
!161 = !DILocation(line: 96, column: 39, scope: !139)
!162 = !DILocation(line: 96, column: 44, scope: !139)
!163 = !DILocation(line: 96, column: 48, scope: !139)
!164 = !DILocation(line: 96, column: 52, scope: !139)
!165 = !DILocation(line: 96, column: 37, scope: !139)
!166 = !DILocation(line: 96, column: 13, scope: !139)
!167 = !DILocation(line: 96, column: 20, scope: !139)
!168 = !DILocation(line: 96, column: 22, scope: !139)
!169 = !DILocation(line: 96, column: 24, scope: !139)
!170 = !DILocation(line: 97, column: 26, scope: !139)
!171 = !DILocation(line: 97, column: 31, scope: !139)
!172 = !DILocation(line: 97, column: 35, scope: !139)
!173 = !DILocation(line: 97, column: 39, scope: !139)
!174 = !DILocation(line: 97, column: 44, scope: !139)
!175 = !DILocation(line: 97, column: 48, scope: !139)
!176 = !DILocation(line: 97, column: 52, scope: !139)
!177 = !DILocation(line: 97, column: 37, scope: !139)
!178 = !DILocation(line: 97, column: 13, scope: !139)
!179 = !DILocation(line: 97, column: 20, scope: !139)
!180 = !DILocation(line: 97, column: 22, scope: !139)
!181 = !DILocation(line: 97, column: 24, scope: !139)
!182 = !DILocation(line: 99, column: 26, scope: !139)
!183 = !DILocation(line: 99, column: 33, scope: !139)
!184 = !DILocation(line: 99, column: 35, scope: !139)
!185 = !DILocation(line: 99, column: 39, scope: !139)
!186 = !DILocation(line: 99, column: 47, scope: !139)
!187 = !DILocation(line: 99, column: 54, scope: !139)
!188 = !DILocation(line: 99, column: 37, scope: !139)
!189 = !DILocation(line: 99, column: 13, scope: !139)
!190 = !DILocation(line: 99, column: 20, scope: !139)
!191 = !DILocation(line: 99, column: 22, scope: !139)
!192 = !DILocation(line: 99, column: 24, scope: !139)
!193 = !DILocation(line: 100, column: 26, scope: !139)
!194 = !DILocation(line: 100, column: 33, scope: !139)
!195 = !DILocation(line: 100, column: 35, scope: !139)
!196 = !DILocation(line: 100, column: 39, scope: !139)
!197 = !DILocation(line: 100, column: 47, scope: !139)
!198 = !DILocation(line: 100, column: 54, scope: !139)
!199 = !DILocation(line: 100, column: 37, scope: !139)
!200 = !DILocation(line: 100, column: 13, scope: !139)
!201 = !DILocation(line: 100, column: 20, scope: !139)
!202 = !DILocation(line: 100, column: 22, scope: !139)
!203 = !DILocation(line: 100, column: 24, scope: !139)
!204 = !DILocation(line: 101, column: 26, scope: !139)
!205 = !DILocation(line: 101, column: 33, scope: !139)
!206 = !DILocation(line: 101, column: 35, scope: !139)
!207 = !DILocation(line: 101, column: 39, scope: !139)
!208 = !DILocation(line: 101, column: 47, scope: !139)
!209 = !DILocation(line: 101, column: 54, scope: !139)
!210 = !DILocation(line: 101, column: 37, scope: !139)
!211 = !DILocation(line: 101, column: 13, scope: !139)
!212 = !DILocation(line: 101, column: 20, scope: !139)
!213 = !DILocation(line: 101, column: 22, scope: !139)
!214 = !DILocation(line: 101, column: 24, scope: !139)
!215 = !DILocation(line: 103, column: 26, scope: !139)
!216 = !DILocation(line: 103, column: 33, scope: !139)
!217 = !DILocation(line: 103, column: 13, scope: !139)
!218 = !DILocation(line: 104, column: 9, scope: !139)
!219 = !DILocation(line: 105, column: 5, scope: !122)
!220 = !DILocation(line: 106, column: 1, scope: !42)
!221 = distinct !DISubprogram(name: "vdot", scope: !14, file: !14, line: 51, type: !222, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!222 = !DISubroutineType(types: !223)
!223 = !{!5, !19, !19}
!224 = !DILocalVariable(name: "v0", arg: 1, scope: !221, file: !14, line: 51, type: !19)
!225 = !DILocation(line: 51, column: 24, scope: !221)
!226 = !DILocalVariable(name: "v1", arg: 2, scope: !221, file: !14, line: 51, type: !19)
!227 = !DILocation(line: 51, column: 32, scope: !221)
!228 = !DILocation(line: 53, column: 15, scope: !221)
!229 = !DILocation(line: 53, column: 22, scope: !221)
!230 = !DILocation(line: 53, column: 29, scope: !221)
!231 = !DILocation(line: 53, column: 36, scope: !221)
!232 = !DILocation(line: 53, column: 31, scope: !221)
!233 = !DILocation(line: 53, column: 24, scope: !221)
!234 = !DILocation(line: 53, column: 43, scope: !221)
!235 = !DILocation(line: 53, column: 50, scope: !221)
!236 = !DILocation(line: 53, column: 38, scope: !221)
!237 = !DILocation(line: 53, column: 5, scope: !221)
!238 = distinct !DISubprogram(name: "vnormalize", scope: !14, file: !14, line: 64, type: !239, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!242 = !DILocalVariable(name: "c", arg: 1, scope: !238, file: !14, line: 64, type: !241)
!243 = !DILocation(line: 64, column: 29, scope: !238)
!244 = !DILocalVariable(name: "length", scope: !238, file: !14, line: 66, type: !5)
!245 = !DILocation(line: 66, column: 12, scope: !238)
!246 = !DILocation(line: 66, column: 33, scope: !238)
!247 = !DILocation(line: 66, column: 39, scope: !238)
!248 = !DILocation(line: 66, column: 26, scope: !238)
!249 = !DILocation(line: 66, column: 21, scope: !238)
!250 = !DILocation(line: 68, column: 14, scope: !251)
!251 = distinct !DILexicalBlock(scope: !238, file: !14, line: 68, column: 9)
!252 = !DILocation(line: 68, column: 9, scope: !251)
!253 = !DILocation(line: 68, column: 22, scope: !251)
!254 = !DILocation(line: 68, column: 9, scope: !238)
!255 = !DILocation(line: 69, column: 17, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !14, line: 68, column: 33)
!257 = !DILocation(line: 69, column: 9, scope: !256)
!258 = !DILocation(line: 69, column: 12, scope: !256)
!259 = !DILocation(line: 69, column: 14, scope: !256)
!260 = !DILocation(line: 70, column: 17, scope: !256)
!261 = !DILocation(line: 70, column: 9, scope: !256)
!262 = !DILocation(line: 70, column: 12, scope: !256)
!263 = !DILocation(line: 70, column: 14, scope: !256)
!264 = !DILocation(line: 71, column: 17, scope: !256)
!265 = !DILocation(line: 71, column: 9, scope: !256)
!266 = !DILocation(line: 71, column: 12, scope: !256)
!267 = !DILocation(line: 71, column: 14, scope: !256)
!268 = !DILocation(line: 72, column: 5, scope: !256)
!269 = !DILocation(line: 73, column: 1, scope: !238)
!270 = distinct !DISubprogram(name: "ray_plane_intersect", scope: !14, file: !14, line: 109, type: !271, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !45, !53, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!275 = !DILocalVariable(name: "isect", arg: 1, scope: !270, file: !14, line: 109, type: !45)
!276 = !DILocation(line: 109, column: 28, scope: !270)
!277 = !DILocalVariable(name: "ray", arg: 2, scope: !270, file: !14, line: 109, type: !53)
!278 = !DILocation(line: 109, column: 46, scope: !270)
!279 = !DILocalVariable(name: "plane", arg: 3, scope: !270, file: !14, line: 109, type: !273)
!280 = !DILocation(line: 109, column: 64, scope: !270)
!281 = !DILocalVariable(name: "d", scope: !270, file: !14, line: 111, type: !5)
!282 = !DILocation(line: 111, column: 12, scope: !270)
!283 = !DILocation(line: 111, column: 22, scope: !270)
!284 = !DILocation(line: 111, column: 29, scope: !270)
!285 = !DILocation(line: 111, column: 32, scope: !270)
!286 = !DILocation(line: 111, column: 39, scope: !270)
!287 = !DILocation(line: 111, column: 17, scope: !270)
!288 = !DILocation(line: 111, column: 16, scope: !270)
!289 = !DILocalVariable(name: "v", scope: !270, file: !14, line: 112, type: !5)
!290 = !DILocation(line: 112, column: 12, scope: !270)
!291 = !DILocation(line: 112, column: 21, scope: !270)
!292 = !DILocation(line: 112, column: 26, scope: !270)
!293 = !DILocation(line: 112, column: 31, scope: !270)
!294 = !DILocation(line: 112, column: 38, scope: !270)
!295 = !DILocation(line: 112, column: 16, scope: !270)
!296 = !DILocation(line: 114, column: 14, scope: !297)
!297 = distinct !DILexicalBlock(scope: !270, file: !14, line: 114, column: 9)
!298 = !DILocation(line: 114, column: 9, scope: !297)
!299 = !DILocation(line: 114, column: 17, scope: !297)
!300 = !DILocation(line: 114, column: 9, scope: !270)
!301 = !DILocation(line: 114, column: 28, scope: !297)
!302 = !DILocalVariable(name: "t", scope: !270, file: !14, line: 116, type: !5)
!303 = !DILocation(line: 116, column: 12, scope: !270)
!304 = !DILocation(line: 116, column: 23, scope: !270)
!305 = !DILocation(line: 116, column: 28, scope: !270)
!306 = !DILocation(line: 116, column: 33, scope: !270)
!307 = !DILocation(line: 116, column: 40, scope: !270)
!308 = !DILocation(line: 116, column: 18, scope: !270)
!309 = !DILocation(line: 116, column: 45, scope: !270)
!310 = !DILocation(line: 116, column: 43, scope: !270)
!311 = !DILocation(line: 116, column: 16, scope: !270)
!312 = !DILocation(line: 116, column: 50, scope: !270)
!313 = !DILocation(line: 116, column: 48, scope: !270)
!314 = !DILocation(line: 118, column: 10, scope: !315)
!315 = distinct !DILexicalBlock(scope: !270, file: !14, line: 118, column: 9)
!316 = !DILocation(line: 118, column: 12, scope: !315)
!317 = !DILocation(line: 118, column: 19, scope: !315)
!318 = !DILocation(line: 118, column: 23, scope: !315)
!319 = !DILocation(line: 118, column: 27, scope: !315)
!320 = !DILocation(line: 118, column: 34, scope: !315)
!321 = !DILocation(line: 118, column: 25, scope: !315)
!322 = !DILocation(line: 118, column: 9, scope: !270)
!323 = !DILocation(line: 119, column: 20, scope: !324)
!324 = distinct !DILexicalBlock(scope: !315, file: !14, line: 118, column: 38)
!325 = !DILocation(line: 119, column: 9, scope: !324)
!326 = !DILocation(line: 119, column: 16, scope: !324)
!327 = !DILocation(line: 119, column: 18, scope: !324)
!328 = !DILocation(line: 120, column: 9, scope: !324)
!329 = !DILocation(line: 120, column: 16, scope: !324)
!330 = !DILocation(line: 120, column: 20, scope: !324)
!331 = !DILocation(line: 122, column: 22, scope: !324)
!332 = !DILocation(line: 122, column: 27, scope: !324)
!333 = !DILocation(line: 122, column: 31, scope: !324)
!334 = !DILocation(line: 122, column: 35, scope: !324)
!335 = !DILocation(line: 122, column: 40, scope: !324)
!336 = !DILocation(line: 122, column: 44, scope: !324)
!337 = !DILocation(line: 122, column: 48, scope: !324)
!338 = !DILocation(line: 122, column: 33, scope: !324)
!339 = !DILocation(line: 122, column: 9, scope: !324)
!340 = !DILocation(line: 122, column: 16, scope: !324)
!341 = !DILocation(line: 122, column: 18, scope: !324)
!342 = !DILocation(line: 122, column: 20, scope: !324)
!343 = !DILocation(line: 123, column: 22, scope: !324)
!344 = !DILocation(line: 123, column: 27, scope: !324)
!345 = !DILocation(line: 123, column: 31, scope: !324)
!346 = !DILocation(line: 123, column: 35, scope: !324)
!347 = !DILocation(line: 123, column: 40, scope: !324)
!348 = !DILocation(line: 123, column: 44, scope: !324)
!349 = !DILocation(line: 123, column: 48, scope: !324)
!350 = !DILocation(line: 123, column: 33, scope: !324)
!351 = !DILocation(line: 123, column: 9, scope: !324)
!352 = !DILocation(line: 123, column: 16, scope: !324)
!353 = !DILocation(line: 123, column: 18, scope: !324)
!354 = !DILocation(line: 123, column: 20, scope: !324)
!355 = !DILocation(line: 124, column: 22, scope: !324)
!356 = !DILocation(line: 124, column: 27, scope: !324)
!357 = !DILocation(line: 124, column: 31, scope: !324)
!358 = !DILocation(line: 124, column: 35, scope: !324)
!359 = !DILocation(line: 124, column: 40, scope: !324)
!360 = !DILocation(line: 124, column: 44, scope: !324)
!361 = !DILocation(line: 124, column: 48, scope: !324)
!362 = !DILocation(line: 124, column: 33, scope: !324)
!363 = !DILocation(line: 124, column: 9, scope: !324)
!364 = !DILocation(line: 124, column: 16, scope: !324)
!365 = !DILocation(line: 124, column: 18, scope: !324)
!366 = !DILocation(line: 124, column: 20, scope: !324)
!367 = !DILocation(line: 126, column: 9, scope: !324)
!368 = !DILocation(line: 126, column: 16, scope: !324)
!369 = !DILocation(line: 126, column: 20, scope: !324)
!370 = !DILocation(line: 126, column: 27, scope: !324)
!371 = !DILocation(line: 127, column: 5, scope: !324)
!372 = !DILocation(line: 128, column: 1, scope: !270)
!373 = distinct !DISubprogram(name: "orthoBasis", scope: !14, file: !14, line: 131, type: !374, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !241, !19}
!376 = !DILocalVariable(name: "basis", arg: 1, scope: !373, file: !14, line: 131, type: !241)
!377 = !DILocation(line: 131, column: 17, scope: !373)
!378 = !DILocalVariable(name: "n", arg: 2, scope: !373, file: !14, line: 131, type: !19)
!379 = !DILocation(line: 131, column: 28, scope: !373)
!380 = !DILocation(line: 133, column: 5, scope: !373)
!381 = !DILocation(line: 133, column: 16, scope: !373)
!382 = !DILocation(line: 134, column: 5, scope: !373)
!383 = !DILocation(line: 134, column: 14, scope: !373)
!384 = !DILocation(line: 134, column: 16, scope: !373)
!385 = !DILocation(line: 134, column: 23, scope: !373)
!386 = !DILocation(line: 134, column: 32, scope: !373)
!387 = !DILocation(line: 134, column: 34, scope: !373)
!388 = !DILocation(line: 134, column: 41, scope: !373)
!389 = !DILocation(line: 134, column: 50, scope: !373)
!390 = !DILocation(line: 134, column: 52, scope: !373)
!391 = !DILocation(line: 136, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !373, file: !14, line: 136, column: 9)
!393 = !DILocation(line: 136, column: 14, scope: !392)
!394 = !DILocation(line: 136, column: 21, scope: !392)
!395 = !DILocation(line: 136, column: 27, scope: !392)
!396 = !DILocation(line: 136, column: 29, scope: !392)
!397 = !DILocation(line: 136, column: 9, scope: !373)
!398 = !DILocation(line: 137, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !392, file: !14, line: 136, column: 38)
!400 = !DILocation(line: 137, column: 18, scope: !399)
!401 = !DILocation(line: 137, column: 20, scope: !399)
!402 = !DILocation(line: 138, column: 5, scope: !399)
!403 = !DILocation(line: 138, column: 19, scope: !404)
!404 = distinct !DILexicalBlock(scope: !392, file: !14, line: 138, column: 16)
!405 = !DILocation(line: 138, column: 21, scope: !404)
!406 = !DILocation(line: 138, column: 28, scope: !404)
!407 = !DILocation(line: 138, column: 34, scope: !404)
!408 = !DILocation(line: 138, column: 36, scope: !404)
!409 = !DILocation(line: 138, column: 16, scope: !392)
!410 = !DILocation(line: 139, column: 9, scope: !411)
!411 = distinct !DILexicalBlock(scope: !404, file: !14, line: 138, column: 45)
!412 = !DILocation(line: 139, column: 18, scope: !411)
!413 = !DILocation(line: 139, column: 20, scope: !411)
!414 = !DILocation(line: 140, column: 5, scope: !411)
!415 = !DILocation(line: 140, column: 19, scope: !416)
!416 = distinct !DILexicalBlock(scope: !404, file: !14, line: 140, column: 16)
!417 = !DILocation(line: 140, column: 21, scope: !416)
!418 = !DILocation(line: 140, column: 28, scope: !416)
!419 = !DILocation(line: 140, column: 34, scope: !416)
!420 = !DILocation(line: 140, column: 36, scope: !416)
!421 = !DILocation(line: 140, column: 16, scope: !404)
!422 = !DILocation(line: 141, column: 9, scope: !423)
!423 = distinct !DILexicalBlock(scope: !416, file: !14, line: 140, column: 45)
!424 = !DILocation(line: 141, column: 18, scope: !423)
!425 = !DILocation(line: 141, column: 20, scope: !423)
!426 = !DILocation(line: 142, column: 5, scope: !423)
!427 = !DILocation(line: 143, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !416, file: !14, line: 142, column: 12)
!429 = !DILocation(line: 143, column: 18, scope: !428)
!430 = !DILocation(line: 143, column: 20, scope: !428)
!431 = !DILocation(line: 146, column: 13, scope: !373)
!432 = !DILocation(line: 146, column: 23, scope: !373)
!433 = !DILocation(line: 146, column: 33, scope: !373)
!434 = !DILocation(line: 146, column: 5, scope: !373)
!435 = !DILocation(line: 147, column: 17, scope: !373)
!436 = !DILocation(line: 147, column: 5, scope: !373)
!437 = !DILocation(line: 149, column: 13, scope: !373)
!438 = !DILocation(line: 149, column: 23, scope: !373)
!439 = !DILocation(line: 149, column: 33, scope: !373)
!440 = !DILocation(line: 149, column: 5, scope: !373)
!441 = !DILocation(line: 150, column: 17, scope: !373)
!442 = !DILocation(line: 150, column: 5, scope: !373)
!443 = !DILocation(line: 151, column: 1, scope: !373)
!444 = distinct !DISubprogram(name: "vcross", scope: !14, file: !14, line: 56, type: !445, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !62)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !241, !19, !19}
!447 = !DILocalVariable(name: "c", arg: 1, scope: !444, file: !14, line: 56, type: !241)
!448 = !DILocation(line: 56, column: 25, scope: !444)
!449 = !DILocalVariable(name: "v0", arg: 2, scope: !444, file: !14, line: 56, type: !19)
!450 = !DILocation(line: 56, column: 32, scope: !444)
!451 = !DILocalVariable(name: "v1", arg: 3, scope: !444, file: !14, line: 56, type: !19)
!452 = !DILocation(line: 56, column: 40, scope: !444)
!453 = !DILocation(line: 59, column: 15, scope: !444)
!454 = !DILocation(line: 59, column: 22, scope: !444)
!455 = !DILocation(line: 59, column: 29, scope: !444)
!456 = !DILocation(line: 59, column: 36, scope: !444)
!457 = !DILocation(line: 59, column: 31, scope: !444)
!458 = !DILocation(line: 59, column: 24, scope: !444)
!459 = !DILocation(line: 59, column: 5, scope: !444)
!460 = !DILocation(line: 59, column: 8, scope: !444)
!461 = !DILocation(line: 59, column: 10, scope: !444)
!462 = !DILocation(line: 60, column: 15, scope: !444)
!463 = !DILocation(line: 60, column: 22, scope: !444)
!464 = !DILocation(line: 60, column: 29, scope: !444)
!465 = !DILocation(line: 60, column: 36, scope: !444)
!466 = !DILocation(line: 60, column: 31, scope: !444)
!467 = !DILocation(line: 60, column: 24, scope: !444)
!468 = !DILocation(line: 60, column: 5, scope: !444)
!469 = !DILocation(line: 60, column: 8, scope: !444)
!470 = !DILocation(line: 60, column: 10, scope: !444)
!471 = !DILocation(line: 61, column: 15, scope: !444)
!472 = !DILocation(line: 61, column: 22, scope: !444)
!473 = !DILocation(line: 61, column: 29, scope: !444)
!474 = !DILocation(line: 61, column: 36, scope: !444)
!475 = !DILocation(line: 61, column: 31, scope: !444)
!476 = !DILocation(line: 61, column: 24, scope: !444)
!477 = !DILocation(line: 61, column: 5, scope: !444)
!478 = !DILocation(line: 61, column: 8, scope: !444)
!479 = !DILocation(line: 61, column: 10, scope: !444)
!480 = !DILocation(line: 62, column: 1, scope: !444)
!481 = distinct !DISubprogram(name: "ambient_occlusion", scope: !14, file: !14, line: 154, type: !482, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !241, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!486 = !DILocalVariable(name: "col", arg: 1, scope: !481, file: !14, line: 154, type: !241)
!487 = !DILocation(line: 154, column: 29, scope: !481)
!488 = !DILocalVariable(name: "isect", arg: 2, scope: !481, file: !14, line: 154, type: !484)
!489 = !DILocation(line: 154, column: 47, scope: !481)
!490 = !DILocalVariable(name: "i", scope: !481, file: !14, line: 156, type: !6)
!491 = !DILocation(line: 156, column: 12, scope: !481)
!492 = !DILocalVariable(name: "j", scope: !481, file: !14, line: 156, type: !6)
!493 = !DILocation(line: 156, column: 15, scope: !481)
!494 = !DILocalVariable(name: "ntheta", scope: !481, file: !14, line: 157, type: !6)
!495 = !DILocation(line: 157, column: 12, scope: !481)
!496 = !DILocalVariable(name: "nphi", scope: !481, file: !14, line: 158, type: !6)
!497 = !DILocation(line: 158, column: 12, scope: !481)
!498 = !DILocalVariable(name: "eps", scope: !481, file: !14, line: 159, type: !5)
!499 = !DILocation(line: 159, column: 12, scope: !481)
!500 = !DILocalVariable(name: "p", scope: !481, file: !14, line: 161, type: !19)
!501 = !DILocation(line: 161, column: 9, scope: !481)
!502 = !DILocation(line: 163, column: 11, scope: !481)
!503 = !DILocation(line: 163, column: 18, scope: !481)
!504 = !DILocation(line: 163, column: 20, scope: !481)
!505 = !DILocation(line: 163, column: 24, scope: !481)
!506 = !DILocation(line: 163, column: 30, scope: !481)
!507 = !DILocation(line: 163, column: 37, scope: !481)
!508 = !DILocation(line: 163, column: 39, scope: !481)
!509 = !DILocation(line: 163, column: 22, scope: !481)
!510 = !DILocation(line: 163, column: 7, scope: !481)
!511 = !DILocation(line: 163, column: 9, scope: !481)
!512 = !DILocation(line: 164, column: 11, scope: !481)
!513 = !DILocation(line: 164, column: 18, scope: !481)
!514 = !DILocation(line: 164, column: 20, scope: !481)
!515 = !DILocation(line: 164, column: 24, scope: !481)
!516 = !DILocation(line: 164, column: 30, scope: !481)
!517 = !DILocation(line: 164, column: 37, scope: !481)
!518 = !DILocation(line: 164, column: 39, scope: !481)
!519 = !DILocation(line: 164, column: 22, scope: !481)
!520 = !DILocation(line: 164, column: 7, scope: !481)
!521 = !DILocation(line: 164, column: 9, scope: !481)
!522 = !DILocation(line: 165, column: 11, scope: !481)
!523 = !DILocation(line: 165, column: 18, scope: !481)
!524 = !DILocation(line: 165, column: 20, scope: !481)
!525 = !DILocation(line: 165, column: 24, scope: !481)
!526 = !DILocation(line: 165, column: 30, scope: !481)
!527 = !DILocation(line: 165, column: 37, scope: !481)
!528 = !DILocation(line: 165, column: 39, scope: !481)
!529 = !DILocation(line: 165, column: 22, scope: !481)
!530 = !DILocation(line: 165, column: 7, scope: !481)
!531 = !DILocation(line: 165, column: 9, scope: !481)
!532 = !DILocalVariable(name: "basis", scope: !481, file: !14, line: 167, type: !533)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 576, elements: !32)
!534 = !DILocation(line: 167, column: 9, scope: !481)
!535 = !DILocation(line: 168, column: 16, scope: !481)
!536 = !DILocation(line: 168, column: 23, scope: !481)
!537 = !DILocation(line: 168, column: 30, scope: !481)
!538 = !DILocation(line: 168, column: 5, scope: !481)
!539 = !DILocalVariable(name: "occlusion", scope: !481, file: !14, line: 170, type: !5)
!540 = !DILocation(line: 170, column: 12, scope: !481)
!541 = !DILocation(line: 172, column: 12, scope: !542)
!542 = distinct !DILexicalBlock(scope: !481, file: !14, line: 172, column: 5)
!543 = !DILocation(line: 172, column: 10, scope: !542)
!544 = !DILocation(line: 172, column: 17, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !14, line: 172, column: 5)
!546 = !DILocation(line: 172, column: 21, scope: !545)
!547 = !DILocation(line: 172, column: 19, scope: !545)
!548 = !DILocation(line: 172, column: 5, scope: !542)
!549 = !DILocation(line: 173, column: 16, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !14, line: 173, column: 9)
!551 = distinct !DILexicalBlock(scope: !545, file: !14, line: 172, column: 34)
!552 = !DILocation(line: 173, column: 14, scope: !550)
!553 = !DILocation(line: 173, column: 21, scope: !554)
!554 = distinct !DILexicalBlock(scope: !550, file: !14, line: 173, column: 9)
!555 = !DILocation(line: 173, column: 25, scope: !554)
!556 = !DILocation(line: 173, column: 23, scope: !554)
!557 = !DILocation(line: 173, column: 9, scope: !550)
!558 = !DILocalVariable(name: "theta", scope: !559, file: !14, line: 174, type: !5)
!559 = distinct !DILexicalBlock(scope: !554, file: !14, line: 173, column: 36)
!560 = !DILocation(line: 174, column: 20, scope: !559)
!561 = !DILocation(line: 174, column: 33, scope: !559)
!562 = !DILocation(line: 174, column: 28, scope: !559)
!563 = !DILocalVariable(name: "phi", scope: !559, file: !14, line: 175, type: !5)
!564 = !DILocation(line: 175, column: 20, scope: !559)
!565 = !DILocation(line: 175, column: 41, scope: !559)
!566 = !DILocation(line: 175, column: 39, scope: !559)
!567 = !DILocalVariable(name: "x", scope: !559, file: !14, line: 177, type: !5)
!568 = !DILocation(line: 177, column: 20, scope: !559)
!569 = !DILocation(line: 177, column: 28, scope: !559)
!570 = !DILocation(line: 177, column: 24, scope: !559)
!571 = !DILocation(line: 177, column: 35, scope: !559)
!572 = !DILocation(line: 177, column: 33, scope: !559)
!573 = !DILocalVariable(name: "y", scope: !559, file: !14, line: 178, type: !5)
!574 = !DILocation(line: 178, column: 20, scope: !559)
!575 = !DILocation(line: 178, column: 28, scope: !559)
!576 = !DILocation(line: 178, column: 24, scope: !559)
!577 = !DILocation(line: 178, column: 35, scope: !559)
!578 = !DILocation(line: 178, column: 33, scope: !559)
!579 = !DILocalVariable(name: "z", scope: !559, file: !14, line: 179, type: !5)
!580 = !DILocation(line: 179, column: 20, scope: !559)
!581 = !DILocation(line: 179, column: 35, scope: !559)
!582 = !DILocation(line: 179, column: 43, scope: !559)
!583 = !DILocation(line: 179, column: 33, scope: !559)
!584 = !DILocation(line: 179, column: 24, scope: !559)
!585 = !DILocalVariable(name: "rx", scope: !559, file: !14, line: 182, type: !5)
!586 = !DILocation(line: 182, column: 20, scope: !559)
!587 = !DILocation(line: 182, column: 25, scope: !559)
!588 = !DILocation(line: 182, column: 29, scope: !559)
!589 = !DILocation(line: 182, column: 38, scope: !559)
!590 = !DILocation(line: 182, column: 42, scope: !559)
!591 = !DILocation(line: 182, column: 46, scope: !559)
!592 = !DILocation(line: 182, column: 55, scope: !559)
!593 = !DILocation(line: 182, column: 44, scope: !559)
!594 = !DILocation(line: 182, column: 40, scope: !559)
!595 = !DILocation(line: 182, column: 59, scope: !559)
!596 = !DILocation(line: 182, column: 63, scope: !559)
!597 = !DILocation(line: 182, column: 72, scope: !559)
!598 = !DILocation(line: 182, column: 57, scope: !559)
!599 = !DILocalVariable(name: "ry", scope: !559, file: !14, line: 183, type: !5)
!600 = !DILocation(line: 183, column: 20, scope: !559)
!601 = !DILocation(line: 183, column: 25, scope: !559)
!602 = !DILocation(line: 183, column: 29, scope: !559)
!603 = !DILocation(line: 183, column: 38, scope: !559)
!604 = !DILocation(line: 183, column: 42, scope: !559)
!605 = !DILocation(line: 183, column: 46, scope: !559)
!606 = !DILocation(line: 183, column: 55, scope: !559)
!607 = !DILocation(line: 183, column: 44, scope: !559)
!608 = !DILocation(line: 183, column: 40, scope: !559)
!609 = !DILocation(line: 183, column: 59, scope: !559)
!610 = !DILocation(line: 183, column: 63, scope: !559)
!611 = !DILocation(line: 183, column: 72, scope: !559)
!612 = !DILocation(line: 183, column: 57, scope: !559)
!613 = !DILocalVariable(name: "rz", scope: !559, file: !14, line: 184, type: !5)
!614 = !DILocation(line: 184, column: 20, scope: !559)
!615 = !DILocation(line: 184, column: 25, scope: !559)
!616 = !DILocation(line: 184, column: 29, scope: !559)
!617 = !DILocation(line: 184, column: 38, scope: !559)
!618 = !DILocation(line: 184, column: 42, scope: !559)
!619 = !DILocation(line: 184, column: 46, scope: !559)
!620 = !DILocation(line: 184, column: 55, scope: !559)
!621 = !DILocation(line: 184, column: 44, scope: !559)
!622 = !DILocation(line: 184, column: 40, scope: !559)
!623 = !DILocation(line: 184, column: 59, scope: !559)
!624 = !DILocation(line: 184, column: 63, scope: !559)
!625 = !DILocation(line: 184, column: 72, scope: !559)
!626 = !DILocation(line: 184, column: 57, scope: !559)
!627 = !DILocalVariable(name: "ray", scope: !559, file: !14, line: 186, type: !55)
!628 = !DILocation(line: 186, column: 17, scope: !559)
!629 = !DILocation(line: 188, column: 17, scope: !559)
!630 = !DILocation(line: 188, column: 23, scope: !559)
!631 = !DILocation(line: 189, column: 25, scope: !559)
!632 = !DILocation(line: 189, column: 17, scope: !559)
!633 = !DILocation(line: 189, column: 21, scope: !559)
!634 = !DILocation(line: 189, column: 23, scope: !559)
!635 = !DILocation(line: 190, column: 25, scope: !559)
!636 = !DILocation(line: 190, column: 17, scope: !559)
!637 = !DILocation(line: 190, column: 21, scope: !559)
!638 = !DILocation(line: 190, column: 23, scope: !559)
!639 = !DILocation(line: 191, column: 25, scope: !559)
!640 = !DILocation(line: 191, column: 17, scope: !559)
!641 = !DILocation(line: 191, column: 21, scope: !559)
!642 = !DILocation(line: 191, column: 23, scope: !559)
!643 = !DILocalVariable(name: "occIsect", scope: !559, file: !14, line: 193, type: !46)
!644 = !DILocation(line: 193, column: 19, scope: !559)
!645 = !DILocation(line: 194, column: 22, scope: !559)
!646 = !DILocation(line: 194, column: 26, scope: !559)
!647 = !DILocation(line: 195, column: 22, scope: !559)
!648 = !DILocation(line: 195, column: 26, scope: !559)
!649 = !DILocation(line: 197, column: 13, scope: !559)
!650 = !DILocation(line: 198, column: 13, scope: !559)
!651 = !DILocation(line: 199, column: 13, scope: !559)
!652 = !DILocation(line: 200, column: 13, scope: !559)
!653 = !DILocation(line: 202, column: 26, scope: !654)
!654 = distinct !DILexicalBlock(scope: !559, file: !14, line: 202, column: 17)
!655 = !DILocation(line: 202, column: 17, scope: !654)
!656 = !DILocation(line: 202, column: 17, scope: !559)
!657 = !DILocation(line: 202, column: 41, scope: !654)
!658 = !DILocation(line: 202, column: 31, scope: !654)
!659 = !DILocation(line: 204, column: 9, scope: !559)
!660 = !DILocation(line: 173, column: 32, scope: !554)
!661 = !DILocation(line: 173, column: 9, scope: !554)
!662 = distinct !{!662, !557, !663, !664}
!663 = !DILocation(line: 204, column: 9, scope: !550)
!664 = !{!"llvm.loop.mustprogress"}
!665 = !DILocation(line: 205, column: 5, scope: !551)
!666 = !DILocation(line: 172, column: 30, scope: !545)
!667 = !DILocation(line: 172, column: 5, scope: !545)
!668 = distinct !{!668, !548, !669, !664}
!669 = !DILocation(line: 205, column: 5, scope: !542)
!670 = !DILocation(line: 207, column: 18, scope: !481)
!671 = !DILocation(line: 207, column: 27, scope: !481)
!672 = !DILocation(line: 207, column: 25, scope: !481)
!673 = !DILocation(line: 207, column: 34, scope: !481)
!674 = !DILocation(line: 207, column: 32, scope: !481)
!675 = !DILocation(line: 207, column: 56, scope: !481)
!676 = !DILocation(line: 207, column: 65, scope: !481)
!677 = !DILocation(line: 207, column: 63, scope: !481)
!678 = !DILocation(line: 207, column: 47, scope: !481)
!679 = !DILocation(line: 207, column: 45, scope: !481)
!680 = !DILocation(line: 207, column: 15, scope: !481)
!681 = !DILocation(line: 209, column: 14, scope: !481)
!682 = !DILocation(line: 209, column: 5, scope: !481)
!683 = !DILocation(line: 209, column: 10, scope: !481)
!684 = !DILocation(line: 209, column: 12, scope: !481)
!685 = !DILocation(line: 210, column: 14, scope: !481)
!686 = !DILocation(line: 210, column: 5, scope: !481)
!687 = !DILocation(line: 210, column: 10, scope: !481)
!688 = !DILocation(line: 210, column: 12, scope: !481)
!689 = !DILocation(line: 211, column: 14, scope: !481)
!690 = !DILocation(line: 211, column: 5, scope: !481)
!691 = !DILocation(line: 211, column: 10, scope: !481)
!692 = !DILocation(line: 211, column: 12, scope: !481)
!693 = !DILocation(line: 212, column: 1, scope: !481)
!694 = distinct !DISubprogram(name: "clamp", scope: !14, file: !14, line: 215, type: !695, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!695 = !DISubroutineType(types: !696)
!696 = !{!7, !5}
!697 = !DILocalVariable(name: "f", arg: 1, scope: !694, file: !14, line: 215, type: !5)
!698 = !DILocation(line: 215, column: 14, scope: !694)
!699 = !DILocalVariable(name: "i", scope: !694, file: !14, line: 217, type: !6)
!700 = !DILocation(line: 217, column: 7, scope: !694)
!701 = !DILocation(line: 217, column: 17, scope: !694)
!702 = !DILocation(line: 217, column: 19, scope: !694)
!703 = !DILocation(line: 217, column: 11, scope: !694)
!704 = !DILocation(line: 219, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !694, file: !14, line: 219, column: 7)
!706 = !DILocation(line: 219, column: 9, scope: !705)
!707 = !DILocation(line: 219, column: 7, scope: !694)
!708 = !DILocation(line: 219, column: 16, scope: !705)
!709 = !DILocation(line: 219, column: 14, scope: !705)
!710 = !DILocation(line: 220, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !694, file: !14, line: 220, column: 7)
!712 = !DILocation(line: 220, column: 9, scope: !711)
!713 = !DILocation(line: 220, column: 7, scope: !694)
!714 = !DILocation(line: 220, column: 18, scope: !711)
!715 = !DILocation(line: 220, column: 16, scope: !711)
!716 = !DILocation(line: 222, column: 25, scope: !694)
!717 = !DILocation(line: 222, column: 10, scope: !694)
!718 = !DILocation(line: 222, column: 3, scope: !694)
!719 = distinct !DISubprogram(name: "render", scope: !14, file: !14, line: 227, type: !720, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !10, !6, !6, !6}
!722 = !DILocalVariable(name: "img", arg: 1, scope: !719, file: !14, line: 227, type: !10)
!723 = !DILocation(line: 227, column: 23, scope: !719)
!724 = !DILocalVariable(name: "w", arg: 2, scope: !719, file: !14, line: 227, type: !6)
!725 = !DILocation(line: 227, column: 32, scope: !719)
!726 = !DILocalVariable(name: "h", arg: 3, scope: !719, file: !14, line: 227, type: !6)
!727 = !DILocation(line: 227, column: 39, scope: !719)
!728 = !DILocalVariable(name: "nsubsamples", arg: 4, scope: !719, file: !14, line: 227, type: !6)
!729 = !DILocation(line: 227, column: 46, scope: !719)
!730 = !DILocalVariable(name: "x", scope: !719, file: !14, line: 229, type: !6)
!731 = !DILocation(line: 229, column: 9, scope: !719)
!732 = !DILocalVariable(name: "y", scope: !719, file: !14, line: 229, type: !6)
!733 = !DILocation(line: 229, column: 12, scope: !719)
!734 = !DILocalVariable(name: "u", scope: !719, file: !14, line: 230, type: !6)
!735 = !DILocation(line: 230, column: 9, scope: !719)
!736 = !DILocalVariable(name: "v", scope: !719, file: !14, line: 230, type: !6)
!737 = !DILocation(line: 230, column: 12, scope: !719)
!738 = !DILocalVariable(name: "fimg", scope: !719, file: !14, line: 232, type: !8)
!739 = !DILocation(line: 232, column: 13, scope: !719)
!740 = !DILocation(line: 232, column: 54, scope: !719)
!741 = !DILocation(line: 232, column: 52, scope: !719)
!742 = !DILocation(line: 232, column: 58, scope: !719)
!743 = !DILocation(line: 232, column: 56, scope: !719)
!744 = !DILocation(line: 232, column: 60, scope: !719)
!745 = !DILocation(line: 232, column: 30, scope: !719)
!746 = !DILocation(line: 232, column: 20, scope: !719)
!747 = !DILocation(line: 233, column: 20, scope: !719)
!748 = !DILocation(line: 233, column: 5, scope: !719)
!749 = !DILocation(line: 233, column: 46, scope: !719)
!750 = !DILocation(line: 233, column: 44, scope: !719)
!751 = !DILocation(line: 233, column: 50, scope: !719)
!752 = !DILocation(line: 233, column: 48, scope: !719)
!753 = !DILocation(line: 233, column: 52, scope: !719)
!754 = !DILocation(line: 235, column: 12, scope: !755)
!755 = distinct !DILexicalBlock(scope: !719, file: !14, line: 235, column: 5)
!756 = !DILocation(line: 235, column: 10, scope: !755)
!757 = !DILocation(line: 235, column: 17, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !14, line: 235, column: 5)
!759 = !DILocation(line: 235, column: 21, scope: !758)
!760 = !DILocation(line: 235, column: 19, scope: !758)
!761 = !DILocation(line: 235, column: 5, scope: !755)
!762 = !DILocation(line: 236, column: 16, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !14, line: 236, column: 9)
!764 = distinct !DILexicalBlock(scope: !758, file: !14, line: 235, column: 29)
!765 = !DILocation(line: 236, column: 14, scope: !763)
!766 = !DILocation(line: 236, column: 21, scope: !767)
!767 = distinct !DILexicalBlock(scope: !763, file: !14, line: 236, column: 9)
!768 = !DILocation(line: 236, column: 25, scope: !767)
!769 = !DILocation(line: 236, column: 23, scope: !767)
!770 = !DILocation(line: 236, column: 9, scope: !763)
!771 = !DILocation(line: 238, column: 20, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !14, line: 238, column: 13)
!773 = distinct !DILexicalBlock(scope: !767, file: !14, line: 236, column: 33)
!774 = !DILocation(line: 238, column: 18, scope: !772)
!775 = !DILocation(line: 238, column: 25, scope: !776)
!776 = distinct !DILexicalBlock(scope: !772, file: !14, line: 238, column: 13)
!777 = !DILocation(line: 238, column: 29, scope: !776)
!778 = !DILocation(line: 238, column: 27, scope: !776)
!779 = !DILocation(line: 238, column: 13, scope: !772)
!780 = !DILocation(line: 239, column: 24, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !14, line: 239, column: 17)
!782 = distinct !DILexicalBlock(scope: !776, file: !14, line: 238, column: 47)
!783 = !DILocation(line: 239, column: 22, scope: !781)
!784 = !DILocation(line: 239, column: 29, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !14, line: 239, column: 17)
!786 = !DILocation(line: 239, column: 33, scope: !785)
!787 = !DILocation(line: 239, column: 31, scope: !785)
!788 = !DILocation(line: 239, column: 17, scope: !781)
!789 = !DILocalVariable(name: "px", scope: !790, file: !14, line: 240, type: !5)
!790 = distinct !DILexicalBlock(scope: !785, file: !14, line: 239, column: 51)
!791 = !DILocation(line: 240, column: 28, scope: !790)
!792 = !DILocation(line: 240, column: 34, scope: !790)
!793 = !DILocation(line: 240, column: 39, scope: !790)
!794 = !DILocation(line: 240, column: 51, scope: !790)
!795 = !DILocation(line: 240, column: 43, scope: !790)
!796 = !DILocation(line: 240, column: 41, scope: !790)
!797 = !DILocation(line: 240, column: 36, scope: !790)
!798 = !DILocation(line: 240, column: 67, scope: !790)
!799 = !DILocation(line: 240, column: 69, scope: !790)
!800 = !DILocation(line: 240, column: 64, scope: !790)
!801 = !DILocation(line: 240, column: 80, scope: !790)
!802 = !DILocation(line: 240, column: 82, scope: !790)
!803 = !DILocation(line: 240, column: 77, scope: !790)
!804 = !DILocalVariable(name: "py", scope: !790, file: !14, line: 241, type: !5)
!805 = !DILocation(line: 241, column: 28, scope: !790)
!806 = !DILocation(line: 241, column: 35, scope: !790)
!807 = !DILocation(line: 241, column: 40, scope: !790)
!808 = !DILocation(line: 241, column: 52, scope: !790)
!809 = !DILocation(line: 241, column: 44, scope: !790)
!810 = !DILocation(line: 241, column: 42, scope: !790)
!811 = !DILocation(line: 241, column: 37, scope: !790)
!812 = !DILocation(line: 241, column: 68, scope: !790)
!813 = !DILocation(line: 241, column: 70, scope: !790)
!814 = !DILocation(line: 241, column: 65, scope: !790)
!815 = !DILocation(line: 241, column: 33, scope: !790)
!816 = !DILocation(line: 241, column: 81, scope: !790)
!817 = !DILocation(line: 241, column: 83, scope: !790)
!818 = !DILocation(line: 241, column: 78, scope: !790)
!819 = !DILocalVariable(name: "ray", scope: !790, file: !14, line: 243, type: !55)
!820 = !DILocation(line: 243, column: 25, scope: !790)
!821 = !DILocation(line: 245, column: 25, scope: !790)
!822 = !DILocation(line: 245, column: 29, scope: !790)
!823 = !DILocation(line: 245, column: 31, scope: !790)
!824 = !DILocation(line: 246, column: 25, scope: !790)
!825 = !DILocation(line: 246, column: 29, scope: !790)
!826 = !DILocation(line: 246, column: 31, scope: !790)
!827 = !DILocation(line: 247, column: 25, scope: !790)
!828 = !DILocation(line: 247, column: 29, scope: !790)
!829 = !DILocation(line: 247, column: 31, scope: !790)
!830 = !DILocation(line: 249, column: 33, scope: !790)
!831 = !DILocation(line: 249, column: 25, scope: !790)
!832 = !DILocation(line: 249, column: 29, scope: !790)
!833 = !DILocation(line: 249, column: 31, scope: !790)
!834 = !DILocation(line: 250, column: 33, scope: !790)
!835 = !DILocation(line: 250, column: 25, scope: !790)
!836 = !DILocation(line: 250, column: 29, scope: !790)
!837 = !DILocation(line: 250, column: 31, scope: !790)
!838 = !DILocation(line: 251, column: 25, scope: !790)
!839 = !DILocation(line: 251, column: 29, scope: !790)
!840 = !DILocation(line: 251, column: 31, scope: !790)
!841 = !DILocation(line: 252, column: 38, scope: !790)
!842 = !DILocation(line: 252, column: 21, scope: !790)
!843 = !DILocalVariable(name: "isect", scope: !790, file: !14, line: 254, type: !46)
!844 = !DILocation(line: 254, column: 27, scope: !790)
!845 = !DILocation(line: 255, column: 27, scope: !790)
!846 = !DILocation(line: 255, column: 31, scope: !790)
!847 = !DILocation(line: 256, column: 27, scope: !790)
!848 = !DILocation(line: 256, column: 31, scope: !790)
!849 = !DILocation(line: 258, column: 21, scope: !790)
!850 = !DILocation(line: 259, column: 21, scope: !790)
!851 = !DILocation(line: 260, column: 21, scope: !790)
!852 = !DILocation(line: 261, column: 21, scope: !790)
!853 = !DILocation(line: 263, column: 31, scope: !854)
!854 = distinct !DILexicalBlock(scope: !790, file: !14, line: 263, column: 25)
!855 = !DILocation(line: 263, column: 25, scope: !854)
!856 = !DILocation(line: 263, column: 25, scope: !790)
!857 = !DILocalVariable(name: "col", scope: !858, file: !14, line: 264, type: !19)
!858 = distinct !DILexicalBlock(scope: !854, file: !14, line: 263, column: 36)
!859 = !DILocation(line: 264, column: 29, scope: !858)
!860 = !DILocation(line: 265, column: 25, scope: !858)
!861 = !DILocation(line: 267, column: 58, scope: !858)
!862 = !DILocation(line: 267, column: 25, scope: !858)
!863 = !DILocation(line: 267, column: 35, scope: !858)
!864 = !DILocation(line: 267, column: 39, scope: !858)
!865 = !DILocation(line: 267, column: 37, scope: !858)
!866 = !DILocation(line: 267, column: 43, scope: !858)
!867 = !DILocation(line: 267, column: 41, scope: !858)
!868 = !DILocation(line: 267, column: 32, scope: !858)
!869 = !DILocation(line: 267, column: 46, scope: !858)
!870 = !DILocation(line: 267, column: 51, scope: !858)
!871 = !DILocation(line: 268, column: 58, scope: !858)
!872 = !DILocation(line: 268, column: 25, scope: !858)
!873 = !DILocation(line: 268, column: 35, scope: !858)
!874 = !DILocation(line: 268, column: 39, scope: !858)
!875 = !DILocation(line: 268, column: 37, scope: !858)
!876 = !DILocation(line: 268, column: 43, scope: !858)
!877 = !DILocation(line: 268, column: 41, scope: !858)
!878 = !DILocation(line: 268, column: 32, scope: !858)
!879 = !DILocation(line: 268, column: 46, scope: !858)
!880 = !DILocation(line: 268, column: 51, scope: !858)
!881 = !DILocation(line: 269, column: 58, scope: !858)
!882 = !DILocation(line: 269, column: 25, scope: !858)
!883 = !DILocation(line: 269, column: 35, scope: !858)
!884 = !DILocation(line: 269, column: 39, scope: !858)
!885 = !DILocation(line: 269, column: 37, scope: !858)
!886 = !DILocation(line: 269, column: 43, scope: !858)
!887 = !DILocation(line: 269, column: 41, scope: !858)
!888 = !DILocation(line: 269, column: 32, scope: !858)
!889 = !DILocation(line: 269, column: 46, scope: !858)
!890 = !DILocation(line: 269, column: 51, scope: !858)
!891 = !DILocation(line: 270, column: 21, scope: !858)
!892 = !DILocation(line: 272, column: 17, scope: !790)
!893 = !DILocation(line: 239, column: 47, scope: !785)
!894 = !DILocation(line: 239, column: 17, scope: !785)
!895 = distinct !{!895, !788, !896, !664}
!896 = !DILocation(line: 272, column: 17, scope: !781)
!897 = !DILocation(line: 273, column: 13, scope: !782)
!898 = !DILocation(line: 238, column: 43, scope: !776)
!899 = !DILocation(line: 238, column: 13, scope: !776)
!900 = distinct !{!900, !779, !901, !664}
!901 = !DILocation(line: 273, column: 13, scope: !772)
!902 = !DILocation(line: 275, column: 51, scope: !773)
!903 = !DILocation(line: 275, column: 65, scope: !773)
!904 = !DILocation(line: 275, column: 63, scope: !773)
!905 = !DILocation(line: 275, column: 42, scope: !773)
!906 = !DILocation(line: 275, column: 13, scope: !773)
!907 = !DILocation(line: 275, column: 23, scope: !773)
!908 = !DILocation(line: 275, column: 27, scope: !773)
!909 = !DILocation(line: 275, column: 25, scope: !773)
!910 = !DILocation(line: 275, column: 31, scope: !773)
!911 = !DILocation(line: 275, column: 29, scope: !773)
!912 = !DILocation(line: 275, column: 20, scope: !773)
!913 = !DILocation(line: 275, column: 34, scope: !773)
!914 = !DILocation(line: 275, column: 39, scope: !773)
!915 = !DILocation(line: 276, column: 51, scope: !773)
!916 = !DILocation(line: 276, column: 65, scope: !773)
!917 = !DILocation(line: 276, column: 63, scope: !773)
!918 = !DILocation(line: 276, column: 42, scope: !773)
!919 = !DILocation(line: 276, column: 13, scope: !773)
!920 = !DILocation(line: 276, column: 23, scope: !773)
!921 = !DILocation(line: 276, column: 27, scope: !773)
!922 = !DILocation(line: 276, column: 25, scope: !773)
!923 = !DILocation(line: 276, column: 31, scope: !773)
!924 = !DILocation(line: 276, column: 29, scope: !773)
!925 = !DILocation(line: 276, column: 20, scope: !773)
!926 = !DILocation(line: 276, column: 34, scope: !773)
!927 = !DILocation(line: 276, column: 39, scope: !773)
!928 = !DILocation(line: 277, column: 51, scope: !773)
!929 = !DILocation(line: 277, column: 65, scope: !773)
!930 = !DILocation(line: 277, column: 63, scope: !773)
!931 = !DILocation(line: 277, column: 42, scope: !773)
!932 = !DILocation(line: 277, column: 13, scope: !773)
!933 = !DILocation(line: 277, column: 23, scope: !773)
!934 = !DILocation(line: 277, column: 27, scope: !773)
!935 = !DILocation(line: 277, column: 25, scope: !773)
!936 = !DILocation(line: 277, column: 31, scope: !773)
!937 = !DILocation(line: 277, column: 29, scope: !773)
!938 = !DILocation(line: 277, column: 20, scope: !773)
!939 = !DILocation(line: 277, column: 34, scope: !773)
!940 = !DILocation(line: 277, column: 39, scope: !773)
!941 = !DILocation(line: 279, column: 46, scope: !773)
!942 = !DILocation(line: 279, column: 55, scope: !773)
!943 = !DILocation(line: 279, column: 59, scope: !773)
!944 = !DILocation(line: 279, column: 57, scope: !773)
!945 = !DILocation(line: 279, column: 63, scope: !773)
!946 = !DILocation(line: 279, column: 61, scope: !773)
!947 = !DILocation(line: 279, column: 53, scope: !773)
!948 = !DILocation(line: 279, column: 66, scope: !773)
!949 = !DILocation(line: 279, column: 40, scope: !773)
!950 = !DILocation(line: 279, column: 13, scope: !773)
!951 = !DILocation(line: 279, column: 22, scope: !773)
!952 = !DILocation(line: 279, column: 26, scope: !773)
!953 = !DILocation(line: 279, column: 24, scope: !773)
!954 = !DILocation(line: 279, column: 30, scope: !773)
!955 = !DILocation(line: 279, column: 28, scope: !773)
!956 = !DILocation(line: 279, column: 19, scope: !773)
!957 = !DILocation(line: 279, column: 33, scope: !773)
!958 = !DILocation(line: 279, column: 38, scope: !773)
!959 = !DILocation(line: 280, column: 46, scope: !773)
!960 = !DILocation(line: 280, column: 55, scope: !773)
!961 = !DILocation(line: 280, column: 59, scope: !773)
!962 = !DILocation(line: 280, column: 57, scope: !773)
!963 = !DILocation(line: 280, column: 63, scope: !773)
!964 = !DILocation(line: 280, column: 61, scope: !773)
!965 = !DILocation(line: 280, column: 53, scope: !773)
!966 = !DILocation(line: 280, column: 66, scope: !773)
!967 = !DILocation(line: 280, column: 40, scope: !773)
!968 = !DILocation(line: 280, column: 13, scope: !773)
!969 = !DILocation(line: 280, column: 22, scope: !773)
!970 = !DILocation(line: 280, column: 26, scope: !773)
!971 = !DILocation(line: 280, column: 24, scope: !773)
!972 = !DILocation(line: 280, column: 30, scope: !773)
!973 = !DILocation(line: 280, column: 28, scope: !773)
!974 = !DILocation(line: 280, column: 19, scope: !773)
!975 = !DILocation(line: 280, column: 33, scope: !773)
!976 = !DILocation(line: 280, column: 38, scope: !773)
!977 = !DILocation(line: 281, column: 46, scope: !773)
!978 = !DILocation(line: 281, column: 55, scope: !773)
!979 = !DILocation(line: 281, column: 59, scope: !773)
!980 = !DILocation(line: 281, column: 57, scope: !773)
!981 = !DILocation(line: 281, column: 63, scope: !773)
!982 = !DILocation(line: 281, column: 61, scope: !773)
!983 = !DILocation(line: 281, column: 53, scope: !773)
!984 = !DILocation(line: 281, column: 66, scope: !773)
!985 = !DILocation(line: 281, column: 40, scope: !773)
!986 = !DILocation(line: 281, column: 13, scope: !773)
!987 = !DILocation(line: 281, column: 22, scope: !773)
!988 = !DILocation(line: 281, column: 26, scope: !773)
!989 = !DILocation(line: 281, column: 24, scope: !773)
!990 = !DILocation(line: 281, column: 30, scope: !773)
!991 = !DILocation(line: 281, column: 28, scope: !773)
!992 = !DILocation(line: 281, column: 19, scope: !773)
!993 = !DILocation(line: 281, column: 33, scope: !773)
!994 = !DILocation(line: 281, column: 38, scope: !773)
!995 = !DILocation(line: 282, column: 9, scope: !773)
!996 = !DILocation(line: 236, column: 29, scope: !767)
!997 = !DILocation(line: 236, column: 9, scope: !767)
!998 = distinct !{!998, !770, !999, !664}
!999 = !DILocation(line: 282, column: 9, scope: !763)
!1000 = !DILocation(line: 283, column: 5, scope: !764)
!1001 = !DILocation(line: 235, column: 25, scope: !758)
!1002 = !DILocation(line: 235, column: 5, scope: !758)
!1003 = distinct !{!1003, !761, !1004, !664}
!1004 = !DILocation(line: 283, column: 5, scope: !755)
!1005 = !DILocation(line: 285, column: 1, scope: !719)
!1006 = distinct !DISubprogram(name: "init_scene", scope: !14, file: !14, line: 288, type: !1007, scopeLine: 289, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null}
!1009 = !DILocation(line: 290, column: 25, scope: !1006)
!1010 = !DILocation(line: 291, column: 25, scope: !1006)
!1011 = !DILocation(line: 292, column: 25, scope: !1006)
!1012 = !DILocation(line: 293, column: 23, scope: !1006)
!1013 = !DILocation(line: 295, column: 25, scope: !1006)
!1014 = !DILocation(line: 296, column: 25, scope: !1006)
!1015 = !DILocation(line: 297, column: 25, scope: !1006)
!1016 = !DILocation(line: 298, column: 23, scope: !1006)
!1017 = !DILocation(line: 300, column: 25, scope: !1006)
!1018 = !DILocation(line: 301, column: 25, scope: !1006)
!1019 = !DILocation(line: 302, column: 25, scope: !1006)
!1020 = !DILocation(line: 303, column: 23, scope: !1006)
!1021 = !DILocation(line: 305, column: 15, scope: !1006)
!1022 = !DILocation(line: 306, column: 15, scope: !1006)
!1023 = !DILocation(line: 307, column: 15, scope: !1006)
!1024 = !DILocation(line: 309, column: 15, scope: !1006)
!1025 = !DILocation(line: 310, column: 15, scope: !1006)
!1026 = !DILocation(line: 311, column: 15, scope: !1006)
!1027 = !DILocation(line: 313, column: 1, scope: !1006)
!1028 = distinct !DISubprogram(name: "saveppm", scope: !14, file: !14, line: 316, type: !1029, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1031, !6, !6, !10}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1033)
!1033 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!1034 = !DILocalVariable(name: "fname", arg: 1, scope: !1028, file: !14, line: 316, type: !1031)
!1035 = !DILocation(line: 316, column: 21, scope: !1028)
!1036 = !DILocalVariable(name: "w", arg: 2, scope: !1028, file: !14, line: 316, type: !6)
!1037 = !DILocation(line: 316, column: 32, scope: !1028)
!1038 = !DILocalVariable(name: "h", arg: 3, scope: !1028, file: !14, line: 316, type: !6)
!1039 = !DILocation(line: 316, column: 39, scope: !1028)
!1040 = !DILocalVariable(name: "img", arg: 4, scope: !1028, file: !14, line: 316, type: !10)
!1041 = !DILocation(line: 316, column: 57, scope: !1028)
!1042 = !DILocalVariable(name: "fp", scope: !1028, file: !14, line: 318, type: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1045, line: 7, baseType: !1046)
!1045 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1047, line: 50, size: 1728, elements: !1048)
!1047 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "8b2aa9af4ced87e40d6c436b1f5f8bda")
!1048 = !{!1049, !1050, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1065, !1067, !1068, !1069, !1073, !1077, !1079, !1081, !1082, !1085, !1087, !1090, !1093, !1094, !1095, !1097, !1098}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1046, file: !1047, line: 52, baseType: !6, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1046, file: !1047, line: 55, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1046, file: !1047, line: 56, baseType: !1051, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1046, file: !1047, line: 57, baseType: !1051, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1046, file: !1047, line: 58, baseType: !1051, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1046, file: !1047, line: 59, baseType: !1051, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1046, file: !1047, line: 60, baseType: !1051, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1046, file: !1047, line: 61, baseType: !1051, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1046, file: !1047, line: 62, baseType: !1051, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1046, file: !1047, line: 65, baseType: !1051, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1046, file: !1047, line: 66, baseType: !1051, size: 64, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1046, file: !1047, line: 67, baseType: !1051, size: 64, offset: 704)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1046, file: !1047, line: 69, baseType: !1063, size: 64, offset: 768)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1047, line: 37, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1046, file: !1047, line: 71, baseType: !1066, size: 64, offset: 832)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1046, file: !1047, line: 73, baseType: !6, size: 32, offset: 896)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1046, file: !1047, line: 74, baseType: !6, size: 24, offset: 928, flags: DIFlagBitField, extraData: i64 928)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_short_backupbuf", scope: !1046, file: !1047, line: 76, baseType: !1070, size: 8, offset: 952)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 8, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 1)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1046, file: !1047, line: 77, baseType: !1074, size: 64, offset: 960)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1075, line: 152, baseType: !1076)
!1075 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!1076 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1046, file: !1047, line: 80, baseType: !1078, size: 16, offset: 1024)
!1078 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1046, file: !1047, line: 81, baseType: !1080, size: 8, offset: 1040)
!1080 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1046, file: !1047, line: 82, baseType: !1070, size: 8, offset: 1048)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1046, file: !1047, line: 84, baseType: !1083, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1047, line: 44, baseType: null)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1046, file: !1047, line: 92, baseType: !1086, size: 64, offset: 1152)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1075, line: 153, baseType: !1076)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1046, file: !1047, line: 94, baseType: !1088, size: 64, offset: 1216)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1047, line: 38, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1046, file: !1047, line: 95, baseType: !1091, size: 64, offset: 1280)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1047, line: 39, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1046, file: !1047, line: 96, baseType: !1066, size: 64, offset: 1344)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1046, file: !1047, line: 97, baseType: !9, size: 64, offset: 1408)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_prevchain", scope: !1046, file: !1047, line: 98, baseType: !1096, size: 64, offset: 1472)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1046, file: !1047, line: 99, baseType: !6, size: 32, offset: 1536)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1046, file: !1047, line: 101, baseType: !1099, size: 160, offset: 1568)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 160, elements: !1100)
!1100 = !{!1101}
!1101 = !DISubrange(count: 20)
!1102 = !DILocation(line: 318, column: 11, scope: !1028)
!1103 = !DILocation(line: 320, column: 16, scope: !1028)
!1104 = !DILocation(line: 320, column: 10, scope: !1028)
!1105 = !DILocation(line: 320, column: 8, scope: !1028)
!1106 = !DILocation(line: 321, column: 5, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !14, line: 321, column: 5)
!1108 = distinct !DILexicalBlock(scope: !1028, file: !14, line: 321, column: 5)
!1109 = !DILocation(line: 321, column: 5, scope: !1108)
!1110 = !DILocation(line: 323, column: 13, scope: !1028)
!1111 = !DILocation(line: 323, column: 5, scope: !1028)
!1112 = !DILocation(line: 324, column: 13, scope: !1028)
!1113 = !DILocation(line: 324, column: 28, scope: !1028)
!1114 = !DILocation(line: 324, column: 31, scope: !1028)
!1115 = !DILocation(line: 324, column: 5, scope: !1028)
!1116 = !DILocation(line: 325, column: 13, scope: !1028)
!1117 = !DILocation(line: 325, column: 5, scope: !1028)
!1118 = !DILocation(line: 326, column: 12, scope: !1028)
!1119 = !DILocation(line: 326, column: 17, scope: !1028)
!1120 = !DILocation(line: 326, column: 21, scope: !1028)
!1121 = !DILocation(line: 326, column: 19, scope: !1028)
!1122 = !DILocation(line: 326, column: 23, scope: !1028)
!1123 = !DILocation(line: 326, column: 31, scope: !1028)
!1124 = !DILocation(line: 326, column: 5, scope: !1028)
!1125 = !DILocation(line: 327, column: 12, scope: !1028)
!1126 = !DILocation(line: 327, column: 5, scope: !1028)
!1127 = !DILocation(line: 328, column: 1, scope: !1028)
!1128 = distinct !DISubprogram(name: "main", scope: !14, file: !14, line: 331, type: !1129, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !62)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!6, !6, !1131}
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1132 = !DILocalVariable(name: "argc", arg: 1, scope: !1128, file: !14, line: 331, type: !6)
!1133 = !DILocation(line: 331, column: 10, scope: !1128)
!1134 = !DILocalVariable(name: "argv", arg: 2, scope: !1128, file: !14, line: 331, type: !1131)
!1135 = !DILocation(line: 331, column: 23, scope: !1128)
!1136 = !DILocalVariable(name: "img", scope: !1128, file: !14, line: 333, type: !10)
!1137 = !DILocation(line: 333, column: 20, scope: !1128)
!1138 = !DILocation(line: 333, column: 43, scope: !1128)
!1139 = !DILocation(line: 335, column: 5, scope: !1128)
!1140 = !DILocation(line: 337, column: 12, scope: !1128)
!1141 = !DILocation(line: 337, column: 5, scope: !1128)
!1142 = !DILocation(line: 339, column: 38, scope: !1128)
!1143 = !DILocation(line: 339, column: 5, scope: !1128)
!1144 = !DILocation(line: 341, column: 5, scope: !1128)
