; ModuleID = './samples/smallpt.cpp'
source_filename = "./samples/smallpt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, [3 x i8], [1 x i8], i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, %struct._IO_FILE**, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Ray = type { %struct.Vec, %struct.Vec }

$_ZN3VecC2Eddd = comdat any

$_ZN6SphereC2Ed3VecS0_S0_6Refl_t = comdat any

$_ZNK3VecmlEd = comdat any

$_Z9intersectRK3RayRdRi = comdat any

$_ZNK3VecplERKS_ = comdat any

$_ZNK3VecmiERKS_ = comdat any

$_ZN3Vec4normEv = comdat any

$_ZNK3Vec3dotERKS_ = comdat any

$_ZN3VecrmERS_ = comdat any

$_ZNK3Vec4multERKS_ = comdat any

$_ZN3RayC2E3VecS0_ = comdat any

$_Z5clampd = comdat any

$_Z5toIntd = comdat any

$_ZNK6Sphere9intersectERK3Ray = comdat any

@spheres = dso_local global [9 x %struct.Sphere] zeroinitializer, align 16, !dbg !0
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [28 x i8] c"\0DRendering (%d spp) %5.2f%%\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"\0A\0AElapsed Time: %f Seconds\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"image.ppm\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"P3\0A%d %d\0A%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%d %d %d \00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_smallpt.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !759 {
entry:
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp1 = alloca %struct.Vec, align 8
  %agg.tmp2 = alloca %struct.Vec, align 8
  %agg.tmp3 = alloca %struct.Vec, align 8
  %agg.tmp4 = alloca %struct.Vec, align 8
  %agg.tmp5 = alloca %struct.Vec, align 8
  %agg.tmp6 = alloca %struct.Vec, align 8
  %agg.tmp7 = alloca %struct.Vec, align 8
  %agg.tmp8 = alloca %struct.Vec, align 8
  %agg.tmp9 = alloca %struct.Vec, align 8
  %agg.tmp10 = alloca %struct.Vec, align 8
  %agg.tmp11 = alloca %struct.Vec, align 8
  %agg.tmp12 = alloca %struct.Vec, align 8
  %agg.tmp13 = alloca %struct.Vec, align 8
  %agg.tmp14 = alloca %struct.Vec, align 8
  %agg.tmp15 = alloca %struct.Vec, align 8
  %agg.tmp16 = alloca %struct.Vec, align 8
  %agg.tmp17 = alloca %struct.Vec, align 8
  %agg.tmp18 = alloca %struct.Vec, align 8
  %agg.tmp19 = alloca %struct.Vec, align 8
  %agg.tmp20 = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %agg.tmp21 = alloca %struct.Vec, align 8
  %agg.tmp22 = alloca %struct.Vec, align 8
  %agg.tmp23 = alloca %struct.Vec, align 8
  %ref.tmp24 = alloca %struct.Vec, align 8
  %agg.tmp25 = alloca %struct.Vec, align 8
  %agg.tmp26 = alloca %struct.Vec, align 8
  %agg.tmp27 = alloca %struct.Vec, align 8
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp, double noundef 1.000010e+05, double noundef 4.080000e+01, double noundef 8.160000e+01), !dbg !762
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !764
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp2, double noundef 7.500000e-01, double noundef 2.500000e-01, double noundef 2.500000e-01), !dbg !765
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 0), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp1, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp2, i32 noundef 0), !dbg !766
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp3, double noundef -9.990100e+04, double noundef 4.080000e+01, double noundef 8.160000e+01), !dbg !767
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp4, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !768
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp5, double noundef 2.500000e-01, double noundef 2.500000e-01, double noundef 7.500000e-01), !dbg !769
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 1), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp3, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp4, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp5, i32 noundef 0), !dbg !770
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp6, double noundef 5.000000e+01, double noundef 4.080000e+01, double noundef 1.000000e+05), !dbg !771
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !772
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp8, double noundef 7.500000e-01, double noundef 7.500000e-01, double noundef 7.500000e-01), !dbg !773
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 2), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp6, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp7, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp8, i32 noundef 0), !dbg !774
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp9, double noundef 5.000000e+01, double noundef 4.080000e+01, double noundef -9.983000e+04), !dbg !775
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp10, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !776
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp11, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !777
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 3), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp9, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp10, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp11, i32 noundef 0), !dbg !778
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp12, double noundef 5.000000e+01, double noundef 1.000000e+05, double noundef 8.160000e+01), !dbg !779
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp13, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !780
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp14, double noundef 7.500000e-01, double noundef 7.500000e-01, double noundef 7.500000e-01), !dbg !781
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 4), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp12, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp13, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp14, i32 noundef 0), !dbg !782
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp15, double noundef 5.000000e+01, double noundef 0xC0F864E666666666, double noundef 8.160000e+01), !dbg !783
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp16, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !784
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp17, double noundef 7.500000e-01, double noundef 7.500000e-01, double noundef 7.500000e-01), !dbg !785
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 5), double noundef 1.000000e+05, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp15, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp16, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp17, i32 noundef 0), !dbg !786
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp18, double noundef 2.700000e+01, double noundef 1.650000e+01, double noundef 4.700000e+01), !dbg !787
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp19, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !788
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00), !dbg !789
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %agg.tmp20, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp, double noundef 0x3FEFF7CED916872B), !dbg !790
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 6), double noundef 1.650000e+01, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp18, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp19, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp20, i32 noundef 1), !dbg !791
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp21, double noundef 7.300000e+01, double noundef 1.650000e+01, double noundef 7.800000e+01), !dbg !792
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp22, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !793
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp24, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00), !dbg !794
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %agg.tmp23, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp24, double noundef 0x3FEFF7CED916872B), !dbg !795
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 7), double noundef 1.650000e+01, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp21, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp22, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp23, i32 noundef 2), !dbg !796
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp25, double noundef 5.000000e+01, double noundef 6.813300e+02, double noundef 8.160000e+01), !dbg !797
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp26, double noundef 1.200000e+01, double noundef 1.200000e+01, double noundef 1.200000e+01), !dbg !798
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp27, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !799
  call void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) getelementptr inbounds ([9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 8), double noundef 6.000000e+02, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp25, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp26, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp27, i32 noundef 0), !dbg !800
  ret void, !dbg !801
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, double noundef %x_, double noundef %y_, double noundef %z_) unnamed_addr #1 comdat align 2 !dbg !802 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %x_.addr = alloca double, align 8
  %y_.addr = alloca double, align 8
  %z_.addr = alloca double, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !803, metadata !DIExpression()), !dbg !805
  store double %x_, double* %x_.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x_.addr, metadata !806, metadata !DIExpression()), !dbg !807
  store double %y_, double* %y_.addr, align 8
  call void @llvm.dbg.declare(metadata double* %y_.addr, metadata !808, metadata !DIExpression()), !dbg !809
  store double %z_, double* %z_.addr, align 8
  call void @llvm.dbg.declare(metadata double* %z_.addr, metadata !810, metadata !DIExpression()), !dbg !811
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %0 = load double, double* %x_.addr, align 8, !dbg !812
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !814
  store double %0, double* %x, align 8, !dbg !815
  %1 = load double, double* %y_.addr, align 8, !dbg !816
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !817
  store double %1, double* %y, align 8, !dbg !818
  %2 = load double, double* %z_.addr, align 8, !dbg !819
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !820
  store double %2, double* %z, align 8, !dbg !821
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6SphereC2Ed3VecS0_S0_6Refl_t(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) %this, double noundef %rad_, %struct.Vec* noundef byval(%struct.Vec) align 8 %p_, %struct.Vec* noundef byval(%struct.Vec) align 8 %e_, %struct.Vec* noundef byval(%struct.Vec) align 8 %c_, i32 noundef %refl_) unnamed_addr #1 comdat align 2 !dbg !823 {
entry:
  %this.addr = alloca %struct.Sphere*, align 8
  %rad_.addr = alloca double, align 8
  %refl_.addr = alloca i32, align 4
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Sphere** %this.addr, metadata !824, metadata !DIExpression()), !dbg !826
  store double %rad_, double* %rad_.addr, align 8
  call void @llvm.dbg.declare(metadata double* %rad_.addr, metadata !827, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.declare(metadata %struct.Vec* %p_, metadata !829, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.declare(metadata %struct.Vec* %e_, metadata !831, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.declare(metadata %struct.Vec* %c_, metadata !833, metadata !DIExpression()), !dbg !834
  store i32 %refl_, i32* %refl_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %refl_.addr, metadata !835, metadata !DIExpression()), !dbg !836
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  %rad = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0, !dbg !837
  %0 = load double, double* %rad_.addr, align 8, !dbg !838
  store double %0, double* %rad, align 8, !dbg !837
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1, !dbg !839
  %1 = bitcast %struct.Vec* %p to i8*, !dbg !839
  %2 = bitcast %struct.Vec* %p_ to i8*, !dbg !839
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false), !dbg !839
  %e = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 2, !dbg !840
  %3 = bitcast %struct.Vec* %e to i8*, !dbg !840
  %4 = bitcast %struct.Vec* %e_ to i8*, !dbg !840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false), !dbg !840
  %c = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 3, !dbg !841
  %5 = bitcast %struct.Vec* %c to i8*, !dbg !841
  %6 = bitcast %struct.Vec* %c_ to i8*, !dbg !841
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false), !dbg !841
  %refl = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 4, !dbg !842
  %7 = load i32, i32* %refl_.addr, align 4, !dbg !843
  store i32 %7, i32* %refl, align 8, !dbg !842
  ret void, !dbg !844
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK3VecmlEd(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, double noundef %b) #2 comdat align 2 !dbg !845 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca double, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !846, metadata !DIExpression()), !dbg !848
  store double %b, double* %b.addr, align 8
  call void @llvm.dbg.declare(metadata double* %b.addr, metadata !849, metadata !DIExpression()), !dbg !850
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !851
  %0 = load double, double* %x, align 8, !dbg !851
  %1 = load double, double* %b.addr, align 8, !dbg !852
  %mul = fmul double %0, %1, !dbg !853
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !854
  %2 = load double, double* %y, align 8, !dbg !854
  %3 = load double, double* %b.addr, align 8, !dbg !855
  %mul2 = fmul double %2, %3, !dbg !856
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !857
  %4 = load double, double* %z, align 8, !dbg !857
  %5 = load double, double* %b.addr, align 8, !dbg !858
  %mul3 = fmul double %4, %5, !dbg !859
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef %mul, double noundef %mul2, double noundef %mul3), !dbg !860
  ret void, !dbg !861
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z8radianceRK3RayiPt(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %r, i32 noundef %depth, i16* noundef %Xi) #2 !dbg !862 {
entry:
  %r.addr = alloca %struct.Ray*, align 8
  %depth.addr = alloca i32, align 4
  %Xi.addr = alloca i16*, align 8
  %t = alloca double, align 8
  %id = alloca i32, align 4
  %obj = alloca %struct.Sphere*, align 8
  %x = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %n = alloca %struct.Vec, align 8
  %ref.tmp1 = alloca %struct.Vec, align 8
  %nl = alloca %struct.Vec, align 8
  %f = alloca %struct.Vec, align 8
  %p5 = alloca double, align 8
  %ref.tmp28 = alloca %struct.Vec, align 8
  %r1 = alloca double, align 8
  %r2 = alloca double, align 8
  %r2s = alloca double, align 8
  %w = alloca %struct.Vec, align 8
  %u = alloca %struct.Vec, align 8
  %ref.tmp36 = alloca %struct.Vec, align 8
  %ref.tmp37 = alloca %struct.Vec, align 8
  %v = alloca %struct.Vec, align 8
  %d44 = alloca %struct.Vec, align 8
  %ref.tmp45 = alloca %struct.Vec, align 8
  %ref.tmp46 = alloca %struct.Vec, align 8
  %ref.tmp47 = alloca %struct.Vec, align 8
  %ref.tmp48 = alloca %struct.Vec, align 8
  %ref.tmp50 = alloca %struct.Vec, align 8
  %ref.tmp51 = alloca %struct.Vec, align 8
  %ref.tmp53 = alloca %struct.Vec, align 8
  %ref.tmp57 = alloca %struct.Vec, align 8
  %ref.tmp58 = alloca %struct.Vec, align 8
  %ref.tmp59 = alloca %struct.Ray, align 8
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp60 = alloca %struct.Vec, align 8
  %ref.tmp66 = alloca %struct.Vec, align 8
  %ref.tmp67 = alloca %struct.Vec, align 8
  %ref.tmp68 = alloca %struct.Ray, align 8
  %agg.tmp69 = alloca %struct.Vec, align 8
  %agg.tmp70 = alloca %struct.Vec, align 8
  %ref.tmp72 = alloca %struct.Vec, align 8
  %ref.tmp73 = alloca %struct.Vec, align 8
  %reflRay = alloca %struct.Ray, align 8
  %agg.tmp78 = alloca %struct.Vec, align 8
  %agg.tmp79 = alloca %struct.Vec, align 8
  %ref.tmp81 = alloca %struct.Vec, align 8
  %ref.tmp82 = alloca %struct.Vec, align 8
  %into = alloca i8, align 1
  %nc = alloca double, align 8
  %nt = alloca double, align 8
  %nnt = alloca double, align 8
  %ddn = alloca double, align 8
  %cos2t = alloca double, align 8
  %ref.tmp102 = alloca %struct.Vec, align 8
  %ref.tmp103 = alloca %struct.Vec, align 8
  %tdir = alloca %struct.Vec, align 8
  %ref.tmp105 = alloca %struct.Vec, align 8
  %ref.tmp106 = alloca %struct.Vec, align 8
  %ref.tmp108 = alloca %struct.Vec, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %R0 = alloca double, align 8
  %c119 = alloca double, align 8
  %Re = alloca double, align 8
  %Tr = alloca double, align 8
  %P = alloca double, align 8
  %RP = alloca double, align 8
  %TP = alloca double, align 8
  %ref.tmp139 = alloca %struct.Vec, align 8
  %ref.tmp140 = alloca %struct.Vec, align 8
  %ref.tmp146 = alloca %struct.Vec, align 8
  %ref.tmp148 = alloca %struct.Vec, align 8
  %ref.tmp149 = alloca %struct.Ray, align 8
  %agg.tmp150 = alloca %struct.Vec, align 8
  %agg.tmp151 = alloca %struct.Vec, align 8
  %ref.tmp154 = alloca %struct.Vec, align 8
  %ref.tmp155 = alloca %struct.Vec, align 8
  %ref.tmp156 = alloca %struct.Vec, align 8
  %ref.tmp157 = alloca %struct.Vec, align 8
  %ref.tmp158 = alloca %struct.Ray, align 8
  %agg.tmp159 = alloca %struct.Vec, align 8
  %agg.tmp160 = alloca %struct.Vec, align 8
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Ray** %r.addr, metadata !866, metadata !DIExpression()), !dbg !867
  store i32 %depth, i32* %depth.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %depth.addr, metadata !868, metadata !DIExpression()), !dbg !869
  store i16* %Xi, i16** %Xi.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %Xi.addr, metadata !870, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.declare(metadata double* %t, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.declare(metadata i32* %id, metadata !874, metadata !DIExpression()), !dbg !875
  store i32 0, i32* %id, align 4, !dbg !875
  %0 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !876
  %call = call noundef zeroext i1 @_Z9intersectRK3RayRdRi(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %0, double* noundef nonnull align 8 dereferenceable(8) %t, i32* noundef nonnull align 4 dereferenceable(4) %id), !dbg !878
  br i1 %call, label %if.end, label %if.then, !dbg !879

if.then:                                          ; preds = %entry
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !880
  br label %return, !dbg !881

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.Sphere** %obj, metadata !882, metadata !DIExpression()), !dbg !884
  %1 = load i32, i32* %id, align 4, !dbg !885
  %idxprom = sext i32 %1 to i64, !dbg !886
  %arrayidx = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %idxprom, !dbg !886
  store %struct.Sphere* %arrayidx, %struct.Sphere** %obj, align 8, !dbg !884
  call void @llvm.dbg.declare(metadata %struct.Vec* %x, metadata !887, metadata !DIExpression()), !dbg !888
  %2 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !889
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %2, i32 0, i32 0, !dbg !890
  %3 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !891
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %3, i32 0, i32 1, !dbg !892
  %4 = load double, double* %t, align 8, !dbg !893
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d, double noundef %4), !dbg !894
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %x, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %o, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp), !dbg !895
  call void @llvm.dbg.declare(metadata %struct.Vec* %n, metadata !896, metadata !DIExpression()), !dbg !897
  %5 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !898
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %5, i32 0, i32 1, !dbg !899
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp1, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %x, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %p), !dbg !900
  %call2 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp1), !dbg !901
  %6 = bitcast %struct.Vec* %n to i8*, !dbg !902
  %7 = bitcast %struct.Vec* %call2 to i8*, !dbg !902
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false), !dbg !902
  call void @llvm.dbg.declare(metadata %struct.Vec* %nl, metadata !903, metadata !DIExpression()), !dbg !904
  %8 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !905
  %d3 = getelementptr inbounds %struct.Ray, %struct.Ray* %8, i32 0, i32 1, !dbg !906
  %call4 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d3), !dbg !907
  %cmp = fcmp olt double %call4, 0.000000e+00, !dbg !908
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !909

cond.true:                                        ; preds = %if.end
  %9 = bitcast %struct.Vec* %nl to i8*, !dbg !910
  %10 = bitcast %struct.Vec* %n to i8*, !dbg !910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false), !dbg !910
  br label %cond.end, !dbg !909

cond.false:                                       ; preds = %if.end
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %nl, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, double noundef -1.000000e+00), !dbg !911
  br label %cond.end, !dbg !909

cond.end:                                         ; preds = %cond.false, %cond.true
  call void @llvm.dbg.declare(metadata %struct.Vec* %f, metadata !912, metadata !DIExpression()), !dbg !913
  %11 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !914
  %c = getelementptr inbounds %struct.Sphere, %struct.Sphere* %11, i32 0, i32 3, !dbg !915
  %12 = bitcast %struct.Vec* %f to i8*, !dbg !914
  %13 = bitcast %struct.Vec* %c to i8*, !dbg !914
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false), !dbg !914
  call void @llvm.dbg.declare(metadata double* %p5, metadata !916, metadata !DIExpression()), !dbg !917
  %x6 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0, !dbg !918
  %14 = load double, double* %x6, align 8, !dbg !918
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1, !dbg !919
  %15 = load double, double* %y, align 8, !dbg !919
  %cmp7 = fcmp ogt double %14, %15, !dbg !920
  br i1 %cmp7, label %land.lhs.true, label %cond.false12, !dbg !921

land.lhs.true:                                    ; preds = %cond.end
  %x8 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0, !dbg !922
  %16 = load double, double* %x8, align 8, !dbg !922
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2, !dbg !923
  %17 = load double, double* %z, align 8, !dbg !923
  %cmp9 = fcmp ogt double %16, %17, !dbg !924
  br i1 %cmp9, label %cond.true10, label %cond.false12, !dbg !925

cond.true10:                                      ; preds = %land.lhs.true
  %x11 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 0, !dbg !926
  %18 = load double, double* %x11, align 8, !dbg !926
  br label %cond.end21, !dbg !925

cond.false12:                                     ; preds = %land.lhs.true, %cond.end
  %y13 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1, !dbg !927
  %19 = load double, double* %y13, align 8, !dbg !927
  %z14 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2, !dbg !928
  %20 = load double, double* %z14, align 8, !dbg !928
  %cmp15 = fcmp ogt double %19, %20, !dbg !929
  br i1 %cmp15, label %cond.true16, label %cond.false18, !dbg !930

cond.true16:                                      ; preds = %cond.false12
  %y17 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 1, !dbg !931
  %21 = load double, double* %y17, align 8, !dbg !931
  br label %cond.end20, !dbg !930

cond.false18:                                     ; preds = %cond.false12
  %z19 = getelementptr inbounds %struct.Vec, %struct.Vec* %f, i32 0, i32 2, !dbg !932
  %22 = load double, double* %z19, align 8, !dbg !932
  br label %cond.end20, !dbg !930

cond.end20:                                       ; preds = %cond.false18, %cond.true16
  %cond = phi double [ %21, %cond.true16 ], [ %22, %cond.false18 ], !dbg !930
  br label %cond.end21, !dbg !925

cond.end21:                                       ; preds = %cond.end20, %cond.true10
  %cond22 = phi double [ %18, %cond.true10 ], [ %cond, %cond.end20 ], !dbg !925
  store double %cond22, double* %p5, align 8, !dbg !917
  %23 = load i32, i32* %depth.addr, align 4, !dbg !933
  %inc = add nsw i32 %23, 1, !dbg !933
  store i32 %inc, i32* %depth.addr, align 4, !dbg !933
  %cmp23 = icmp sgt i32 %inc, 5, !dbg !935
  br i1 %cmp23, label %if.then24, label %if.end30, !dbg !936

if.then24:                                        ; preds = %cond.end21
  %24 = load i16*, i16** %Xi.addr, align 8, !dbg !937
  %call25 = call double @erand48(i16* noundef %24) #12, !dbg !939
  %25 = load double, double* %p5, align 8, !dbg !940
  %cmp26 = fcmp olt double %call25, %25, !dbg !941
  br i1 %cmp26, label %if.then27, label %if.else, !dbg !942

if.then27:                                        ; preds = %if.then24
  %26 = load double, double* %p5, align 8, !dbg !943
  %div = fdiv double 1.000000e+00, %26, !dbg !944
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp28, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %f, double noundef %div), !dbg !945
  %27 = bitcast %struct.Vec* %f to i8*, !dbg !946
  %28 = bitcast %struct.Vec* %ref.tmp28 to i8*, !dbg !946
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false), !dbg !946
  br label %if.end29, !dbg !947

if.else:                                          ; preds = %if.then24
  %29 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !948
  %e = getelementptr inbounds %struct.Sphere, %struct.Sphere* %29, i32 0, i32 2, !dbg !949
  %30 = bitcast %struct.Vec* %agg.result to i8*, !dbg !948
  %31 = bitcast %struct.Vec* %e to i8*, !dbg !948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false), !dbg !948
  br label %return, !dbg !950

if.end29:                                         ; preds = %if.then27
  br label %if.end30, !dbg !940

if.end30:                                         ; preds = %if.end29, %cond.end21
  %32 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !951
  %refl = getelementptr inbounds %struct.Sphere, %struct.Sphere* %32, i32 0, i32 4, !dbg !953
  %33 = load i32, i32* %refl, align 8, !dbg !953
  %cmp31 = icmp eq i32 %33, 0, !dbg !954
  br i1 %cmp31, label %if.then32, label %if.else61, !dbg !955

if.then32:                                        ; preds = %if.end30
  call void @llvm.dbg.declare(metadata double* %r1, metadata !956, metadata !DIExpression()), !dbg !958
  %34 = load i16*, i16** %Xi.addr, align 8, !dbg !959
  %call33 = call double @erand48(i16* noundef %34) #12, !dbg !960
  %mul = fmul double 0x401921FB54442D18, %call33, !dbg !961
  store double %mul, double* %r1, align 8, !dbg !958
  call void @llvm.dbg.declare(metadata double* %r2, metadata !962, metadata !DIExpression()), !dbg !963
  %35 = load i16*, i16** %Xi.addr, align 8, !dbg !964
  %call34 = call double @erand48(i16* noundef %35) #12, !dbg !965
  store double %call34, double* %r2, align 8, !dbg !963
  call void @llvm.dbg.declare(metadata double* %r2s, metadata !966, metadata !DIExpression()), !dbg !967
  %36 = load double, double* %r2, align 8, !dbg !968
  %call35 = call double @sqrt(double noundef %36) #12, !dbg !969
  store double %call35, double* %r2s, align 8, !dbg !967
  call void @llvm.dbg.declare(metadata %struct.Vec* %w, metadata !970, metadata !DIExpression()), !dbg !971
  %37 = bitcast %struct.Vec* %w to i8*, !dbg !972
  %38 = bitcast %struct.Vec* %nl to i8*, !dbg !972
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false), !dbg !972
  call void @llvm.dbg.declare(metadata %struct.Vec* %u, metadata !973, metadata !DIExpression()), !dbg !974
  %x38 = getelementptr inbounds %struct.Vec, %struct.Vec* %w, i32 0, i32 0, !dbg !975
  %39 = load double, double* %x38, align 8, !dbg !975
  %40 = call double @llvm.fabs.f64(double %39), !dbg !976
  %cmp39 = fcmp ogt double %40, 1.000000e-01, !dbg !977
  br i1 %cmp39, label %cond.true40, label %cond.false41, !dbg !976

cond.true40:                                      ; preds = %if.then32
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp37, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00), !dbg !978
  br label %cond.end42, !dbg !976

cond.false41:                                     ; preds = %if.then32
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp37, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !979
  br label %cond.end42, !dbg !976

cond.end42:                                       ; preds = %cond.false41, %cond.true40
  call void @_ZN3VecrmERS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp36, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp37, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %w), !dbg !980
  %call43 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp36), !dbg !981
  %41 = bitcast %struct.Vec* %u to i8*, !dbg !982
  %42 = bitcast %struct.Vec* %call43 to i8*, !dbg !982
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false), !dbg !982
  call void @llvm.dbg.declare(metadata %struct.Vec* %v, metadata !983, metadata !DIExpression()), !dbg !984
  call void @_ZN3VecrmERS_(%struct.Vec* sret(%struct.Vec) align 8 %v, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %w, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %u), !dbg !985
  call void @llvm.dbg.declare(metadata %struct.Vec* %d44, metadata !986, metadata !DIExpression()), !dbg !987
  %43 = load double, double* %r1, align 8, !dbg !988
  %call49 = call double @cos(double noundef %43) #12, !dbg !989
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp48, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %u, double noundef %call49), !dbg !990
  %44 = load double, double* %r2s, align 8, !dbg !991
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp47, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp48, double noundef %44), !dbg !992
  %45 = load double, double* %r1, align 8, !dbg !993
  %call52 = call double @sin(double noundef %45) #12, !dbg !994
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp51, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %v, double noundef %call52), !dbg !995
  %46 = load double, double* %r2s, align 8, !dbg !996
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp50, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp51, double noundef %46), !dbg !997
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp46, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp47, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp50), !dbg !998
  %47 = load double, double* %r2, align 8, !dbg !999
  %sub = fsub double 1.000000e+00, %47, !dbg !1000
  %call54 = call double @sqrt(double noundef %sub) #12, !dbg !1001
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp53, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %w, double noundef %call54), !dbg !1002
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp45, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp46, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp53), !dbg !1003
  %call55 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp45), !dbg !1004
  %48 = bitcast %struct.Vec* %d44 to i8*, !dbg !1005
  %49 = bitcast %struct.Vec* %call55 to i8*, !dbg !1005
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false), !dbg !1005
  %50 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !1006
  %e56 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %50, i32 0, i32 2, !dbg !1007
  %51 = bitcast %struct.Vec* %agg.tmp to i8*, !dbg !1008
  %52 = bitcast %struct.Vec* %x to i8*, !dbg !1008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 24, i1 false), !dbg !1008
  %53 = bitcast %struct.Vec* %agg.tmp60 to i8*, !dbg !1009
  %54 = bitcast %struct.Vec* %d44 to i8*, !dbg !1009
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 24, i1 false), !dbg !1009
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp59, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp60), !dbg !1010
  %55 = load i32, i32* %depth.addr, align 4, !dbg !1011
  %56 = load i16*, i16** %Xi.addr, align 8, !dbg !1012
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp58, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp59, i32 noundef %55, i16* noundef %56), !dbg !1013
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp57, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %f, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp58), !dbg !1014
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %e56, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp57), !dbg !1015
  br label %return, !dbg !1016

if.else61:                                        ; preds = %if.end30
  %57 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !1017
  %refl62 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %57, i32 0, i32 4, !dbg !1019
  %58 = load i32, i32* %refl62, align 8, !dbg !1019
  %cmp63 = icmp eq i32 %58, 1, !dbg !1020
  br i1 %cmp63, label %if.then64, label %if.end76, !dbg !1021

if.then64:                                        ; preds = %if.else61
  %59 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !1022
  %e65 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %59, i32 0, i32 2, !dbg !1023
  %60 = bitcast %struct.Vec* %agg.tmp69 to i8*, !dbg !1024
  %61 = bitcast %struct.Vec* %x to i8*, !dbg !1024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false), !dbg !1024
  %62 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1025
  %d71 = getelementptr inbounds %struct.Ray, %struct.Ray* %62, i32 0, i32 1, !dbg !1026
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp73, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, double noundef 2.000000e+00), !dbg !1027
  %63 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1028
  %d74 = getelementptr inbounds %struct.Ray, %struct.Ray* %63, i32 0, i32 1, !dbg !1029
  %call75 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d74), !dbg !1030
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp72, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp73, double noundef %call75), !dbg !1031
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.tmp70, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d71, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp72), !dbg !1032
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp68, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp69, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp70), !dbg !1033
  %64 = load i32, i32* %depth.addr, align 4, !dbg !1034
  %65 = load i16*, i16** %Xi.addr, align 8, !dbg !1035
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp67, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp68, i32 noundef %64, i16* noundef %65), !dbg !1036
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp66, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %f, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp67), !dbg !1037
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %e65, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp66), !dbg !1038
  br label %return, !dbg !1039

if.end76:                                         ; preds = %if.else61
  br label %if.end77

if.end77:                                         ; preds = %if.end76
  call void @llvm.dbg.declare(metadata %struct.Ray* %reflRay, metadata !1040, metadata !DIExpression()), !dbg !1041
  %66 = bitcast %struct.Vec* %agg.tmp78 to i8*, !dbg !1042
  %67 = bitcast %struct.Vec* %x to i8*, !dbg !1042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false), !dbg !1042
  %68 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1043
  %d80 = getelementptr inbounds %struct.Ray, %struct.Ray* %68, i32 0, i32 1, !dbg !1044
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp82, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, double noundef 2.000000e+00), !dbg !1045
  %69 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1046
  %d83 = getelementptr inbounds %struct.Ray, %struct.Ray* %69, i32 0, i32 1, !dbg !1047
  %call84 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d83), !dbg !1048
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp81, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp82, double noundef %call84), !dbg !1049
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.tmp79, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d80, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp81), !dbg !1050
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %reflRay, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp78, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp79), !dbg !1041
  call void @llvm.dbg.declare(metadata i8* %into, metadata !1051, metadata !DIExpression()), !dbg !1053
  %call85 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %nl), !dbg !1054
  %cmp86 = fcmp ogt double %call85, 0.000000e+00, !dbg !1055
  %frombool = zext i1 %cmp86 to i8, !dbg !1053
  store i8 %frombool, i8* %into, align 1, !dbg !1053
  call void @llvm.dbg.declare(metadata double* %nc, metadata !1056, metadata !DIExpression()), !dbg !1057
  store double 1.000000e+00, double* %nc, align 8, !dbg !1057
  call void @llvm.dbg.declare(metadata double* %nt, metadata !1058, metadata !DIExpression()), !dbg !1059
  store double 1.500000e+00, double* %nt, align 8, !dbg !1059
  call void @llvm.dbg.declare(metadata double* %nnt, metadata !1060, metadata !DIExpression()), !dbg !1061
  %70 = load i8, i8* %into, align 1, !dbg !1062
  %tobool = trunc i8 %70 to i1, !dbg !1062
  br i1 %tobool, label %cond.true87, label %cond.false89, !dbg !1062

cond.true87:                                      ; preds = %if.end77
  %71 = load double, double* %nc, align 8, !dbg !1063
  %72 = load double, double* %nt, align 8, !dbg !1064
  %div88 = fdiv double %71, %72, !dbg !1065
  br label %cond.end91, !dbg !1062

cond.false89:                                     ; preds = %if.end77
  %73 = load double, double* %nt, align 8, !dbg !1066
  %74 = load double, double* %nc, align 8, !dbg !1067
  %div90 = fdiv double %73, %74, !dbg !1068
  br label %cond.end91, !dbg !1062

cond.end91:                                       ; preds = %cond.false89, %cond.true87
  %cond92 = phi double [ %div88, %cond.true87 ], [ %div90, %cond.false89 ], !dbg !1062
  store double %cond92, double* %nnt, align 8, !dbg !1061
  call void @llvm.dbg.declare(metadata double* %ddn, metadata !1069, metadata !DIExpression()), !dbg !1070
  %75 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1071
  %d93 = getelementptr inbounds %struct.Ray, %struct.Ray* %75, i32 0, i32 1, !dbg !1072
  %call94 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %d93, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %nl), !dbg !1073
  store double %call94, double* %ddn, align 8, !dbg !1070
  call void @llvm.dbg.declare(metadata double* %cos2t, metadata !1074, metadata !DIExpression()), !dbg !1075
  %76 = load double, double* %nnt, align 8, !dbg !1076
  %77 = load double, double* %nnt, align 8, !dbg !1078
  %mul95 = fmul double %76, %77, !dbg !1079
  %78 = load double, double* %ddn, align 8, !dbg !1080
  %79 = load double, double* %ddn, align 8, !dbg !1081
  %neg = fneg double %78, !dbg !1082
  %80 = call double @llvm.fmuladd.f64(double %neg, double %79, double 1.000000e+00), !dbg !1082
  %neg98 = fneg double %mul95, !dbg !1083
  %81 = call double @llvm.fmuladd.f64(double %neg98, double %80, double 1.000000e+00), !dbg !1083
  store double %81, double* %cos2t, align 8, !dbg !1084
  %cmp99 = fcmp olt double %81, 0.000000e+00, !dbg !1085
  br i1 %cmp99, label %if.then100, label %if.end104, !dbg !1086

if.then100:                                       ; preds = %cond.end91
  %82 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !1087
  %e101 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %82, i32 0, i32 2, !dbg !1088
  %83 = load i32, i32* %depth.addr, align 4, !dbg !1089
  %84 = load i16*, i16** %Xi.addr, align 8, !dbg !1090
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp103, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %reflRay, i32 noundef %83, i16* noundef %84), !dbg !1091
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp102, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %f, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp103), !dbg !1092
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %e101, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp102), !dbg !1093
  br label %return, !dbg !1094

if.end104:                                        ; preds = %cond.end91
  call void @llvm.dbg.declare(metadata %struct.Vec* %tdir, metadata !1095, metadata !DIExpression()), !dbg !1096
  %85 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1097
  %d107 = getelementptr inbounds %struct.Ray, %struct.Ray* %85, i32 0, i32 1, !dbg !1098
  %86 = load double, double* %nnt, align 8, !dbg !1099
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp106, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d107, double noundef %86), !dbg !1100
  %87 = load i8, i8* %into, align 1, !dbg !1101
  %tobool109 = trunc i8 %87 to i1, !dbg !1101
  %88 = zext i1 %tobool109 to i64, !dbg !1101
  %cond110 = select i1 %tobool109, i32 1, i32 -1, !dbg !1101
  %conv = sitofp i32 %cond110 to double, !dbg !1102
  %89 = load double, double* %ddn, align 8, !dbg !1103
  %90 = load double, double* %nnt, align 8, !dbg !1104
  %91 = load double, double* %cos2t, align 8, !dbg !1105
  %call112 = call double @sqrt(double noundef %91) #12, !dbg !1106
  %92 = call double @llvm.fmuladd.f64(double %89, double %90, double %call112), !dbg !1107
  %mul113 = fmul double %conv, %92, !dbg !1108
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp108, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %n, double noundef %mul113), !dbg !1109
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp105, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp106, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp108), !dbg !1110
  %call114 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp105), !dbg !1111
  %93 = bitcast %struct.Vec* %tdir to i8*, !dbg !1112
  %94 = bitcast %struct.Vec* %call114 to i8*, !dbg !1112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 24, i1 false), !dbg !1112
  call void @llvm.dbg.declare(metadata double* %a, metadata !1113, metadata !DIExpression()), !dbg !1114
  %95 = load double, double* %nt, align 8, !dbg !1115
  %96 = load double, double* %nc, align 8, !dbg !1116
  %sub115 = fsub double %95, %96, !dbg !1117
  store double %sub115, double* %a, align 8, !dbg !1114
  call void @llvm.dbg.declare(metadata double* %b, metadata !1118, metadata !DIExpression()), !dbg !1119
  %97 = load double, double* %nt, align 8, !dbg !1120
  %98 = load double, double* %nc, align 8, !dbg !1121
  %add = fadd double %97, %98, !dbg !1122
  store double %add, double* %b, align 8, !dbg !1119
  call void @llvm.dbg.declare(metadata double* %R0, metadata !1123, metadata !DIExpression()), !dbg !1124
  %99 = load double, double* %a, align 8, !dbg !1125
  %100 = load double, double* %a, align 8, !dbg !1126
  %mul116 = fmul double %99, %100, !dbg !1127
  %101 = load double, double* %b, align 8, !dbg !1128
  %102 = load double, double* %b, align 8, !dbg !1129
  %mul117 = fmul double %101, %102, !dbg !1130
  %div118 = fdiv double %mul116, %mul117, !dbg !1131
  store double %div118, double* %R0, align 8, !dbg !1124
  call void @llvm.dbg.declare(metadata double* %c119, metadata !1132, metadata !DIExpression()), !dbg !1133
  %103 = load i8, i8* %into, align 1, !dbg !1134
  %tobool120 = trunc i8 %103 to i1, !dbg !1134
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !1134

cond.true121:                                     ; preds = %if.end104
  %104 = load double, double* %ddn, align 8, !dbg !1135
  %fneg = fneg double %104, !dbg !1136
  br label %cond.end124, !dbg !1134

cond.false122:                                    ; preds = %if.end104
  %call123 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %tdir, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %n), !dbg !1137
  br label %cond.end124, !dbg !1134

cond.end124:                                      ; preds = %cond.false122, %cond.true121
  %cond125 = phi double [ %fneg, %cond.true121 ], [ %call123, %cond.false122 ], !dbg !1134
  %sub126 = fsub double 1.000000e+00, %cond125, !dbg !1138
  store double %sub126, double* %c119, align 8, !dbg !1133
  call void @llvm.dbg.declare(metadata double* %Re, metadata !1139, metadata !DIExpression()), !dbg !1140
  %105 = load double, double* %R0, align 8, !dbg !1141
  %106 = load double, double* %R0, align 8, !dbg !1142
  %sub127 = fsub double 1.000000e+00, %106, !dbg !1143
  %107 = load double, double* %c119, align 8, !dbg !1144
  %mul128 = fmul double %sub127, %107, !dbg !1145
  %108 = load double, double* %c119, align 8, !dbg !1146
  %mul129 = fmul double %mul128, %108, !dbg !1147
  %109 = load double, double* %c119, align 8, !dbg !1148
  %mul130 = fmul double %mul129, %109, !dbg !1149
  %110 = load double, double* %c119, align 8, !dbg !1150
  %mul131 = fmul double %mul130, %110, !dbg !1151
  %111 = load double, double* %c119, align 8, !dbg !1152
  %112 = call double @llvm.fmuladd.f64(double %mul131, double %111, double %105), !dbg !1153
  store double %112, double* %Re, align 8, !dbg !1140
  call void @llvm.dbg.declare(metadata double* %Tr, metadata !1154, metadata !DIExpression()), !dbg !1155
  %113 = load double, double* %Re, align 8, !dbg !1156
  %sub133 = fsub double 1.000000e+00, %113, !dbg !1157
  store double %sub133, double* %Tr, align 8, !dbg !1155
  call void @llvm.dbg.declare(metadata double* %P, metadata !1158, metadata !DIExpression()), !dbg !1159
  %114 = load double, double* %Re, align 8, !dbg !1160
  %115 = call double @llvm.fmuladd.f64(double 5.000000e-01, double %114, double 2.500000e-01), !dbg !1161
  store double %115, double* %P, align 8, !dbg !1159
  call void @llvm.dbg.declare(metadata double* %RP, metadata !1162, metadata !DIExpression()), !dbg !1163
  %116 = load double, double* %Re, align 8, !dbg !1164
  %117 = load double, double* %P, align 8, !dbg !1165
  %div135 = fdiv double %116, %117, !dbg !1166
  store double %div135, double* %RP, align 8, !dbg !1163
  call void @llvm.dbg.declare(metadata double* %TP, metadata !1167, metadata !DIExpression()), !dbg !1168
  %118 = load double, double* %Tr, align 8, !dbg !1169
  %119 = load double, double* %P, align 8, !dbg !1170
  %sub136 = fsub double 1.000000e+00, %119, !dbg !1171
  %div137 = fdiv double %118, %sub136, !dbg !1172
  store double %div137, double* %TP, align 8, !dbg !1168
  %120 = load %struct.Sphere*, %struct.Sphere** %obj, align 8, !dbg !1173
  %e138 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %120, i32 0, i32 2, !dbg !1174
  %121 = load i32, i32* %depth.addr, align 4, !dbg !1175
  %cmp141 = icmp sgt i32 %121, 2, !dbg !1176
  br i1 %cmp141, label %cond.true142, label %cond.false153, !dbg !1175

cond.true142:                                     ; preds = %cond.end124
  %122 = load i16*, i16** %Xi.addr, align 8, !dbg !1177
  %call143 = call double @erand48(i16* noundef %122) #12, !dbg !1178
  %123 = load double, double* %P, align 8, !dbg !1179
  %cmp144 = fcmp olt double %call143, %123, !dbg !1180
  br i1 %cmp144, label %cond.true145, label %cond.false147, !dbg !1178

cond.true145:                                     ; preds = %cond.true142
  %124 = load i32, i32* %depth.addr, align 4, !dbg !1181
  %125 = load i16*, i16** %Xi.addr, align 8, !dbg !1182
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp146, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %reflRay, i32 noundef %124, i16* noundef %125), !dbg !1183
  %126 = load double, double* %RP, align 8, !dbg !1184
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp140, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp146, double noundef %126), !dbg !1185
  br label %cond.end152, !dbg !1178

cond.false147:                                    ; preds = %cond.true142
  %127 = bitcast %struct.Vec* %agg.tmp150 to i8*, !dbg !1186
  %128 = bitcast %struct.Vec* %x to i8*, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 24, i1 false), !dbg !1186
  %129 = bitcast %struct.Vec* %agg.tmp151 to i8*, !dbg !1187
  %130 = bitcast %struct.Vec* %tdir to i8*, !dbg !1187
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 24, i1 false), !dbg !1187
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp149, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp150, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp151), !dbg !1188
  %131 = load i32, i32* %depth.addr, align 4, !dbg !1189
  %132 = load i16*, i16** %Xi.addr, align 8, !dbg !1190
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp148, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp149, i32 noundef %131, i16* noundef %132), !dbg !1191
  %133 = load double, double* %TP, align 8, !dbg !1192
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp140, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp148, double noundef %133), !dbg !1193
  br label %cond.end152, !dbg !1178

cond.end152:                                      ; preds = %cond.false147, %cond.true145
  br label %cond.end161, !dbg !1175

cond.false153:                                    ; preds = %cond.end124
  %134 = load i32, i32* %depth.addr, align 4, !dbg !1194
  %135 = load i16*, i16** %Xi.addr, align 8, !dbg !1195
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp155, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %reflRay, i32 noundef %134, i16* noundef %135), !dbg !1196
  %136 = load double, double* %Re, align 8, !dbg !1197
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp154, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp155, double noundef %136), !dbg !1198
  %137 = bitcast %struct.Vec* %agg.tmp159 to i8*, !dbg !1199
  %138 = bitcast %struct.Vec* %x to i8*, !dbg !1199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 24, i1 false), !dbg !1199
  %139 = bitcast %struct.Vec* %agg.tmp160 to i8*, !dbg !1200
  %140 = bitcast %struct.Vec* %tdir to i8*, !dbg !1200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %139, i8* align 8 %140, i64 24, i1 false), !dbg !1200
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp158, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp159, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp160), !dbg !1201
  %141 = load i32, i32* %depth.addr, align 4, !dbg !1202
  %142 = load i16*, i16** %Xi.addr, align 8, !dbg !1203
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp157, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp158, i32 noundef %141, i16* noundef %142), !dbg !1204
  %143 = load double, double* %Tr, align 8, !dbg !1205
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp156, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp157, double noundef %143), !dbg !1206
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp140, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp154, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp156), !dbg !1207
  br label %cond.end161, !dbg !1175

cond.end161:                                      ; preds = %cond.false153, %cond.end152
  call void @_ZNK3Vec4multERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp139, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %f, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp140), !dbg !1208
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %e138, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp139), !dbg !1209
  br label %return, !dbg !1210

return:                                           ; preds = %cond.end161, %if.then100, %if.then64, %cond.end42, %if.else, %if.then
  ret void, !dbg !1211
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z9intersectRK3RayRdRi(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %r, double* noundef nonnull align 8 dereferenceable(8) %t, i32* noundef nonnull align 4 dereferenceable(4) %id) #2 comdat !dbg !1212 {
entry:
  %r.addr = alloca %struct.Ray*, align 8
  %t.addr = alloca double*, align 8
  %id.addr = alloca i32*, align 8
  %n = alloca double, align 8
  %d = alloca double, align 8
  %inf = alloca double, align 8
  %i = alloca i32, align 4
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Ray** %r.addr, metadata !1217, metadata !DIExpression()), !dbg !1218
  store double* %t, double** %t.addr, align 8
  call void @llvm.dbg.declare(metadata double** %t.addr, metadata !1219, metadata !DIExpression()), !dbg !1220
  store i32* %id, i32** %id.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %id.addr, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.declare(metadata double* %n, metadata !1223, metadata !DIExpression()), !dbg !1224
  store double 9.000000e+00, double* %n, align 8, !dbg !1224
  call void @llvm.dbg.declare(metadata double* %d, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata double* %inf, metadata !1227, metadata !DIExpression()), !dbg !1228
  %0 = load double*, double** %t.addr, align 8, !dbg !1229
  store double 1.000000e+20, double* %0, align 8, !dbg !1230
  store double 1.000000e+20, double* %inf, align 8, !dbg !1228
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1231, metadata !DIExpression()), !dbg !1233
  %1 = load double, double* %n, align 8, !dbg !1234
  %conv = fptosi double %1 to i32, !dbg !1234
  store i32 %conv, i32* %i, align 4, !dbg !1233
  br label %for.cond, !dbg !1235

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4, !dbg !1236
  %dec = add nsw i32 %2, -1, !dbg !1236
  store i32 %dec, i32* %i, align 4, !dbg !1236
  %tobool = icmp ne i32 %2, 0, !dbg !1238
  br i1 %tobool, label %for.body, label %for.end, !dbg !1239

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !1240
  %idxprom = sext i32 %3 to i64, !dbg !1242
  %arrayidx = getelementptr inbounds [9 x %struct.Sphere], [9 x %struct.Sphere]* @spheres, i64 0, i64 %idxprom, !dbg !1242
  %4 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1243
  %call = call noundef double @_ZNK6Sphere9intersectERK3Ray(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) %arrayidx, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %4), !dbg !1244
  store double %call, double* %d, align 8, !dbg !1245
  %tobool1 = fcmp une double %call, 0.000000e+00, !dbg !1246
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !1247

land.lhs.true:                                    ; preds = %for.body
  %5 = load double, double* %d, align 8, !dbg !1248
  %6 = load double*, double** %t.addr, align 8, !dbg !1249
  %7 = load double, double* %6, align 8, !dbg !1249
  %cmp = fcmp olt double %5, %7, !dbg !1250
  br i1 %cmp, label %if.then, label %if.end, !dbg !1251

if.then:                                          ; preds = %land.lhs.true
  %8 = load double, double* %d, align 8, !dbg !1252
  %9 = load double*, double** %t.addr, align 8, !dbg !1254
  store double %8, double* %9, align 8, !dbg !1255
  %10 = load i32, i32* %i, align 4, !dbg !1256
  %11 = load i32*, i32** %id.addr, align 8, !dbg !1257
  store i32 %10, i32* %11, align 4, !dbg !1258
  br label %if.end, !dbg !1259

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.cond, !dbg !1260, !llvm.loop !1261

for.end:                                          ; preds = %for.cond
  %12 = load double*, double** %t.addr, align 8, !dbg !1264
  %13 = load double, double* %12, align 8, !dbg !1264
  %14 = load double, double* %inf, align 8, !dbg !1265
  %cmp2 = fcmp olt double %13, %14, !dbg !1266
  ret i1 %cmp2, !dbg !1267
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK3VecplERKS_(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %b) #2 comdat align 2 !dbg !1268 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1269, metadata !DIExpression()), !dbg !1270
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %b.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1273
  %0 = load double, double* %x, align 8, !dbg !1273
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1274
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0, !dbg !1275
  %2 = load double, double* %x2, align 8, !dbg !1275
  %add = fadd double %0, %2, !dbg !1276
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1277
  %3 = load double, double* %y, align 8, !dbg !1277
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1278
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1, !dbg !1279
  %5 = load double, double* %y3, align 8, !dbg !1279
  %add4 = fadd double %3, %5, !dbg !1280
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1281
  %6 = load double, double* %z, align 8, !dbg !1281
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1282
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2, !dbg !1283
  %8 = load double, double* %z5, align 8, !dbg !1283
  %add6 = fadd double %6, %8, !dbg !1284
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef %add, double noundef %add4, double noundef %add6), !dbg !1285
  ret void, !dbg !1286
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK3VecmiERKS_(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %b) #2 comdat align 2 !dbg !1287 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1288, metadata !DIExpression()), !dbg !1289
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %b.addr, metadata !1290, metadata !DIExpression()), !dbg !1291
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1292
  %0 = load double, double* %x, align 8, !dbg !1292
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1293
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0, !dbg !1294
  %2 = load double, double* %x2, align 8, !dbg !1294
  %sub = fsub double %0, %2, !dbg !1295
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1296
  %3 = load double, double* %y, align 8, !dbg !1296
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1297
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1, !dbg !1298
  %5 = load double, double* %y3, align 8, !dbg !1298
  %sub4 = fsub double %3, %5, !dbg !1299
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1300
  %6 = load double, double* %z, align 8, !dbg !1300
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1301
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2, !dbg !1302
  %8 = load double, double* %z5, align 8, !dbg !1302
  %sub6 = fsub double %6, %8, !dbg !1303
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef %sub, double noundef %sub4, double noundef %sub6), !dbg !1304
  ret void, !dbg !1305
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %this) #2 comdat align 2 !dbg !1306 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1307, metadata !DIExpression()), !dbg !1308
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1309
  %0 = load double, double* %x, align 8, !dbg !1309
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1310
  %1 = load double, double* %x2, align 8, !dbg !1310
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1311
  %2 = load double, double* %y, align 8, !dbg !1311
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1312
  %3 = load double, double* %y3, align 8, !dbg !1312
  %mul4 = fmul double %2, %3, !dbg !1313
  %4 = call double @llvm.fmuladd.f64(double %0, double %1, double %mul4), !dbg !1314
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1315
  %5 = load double, double* %z, align 8, !dbg !1315
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1316
  %6 = load double, double* %z5, align 8, !dbg !1316
  %7 = call double @llvm.fmuladd.f64(double %5, double %6, double %4), !dbg !1317
  %call = call double @sqrt(double noundef %7) #12, !dbg !1318
  %div = fdiv double 1.000000e+00, %call, !dbg !1319
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this1, double noundef %div), !dbg !1320
  %8 = bitcast %struct.Vec* %this1 to i8*, !dbg !1321
  %9 = bitcast %struct.Vec* %ref.tmp to i8*, !dbg !1321
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false), !dbg !1321
  ret %struct.Vec* %this1, !dbg !1322
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %b) #5 comdat align 2 !dbg !1323 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1324, metadata !DIExpression()), !dbg !1325
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %b.addr, metadata !1326, metadata !DIExpression()), !dbg !1327
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1328
  %0 = load double, double* %x, align 8, !dbg !1328
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1329
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0, !dbg !1330
  %2 = load double, double* %x2, align 8, !dbg !1330
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1331
  %3 = load double, double* %y, align 8, !dbg !1331
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1332
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1, !dbg !1333
  %5 = load double, double* %y3, align 8, !dbg !1333
  %mul4 = fmul double %3, %5, !dbg !1334
  %6 = call double @llvm.fmuladd.f64(double %0, double %2, double %mul4), !dbg !1335
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1336
  %7 = load double, double* %z, align 8, !dbg !1336
  %8 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1337
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %8, i32 0, i32 2, !dbg !1338
  %9 = load double, double* %z5, align 8, !dbg !1338
  %10 = call double @llvm.fmuladd.f64(double %7, double %9, double %6), !dbg !1339
  ret double %10, !dbg !1340
}

; Function Attrs: nounwind
declare double @erand48(i16* noundef) #6

; Function Attrs: nounwind
declare double @sqrt(double noundef) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN3VecrmERS_(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %b) #2 comdat align 2 !dbg !1341 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %b.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1346
  %0 = load double, double* %y, align 8, !dbg !1346
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1347
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 2, !dbg !1348
  %2 = load double, double* %z, align 8, !dbg !1348
  %z2 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1349
  %3 = load double, double* %z2, align 8, !dbg !1349
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1350
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1, !dbg !1351
  %5 = load double, double* %y3, align 8, !dbg !1351
  %mul4 = fmul double %3, %5, !dbg !1352
  %neg = fneg double %mul4, !dbg !1353
  %6 = call double @llvm.fmuladd.f64(double %0, double %2, double %neg), !dbg !1353
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1354
  %7 = load double, double* %z5, align 8, !dbg !1354
  %8 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1355
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %8, i32 0, i32 0, !dbg !1356
  %9 = load double, double* %x, align 8, !dbg !1356
  %x6 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1357
  %10 = load double, double* %x6, align 8, !dbg !1357
  %11 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1358
  %z7 = getelementptr inbounds %struct.Vec, %struct.Vec* %11, i32 0, i32 2, !dbg !1359
  %12 = load double, double* %z7, align 8, !dbg !1359
  %mul8 = fmul double %10, %12, !dbg !1360
  %neg9 = fneg double %mul8, !dbg !1361
  %13 = call double @llvm.fmuladd.f64(double %7, double %9, double %neg9), !dbg !1361
  %x10 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1362
  %14 = load double, double* %x10, align 8, !dbg !1362
  %15 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1363
  %y11 = getelementptr inbounds %struct.Vec, %struct.Vec* %15, i32 0, i32 1, !dbg !1364
  %16 = load double, double* %y11, align 8, !dbg !1364
  %y12 = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1365
  %17 = load double, double* %y12, align 8, !dbg !1365
  %18 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1366
  %x13 = getelementptr inbounds %struct.Vec, %struct.Vec* %18, i32 0, i32 0, !dbg !1367
  %19 = load double, double* %x13, align 8, !dbg !1367
  %mul14 = fmul double %17, %19, !dbg !1368
  %neg15 = fneg double %mul14, !dbg !1369
  %20 = call double @llvm.fmuladd.f64(double %14, double %16, double %neg15), !dbg !1369
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef %6, double noundef %13, double noundef %20), !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: nounwind
declare double @cos(double noundef) #6

; Function Attrs: nounwind
declare double @sin(double noundef) #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZNK3Vec4multERKS_(%struct.Vec* noalias sret(%struct.Vec) align 8 %agg.result, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %this, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %b) #2 comdat align 2 !dbg !1372 {
entry:
  %this.addr = alloca %struct.Vec*, align 8
  %b.addr = alloca %struct.Vec*, align 8
  store %struct.Vec* %this, %struct.Vec** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %this.addr, metadata !1373, metadata !DIExpression()), !dbg !1374
  store %struct.Vec* %b, %struct.Vec** %b.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec** %b.addr, metadata !1375, metadata !DIExpression()), !dbg !1376
  %this1 = load %struct.Vec*, %struct.Vec** %this.addr, align 8
  %x = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 0, !dbg !1377
  %0 = load double, double* %x, align 8, !dbg !1377
  %1 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1378
  %x2 = getelementptr inbounds %struct.Vec, %struct.Vec* %1, i32 0, i32 0, !dbg !1379
  %2 = load double, double* %x2, align 8, !dbg !1379
  %mul = fmul double %0, %2, !dbg !1380
  %y = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 1, !dbg !1381
  %3 = load double, double* %y, align 8, !dbg !1381
  %4 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1382
  %y3 = getelementptr inbounds %struct.Vec, %struct.Vec* %4, i32 0, i32 1, !dbg !1383
  %5 = load double, double* %y3, align 8, !dbg !1383
  %mul4 = fmul double %3, %5, !dbg !1384
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %this1, i32 0, i32 2, !dbg !1385
  %6 = load double, double* %z, align 8, !dbg !1385
  %7 = load %struct.Vec*, %struct.Vec** %b.addr, align 8, !dbg !1386
  %z5 = getelementptr inbounds %struct.Vec, %struct.Vec* %7, i32 0, i32 2, !dbg !1387
  %8 = load double, double* %z5, align 8, !dbg !1387
  %mul6 = fmul double %6, %8, !dbg !1388
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.result, double noundef %mul, double noundef %mul4, double noundef %mul6), !dbg !1389
  ret void, !dbg !1390
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %this, %struct.Vec* noundef byval(%struct.Vec) align 8 %o_, %struct.Vec* noundef byval(%struct.Vec) align 8 %d_) unnamed_addr #1 comdat align 2 !dbg !1391 {
entry:
  %this.addr = alloca %struct.Ray*, align 8
  store %struct.Ray* %this, %struct.Ray** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Ray** %this.addr, metadata !1392, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.declare(metadata %struct.Vec* %o_, metadata !1395, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata %struct.Vec* %d_, metadata !1397, metadata !DIExpression()), !dbg !1398
  %this1 = load %struct.Ray*, %struct.Ray** %this.addr, align 8
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 0, !dbg !1399
  %0 = bitcast %struct.Vec* %o to i8*, !dbg !1399
  %1 = bitcast %struct.Vec* %o_ to i8*, !dbg !1399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false), !dbg !1399
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %this1, i32 0, i32 1, !dbg !1400
  %2 = bitcast %struct.Vec* %d to i8*, !dbg !1400
  %3 = bitcast %struct.Vec* %d_ to i8*, !dbg !1400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false), !dbg !1400
  ret void, !dbg !1401
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #7 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !1402 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %samps = alloca i32, align 4
  %Start_t = alloca i64, align 8
  %cam = alloca %struct.Ray, align 8
  %agg.tmp = alloca %struct.Vec, align 8
  %agg.tmp2 = alloca %struct.Vec, align 8
  %ref.tmp = alloca %struct.Vec, align 8
  %cx = alloca %struct.Vec, align 8
  %cy = alloca %struct.Vec, align 8
  %ref.tmp6 = alloca %struct.Vec, align 8
  %r = alloca %struct.Vec, align 8
  %c = alloca %struct.Vec*, align 8
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %y = alloca i32, align 4
  %x = alloca i16, align 2
  %Xi = alloca [3 x i16], align 2
  %sy = alloca i32, align 4
  %i = alloca i32, align 4
  %sx = alloca i32, align 4
  %s = alloca i32, align 4
  %r1 = alloca double, align 8
  %dx = alloca double, align 8
  %r2 = alloca double, align 8
  %dy = alloca double, align 8
  %d64 = alloca %struct.Vec, align 8
  %ref.tmp65 = alloca %struct.Vec, align 8
  %ref.tmp66 = alloca %struct.Vec, align 8
  %ref.tmp77 = alloca %struct.Vec, align 8
  %ref.tmp88 = alloca %struct.Vec, align 8
  %ref.tmp89 = alloca %struct.Vec, align 8
  %ref.tmp90 = alloca %struct.Vec, align 8
  %ref.tmp91 = alloca %struct.Ray, align 8
  %agg.tmp92 = alloca %struct.Vec, align 8
  %ref.tmp93 = alloca %struct.Vec, align 8
  %agg.tmp94 = alloca %struct.Vec, align 8
  %ref.tmp99 = alloca %struct.Vec, align 8
  %ref.tmp101 = alloca %struct.Vec, align 8
  %ref.tmp102 = alloca %struct.Vec, align 8
  %ref.tmp112 = alloca %struct.Vec, align 8
  %End_t = alloca i64, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %i128 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1405, metadata !DIExpression()), !dbg !1406
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1407, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.declare(metadata i32* %w, metadata !1409, metadata !DIExpression()), !dbg !1410
  store i32 1024, i32* %w, align 4, !dbg !1410
  call void @llvm.dbg.declare(metadata i32* %h, metadata !1411, metadata !DIExpression()), !dbg !1412
  store i32 768, i32* %h, align 4, !dbg !1412
  call void @llvm.dbg.declare(metadata i32* %samps, metadata !1413, metadata !DIExpression()), !dbg !1414
  %0 = load i32, i32* %argc.addr, align 4, !dbg !1415
  %cmp = icmp eq i32 %0, 2, !dbg !1416
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1415

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8, !dbg !1417
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !1417
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1417
  %call = call i32 @atoi(i8* noundef %2) #13, !dbg !1418
  %div = sdiv i32 %call, 4, !dbg !1419
  br label %cond.end, !dbg !1415

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1415

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ 1, %cond.false ], !dbg !1415
  store i32 %cond, i32* %samps, align 4, !dbg !1414
  call void @llvm.dbg.declare(metadata i64* %Start_t, metadata !1420, metadata !DIExpression()), !dbg !1425
  %call1 = call i64 @time(i64* noundef null) #12, !dbg !1426
  store i64 %call1, i64* %Start_t, align 8, !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.Ray* %cam, metadata !1427, metadata !DIExpression()), !dbg !1428
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %agg.tmp, double noundef 5.000000e+01, double noundef 5.200000e+01, double noundef 2.956000e+02), !dbg !1429
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp, double noundef 0.000000e+00, double noundef -4.261200e-02, double noundef -1.000000e+00), !dbg !1430
  %call3 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp), !dbg !1431
  %3 = bitcast %struct.Vec* %agg.tmp2 to i8*, !dbg !1430
  %4 = bitcast %struct.Vec* %call3 to i8*, !dbg !1430
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false), !dbg !1430
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %cam, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp2), !dbg !1428
  call void @llvm.dbg.declare(metadata %struct.Vec* %cx, metadata !1432, metadata !DIExpression()), !dbg !1433
  %5 = load i32, i32* %w, align 4, !dbg !1434
  %conv = sitofp i32 %5 to double, !dbg !1434
  %mul = fmul double %conv, 5.135000e-01, !dbg !1435
  %6 = load i32, i32* %h, align 4, !dbg !1436
  %conv4 = sitofp i32 %6 to double, !dbg !1436
  %div5 = fdiv double %mul, %conv4, !dbg !1437
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %cx, double noundef %div5, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !1438
  call void @llvm.dbg.declare(metadata %struct.Vec* %cy, metadata !1439, metadata !DIExpression()), !dbg !1440
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 1, !dbg !1441
  call void @_ZN3VecrmERS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp6, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %cx, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d), !dbg !1442
  %call7 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp6), !dbg !1443
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %cy, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %call7, double noundef 5.135000e-01), !dbg !1444
  call void @llvm.dbg.declare(metadata %struct.Vec* %r, metadata !1445, metadata !DIExpression()), !dbg !1446
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %r, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !1446
  call void @llvm.dbg.declare(metadata %struct.Vec** %c, metadata !1447, metadata !DIExpression()), !dbg !1448
  %7 = load i32, i32* %w, align 4, !dbg !1449
  %8 = load i32, i32* %h, align 4, !dbg !1450
  %mul8 = mul nsw i32 %7, %8, !dbg !1451
  %conv9 = sext i32 %mul8 to i64, !dbg !1449
  %9 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv9, i64 24), !dbg !1452
  %10 = extractvalue { i64, i1 } %9, 1, !dbg !1452
  %11 = extractvalue { i64, i1 } %9, 0, !dbg !1452
  %12 = select i1 %10, i64 -1, i64 %11, !dbg !1452
  %call10 = call noalias noundef nonnull i8* @_Znam(i64 noundef %12) #14, !dbg !1452, !heapallocsite !13
  %13 = bitcast i8* %call10 to %struct.Vec*, !dbg !1452
  %isempty = icmp eq i64 %conv9, 0, !dbg !1452
  br i1 %isempty, label %arrayctor.cont, label %new.ctorloop, !dbg !1452

new.ctorloop:                                     ; preds = %cond.end
  %arrayctor.end = getelementptr inbounds %struct.Vec, %struct.Vec* %13, i64 %conv9, !dbg !1452
  br label %arrayctor.loop, !dbg !1452

arrayctor.loop:                                   ; preds = %invoke.cont, %new.ctorloop
  %arrayctor.cur = phi %struct.Vec* [ %13, %new.ctorloop ], [ %arrayctor.next, %invoke.cont ], !dbg !1452
  invoke void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %arrayctor.cur, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %invoke.cont unwind label %lpad, !dbg !1452

invoke.cont:                                      ; preds = %arrayctor.loop
  %arrayctor.next = getelementptr inbounds %struct.Vec, %struct.Vec* %arrayctor.cur, i64 1, !dbg !1452
  %arrayctor.done = icmp eq %struct.Vec* %arrayctor.next, %arrayctor.end, !dbg !1452
  br i1 %arrayctor.done, label %arrayctor.cont, label %arrayctor.loop, !dbg !1452

arrayctor.cont:                                   ; preds = %cond.end, %invoke.cont
  store %struct.Vec* %13, %struct.Vec** %c, align 8, !dbg !1448
  call void @llvm.dbg.declare(metadata i32* %y, metadata !1453, metadata !DIExpression()), !dbg !1455
  store i32 0, i32* %y, align 4, !dbg !1455
  br label %for.cond, !dbg !1456

for.cond:                                         ; preds = %for.inc120, %arrayctor.cont
  %14 = load i32, i32* %y, align 4, !dbg !1457
  %15 = load i32, i32* %h, align 4, !dbg !1459
  %cmp11 = icmp slt i32 %14, %15, !dbg !1460
  br i1 %cmp11, label %for.body, label %for.end122, !dbg !1461

for.body:                                         ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1462
  %17 = load i32, i32* %samps, align 4, !dbg !1464
  %mul12 = mul nsw i32 %17, 4, !dbg !1465
  %18 = load i32, i32* %y, align 4, !dbg !1466
  %conv13 = sitofp i32 %18 to double, !dbg !1466
  %mul14 = fmul double 1.000000e+02, %conv13, !dbg !1467
  %19 = load i32, i32* %h, align 4, !dbg !1468
  %sub = sub nsw i32 %19, 1, !dbg !1469
  %conv15 = sitofp i32 %sub to double, !dbg !1470
  %div16 = fdiv double %mul14, %conv15, !dbg !1471
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 noundef %mul12, double noundef %div16), !dbg !1472
  call void @llvm.dbg.declare(metadata i16* %x, metadata !1473, metadata !DIExpression()), !dbg !1475
  store i16 0, i16* %x, align 2, !dbg !1475
  call void @llvm.dbg.declare(metadata [3 x i16]* %Xi, metadata !1476, metadata !DIExpression()), !dbg !1480
  %arrayinit.begin = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i64 0, i64 0, !dbg !1481
  store i16 0, i16* %arrayinit.begin, align 2, !dbg !1481
  %arrayinit.element = getelementptr inbounds i16, i16* %arrayinit.begin, i64 1, !dbg !1481
  store i16 0, i16* %arrayinit.element, align 2, !dbg !1481
  %arrayinit.element18 = getelementptr inbounds i16, i16* %arrayinit.element, i64 1, !dbg !1481
  %20 = load i32, i32* %y, align 4, !dbg !1482
  %21 = load i32, i32* %y, align 4, !dbg !1483
  %mul19 = mul nsw i32 %20, %21, !dbg !1484
  %22 = load i32, i32* %y, align 4, !dbg !1485
  %mul20 = mul nsw i32 %mul19, %22, !dbg !1486
  %conv21 = trunc i32 %mul20 to i16, !dbg !1482
  store i16 %conv21, i16* %arrayinit.element18, align 2, !dbg !1481
  br label %for.cond22, !dbg !1487

for.cond22:                                       ; preds = %for.inc117, %for.body
  %23 = load i16, i16* %x, align 2, !dbg !1488
  %conv23 = zext i16 %23 to i32, !dbg !1488
  %24 = load i32, i32* %w, align 4, !dbg !1490
  %cmp24 = icmp slt i32 %conv23, %24, !dbg !1491
  br i1 %cmp24, label %for.body25, label %for.end119, !dbg !1492

for.body25:                                       ; preds = %for.cond22
  call void @llvm.dbg.declare(metadata i32* %sy, metadata !1493, metadata !DIExpression()), !dbg !1495
  store i32 0, i32* %sy, align 4, !dbg !1495
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1496, metadata !DIExpression()), !dbg !1497
  %25 = load i32, i32* %h, align 4, !dbg !1498
  %26 = load i32, i32* %y, align 4, !dbg !1499
  %sub26 = sub nsw i32 %25, %26, !dbg !1500
  %sub27 = sub nsw i32 %sub26, 1, !dbg !1501
  %27 = load i32, i32* %w, align 4, !dbg !1502
  %mul28 = mul nsw i32 %sub27, %27, !dbg !1503
  %28 = load i16, i16* %x, align 2, !dbg !1504
  %conv29 = zext i16 %28 to i32, !dbg !1504
  %add = add nsw i32 %mul28, %conv29, !dbg !1505
  store i32 %add, i32* %i, align 4, !dbg !1497
  br label %for.cond30, !dbg !1506

for.cond30:                                       ; preds = %for.inc114, %for.body25
  %29 = load i32, i32* %sy, align 4, !dbg !1507
  %cmp31 = icmp slt i32 %29, 2, !dbg !1509
  br i1 %cmp31, label %for.body32, label %for.end116, !dbg !1510

for.body32:                                       ; preds = %for.cond30
  call void @llvm.dbg.declare(metadata i32* %sx, metadata !1511, metadata !DIExpression()), !dbg !1513
  store i32 0, i32* %sx, align 4, !dbg !1513
  br label %for.cond33, !dbg !1514

for.cond33:                                       ; preds = %for.inc110, %for.body32
  %30 = load i32, i32* %sx, align 4, !dbg !1515
  %cmp34 = icmp slt i32 %30, 2, !dbg !1517
  br i1 %cmp34, label %for.body35, label %for.end113, !dbg !1518

for.body35:                                       ; preds = %for.cond33
  call void @llvm.dbg.declare(metadata i32* %s, metadata !1519, metadata !DIExpression()), !dbg !1522
  store i32 0, i32* %s, align 4, !dbg !1522
  br label %for.cond36, !dbg !1523

for.cond36:                                       ; preds = %for.inc, %for.body35
  %31 = load i32, i32* %s, align 4, !dbg !1524
  %32 = load i32, i32* %samps, align 4, !dbg !1526
  %cmp37 = icmp slt i32 %31, %32, !dbg !1527
  br i1 %cmp37, label %for.body38, label %for.end, !dbg !1528

for.body38:                                       ; preds = %for.cond36
  call void @llvm.dbg.declare(metadata double* %r1, metadata !1529, metadata !DIExpression()), !dbg !1531
  %arraydecay = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i64 0, i64 0, !dbg !1532
  %call39 = call double @erand48(i16* noundef %arraydecay) #12, !dbg !1533
  %mul40 = fmul double 2.000000e+00, %call39, !dbg !1534
  store double %mul40, double* %r1, align 8, !dbg !1531
  call void @llvm.dbg.declare(metadata double* %dx, metadata !1535, metadata !DIExpression()), !dbg !1536
  %33 = load double, double* %r1, align 8, !dbg !1537
  %cmp41 = fcmp olt double %33, 1.000000e+00, !dbg !1538
  br i1 %cmp41, label %cond.true42, label %cond.false45, !dbg !1537

cond.true42:                                      ; preds = %for.body38
  %34 = load double, double* %r1, align 8, !dbg !1539
  %call43 = call double @sqrt(double noundef %34) #12, !dbg !1540
  %sub44 = fsub double %call43, 1.000000e+00, !dbg !1541
  br label %cond.end49, !dbg !1537

cond.false45:                                     ; preds = %for.body38
  %35 = load double, double* %r1, align 8, !dbg !1542
  %sub46 = fsub double 2.000000e+00, %35, !dbg !1543
  %call47 = call double @sqrt(double noundef %sub46) #12, !dbg !1544
  %sub48 = fsub double 1.000000e+00, %call47, !dbg !1545
  br label %cond.end49, !dbg !1537

cond.end49:                                       ; preds = %cond.false45, %cond.true42
  %cond50 = phi double [ %sub44, %cond.true42 ], [ %sub48, %cond.false45 ], !dbg !1537
  store double %cond50, double* %dx, align 8, !dbg !1536
  call void @llvm.dbg.declare(metadata double* %r2, metadata !1546, metadata !DIExpression()), !dbg !1547
  %arraydecay51 = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i64 0, i64 0, !dbg !1548
  %call52 = call double @erand48(i16* noundef %arraydecay51) #12, !dbg !1549
  %mul53 = fmul double 2.000000e+00, %call52, !dbg !1550
  store double %mul53, double* %r2, align 8, !dbg !1547
  call void @llvm.dbg.declare(metadata double* %dy, metadata !1551, metadata !DIExpression()), !dbg !1552
  %36 = load double, double* %r2, align 8, !dbg !1553
  %cmp54 = fcmp olt double %36, 1.000000e+00, !dbg !1554
  br i1 %cmp54, label %cond.true55, label %cond.false58, !dbg !1553

cond.true55:                                      ; preds = %cond.end49
  %37 = load double, double* %r2, align 8, !dbg !1555
  %call56 = call double @sqrt(double noundef %37) #12, !dbg !1556
  %sub57 = fsub double %call56, 1.000000e+00, !dbg !1557
  br label %cond.end62, !dbg !1553

cond.false58:                                     ; preds = %cond.end49
  %38 = load double, double* %r2, align 8, !dbg !1558
  %sub59 = fsub double 2.000000e+00, %38, !dbg !1559
  %call60 = call double @sqrt(double noundef %sub59) #12, !dbg !1560
  %sub61 = fsub double 1.000000e+00, %call60, !dbg !1561
  br label %cond.end62, !dbg !1553

cond.end62:                                       ; preds = %cond.false58, %cond.true55
  %cond63 = phi double [ %sub57, %cond.true55 ], [ %sub61, %cond.false58 ], !dbg !1553
  store double %cond63, double* %dy, align 8, !dbg !1552
  call void @llvm.dbg.declare(metadata %struct.Vec* %d64, metadata !1562, metadata !DIExpression()), !dbg !1563
  %39 = load i32, i32* %sx, align 4, !dbg !1564
  %conv67 = sitofp i32 %39 to double, !dbg !1564
  %add68 = fadd double %conv67, 5.000000e-01, !dbg !1565
  %40 = load double, double* %dx, align 8, !dbg !1566
  %add69 = fadd double %add68, %40, !dbg !1567
  %div70 = fdiv double %add69, 2.000000e+00, !dbg !1568
  %41 = load i16, i16* %x, align 2, !dbg !1569
  %conv71 = zext i16 %41 to i32, !dbg !1569
  %conv72 = sitofp i32 %conv71 to double, !dbg !1569
  %add73 = fadd double %div70, %conv72, !dbg !1570
  %42 = load i32, i32* %w, align 4, !dbg !1571
  %conv74 = sitofp i32 %42 to double, !dbg !1571
  %div75 = fdiv double %add73, %conv74, !dbg !1572
  %sub76 = fsub double %div75, 5.000000e-01, !dbg !1573
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp66, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %cx, double noundef %sub76), !dbg !1574
  %43 = load i32, i32* %sy, align 4, !dbg !1575
  %conv78 = sitofp i32 %43 to double, !dbg !1575
  %add79 = fadd double %conv78, 5.000000e-01, !dbg !1576
  %44 = load double, double* %dy, align 8, !dbg !1577
  %add80 = fadd double %add79, %44, !dbg !1578
  %div81 = fdiv double %add80, 2.000000e+00, !dbg !1579
  %45 = load i32, i32* %y, align 4, !dbg !1580
  %conv82 = sitofp i32 %45 to double, !dbg !1580
  %add83 = fadd double %div81, %conv82, !dbg !1581
  %46 = load i32, i32* %h, align 4, !dbg !1582
  %conv84 = sitofp i32 %46 to double, !dbg !1582
  %div85 = fdiv double %add83, %conv84, !dbg !1583
  %sub86 = fsub double %div85, 5.000000e-01, !dbg !1584
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp77, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %cy, double noundef %sub86), !dbg !1585
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp65, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp66, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp77), !dbg !1586
  %d87 = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 1, !dbg !1587
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %d64, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp65, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d87), !dbg !1588
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %cam, i32 0, i32 0, !dbg !1589
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp93, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d64, double noundef 1.400000e+02), !dbg !1590
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %agg.tmp92, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %o, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp93), !dbg !1591
  %call95 = call noundef nonnull align 8 dereferenceable(24) %struct.Vec* @_ZN3Vec4normEv(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %d64), !dbg !1592
  %47 = bitcast %struct.Vec* %agg.tmp94 to i8*, !dbg !1593
  %48 = bitcast %struct.Vec* %call95 to i8*, !dbg !1593
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false), !dbg !1593
  call void @_ZN3RayC2E3VecS0_(%struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp91, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp92, %struct.Vec* noundef byval(%struct.Vec) align 8 %agg.tmp94), !dbg !1594
  %arraydecay96 = getelementptr inbounds [3 x i16], [3 x i16]* %Xi, i64 0, i64 0, !dbg !1595
  call void @_Z8radianceRK3RayiPt(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp90, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %ref.tmp91, i32 noundef 0, i16* noundef %arraydecay96), !dbg !1596
  %49 = load i32, i32* %samps, align 4, !dbg !1597
  %conv97 = sitofp i32 %49 to double, !dbg !1597
  %div98 = fdiv double 1.000000e+00, %conv97, !dbg !1598
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp89, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp90, double noundef %div98), !dbg !1599
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp88, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %r, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp89), !dbg !1600
  %50 = bitcast %struct.Vec* %r to i8*, !dbg !1601
  %51 = bitcast %struct.Vec* %ref.tmp88 to i8*, !dbg !1601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 24, i1 false), !dbg !1601
  br label %for.inc, !dbg !1602

for.inc:                                          ; preds = %cond.end62
  %52 = load i32, i32* %s, align 4, !dbg !1603
  %inc = add nsw i32 %52, 1, !dbg !1603
  store i32 %inc, i32* %s, align 4, !dbg !1603
  br label %for.cond36, !dbg !1604, !llvm.loop !1605

lpad:                                             ; preds = %arrayctor.loop
  %53 = landingpad { i8*, i32 }
          cleanup, !dbg !1607
  %54 = extractvalue { i8*, i32 } %53, 0, !dbg !1607
  store i8* %54, i8** %exn.slot, align 8, !dbg !1607
  %55 = extractvalue { i8*, i32 } %53, 1, !dbg !1607
  store i32 %55, i32* %ehselector.slot, align 4, !dbg !1607
  call void @_ZdaPv(i8* noundef %call10) #15, !dbg !1452
  br label %eh.resume, !dbg !1452

for.end:                                          ; preds = %for.cond36
  %56 = load %struct.Vec*, %struct.Vec** %c, align 8, !dbg !1608
  %57 = load i32, i32* %i, align 4, !dbg !1609
  %idxprom = sext i32 %57 to i64, !dbg !1608
  %arrayidx100 = getelementptr inbounds %struct.Vec, %struct.Vec* %56, i64 %idxprom, !dbg !1608
  %x103 = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 0, !dbg !1610
  %58 = load double, double* %x103, align 8, !dbg !1610
  %call104 = call noundef double @_Z5clampd(double noundef %58), !dbg !1611
  %y105 = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 1, !dbg !1612
  %59 = load double, double* %y105, align 8, !dbg !1612
  %call106 = call noundef double @_Z5clampd(double noundef %59), !dbg !1613
  %z = getelementptr inbounds %struct.Vec, %struct.Vec* %r, i32 0, i32 2, !dbg !1614
  %60 = load double, double* %z, align 8, !dbg !1614
  %call107 = call noundef double @_Z5clampd(double noundef %60), !dbg !1615
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp102, double noundef %call104, double noundef %call106, double noundef %call107), !dbg !1616
  call void @_ZNK3VecmlEd(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp101, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp102, double noundef 2.500000e-01), !dbg !1617
  call void @_ZNK3VecplERKS_(%struct.Vec* sret(%struct.Vec) align 8 %ref.tmp99, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %arrayidx100, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp101), !dbg !1618
  %61 = load %struct.Vec*, %struct.Vec** %c, align 8, !dbg !1619
  %62 = load i32, i32* %i, align 4, !dbg !1620
  %idxprom108 = sext i32 %62 to i64, !dbg !1619
  %arrayidx109 = getelementptr inbounds %struct.Vec, %struct.Vec* %61, i64 %idxprom108, !dbg !1619
  %63 = bitcast %struct.Vec* %arrayidx109 to i8*, !dbg !1621
  %64 = bitcast %struct.Vec* %ref.tmp99 to i8*, !dbg !1621
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false), !dbg !1621
  br label %for.inc110, !dbg !1622

for.inc110:                                       ; preds = %for.end
  %65 = load i32, i32* %sx, align 4, !dbg !1623
  %inc111 = add nsw i32 %65, 1, !dbg !1623
  store i32 %inc111, i32* %sx, align 4, !dbg !1623
  call void @_ZN3VecC2Eddd(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %ref.tmp112, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00), !dbg !1624
  %66 = bitcast %struct.Vec* %r to i8*, !dbg !1625
  %67 = bitcast %struct.Vec* %ref.tmp112 to i8*, !dbg !1625
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 24, i1 false), !dbg !1625
  br label %for.cond33, !dbg !1626, !llvm.loop !1627

for.end113:                                       ; preds = %for.cond33
  br label %for.inc114, !dbg !1628

for.inc114:                                       ; preds = %for.end113
  %68 = load i32, i32* %sy, align 4, !dbg !1629
  %inc115 = add nsw i32 %68, 1, !dbg !1629
  store i32 %inc115, i32* %sy, align 4, !dbg !1629
  br label %for.cond30, !dbg !1630, !llvm.loop !1631

for.end116:                                       ; preds = %for.cond30
  br label %for.inc117, !dbg !1632

for.inc117:                                       ; preds = %for.end116
  %69 = load i16, i16* %x, align 2, !dbg !1633
  %inc118 = add i16 %69, 1, !dbg !1633
  store i16 %inc118, i16* %x, align 2, !dbg !1633
  br label %for.cond22, !dbg !1634, !llvm.loop !1635

for.end119:                                       ; preds = %for.cond22
  br label %for.inc120, !dbg !1637

for.inc120:                                       ; preds = %for.end119
  %70 = load i32, i32* %y, align 4, !dbg !1638
  %inc121 = add nsw i32 %70, 1, !dbg !1638
  store i32 %inc121, i32* %y, align 4, !dbg !1638
  br label %for.cond, !dbg !1639, !llvm.loop !1640

for.end122:                                       ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %End_t, metadata !1642, metadata !DIExpression()), !dbg !1643
  %call123 = call i64 @time(i64* noundef null) #12, !dbg !1644
  store i64 %call123, i64* %End_t, align 8, !dbg !1643
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1645
  %72 = load i64, i64* %End_t, align 8, !dbg !1646
  %73 = load i64, i64* %Start_t, align 8, !dbg !1647
  %call124 = call double @difftime(i64 noundef %72, i64 noundef %73), !dbg !1648
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), double noundef %call124), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %f, metadata !1650, metadata !DIExpression()), !dbg !1656
  %call126 = call noalias %struct._IO_FILE* @fopen(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)), !dbg !1657
  store %struct._IO_FILE* %call126, %struct._IO_FILE** %f, align 8, !dbg !1656
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !1658
  %75 = load i32, i32* %w, align 4, !dbg !1659
  %76 = load i32, i32* %h, align 4, !dbg !1660
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %75, i32 noundef %76, i32 noundef 255), !dbg !1661
  call void @llvm.dbg.declare(metadata i32* %i128, metadata !1662, metadata !DIExpression()), !dbg !1664
  store i32 0, i32* %i128, align 4, !dbg !1664
  br label %for.cond129, !dbg !1665

for.cond129:                                      ; preds = %for.inc146, %for.end122
  %77 = load i32, i32* %i128, align 4, !dbg !1666
  %78 = load i32, i32* %w, align 4, !dbg !1668
  %79 = load i32, i32* %h, align 4, !dbg !1669
  %mul130 = mul nsw i32 %78, %79, !dbg !1670
  %cmp131 = icmp slt i32 %77, %mul130, !dbg !1671
  br i1 %cmp131, label %for.body132, label %for.end148, !dbg !1672

for.body132:                                      ; preds = %for.cond129
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8, !dbg !1673
  %81 = load %struct.Vec*, %struct.Vec** %c, align 8, !dbg !1674
  %82 = load i32, i32* %i128, align 4, !dbg !1675
  %idxprom133 = sext i32 %82 to i64, !dbg !1674
  %arrayidx134 = getelementptr inbounds %struct.Vec, %struct.Vec* %81, i64 %idxprom133, !dbg !1674
  %x135 = getelementptr inbounds %struct.Vec, %struct.Vec* %arrayidx134, i32 0, i32 0, !dbg !1676
  %83 = load double, double* %x135, align 8, !dbg !1676
  %call136 = call noundef i32 @_Z5toIntd(double noundef %83), !dbg !1677
  %84 = load %struct.Vec*, %struct.Vec** %c, align 8, !dbg !1678
  %85 = load i32, i32* %i128, align 4, !dbg !1679
  %idxprom137 = sext i32 %85 to i64, !dbg !1678
  %arrayidx138 = getelementptr inbounds %struct.Vec, %struct.Vec* %84, i64 %idxprom137, !dbg !1678
  %y139 = getelementptr inbounds %struct.Vec, %struct.Vec* %arrayidx138, i32 0, i32 1, !dbg !1680
  %86 = load double, double* %y139, align 8, !dbg !1680
  %call140 = call noundef i32 @_Z5toIntd(double noundef %86), !dbg !1681
  %87 = load %struct.Vec*, %struct.Vec** %c, align 8, !dbg !1682
  %88 = load i32, i32* %i128, align 4, !dbg !1683
  %idxprom141 = sext i32 %88 to i64, !dbg !1682
  %arrayidx142 = getelementptr inbounds %struct.Vec, %struct.Vec* %87, i64 %idxprom141, !dbg !1682
  %z143 = getelementptr inbounds %struct.Vec, %struct.Vec* %arrayidx142, i32 0, i32 2, !dbg !1684
  %89 = load double, double* %z143, align 8, !dbg !1684
  %call144 = call noundef i32 @_Z5toIntd(double noundef %89), !dbg !1685
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 noundef %call136, i32 noundef %call140, i32 noundef %call144), !dbg !1686
  br label %for.inc146, !dbg !1686

for.inc146:                                       ; preds = %for.body132
  %90 = load i32, i32* %i128, align 4, !dbg !1687
  %inc147 = add nsw i32 %90, 1, !dbg !1687
  store i32 %inc147, i32* %i128, align 4, !dbg !1687
  br label %for.cond129, !dbg !1688, !llvm.loop !1689

for.end148:                                       ; preds = %for.cond129
  %91 = load i32, i32* %retval, align 4, !dbg !1607
  ret i32 %91, !dbg !1607

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !1452
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !1452
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !1452
  %lpad.val149 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !1452
  resume { i8*, i32 } %lpad.val149, !dbg !1452
}

; Function Attrs: nounwind readonly willreturn
declare i32 @atoi(i8* noundef) #8

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) #10

declare i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef double @_Z5clampd(double noundef %x) #5 comdat !dbg !1691 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !1692, metadata !DIExpression()), !dbg !1693
  %0 = load double, double* %x.addr, align 8, !dbg !1694
  %cmp = fcmp olt double %0, 0.000000e+00, !dbg !1695
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1694

cond.true:                                        ; preds = %entry
  br label %cond.end4, !dbg !1694

cond.false:                                       ; preds = %entry
  %1 = load double, double* %x.addr, align 8, !dbg !1696
  %cmp1 = fcmp ogt double %1, 1.000000e+00, !dbg !1697
  br i1 %cmp1, label %cond.true2, label %cond.false3, !dbg !1696

cond.true2:                                       ; preds = %cond.false
  br label %cond.end, !dbg !1696

cond.false3:                                      ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !1698
  br label %cond.end, !dbg !1696

cond.end:                                         ; preds = %cond.false3, %cond.true2
  %cond = phi double [ 1.000000e+00, %cond.true2 ], [ %2, %cond.false3 ], !dbg !1696
  br label %cond.end4, !dbg !1694

cond.end4:                                        ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 0.000000e+00, %cond.true ], [ %cond, %cond.end ], !dbg !1694
  ret double %cond5, !dbg !1699
}

declare double @difftime(i64 noundef, i64 noundef) #11

declare noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i32 @_Z5toIntd(double noundef %x) #5 comdat !dbg !1700 {
entry:
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !1701, metadata !DIExpression()), !dbg !1702
  %0 = load double, double* %x.addr, align 8, !dbg !1703
  %call = call noundef double @_Z5clampd(double noundef %0), !dbg !1704
  %call1 = call double @pow(double noundef %call, double noundef 0x3FDD1745D1745D17) #12, !dbg !1705
  %1 = call double @llvm.fmuladd.f64(double %call1, double 2.550000e+02, double 5.000000e-01), !dbg !1706
  %conv = fptosi double %1 to i32, !dbg !1705
  ret i32 %conv, !dbg !1707
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef double @_ZNK6Sphere9intersectERK3Ray(%struct.Sphere* noundef nonnull align 8 dereferenceable(84) %this, %struct.Ray* noundef nonnull align 8 dereferenceable(48) %r) #2 comdat align 2 !dbg !1708 {
entry:
  %retval = alloca double, align 8
  %this.addr = alloca %struct.Sphere*, align 8
  %r.addr = alloca %struct.Ray*, align 8
  %op = alloca %struct.Vec, align 8
  %t = alloca double, align 8
  %eps = alloca double, align 8
  %b = alloca double, align 8
  %det = alloca double, align 8
  store %struct.Sphere* %this, %struct.Sphere** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Sphere** %this.addr, metadata !1709, metadata !DIExpression()), !dbg !1711
  store %struct.Ray* %r, %struct.Ray** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Ray** %r.addr, metadata !1712, metadata !DIExpression()), !dbg !1713
  %this1 = load %struct.Sphere*, %struct.Sphere** %this.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.Vec* %op, metadata !1714, metadata !DIExpression()), !dbg !1715
  %p = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 1, !dbg !1716
  %0 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1717
  %o = getelementptr inbounds %struct.Ray, %struct.Ray* %0, i32 0, i32 0, !dbg !1718
  call void @_ZNK3VecmiERKS_(%struct.Vec* sret(%struct.Vec) align 8 %op, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %p, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %o), !dbg !1719
  call void @llvm.dbg.declare(metadata double* %t, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.declare(metadata double* %eps, metadata !1722, metadata !DIExpression()), !dbg !1723
  store double 1.000000e-04, double* %eps, align 8, !dbg !1723
  call void @llvm.dbg.declare(metadata double* %b, metadata !1724, metadata !DIExpression()), !dbg !1725
  %1 = load %struct.Ray*, %struct.Ray** %r.addr, align 8, !dbg !1726
  %d = getelementptr inbounds %struct.Ray, %struct.Ray* %1, i32 0, i32 1, !dbg !1727
  %call = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %op, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %d), !dbg !1728
  store double %call, double* %b, align 8, !dbg !1725
  call void @llvm.dbg.declare(metadata double* %det, metadata !1729, metadata !DIExpression()), !dbg !1730
  %2 = load double, double* %b, align 8, !dbg !1731
  %3 = load double, double* %b, align 8, !dbg !1732
  %call2 = call noundef double @_ZNK3Vec3dotERKS_(%struct.Vec* noundef nonnull align 8 dereferenceable(24) %op, %struct.Vec* noundef nonnull align 8 dereferenceable(24) %op), !dbg !1733
  %neg = fneg double %call2, !dbg !1734
  %4 = call double @llvm.fmuladd.f64(double %2, double %3, double %neg), !dbg !1734
  %rad = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0, !dbg !1735
  %5 = load double, double* %rad, align 8, !dbg !1735
  %rad3 = getelementptr inbounds %struct.Sphere, %struct.Sphere* %this1, i32 0, i32 0, !dbg !1736
  %6 = load double, double* %rad3, align 8, !dbg !1736
  %7 = call double @llvm.fmuladd.f64(double %5, double %6, double %4), !dbg !1737
  store double %7, double* %det, align 8, !dbg !1730
  %8 = load double, double* %det, align 8, !dbg !1738
  %cmp = fcmp olt double %8, 0.000000e+00, !dbg !1740
  br i1 %cmp, label %if.then, label %if.else, !dbg !1741

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, align 8, !dbg !1742
  br label %return, !dbg !1742

if.else:                                          ; preds = %entry
  %9 = load double, double* %det, align 8, !dbg !1743
  %call4 = call double @sqrt(double noundef %9) #12, !dbg !1744
  store double %call4, double* %det, align 8, !dbg !1745
  br label %if.end

if.end:                                           ; preds = %if.else
  %10 = load double, double* %b, align 8, !dbg !1746
  %11 = load double, double* %det, align 8, !dbg !1747
  %sub = fsub double %10, %11, !dbg !1748
  store double %sub, double* %t, align 8, !dbg !1749
  %12 = load double, double* %eps, align 8, !dbg !1750
  %cmp5 = fcmp ogt double %sub, %12, !dbg !1751
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1752

cond.true:                                        ; preds = %if.end
  %13 = load double, double* %t, align 8, !dbg !1753
  br label %cond.end9, !dbg !1752

cond.false:                                       ; preds = %if.end
  %14 = load double, double* %b, align 8, !dbg !1754
  %15 = load double, double* %det, align 8, !dbg !1755
  %add = fadd double %14, %15, !dbg !1756
  store double %add, double* %t, align 8, !dbg !1757
  %16 = load double, double* %eps, align 8, !dbg !1758
  %cmp6 = fcmp ogt double %add, %16, !dbg !1759
  br i1 %cmp6, label %cond.true7, label %cond.false8, !dbg !1760

cond.true7:                                       ; preds = %cond.false
  %17 = load double, double* %t, align 8, !dbg !1761
  br label %cond.end, !dbg !1760

cond.false8:                                      ; preds = %cond.false
  br label %cond.end, !dbg !1760

cond.end:                                         ; preds = %cond.false8, %cond.true7
  %cond = phi double [ %17, %cond.true7 ], [ 0.000000e+00, %cond.false8 ], !dbg !1760
  br label %cond.end9, !dbg !1752

cond.end9:                                        ; preds = %cond.end, %cond.true
  %cond10 = phi double [ %13, %cond.true ], [ %cond, %cond.end ], !dbg !1752
  store double %cond10, double* %retval, align 8, !dbg !1762
  br label %return, !dbg !1762

return:                                           ; preds = %cond.end9, %if.then
  %18 = load double, double* %retval, align 8, !dbg !1763
  ret double %18, !dbg !1763
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #6

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_smallpt.cpp() #0 section ".text.startup" !dbg !1764 {
entry:
  call void @__cxx_global_var_init(), !dbg !1766
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!751, !752, !753, !754, !755, !756, !757}
!llvm.ident = !{!758}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "spheres", scope: !2, file: !6, line: 35, type: !748, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "Debian clang version 14.0.6-2", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !12, globals: !72, imports: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "samples/smallpt.cpp", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "34a024fca4d680781009901da3c7cb09")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Refl_t", file: !6, line: 21, baseType: !7, size: 32, elements: !8, identifier: "_ZTS6Refl_t")
!6 = !DIFile(filename: "./samples/smallpt.cpp", directory: "/home/onkar/Downloads/slim/slim-use", checksumkind: CSK_MD5, checksum: "34a024fca4d680781009901da3c7cb09")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "DIFF", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "SPEC", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "REFR", value: 2, isUnsigned: true)
!12 = !{!13, !44, !45, !46, !64}
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Vec", file: !6, line: 9, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !14, identifier: "_ZTS3Vec")
!14 = !{!15, !17, !18, !19, !23, !29, !30, !33, !34, !38, !41}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !13, file: !6, line: 10, baseType: !16, size: 64)
!16 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !13, file: !6, line: 10, baseType: !16, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !13, file: !6, line: 10, baseType: !16, size: 64, offset: 128)
!19 = !DISubprogram(name: "Vec", scope: !13, file: !6, line: 11, type: !20, scopeLine: 11, flags: DIFlagPrototyped, spFlags: 0)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !16, !16, !16}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!23 = !DISubprogram(name: "operator+", linkageName: "_ZNK3VecplERKS_", scope: !13, file: !6, line: 12, type: !24, scopeLine: 12, flags: DIFlagPrototyped, spFlags: 0)
!24 = !DISubroutineType(types: !25)
!25 = !{!13, !26, !28}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!29 = !DISubprogram(name: "operator-", linkageName: "_ZNK3VecmiERKS_", scope: !13, file: !6, line: 13, type: !24, scopeLine: 13, flags: DIFlagPrototyped, spFlags: 0)
!30 = !DISubprogram(name: "operator*", linkageName: "_ZNK3VecmlEd", scope: !13, file: !6, line: 14, type: !31, scopeLine: 14, flags: DIFlagPrototyped, spFlags: 0)
!31 = !DISubroutineType(types: !32)
!32 = !{!13, !26, !16}
!33 = !DISubprogram(name: "mult", linkageName: "_ZNK3Vec4multERKS_", scope: !13, file: !6, line: 15, type: !24, scopeLine: 15, flags: DIFlagPrototyped, spFlags: 0)
!34 = !DISubprogram(name: "norm", linkageName: "_ZN3Vec4normEv", scope: !13, file: !6, line: 16, type: !35, scopeLine: 16, flags: DIFlagPrototyped, spFlags: 0)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !22}
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!38 = !DISubprogram(name: "dot", linkageName: "_ZNK3Vec3dotERKS_", scope: !13, file: !6, line: 17, type: !39, scopeLine: 17, flags: DIFlagPrototyped, spFlags: 0)
!39 = !DISubroutineType(types: !40)
!40 = !{!16, !26, !28}
!41 = !DISubprogram(name: "operator%", linkageName: "_ZN3VecrmERS_", scope: !13, file: !6, line: 18, type: !42, scopeLine: 18, flags: DIFlagPrototyped, spFlags: 0)
!42 = !DISubroutineType(types: !43)
!43 = !{!13, !22, !37}
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Sphere", file: !6, line: 22, size: 704, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !47, identifier: "_ZTS6Sphere")
!47 = !{!48, !49, !50, !51, !52, !53, !57}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !46, file: !6, line: 23, baseType: !16, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !46, file: !6, line: 24, baseType: !13, size: 192, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !46, file: !6, line: 24, baseType: !13, size: 192, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !46, file: !6, line: 24, baseType: !13, size: 192, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "refl", scope: !46, file: !6, line: 25, baseType: !5, size: 32, offset: 640)
!53 = !DISubprogram(name: "Sphere", scope: !46, file: !6, line: 26, type: !54, scopeLine: 26, flags: DIFlagPrototyped, spFlags: 0)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !16, !13, !13, !13, !5}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!57 = !DISubprogram(name: "intersect", linkageName: "_ZNK6Sphere9intersectERK3Ray", scope: !46, file: !6, line: 28, type: !58, scopeLine: 28, flags: DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{!16, !60, !62}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!62 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ray", file: !6, line: 20, size: 384, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !65, identifier: "_ZTS3Ray")
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "o", scope: !64, file: !6, line: 20, baseType: !13, size: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !64, file: !6, line: 20, baseType: !13, size: 192, offset: 192)
!68 = !DISubprogram(name: "Ray", scope: !64, file: !6, line: 20, type: !69, scopeLine: 20, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !13, !13}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!72 = !{!0}
!73 = !{!74, !81, !87, !89, !91, !95, !97, !99, !101, !103, !105, !107, !109, !114, !118, !120, !122, !127, !129, !131, !133, !135, !137, !139, !144, !149, !151, !153, !155, !157, !161, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !197, !201, !205, !209, !211, !213, !215, !217, !222, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !320, !324, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !350, !354, !358, !360, !362, !364, !369, !373, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !406, !410, !414, !416, !418, !420, !427, !431, !435, !437, !439, !441, !443, !445, !447, !451, !455, !457, !459, !461, !463, !467, !471, !475, !477, !479, !481, !483, !485, !487, !491, !495, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !523, !525, !529, !535, !539, !544, !546, !548, !552, !556, !570, !574, !578, !582, !586, !591, !595, !599, !603, !607, !615, !619, !623, !625, !629, !633, !637, !643, !647, !651, !653, !661, !665, !672, !674, !678, !682, !686, !690, !695, !699, !703, !704, !705, !706, !708, !709, !710, !711, !712, !713, !714, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !76, file: !80, line: 52)
!75 = !DINamespace(name: "std", scope: null)
!76 = !DISubprogram(name: "abs", scope: !77, file: !77, line: 980, type: !78, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "775455349f6dd75df6b36d4b094321a4")
!78 = !DISubroutineType(types: !79)
!79 = !{!45, !45}
!80 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/bits/std_abs.h", directory: "")
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !82, file: !86, line: 89)
!82 = !DISubprogram(name: "acos", scope: !83, file: !83, line: 53, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "d09bf630eb8c377979133032b589c935")
!84 = !DISubroutineType(types: !85)
!85 = !{!16, !16}
!86 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cmath", directory: "")
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !88, file: !86, line: 108)
!88 = !DISubprogram(name: "asin", scope: !83, file: !83, line: 55, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!89 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !90, file: !86, line: 127)
!90 = !DISubprogram(name: "atan", scope: !83, file: !83, line: 57, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !92, file: !86, line: 146)
!92 = !DISubprogram(name: "atan2", scope: !83, file: !83, line: 59, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!93 = !DISubroutineType(types: !94)
!94 = !{!16, !16, !16}
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !96, file: !86, line: 158)
!96 = !DISubprogram(name: "ceil", scope: !83, file: !83, line: 192, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, file: !86, line: 177)
!98 = !DISubprogram(name: "cos", scope: !83, file: !83, line: 62, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !100, file: !86, line: 196)
!100 = !DISubprogram(name: "cosh", scope: !83, file: !83, line: 89, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !102, file: !86, line: 215)
!102 = !DISubprogram(name: "exp", scope: !83, file: !83, line: 113, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!103 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !104, file: !86, line: 234)
!104 = !DISubprogram(name: "fabs", scope: !83, file: !83, line: 195, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !106, file: !86, line: 253)
!106 = !DISubprogram(name: "floor", scope: !83, file: !83, line: 198, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !108, file: !86, line: 272)
!108 = !DISubprogram(name: "fmod", scope: !83, file: !83, line: 201, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !110, file: !86, line: 284)
!110 = !DISubprogram(name: "frexp", scope: !83, file: !83, line: 116, type: !111, flags: DIFlagPrototyped, spFlags: 0)
!111 = !DISubroutineType(types: !112)
!112 = !{!16, !16, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !115, file: !86, line: 303)
!115 = !DISubprogram(name: "ldexp", scope: !83, file: !83, line: 119, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!16, !16, !45}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !119, file: !86, line: 322)
!119 = !DISubprogram(name: "log", scope: !83, file: !83, line: 122, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, file: !86, line: 341)
!121 = !DISubprogram(name: "log10", scope: !83, file: !83, line: 125, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !123, file: !86, line: 360)
!123 = !DISubprogram(name: "modf", scope: !83, file: !83, line: 128, type: !124, flags: DIFlagPrototyped, spFlags: 0)
!124 = !DISubroutineType(types: !125)
!125 = !{!16, !16, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !128, file: !86, line: 372)
!128 = !DISubprogram(name: "pow", scope: !83, file: !83, line: 173, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !130, file: !86, line: 400)
!130 = !DISubprogram(name: "sin", scope: !83, file: !83, line: 64, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !132, file: !86, line: 419)
!132 = !DISubprogram(name: "sinh", scope: !83, file: !83, line: 91, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !134, file: !86, line: 438)
!134 = !DISubprogram(name: "sqrt", scope: !83, file: !83, line: 176, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !136, file: !86, line: 457)
!136 = !DISubprogram(name: "tan", scope: !83, file: !83, line: 66, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !138, file: !86, line: 476)
!138 = !DISubprogram(name: "tanh", scope: !83, file: !83, line: 93, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !140, file: !86, line: 1820)
!140 = !DISubprogram(name: "acosf", scope: !83, file: !83, line: 53, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !143}
!143 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, file: !86, line: 1823)
!145 = !DISubprogram(name: "acosl", scope: !83, file: !83, line: 53, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !148}
!148 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !150, file: !86, line: 1827)
!150 = !DISubprogram(name: "asinf", scope: !83, file: !83, line: 55, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !152, file: !86, line: 1830)
!152 = !DISubprogram(name: "asinl", scope: !83, file: !83, line: 55, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, file: !86, line: 1834)
!154 = !DISubprogram(name: "atanf", scope: !83, file: !83, line: 57, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !156, file: !86, line: 1837)
!156 = !DISubprogram(name: "atanl", scope: !83, file: !83, line: 57, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, file: !86, line: 1841)
!158 = !DISubprogram(name: "atan2f", scope: !83, file: !83, line: 59, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!143, !143, !143}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, file: !86, line: 1844)
!162 = !DISubprogram(name: "atan2l", scope: !83, file: !83, line: 59, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!163 = !DISubroutineType(types: !164)
!164 = !{!148, !148, !148}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, file: !86, line: 1848)
!166 = !DISubprogram(name: "ceilf", scope: !83, file: !83, line: 192, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !168, file: !86, line: 1851)
!168 = !DISubprogram(name: "ceill", scope: !83, file: !83, line: 192, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, file: !86, line: 1855)
!170 = !DISubprogram(name: "cosf", scope: !83, file: !83, line: 62, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !172, file: !86, line: 1858)
!172 = !DISubprogram(name: "cosl", scope: !83, file: !83, line: 62, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !174, file: !86, line: 1862)
!174 = !DISubprogram(name: "coshf", scope: !83, file: !83, line: 89, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !176, file: !86, line: 1865)
!176 = !DISubprogram(name: "coshl", scope: !83, file: !83, line: 89, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, file: !86, line: 1869)
!178 = !DISubprogram(name: "expf", scope: !83, file: !83, line: 113, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !180, file: !86, line: 1872)
!180 = !DISubprogram(name: "expl", scope: !83, file: !83, line: 113, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, file: !86, line: 1876)
!182 = !DISubprogram(name: "fabsf", scope: !83, file: !83, line: 195, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !184, file: !86, line: 1879)
!184 = !DISubprogram(name: "fabsl", scope: !83, file: !83, line: 195, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, file: !86, line: 1883)
!186 = !DISubprogram(name: "floorf", scope: !83, file: !83, line: 198, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, file: !86, line: 1886)
!188 = !DISubprogram(name: "floorl", scope: !83, file: !83, line: 198, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !190, file: !86, line: 1890)
!190 = !DISubprogram(name: "fmodf", scope: !83, file: !83, line: 201, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, file: !86, line: 1893)
!192 = !DISubprogram(name: "fmodl", scope: !83, file: !83, line: 201, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !194, file: !86, line: 1897)
!194 = !DISubprogram(name: "frexpf", scope: !83, file: !83, line: 116, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{!143, !143, !113}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !198, file: !86, line: 1900)
!198 = !DISubprogram(name: "frexpl", scope: !83, file: !83, line: 116, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!148, !148, !113}
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !202, file: !86, line: 1904)
!202 = !DISubprogram(name: "ldexpf", scope: !83, file: !83, line: 119, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!143, !143, !45}
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, file: !86, line: 1907)
!206 = !DISubprogram(name: "ldexpl", scope: !83, file: !83, line: 119, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!207 = !DISubroutineType(types: !208)
!208 = !{!148, !148, !45}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, file: !86, line: 1911)
!210 = !DISubprogram(name: "logf", scope: !83, file: !83, line: 122, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !212, file: !86, line: 1914)
!212 = !DISubprogram(name: "logl", scope: !83, file: !83, line: 122, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, file: !86, line: 1918)
!214 = !DISubprogram(name: "log10f", scope: !83, file: !83, line: 125, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, file: !86, line: 1921)
!216 = !DISubprogram(name: "log10l", scope: !83, file: !83, line: 125, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !218, file: !86, line: 1925)
!218 = !DISubprogram(name: "modff", scope: !83, file: !83, line: 128, type: !219, flags: DIFlagPrototyped, spFlags: 0)
!219 = !DISubroutineType(types: !220)
!220 = !{!143, !143, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !223, file: !86, line: 1928)
!223 = !DISubprogram(name: "modfl", scope: !83, file: !83, line: 128, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!224 = !DISubroutineType(types: !225)
!225 = !{!148, !148, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !228, file: !86, line: 1932)
!228 = !DISubprogram(name: "powf", scope: !83, file: !83, line: 173, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !230, file: !86, line: 1935)
!230 = !DISubprogram(name: "powl", scope: !83, file: !83, line: 173, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !232, file: !86, line: 1939)
!232 = !DISubprogram(name: "sinf", scope: !83, file: !83, line: 64, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !234, file: !86, line: 1942)
!234 = !DISubprogram(name: "sinl", scope: !83, file: !83, line: 64, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, file: !86, line: 1946)
!236 = !DISubprogram(name: "sinhf", scope: !83, file: !83, line: 91, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, file: !86, line: 1949)
!238 = !DISubprogram(name: "sinhl", scope: !83, file: !83, line: 91, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !240, file: !86, line: 1953)
!240 = !DISubprogram(name: "sqrtf", scope: !83, file: !83, line: 176, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, file: !86, line: 1956)
!242 = !DISubprogram(name: "sqrtl", scope: !83, file: !83, line: 176, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !244, file: !86, line: 1960)
!244 = !DISubprogram(name: "tanf", scope: !83, file: !83, line: 66, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, file: !86, line: 1963)
!246 = !DISubprogram(name: "tanl", scope: !83, file: !83, line: 66, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !248, file: !86, line: 1967)
!248 = !DISubprogram(name: "tanhf", scope: !83, file: !83, line: 93, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, file: !86, line: 1970)
!250 = !DISubprogram(name: "tanhl", scope: !83, file: !83, line: 93, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !252, file: !86, line: 2085)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !253, line: 168, baseType: !16)
!253 = !DIFile(filename: "/usr/include/math.h", directory: "", checksumkind: CSK_MD5, checksum: "cee1a048ba70cfd541c1ab56713af6da")
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !255, file: !86, line: 2086)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !253, line: 167, baseType: !143)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !257, file: !86, line: 2090)
!257 = !DISubprogram(name: "acosh", scope: !83, file: !83, line: 103, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, file: !86, line: 2091)
!259 = !DISubprogram(name: "acoshf", scope: !83, file: !83, line: 103, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !261, file: !86, line: 2092)
!261 = !DISubprogram(name: "acoshl", scope: !83, file: !83, line: 103, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !263, file: !86, line: 2094)
!263 = !DISubprogram(name: "asinh", scope: !83, file: !83, line: 105, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !265, file: !86, line: 2095)
!265 = !DISubprogram(name: "asinhf", scope: !83, file: !83, line: 105, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !267, file: !86, line: 2096)
!267 = !DISubprogram(name: "asinhl", scope: !83, file: !83, line: 105, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !269, file: !86, line: 2098)
!269 = !DISubprogram(name: "atanh", scope: !83, file: !83, line: 107, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !271, file: !86, line: 2099)
!271 = !DISubprogram(name: "atanhf", scope: !83, file: !83, line: 107, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !273, file: !86, line: 2100)
!273 = !DISubprogram(name: "atanhl", scope: !83, file: !83, line: 107, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !275, file: !86, line: 2102)
!275 = !DISubprogram(name: "cbrt", scope: !83, file: !83, line: 185, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !277, file: !86, line: 2103)
!277 = !DISubprogram(name: "cbrtf", scope: !83, file: !83, line: 185, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !279, file: !86, line: 2104)
!279 = !DISubprogram(name: "cbrtl", scope: !83, file: !83, line: 185, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, file: !86, line: 2106)
!281 = !DISubprogram(name: "copysign", scope: !83, file: !83, line: 231, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !283, file: !86, line: 2107)
!283 = !DISubprogram(name: "copysignf", scope: !83, file: !83, line: 231, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !285, file: !86, line: 2108)
!285 = !DISubprogram(name: "copysignl", scope: !83, file: !83, line: 231, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !287, file: !86, line: 2110)
!287 = !DISubprogram(name: "erf", scope: !83, file: !83, line: 264, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !289, file: !86, line: 2111)
!289 = !DISubprogram(name: "erff", scope: !83, file: !83, line: 264, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !291, file: !86, line: 2112)
!291 = !DISubprogram(name: "erfl", scope: !83, file: !83, line: 264, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !293, file: !86, line: 2114)
!293 = !DISubprogram(name: "erfc", scope: !83, file: !83, line: 265, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !295, file: !86, line: 2115)
!295 = !DISubprogram(name: "erfcf", scope: !83, file: !83, line: 265, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !297, file: !86, line: 2116)
!297 = !DISubprogram(name: "erfcl", scope: !83, file: !83, line: 265, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !299, file: !86, line: 2118)
!299 = !DISubprogram(name: "exp2", scope: !83, file: !83, line: 163, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !301, file: !86, line: 2119)
!301 = !DISubprogram(name: "exp2f", scope: !83, file: !83, line: 163, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !303, file: !86, line: 2120)
!303 = !DISubprogram(name: "exp2l", scope: !83, file: !83, line: 163, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!304 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !305, file: !86, line: 2122)
!305 = !DISubprogram(name: "expm1", scope: !83, file: !83, line: 152, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !307, file: !86, line: 2123)
!307 = !DISubprogram(name: "expm1f", scope: !83, file: !83, line: 152, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!308 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !309, file: !86, line: 2124)
!309 = !DISubprogram(name: "expm1l", scope: !83, file: !83, line: 152, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!310 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !311, file: !86, line: 2126)
!311 = !DISubprogram(name: "fdim", scope: !83, file: !83, line: 362, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!312 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !313, file: !86, line: 2127)
!313 = !DISubprogram(name: "fdimf", scope: !83, file: !83, line: 362, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !315, file: !86, line: 2128)
!315 = !DISubprogram(name: "fdiml", scope: !83, file: !83, line: 362, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!316 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !317, file: !86, line: 2130)
!317 = !DISubprogram(name: "fma", scope: !83, file: !83, line: 373, type: !318, flags: DIFlagPrototyped, spFlags: 0)
!318 = !DISubroutineType(types: !319)
!319 = !{!16, !16, !16, !16}
!320 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !321, file: !86, line: 2131)
!321 = !DISubprogram(name: "fmaf", scope: !83, file: !83, line: 373, type: !322, flags: DIFlagPrototyped, spFlags: 0)
!322 = !DISubroutineType(types: !323)
!323 = !{!143, !143, !143, !143}
!324 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !325, file: !86, line: 2132)
!325 = !DISubprogram(name: "fmal", scope: !83, file: !83, line: 373, type: !326, flags: DIFlagPrototyped, spFlags: 0)
!326 = !DISubroutineType(types: !327)
!327 = !{!148, !148, !148, !148}
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !329, file: !86, line: 2134)
!329 = !DISubprogram(name: "fmax", scope: !83, file: !83, line: 366, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!330 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !331, file: !86, line: 2135)
!331 = !DISubprogram(name: "fmaxf", scope: !83, file: !83, line: 366, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!332 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !333, file: !86, line: 2136)
!333 = !DISubprogram(name: "fmaxl", scope: !83, file: !83, line: 366, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !335, file: !86, line: 2138)
!335 = !DISubprogram(name: "fmin", scope: !83, file: !83, line: 369, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !337, file: !86, line: 2139)
!337 = !DISubprogram(name: "fminf", scope: !83, file: !83, line: 369, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !339, file: !86, line: 2140)
!339 = !DISubprogram(name: "fminl", scope: !83, file: !83, line: 369, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !341, file: !86, line: 2142)
!341 = !DISubprogram(name: "hypot", scope: !83, file: !83, line: 180, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !343, file: !86, line: 2143)
!343 = !DISubprogram(name: "hypotf", scope: !83, file: !83, line: 180, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !345, file: !86, line: 2144)
!345 = !DISubprogram(name: "hypotl", scope: !83, file: !83, line: 180, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !347, file: !86, line: 2146)
!347 = !DISubprogram(name: "ilogb", scope: !83, file: !83, line: 316, type: !348, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DISubroutineType(types: !349)
!349 = !{!45, !16}
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !351, file: !86, line: 2147)
!351 = !DISubprogram(name: "ilogbf", scope: !83, file: !83, line: 316, type: !352, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DISubroutineType(types: !353)
!353 = !{!45, !143}
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !355, file: !86, line: 2148)
!355 = !DISubprogram(name: "ilogbl", scope: !83, file: !83, line: 316, type: !356, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DISubroutineType(types: !357)
!357 = !{!45, !148}
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !359, file: !86, line: 2150)
!359 = !DISubprogram(name: "lgamma", scope: !83, file: !83, line: 266, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !361, file: !86, line: 2151)
!361 = !DISubprogram(name: "lgammaf", scope: !83, file: !83, line: 266, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !363, file: !86, line: 2152)
!363 = !DISubprogram(name: "lgammal", scope: !83, file: !83, line: 266, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!364 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !365, file: !86, line: 2155)
!365 = !DISubprogram(name: "llrint", scope: !83, file: !83, line: 352, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!366 = !DISubroutineType(types: !367)
!367 = !{!368, !16}
!368 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !370, file: !86, line: 2156)
!370 = !DISubprogram(name: "llrintf", scope: !83, file: !83, line: 352, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DISubroutineType(types: !372)
!372 = !{!368, !143}
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !374, file: !86, line: 2157)
!374 = !DISubprogram(name: "llrintl", scope: !83, file: !83, line: 352, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{!368, !148}
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !378, file: !86, line: 2159)
!378 = !DISubprogram(name: "llround", scope: !83, file: !83, line: 358, type: !366, flags: DIFlagPrototyped, spFlags: 0)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !380, file: !86, line: 2160)
!380 = !DISubprogram(name: "llroundf", scope: !83, file: !83, line: 358, type: !371, flags: DIFlagPrototyped, spFlags: 0)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !382, file: !86, line: 2161)
!382 = !DISubprogram(name: "llroundl", scope: !83, file: !83, line: 358, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !384, file: !86, line: 2164)
!384 = !DISubprogram(name: "log1p", scope: !83, file: !83, line: 155, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !386, file: !86, line: 2165)
!386 = !DISubprogram(name: "log1pf", scope: !83, file: !83, line: 155, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !388, file: !86, line: 2166)
!388 = !DISubprogram(name: "log1pl", scope: !83, file: !83, line: 155, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !390, file: !86, line: 2168)
!390 = !DISubprogram(name: "log2", scope: !83, file: !83, line: 166, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!391 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !392, file: !86, line: 2169)
!392 = !DISubprogram(name: "log2f", scope: !83, file: !83, line: 166, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !394, file: !86, line: 2170)
!394 = !DISubprogram(name: "log2l", scope: !83, file: !83, line: 166, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !396, file: !86, line: 2172)
!396 = !DISubprogram(name: "logb", scope: !83, file: !83, line: 158, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !398, file: !86, line: 2173)
!398 = !DISubprogram(name: "logbf", scope: !83, file: !83, line: 158, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !400, file: !86, line: 2174)
!400 = !DISubprogram(name: "logbl", scope: !83, file: !83, line: 158, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !402, file: !86, line: 2176)
!402 = !DISubprogram(name: "lrint", scope: !83, file: !83, line: 350, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !16}
!405 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, file: !86, line: 2177)
!407 = !DISubprogram(name: "lrintf", scope: !83, file: !83, line: 350, type: !408, flags: DIFlagPrototyped, spFlags: 0)
!408 = !DISubroutineType(types: !409)
!409 = !{!405, !143}
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !411, file: !86, line: 2178)
!411 = !DISubprogram(name: "lrintl", scope: !83, file: !83, line: 350, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DISubroutineType(types: !413)
!413 = !{!405, !148}
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !415, file: !86, line: 2180)
!415 = !DISubprogram(name: "lround", scope: !83, file: !83, line: 356, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !417, file: !86, line: 2181)
!417 = !DISubprogram(name: "lroundf", scope: !83, file: !83, line: 356, type: !408, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !419, file: !86, line: 2182)
!419 = !DISubprogram(name: "lroundl", scope: !83, file: !83, line: 356, type: !412, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !421, file: !86, line: 2184)
!421 = !DISubprogram(name: "nan", scope: !83, file: !83, line: 236, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DISubroutineType(types: !423)
!423 = !{!16, !424}
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!427 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !428, file: !86, line: 2185)
!428 = !DISubprogram(name: "nanf", scope: !83, file: !83, line: 236, type: !429, flags: DIFlagPrototyped, spFlags: 0)
!429 = !DISubroutineType(types: !430)
!430 = !{!143, !424}
!431 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !432, file: !86, line: 2186)
!432 = !DISubprogram(name: "nanl", scope: !83, file: !83, line: 236, type: !433, flags: DIFlagPrototyped, spFlags: 0)
!433 = !DISubroutineType(types: !434)
!434 = !{!148, !424}
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !436, file: !86, line: 2188)
!436 = !DISubprogram(name: "nearbyint", scope: !83, file: !83, line: 330, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !438, file: !86, line: 2189)
!438 = !DISubprogram(name: "nearbyintf", scope: !83, file: !83, line: 330, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !440, file: !86, line: 2190)
!440 = !DISubprogram(name: "nearbyintl", scope: !83, file: !83, line: 330, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !442, file: !86, line: 2192)
!442 = !DISubprogram(name: "nextafter", scope: !83, file: !83, line: 295, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !444, file: !86, line: 2193)
!444 = !DISubprogram(name: "nextafterf", scope: !83, file: !83, line: 295, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !446, file: !86, line: 2194)
!446 = !DISubprogram(name: "nextafterl", scope: !83, file: !83, line: 295, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !448, file: !86, line: 2196)
!448 = !DISubprogram(name: "nexttoward", scope: !83, file: !83, line: 297, type: !449, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DISubroutineType(types: !450)
!450 = !{!16, !16, !148}
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !452, file: !86, line: 2197)
!452 = !DISubprogram(name: "nexttowardf", scope: !83, file: !83, line: 297, type: !453, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DISubroutineType(types: !454)
!454 = !{!143, !143, !148}
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !456, file: !86, line: 2198)
!456 = !DISubprogram(name: "nexttowardl", scope: !83, file: !83, line: 297, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, file: !86, line: 2200)
!458 = !DISubprogram(name: "remainder", scope: !83, file: !83, line: 308, type: !93, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !460, file: !86, line: 2201)
!460 = !DISubprogram(name: "remainderf", scope: !83, file: !83, line: 308, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, file: !86, line: 2202)
!462 = !DISubprogram(name: "remainderl", scope: !83, file: !83, line: 308, type: !163, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !464, file: !86, line: 2204)
!464 = !DISubprogram(name: "remquo", scope: !83, file: !83, line: 343, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!16, !16, !16, !113}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, file: !86, line: 2205)
!468 = !DISubprogram(name: "remquof", scope: !83, file: !83, line: 343, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!143, !143, !143, !113}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, file: !86, line: 2206)
!472 = !DISubprogram(name: "remquol", scope: !83, file: !83, line: 343, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!148, !148, !148, !113}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, file: !86, line: 2208)
!476 = !DISubprogram(name: "rint", scope: !83, file: !83, line: 292, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !478, file: !86, line: 2209)
!478 = !DISubprogram(name: "rintf", scope: !83, file: !83, line: 292, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, file: !86, line: 2210)
!480 = !DISubprogram(name: "rintl", scope: !83, file: !83, line: 292, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !482, file: !86, line: 2212)
!482 = !DISubprogram(name: "round", scope: !83, file: !83, line: 334, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, file: !86, line: 2213)
!484 = !DISubprogram(name: "roundf", scope: !83, file: !83, line: 334, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !486, file: !86, line: 2214)
!486 = !DISubprogram(name: "roundl", scope: !83, file: !83, line: 334, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !488, file: !86, line: 2216)
!488 = !DISubprogram(name: "scalbln", scope: !83, file: !83, line: 326, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!16, !16, !405}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !492, file: !86, line: 2217)
!492 = !DISubprogram(name: "scalblnf", scope: !83, file: !83, line: 326, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!143, !143, !405}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, file: !86, line: 2218)
!496 = !DISubprogram(name: "scalblnl", scope: !83, file: !83, line: 326, type: !497, flags: DIFlagPrototyped, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{!148, !148, !405}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, file: !86, line: 2220)
!500 = !DISubprogram(name: "scalbn", scope: !83, file: !83, line: 312, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !502, file: !86, line: 2221)
!502 = !DISubprogram(name: "scalbnf", scope: !83, file: !83, line: 312, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, file: !86, line: 2222)
!504 = !DISubprogram(name: "scalbnl", scope: !83, file: !83, line: 312, type: !207, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !506, file: !86, line: 2224)
!506 = !DISubprogram(name: "tgamma", scope: !83, file: !83, line: 271, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !508, file: !86, line: 2225)
!508 = !DISubprogram(name: "tgammaf", scope: !83, file: !83, line: 271, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !510, file: !86, line: 2226)
!510 = !DISubprogram(name: "tgammal", scope: !83, file: !83, line: 271, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !512, file: !86, line: 2228)
!512 = !DISubprogram(name: "trunc", scope: !83, file: !83, line: 338, type: !84, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !514, file: !86, line: 2229)
!514 = !DISubprogram(name: "truncf", scope: !83, file: !83, line: 338, type: !141, flags: DIFlagPrototyped, spFlags: 0)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !516, file: !86, line: 2230)
!516 = !DISubprogram(name: "truncl", scope: !83, file: !83, line: 338, type: !146, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !522, line: 38)
!518 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !75, file: !80, line: 137, type: !519, flags: DIFlagPrototyped, spFlags: 0)
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !521}
!521 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!522 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/math.h", directory: "", checksumkind: CSK_MD5, checksum: "277b861b9392ea4259113718e894d637")
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !522, line: 54)
!524 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !75, file: !86, line: 368, type: !224, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !526, file: !528, line: 131)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !77, line: 63, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 59, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!528 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/cstdlib", directory: "")
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !530, file: !528, line: 132)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !77, line: 71, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !532, identifier: "_ZTS6ldiv_t")
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !531, file: !77, line: 69, baseType: !405, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !531, file: !77, line: 70, baseType: !405, size: 64, offset: 64)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, file: !528, line: 134)
!536 = !DISubprogram(name: "abort", scope: !77, file: !77, line: 730, type: !537, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!537 = !DISubroutineType(types: !538)
!538 = !{null}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, file: !528, line: 138)
!540 = !DISubprogram(name: "atexit", scope: !77, file: !77, line: 734, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DISubroutineType(types: !542)
!542 = !{!45, !543}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !545, file: !528, line: 141)
!545 = !DISubprogram(name: "at_quick_exit", scope: !77, file: !77, line: 739, type: !541, flags: DIFlagPrototyped, spFlags: 0)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !547, file: !528, line: 144)
!547 = !DISubprogram(name: "atof", scope: !77, file: !77, line: 102, type: !422, flags: DIFlagPrototyped, spFlags: 0)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !549, file: !528, line: 145)
!549 = !DISubprogram(name: "atoi", scope: !77, file: !77, line: 105, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!550 = !DISubroutineType(types: !551)
!551 = !{!45, !424}
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !553, file: !528, line: 146)
!553 = !DISubprogram(name: "atol", scope: !77, file: !77, line: 108, type: !554, flags: DIFlagPrototyped, spFlags: 0)
!554 = !DISubroutineType(types: !555)
!555 = !{!405, !424}
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !557, file: !528, line: 147)
!557 = !DISubprogram(name: "bsearch", scope: !77, file: !77, line: 960, type: !558, flags: DIFlagPrototyped, spFlags: 0)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !561, !561, !563, !563, !566}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !564, line: 46, baseType: !565)
!564 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!565 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !77, line: 948, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!45, !561, !561}
!570 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !571, file: !528, line: 148)
!571 = !DISubprogram(name: "calloc", scope: !77, file: !77, line: 675, type: !572, flags: DIFlagPrototyped, spFlags: 0)
!572 = !DISubroutineType(types: !573)
!573 = !{!560, !563, !563}
!574 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !575, file: !528, line: 149)
!575 = !DISubprogram(name: "div", scope: !77, file: !77, line: 992, type: !576, flags: DIFlagPrototyped, spFlags: 0)
!576 = !DISubroutineType(types: !577)
!577 = !{!526, !45, !45}
!578 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !579, file: !528, line: 150)
!579 = !DISubprogram(name: "exit", scope: !77, file: !77, line: 756, type: !580, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!580 = !DISubroutineType(types: !581)
!581 = !{null, !45}
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !583, file: !528, line: 151)
!583 = !DISubprogram(name: "free", scope: !77, file: !77, line: 687, type: !584, flags: DIFlagPrototyped, spFlags: 0)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !560}
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !587, file: !528, line: 152)
!587 = !DISubprogram(name: "getenv", scope: !77, file: !77, line: 773, type: !588, flags: DIFlagPrototyped, spFlags: 0)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !424}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !592, file: !528, line: 153)
!592 = !DISubprogram(name: "labs", scope: !77, file: !77, line: 981, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!405, !405}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !596, file: !528, line: 154)
!596 = !DISubprogram(name: "ldiv", scope: !77, file: !77, line: 994, type: !597, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DISubroutineType(types: !598)
!598 = !{!530, !405, !405}
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !600, file: !528, line: 155)
!600 = !DISubprogram(name: "malloc", scope: !77, file: !77, line: 672, type: !601, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DISubroutineType(types: !602)
!602 = !{!560, !563}
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, file: !528, line: 157)
!604 = !DISubprogram(name: "mblen", scope: !77, file: !77, line: 1062, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!45, !424, !563}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !608, file: !528, line: 158)
!608 = !DISubprogram(name: "mbstowcs", scope: !77, file: !77, line: 1073, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!563, !611, !614, !563}
!611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!614 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !424)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !616, file: !528, line: 159)
!616 = !DISubprogram(name: "mbtowc", scope: !77, file: !77, line: 1065, type: !617, flags: DIFlagPrototyped, spFlags: 0)
!617 = !DISubroutineType(types: !618)
!618 = !{!45, !611, !614, !563}
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !620, file: !528, line: 161)
!620 = !DISubprogram(name: "qsort", scope: !77, file: !77, line: 970, type: !621, flags: DIFlagPrototyped, spFlags: 0)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !560, !563, !563, !566}
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !624, file: !528, line: 164)
!624 = !DISubprogram(name: "quick_exit", scope: !77, file: !77, line: 762, type: !580, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !626, file: !528, line: 167)
!626 = !DISubprogram(name: "rand", scope: !77, file: !77, line: 573, type: !627, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DISubroutineType(types: !628)
!628 = !{!45}
!629 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !630, file: !528, line: 168)
!630 = !DISubprogram(name: "realloc", scope: !77, file: !77, line: 683, type: !631, flags: DIFlagPrototyped, spFlags: 0)
!631 = !DISubroutineType(types: !632)
!632 = !{!560, !560, !563}
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !634, file: !528, line: 169)
!634 = !DISubprogram(name: "srand", scope: !77, file: !77, line: 575, type: !635, flags: DIFlagPrototyped, spFlags: 0)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !7}
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !638, file: !528, line: 170)
!638 = !DISubprogram(name: "strtod", scope: !77, file: !77, line: 118, type: !639, flags: DIFlagPrototyped, spFlags: 0)
!639 = !DISubroutineType(types: !640)
!640 = !{!16, !614, !641}
!641 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !644, file: !528, line: 171)
!644 = !DISubprogram(name: "strtol", linkageName: "__isoc23_strtol", scope: !77, file: !77, line: 215, type: !645, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DISubroutineType(types: !646)
!646 = !{!405, !614, !641, !45}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !648, file: !528, line: 172)
!648 = !DISubprogram(name: "strtoul", linkageName: "__isoc23_strtoul", scope: !77, file: !77, line: 219, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!565, !614, !641, !45}
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !652, file: !528, line: 173)
!652 = !DISubprogram(name: "system", scope: !77, file: !77, line: 923, type: !550, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !654, file: !528, line: 175)
!654 = !DISubprogram(name: "wcstombs", scope: !77, file: !77, line: 1077, type: !655, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DISubroutineType(types: !656)
!656 = !{!563, !657, !658, !563}
!657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !590)
!658 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !662, file: !528, line: 176)
!662 = !DISubprogram(name: "wctomb", scope: !77, file: !77, line: 1069, type: !663, flags: DIFlagPrototyped, spFlags: 0)
!663 = !DISubroutineType(types: !664)
!664 = !{!45, !590, !613}
!665 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !667, file: !528, line: 204)
!666 = !DINamespace(name: "__gnu_cxx", scope: null)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !77, line: 81, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !669, identifier: "_ZTS7lldiv_t")
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !668, file: !77, line: 79, baseType: !368, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !668, file: !77, line: 80, baseType: !368, size: 64, offset: 64)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !673, file: !528, line: 210)
!673 = !DISubprogram(name: "_Exit", scope: !77, file: !77, line: 768, type: !580, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !675, file: !528, line: 214)
!675 = !DISubprogram(name: "llabs", scope: !77, file: !77, line: 984, type: !676, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!368, !368}
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !679, file: !528, line: 220)
!679 = !DISubprogram(name: "lldiv", scope: !77, file: !77, line: 998, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DISubroutineType(types: !681)
!681 = !{!667, !368, !368}
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !683, file: !528, line: 231)
!683 = !DISubprogram(name: "atoll", scope: !77, file: !77, line: 113, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!368, !424}
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !687, file: !528, line: 232)
!687 = !DISubprogram(name: "strtoll", linkageName: "__isoc23_strtoll", scope: !77, file: !77, line: 238, type: !688, flags: DIFlagPrototyped, spFlags: 0)
!688 = !DISubroutineType(types: !689)
!689 = !{!368, !614, !641, !45}
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !691, file: !528, line: 233)
!691 = !DISubprogram(name: "strtoull", linkageName: "__isoc23_strtoull", scope: !77, file: !77, line: 243, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!694, !614, !641, !45}
!694 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !696, file: !528, line: 235)
!696 = !DISubprogram(name: "strtof", scope: !77, file: !77, line: 124, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!143, !614, !641}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !666, entity: !700, file: !528, line: 236)
!700 = !DISubprogram(name: "strtold", scope: !77, file: !77, line: 127, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!148, !614, !641}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !667, file: !528, line: 244)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !673, file: !528, line: 246)
!705 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, file: !528, line: 248)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !707, file: !528, line: 249)
!707 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !666, file: !528, line: 217, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !679, file: !528, line: 250)
!709 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !683, file: !528, line: 252)
!710 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !696, file: !528, line: 253)
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !687, file: !528, line: 254)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !691, file: !528, line: 255)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !700, file: !528, line: 256)
!714 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !715, line: 38)
!715 = !DIFile(filename: "/usr/bin/../lib/gcc/x86_64-linux-gnu/14/../../../../include/c++/14/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "1f96f7dcc55c9928a1405539766e004f")
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !540, file: !715, line: 39)
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !579, file: !715, line: 40)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !545, file: !715, line: 43)
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !624, file: !715, line: 46)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !673, file: !715, line: 49)
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !526, file: !715, line: 54)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !530, file: !715, line: 55)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !518, file: !715, line: 57)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !547, file: !715, line: 58)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !549, file: !715, line: 59)
!726 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !553, file: !715, line: 60)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !557, file: !715, line: 61)
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !571, file: !715, line: 62)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !715, line: 63)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !583, file: !715, line: 64)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !587, file: !715, line: 65)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !592, file: !715, line: 66)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !596, file: !715, line: 67)
!734 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !600, file: !715, line: 68)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !604, file: !715, line: 70)
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !608, file: !715, line: 71)
!737 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !616, file: !715, line: 72)
!738 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !620, file: !715, line: 74)
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !626, file: !715, line: 75)
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !630, file: !715, line: 76)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !634, file: !715, line: 77)
!742 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !638, file: !715, line: 78)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !715, line: 79)
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !715, line: 80)
!745 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !652, file: !715, line: 81)
!746 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !654, file: !715, line: 83)
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !662, file: !715, line: 84)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 6336, elements: !749)
!749 = !{!750}
!750 = !DISubrange(count: 9)
!751 = !{i32 7, !"Dwarf Version", i32 5}
!752 = !{i32 2, !"Debug Info Version", i32 3}
!753 = !{i32 1, !"wchar_size", i32 4}
!754 = !{i32 7, !"PIC Level", i32 2}
!755 = !{i32 7, !"PIE Level", i32 2}
!756 = !{i32 7, !"uwtable", i32 1}
!757 = !{i32 7, !"frame-pointer", i32 2}
!758 = !{!"Debian clang version 14.0.6-2"}
!759 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !760, file: !760, type: !537, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !761)
!760 = !DIFile(filename: "samples/smallpt.cpp", directory: "/home/onkar/Downloads/slim/slim-use")
!761 = !{}
!762 = !DILocation(line: 36, column: 15, scope: !763)
!763 = !DILexicalBlockFile(scope: !759, file: !6, discriminator: 0)
!764 = !DILocation(line: 36, column: 38, scope: !763)
!765 = !DILocation(line: 36, column: 44, scope: !763)
!766 = !DILocation(line: 36, column: 3, scope: !763)
!767 = !DILocation(line: 37, column: 15, scope: !763)
!768 = !DILocation(line: 37, column: 38, scope: !763)
!769 = !DILocation(line: 37, column: 44, scope: !763)
!770 = !DILocation(line: 37, column: 3, scope: !763)
!771 = !DILocation(line: 38, column: 15, scope: !763)
!772 = !DILocation(line: 38, column: 38, scope: !763)
!773 = !DILocation(line: 38, column: 44, scope: !763)
!774 = !DILocation(line: 38, column: 3, scope: !763)
!775 = !DILocation(line: 39, column: 15, scope: !763)
!776 = !DILocation(line: 39, column: 38, scope: !763)
!777 = !DILocation(line: 39, column: 44, scope: !763)
!778 = !DILocation(line: 39, column: 3, scope: !763)
!779 = !DILocation(line: 40, column: 15, scope: !763)
!780 = !DILocation(line: 40, column: 38, scope: !763)
!781 = !DILocation(line: 40, column: 44, scope: !763)
!782 = !DILocation(line: 40, column: 3, scope: !763)
!783 = !DILocation(line: 41, column: 15, scope: !763)
!784 = !DILocation(line: 41, column: 38, scope: !763)
!785 = !DILocation(line: 41, column: 44, scope: !763)
!786 = !DILocation(line: 41, column: 3, scope: !763)
!787 = !DILocation(line: 42, column: 15, scope: !763)
!788 = !DILocation(line: 42, column: 38, scope: !763)
!789 = !DILocation(line: 42, column: 44, scope: !763)
!790 = !DILocation(line: 42, column: 54, scope: !763)
!791 = !DILocation(line: 42, column: 3, scope: !763)
!792 = !DILocation(line: 43, column: 15, scope: !763)
!793 = !DILocation(line: 43, column: 38, scope: !763)
!794 = !DILocation(line: 43, column: 44, scope: !763)
!795 = !DILocation(line: 43, column: 54, scope: !763)
!796 = !DILocation(line: 43, column: 3, scope: !763)
!797 = !DILocation(line: 44, column: 15, scope: !763)
!798 = !DILocation(line: 44, column: 38, scope: !763)
!799 = !DILocation(line: 44, column: 54, scope: !763)
!800 = !DILocation(line: 44, column: 3, scope: !763)
!801 = !DILocation(line: 44, column: 61, scope: !763)
!802 = distinct !DISubprogram(name: "Vec", linkageName: "_ZN3VecC2Eddd", scope: !13, file: !6, line: 11, type: !20, scopeLine: 11, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !19, retainedNodes: !761)
!803 = !DILocalVariable(name: "this", arg: 1, scope: !802, type: !804, flags: DIFlagArtificial | DIFlagObjectPointer)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!805 = !DILocation(line: 0, scope: !802)
!806 = !DILocalVariable(name: "x_", arg: 2, scope: !802, file: !6, line: 11, type: !16)
!807 = !DILocation(line: 11, column: 14, scope: !802)
!808 = !DILocalVariable(name: "y_", arg: 3, scope: !802, file: !6, line: 11, type: !16)
!809 = !DILocation(line: 11, column: 27, scope: !802)
!810 = !DILocalVariable(name: "z_", arg: 4, scope: !802, file: !6, line: 11, type: !16)
!811 = !DILocation(line: 11, column: 40, scope: !802)
!812 = !DILocation(line: 11, column: 49, scope: !813)
!813 = distinct !DILexicalBlock(scope: !802, file: !6, line: 11, column: 45)
!814 = !DILocation(line: 11, column: 47, scope: !813)
!815 = !DILocation(line: 11, column: 48, scope: !813)
!816 = !DILocation(line: 11, column: 55, scope: !813)
!817 = !DILocation(line: 11, column: 53, scope: !813)
!818 = !DILocation(line: 11, column: 54, scope: !813)
!819 = !DILocation(line: 11, column: 61, scope: !813)
!820 = !DILocation(line: 11, column: 59, scope: !813)
!821 = !DILocation(line: 11, column: 60, scope: !813)
!822 = !DILocation(line: 11, column: 65, scope: !802)
!823 = distinct !DISubprogram(name: "Sphere", linkageName: "_ZN6SphereC2Ed3VecS0_S0_6Refl_t", scope: !46, file: !6, line: 26, type: !54, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !53, retainedNodes: !761)
!824 = !DILocalVariable(name: "this", arg: 1, scope: !823, type: !825, flags: DIFlagArtificial | DIFlagObjectPointer)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!826 = !DILocation(line: 0, scope: !823)
!827 = !DILocalVariable(name: "rad_", arg: 2, scope: !823, file: !6, line: 26, type: !16)
!828 = !DILocation(line: 26, column: 17, scope: !823)
!829 = !DILocalVariable(name: "p_", arg: 3, scope: !823, file: !6, line: 26, type: !13)
!830 = !DILocation(line: 26, column: 27, scope: !823)
!831 = !DILocalVariable(name: "e_", arg: 4, scope: !823, file: !6, line: 26, type: !13)
!832 = !DILocation(line: 26, column: 35, scope: !823)
!833 = !DILocalVariable(name: "c_", arg: 5, scope: !823, file: !6, line: 26, type: !13)
!834 = !DILocation(line: 26, column: 43, scope: !823)
!835 = !DILocalVariable(name: "refl_", arg: 6, scope: !823, file: !6, line: 26, type: !5)
!836 = !DILocation(line: 26, column: 54, scope: !823)
!837 = !DILocation(line: 27, column: 5, scope: !823)
!838 = !DILocation(line: 27, column: 9, scope: !823)
!839 = !DILocation(line: 27, column: 16, scope: !823)
!840 = !DILocation(line: 27, column: 23, scope: !823)
!841 = !DILocation(line: 27, column: 30, scope: !823)
!842 = !DILocation(line: 27, column: 37, scope: !823)
!843 = !DILocation(line: 27, column: 42, scope: !823)
!844 = !DILocation(line: 27, column: 50, scope: !823)
!845 = distinct !DISubprogram(name: "operator*", linkageName: "_ZNK3VecmlEd", scope: !13, file: !6, line: 14, type: !31, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !30, retainedNodes: !761)
!846 = !DILocalVariable(name: "this", arg: 1, scope: !845, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!848 = !DILocation(line: 0, scope: !845)
!849 = !DILocalVariable(name: "b", arg: 2, scope: !845, file: !6, line: 14, type: !16)
!850 = !DILocation(line: 14, column: 24, scope: !845)
!851 = !DILocation(line: 14, column: 46, scope: !845)
!852 = !DILocation(line: 14, column: 48, scope: !845)
!853 = !DILocation(line: 14, column: 47, scope: !845)
!854 = !DILocation(line: 14, column: 50, scope: !845)
!855 = !DILocation(line: 14, column: 52, scope: !845)
!856 = !DILocation(line: 14, column: 51, scope: !845)
!857 = !DILocation(line: 14, column: 54, scope: !845)
!858 = !DILocation(line: 14, column: 56, scope: !845)
!859 = !DILocation(line: 14, column: 55, scope: !845)
!860 = !DILocation(line: 14, column: 42, scope: !845)
!861 = !DILocation(line: 14, column: 35, scope: !845)
!862 = distinct !DISubprogram(name: "radiance", linkageName: "_Z8radianceRK3RayiPt", scope: !6, file: !6, line: 53, type: !863, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !761)
!863 = !DISubroutineType(types: !864)
!864 = !{!13, !62, !45, !865}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!866 = !DILocalVariable(name: "r", arg: 1, scope: !862, file: !6, line: 53, type: !62)
!867 = !DILocation(line: 53, column: 25, scope: !862)
!868 = !DILocalVariable(name: "depth", arg: 2, scope: !862, file: !6, line: 53, type: !45)
!869 = !DILocation(line: 53, column: 32, scope: !862)
!870 = !DILocalVariable(name: "Xi", arg: 3, scope: !862, file: !6, line: 53, type: !865)
!871 = !DILocation(line: 53, column: 55, scope: !862)
!872 = !DILocalVariable(name: "t", scope: !862, file: !6, line: 54, type: !16)
!873 = !DILocation(line: 54, column: 10, scope: !862)
!874 = !DILocalVariable(name: "id", scope: !862, file: !6, line: 55, type: !45)
!875 = !DILocation(line: 55, column: 7, scope: !862)
!876 = !DILocation(line: 56, column: 18, scope: !877)
!877 = distinct !DILexicalBlock(scope: !862, file: !6, line: 56, column: 7)
!878 = !DILocation(line: 56, column: 8, scope: !877)
!879 = !DILocation(line: 56, column: 7, scope: !862)
!880 = !DILocation(line: 56, column: 36, scope: !877)
!881 = !DILocation(line: 56, column: 29, scope: !877)
!882 = !DILocalVariable(name: "obj", scope: !862, file: !6, line: 57, type: !883)
!883 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !61, size: 64)
!884 = !DILocation(line: 57, column: 17, scope: !862)
!885 = !DILocation(line: 57, column: 31, scope: !862)
!886 = !DILocation(line: 57, column: 23, scope: !862)
!887 = !DILocalVariable(name: "x", scope: !862, file: !6, line: 58, type: !13)
!888 = !DILocation(line: 58, column: 7, scope: !862)
!889 = !DILocation(line: 58, column: 9, scope: !862)
!890 = !DILocation(line: 58, column: 11, scope: !862)
!891 = !DILocation(line: 58, column: 13, scope: !862)
!892 = !DILocation(line: 58, column: 15, scope: !862)
!893 = !DILocation(line: 58, column: 17, scope: !862)
!894 = !DILocation(line: 58, column: 16, scope: !862)
!895 = !DILocation(line: 58, column: 12, scope: !862)
!896 = !DILocalVariable(name: "n", scope: !862, file: !6, line: 58, type: !13)
!897 = !DILocation(line: 58, column: 20, scope: !862)
!898 = !DILocation(line: 58, column: 25, scope: !862)
!899 = !DILocation(line: 58, column: 29, scope: !862)
!900 = !DILocation(line: 58, column: 24, scope: !862)
!901 = !DILocation(line: 58, column: 32, scope: !862)
!902 = !DILocation(line: 58, column: 22, scope: !862)
!903 = !DILocalVariable(name: "nl", scope: !862, file: !6, line: 58, type: !13)
!904 = !DILocation(line: 58, column: 40, scope: !862)
!905 = !DILocation(line: 58, column: 49, scope: !862)
!906 = !DILocation(line: 58, column: 51, scope: !862)
!907 = !DILocation(line: 58, column: 45, scope: !862)
!908 = !DILocation(line: 58, column: 53, scope: !862)
!909 = !DILocation(line: 58, column: 43, scope: !862)
!910 = !DILocation(line: 58, column: 56, scope: !862)
!911 = !DILocation(line: 58, column: 59, scope: !862)
!912 = !DILocalVariable(name: "f", scope: !862, file: !6, line: 58, type: !13)
!913 = !DILocation(line: 58, column: 64, scope: !862)
!914 = !DILocation(line: 58, column: 66, scope: !862)
!915 = !DILocation(line: 58, column: 70, scope: !862)
!916 = !DILocalVariable(name: "p", scope: !862, file: !6, line: 59, type: !16)
!917 = !DILocation(line: 59, column: 10, scope: !862)
!918 = !DILocation(line: 59, column: 16, scope: !862)
!919 = !DILocation(line: 59, column: 20, scope: !862)
!920 = !DILocation(line: 59, column: 17, scope: !862)
!921 = !DILocation(line: 59, column: 22, scope: !862)
!922 = !DILocation(line: 59, column: 27, scope: !862)
!923 = !DILocation(line: 59, column: 31, scope: !862)
!924 = !DILocation(line: 59, column: 28, scope: !862)
!925 = !DILocation(line: 59, column: 14, scope: !862)
!926 = !DILocation(line: 59, column: 37, scope: !862)
!927 = !DILocation(line: 59, column: 43, scope: !862)
!928 = !DILocation(line: 59, column: 47, scope: !862)
!929 = !DILocation(line: 59, column: 44, scope: !862)
!930 = !DILocation(line: 59, column: 41, scope: !862)
!931 = !DILocation(line: 59, column: 53, scope: !862)
!932 = !DILocation(line: 59, column: 59, scope: !862)
!933 = !DILocation(line: 60, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !862, file: !6, line: 60, column: 7)
!935 = !DILocation(line: 60, column: 14, scope: !934)
!936 = !DILocation(line: 60, column: 7, scope: !862)
!937 = !DILocation(line: 60, column: 30, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !6, line: 60, column: 22)
!939 = !DILocation(line: 60, column: 22, scope: !938)
!940 = !DILocation(line: 60, column: 34, scope: !938)
!941 = !DILocation(line: 60, column: 33, scope: !938)
!942 = !DILocation(line: 60, column: 22, scope: !934)
!943 = !DILocation(line: 60, column: 44, scope: !938)
!944 = !DILocation(line: 60, column: 43, scope: !938)
!945 = !DILocation(line: 60, column: 40, scope: !938)
!946 = !DILocation(line: 60, column: 38, scope: !938)
!947 = !DILocation(line: 60, column: 37, scope: !938)
!948 = !DILocation(line: 60, column: 60, scope: !938)
!949 = !DILocation(line: 60, column: 64, scope: !938)
!950 = !DILocation(line: 60, column: 53, scope: !938)
!951 = !DILocation(line: 61, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !862, file: !6, line: 61, column: 7)
!953 = !DILocation(line: 61, column: 11, scope: !952)
!954 = !DILocation(line: 61, column: 16, scope: !952)
!955 = !DILocation(line: 61, column: 7, scope: !862)
!956 = !DILocalVariable(name: "r1", scope: !957, file: !6, line: 62, type: !16)
!957 = distinct !DILexicalBlock(scope: !952, file: !6, line: 61, column: 24)
!958 = !DILocation(line: 62, column: 12, scope: !957)
!959 = !DILocation(line: 62, column: 30, scope: !957)
!960 = !DILocation(line: 62, column: 22, scope: !957)
!961 = !DILocation(line: 62, column: 21, scope: !957)
!962 = !DILocalVariable(name: "r2", scope: !957, file: !6, line: 62, type: !16)
!963 = !DILocation(line: 62, column: 35, scope: !957)
!964 = !DILocation(line: 62, column: 46, scope: !957)
!965 = !DILocation(line: 62, column: 38, scope: !957)
!966 = !DILocalVariable(name: "r2s", scope: !957, file: !6, line: 62, type: !16)
!967 = !DILocation(line: 62, column: 51, scope: !957)
!968 = !DILocation(line: 62, column: 60, scope: !957)
!969 = !DILocation(line: 62, column: 55, scope: !957)
!970 = !DILocalVariable(name: "w", scope: !957, file: !6, line: 63, type: !13)
!971 = !DILocation(line: 63, column: 9, scope: !957)
!972 = !DILocation(line: 63, column: 11, scope: !957)
!973 = !DILocalVariable(name: "u", scope: !957, file: !6, line: 63, type: !13)
!974 = !DILocation(line: 63, column: 15, scope: !957)
!975 = !DILocation(line: 63, column: 26, scope: !957)
!976 = !DILocation(line: 63, column: 19, scope: !957)
!977 = !DILocation(line: 63, column: 28, scope: !957)
!978 = !DILocation(line: 63, column: 32, scope: !957)
!979 = !DILocation(line: 63, column: 41, scope: !957)
!980 = !DILocation(line: 63, column: 48, scope: !957)
!981 = !DILocation(line: 63, column: 52, scope: !957)
!982 = !DILocation(line: 63, column: 17, scope: !957)
!983 = !DILocalVariable(name: "v", scope: !957, file: !6, line: 63, type: !13)
!984 = !DILocation(line: 63, column: 60, scope: !957)
!985 = !DILocation(line: 63, column: 63, scope: !957)
!986 = !DILocalVariable(name: "d", scope: !957, file: !6, line: 64, type: !13)
!987 = !DILocation(line: 64, column: 9, scope: !957)
!988 = !DILocation(line: 64, column: 20, scope: !957)
!989 = !DILocation(line: 64, column: 16, scope: !957)
!990 = !DILocation(line: 64, column: 15, scope: !957)
!991 = !DILocation(line: 64, column: 24, scope: !957)
!992 = !DILocation(line: 64, column: 23, scope: !957)
!993 = !DILocation(line: 64, column: 36, scope: !957)
!994 = !DILocation(line: 64, column: 32, scope: !957)
!995 = !DILocation(line: 64, column: 31, scope: !957)
!996 = !DILocation(line: 64, column: 40, scope: !957)
!997 = !DILocation(line: 64, column: 39, scope: !957)
!998 = !DILocation(line: 64, column: 28, scope: !957)
!999 = !DILocation(line: 64, column: 55, scope: !957)
!1000 = !DILocation(line: 64, column: 54, scope: !957)
!1001 = !DILocation(line: 64, column: 48, scope: !957)
!1002 = !DILocation(line: 64, column: 47, scope: !957)
!1003 = !DILocation(line: 64, column: 44, scope: !957)
!1004 = !DILocation(line: 64, column: 60, scope: !957)
!1005 = !DILocation(line: 64, column: 13, scope: !957)
!1006 = !DILocation(line: 65, column: 12, scope: !957)
!1007 = !DILocation(line: 65, column: 16, scope: !957)
!1008 = !DILocation(line: 65, column: 40, scope: !957)
!1009 = !DILocation(line: 65, column: 42, scope: !957)
!1010 = !DILocation(line: 65, column: 36, scope: !957)
!1011 = !DILocation(line: 65, column: 45, scope: !957)
!1012 = !DILocation(line: 65, column: 51, scope: !957)
!1013 = !DILocation(line: 65, column: 27, scope: !957)
!1014 = !DILocation(line: 65, column: 22, scope: !957)
!1015 = !DILocation(line: 65, column: 18, scope: !957)
!1016 = !DILocation(line: 65, column: 5, scope: !957)
!1017 = !DILocation(line: 66, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !952, file: !6, line: 66, column: 14)
!1019 = !DILocation(line: 66, column: 18, scope: !1018)
!1020 = !DILocation(line: 66, column: 23, scope: !1018)
!1021 = !DILocation(line: 66, column: 14, scope: !952)
!1022 = !DILocation(line: 67, column: 12, scope: !1018)
!1023 = !DILocation(line: 67, column: 16, scope: !1018)
!1024 = !DILocation(line: 67, column: 40, scope: !1018)
!1025 = !DILocation(line: 67, column: 42, scope: !1018)
!1026 = !DILocation(line: 67, column: 44, scope: !1018)
!1027 = !DILocation(line: 67, column: 47, scope: !1018)
!1028 = !DILocation(line: 67, column: 56, scope: !1018)
!1029 = !DILocation(line: 67, column: 58, scope: !1018)
!1030 = !DILocation(line: 67, column: 52, scope: !1018)
!1031 = !DILocation(line: 67, column: 49, scope: !1018)
!1032 = !DILocation(line: 67, column: 45, scope: !1018)
!1033 = !DILocation(line: 67, column: 36, scope: !1018)
!1034 = !DILocation(line: 67, column: 62, scope: !1018)
!1035 = !DILocation(line: 67, column: 68, scope: !1018)
!1036 = !DILocation(line: 67, column: 27, scope: !1018)
!1037 = !DILocation(line: 67, column: 22, scope: !1018)
!1038 = !DILocation(line: 67, column: 18, scope: !1018)
!1039 = !DILocation(line: 67, column: 5, scope: !1018)
!1040 = !DILocalVariable(name: "reflRay", scope: !862, file: !6, line: 68, type: !64)
!1041 = !DILocation(line: 68, column: 7, scope: !862)
!1042 = !DILocation(line: 68, column: 15, scope: !862)
!1043 = !DILocation(line: 68, column: 18, scope: !862)
!1044 = !DILocation(line: 68, column: 20, scope: !862)
!1045 = !DILocation(line: 68, column: 23, scope: !862)
!1046 = !DILocation(line: 68, column: 32, scope: !862)
!1047 = !DILocation(line: 68, column: 34, scope: !862)
!1048 = !DILocation(line: 68, column: 28, scope: !862)
!1049 = !DILocation(line: 68, column: 25, scope: !862)
!1050 = !DILocation(line: 68, column: 21, scope: !862)
!1051 = !DILocalVariable(name: "into", scope: !862, file: !6, line: 69, type: !1052)
!1052 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!1053 = !DILocation(line: 69, column: 8, scope: !862)
!1054 = !DILocation(line: 69, column: 17, scope: !862)
!1055 = !DILocation(line: 69, column: 24, scope: !862)
!1056 = !DILocalVariable(name: "nc", scope: !862, file: !6, line: 70, type: !16)
!1057 = !DILocation(line: 70, column: 10, scope: !862)
!1058 = !DILocalVariable(name: "nt", scope: !862, file: !6, line: 70, type: !16)
!1059 = !DILocation(line: 70, column: 16, scope: !862)
!1060 = !DILocalVariable(name: "nnt", scope: !862, file: !6, line: 70, type: !16)
!1061 = !DILocation(line: 70, column: 24, scope: !862)
!1062 = !DILocation(line: 70, column: 28, scope: !862)
!1063 = !DILocation(line: 70, column: 33, scope: !862)
!1064 = !DILocation(line: 70, column: 36, scope: !862)
!1065 = !DILocation(line: 70, column: 35, scope: !862)
!1066 = !DILocation(line: 70, column: 39, scope: !862)
!1067 = !DILocation(line: 70, column: 42, scope: !862)
!1068 = !DILocation(line: 70, column: 41, scope: !862)
!1069 = !DILocalVariable(name: "ddn", scope: !862, file: !6, line: 70, type: !16)
!1070 = !DILocation(line: 70, column: 46, scope: !862)
!1071 = !DILocation(line: 70, column: 50, scope: !862)
!1072 = !DILocation(line: 70, column: 52, scope: !862)
!1073 = !DILocation(line: 70, column: 54, scope: !862)
!1074 = !DILocalVariable(name: "cos2t", scope: !862, file: !6, line: 70, type: !16)
!1075 = !DILocation(line: 70, column: 63, scope: !862)
!1076 = !DILocation(line: 71, column: 16, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !862, file: !6, line: 71, column: 7)
!1078 = !DILocation(line: 71, column: 20, scope: !1077)
!1079 = !DILocation(line: 71, column: 19, scope: !1077)
!1080 = !DILocation(line: 71, column: 27, scope: !1077)
!1081 = !DILocation(line: 71, column: 31, scope: !1077)
!1082 = !DILocation(line: 71, column: 26, scope: !1077)
!1083 = !DILocation(line: 71, column: 15, scope: !1077)
!1084 = !DILocation(line: 71, column: 13, scope: !1077)
!1085 = !DILocation(line: 71, column: 36, scope: !1077)
!1086 = !DILocation(line: 71, column: 7, scope: !862)
!1087 = !DILocation(line: 72, column: 12, scope: !1077)
!1088 = !DILocation(line: 72, column: 16, scope: !1077)
!1089 = !DILocation(line: 72, column: 44, scope: !1077)
!1090 = !DILocation(line: 72, column: 50, scope: !1077)
!1091 = !DILocation(line: 72, column: 27, scope: !1077)
!1092 = !DILocation(line: 72, column: 22, scope: !1077)
!1093 = !DILocation(line: 72, column: 18, scope: !1077)
!1094 = !DILocation(line: 72, column: 5, scope: !1077)
!1095 = !DILocalVariable(name: "tdir", scope: !862, file: !6, line: 73, type: !13)
!1096 = !DILocation(line: 73, column: 7, scope: !862)
!1097 = !DILocation(line: 73, column: 15, scope: !862)
!1098 = !DILocation(line: 73, column: 17, scope: !862)
!1099 = !DILocation(line: 73, column: 19, scope: !862)
!1100 = !DILocation(line: 73, column: 18, scope: !862)
!1101 = !DILocation(line: 73, column: 29, scope: !862)
!1102 = !DILocation(line: 73, column: 28, scope: !862)
!1103 = !DILocation(line: 73, column: 41, scope: !862)
!1104 = !DILocation(line: 73, column: 45, scope: !862)
!1105 = !DILocation(line: 73, column: 54, scope: !862)
!1106 = !DILocation(line: 73, column: 49, scope: !862)
!1107 = !DILocation(line: 73, column: 48, scope: !862)
!1108 = !DILocation(line: 73, column: 39, scope: !862)
!1109 = !DILocation(line: 73, column: 26, scope: !862)
!1110 = !DILocation(line: 73, column: 23, scope: !862)
!1111 = !DILocation(line: 73, column: 64, scope: !862)
!1112 = !DILocation(line: 73, column: 14, scope: !862)
!1113 = !DILocalVariable(name: "a", scope: !862, file: !6, line: 74, type: !16)
!1114 = !DILocation(line: 74, column: 10, scope: !862)
!1115 = !DILocation(line: 74, column: 12, scope: !862)
!1116 = !DILocation(line: 74, column: 15, scope: !862)
!1117 = !DILocation(line: 74, column: 14, scope: !862)
!1118 = !DILocalVariable(name: "b", scope: !862, file: !6, line: 74, type: !16)
!1119 = !DILocation(line: 74, column: 19, scope: !862)
!1120 = !DILocation(line: 74, column: 21, scope: !862)
!1121 = !DILocation(line: 74, column: 24, scope: !862)
!1122 = !DILocation(line: 74, column: 23, scope: !862)
!1123 = !DILocalVariable(name: "R0", scope: !862, file: !6, line: 74, type: !16)
!1124 = !DILocation(line: 74, column: 28, scope: !862)
!1125 = !DILocation(line: 74, column: 31, scope: !862)
!1126 = !DILocation(line: 74, column: 33, scope: !862)
!1127 = !DILocation(line: 74, column: 32, scope: !862)
!1128 = !DILocation(line: 74, column: 36, scope: !862)
!1129 = !DILocation(line: 74, column: 38, scope: !862)
!1130 = !DILocation(line: 74, column: 37, scope: !862)
!1131 = !DILocation(line: 74, column: 34, scope: !862)
!1132 = !DILocalVariable(name: "c", scope: !862, file: !6, line: 74, type: !16)
!1133 = !DILocation(line: 74, column: 42, scope: !862)
!1134 = !DILocation(line: 74, column: 49, scope: !862)
!1135 = !DILocation(line: 74, column: 55, scope: !862)
!1136 = !DILocation(line: 74, column: 54, scope: !862)
!1137 = !DILocation(line: 74, column: 64, scope: !862)
!1138 = !DILocation(line: 74, column: 47, scope: !862)
!1139 = !DILocalVariable(name: "Re", scope: !862, file: !6, line: 75, type: !16)
!1140 = !DILocation(line: 75, column: 10, scope: !862)
!1141 = !DILocation(line: 75, column: 13, scope: !862)
!1142 = !DILocation(line: 75, column: 19, scope: !862)
!1143 = !DILocation(line: 75, column: 18, scope: !862)
!1144 = !DILocation(line: 75, column: 23, scope: !862)
!1145 = !DILocation(line: 75, column: 22, scope: !862)
!1146 = !DILocation(line: 75, column: 25, scope: !862)
!1147 = !DILocation(line: 75, column: 24, scope: !862)
!1148 = !DILocation(line: 75, column: 27, scope: !862)
!1149 = !DILocation(line: 75, column: 26, scope: !862)
!1150 = !DILocation(line: 75, column: 29, scope: !862)
!1151 = !DILocation(line: 75, column: 28, scope: !862)
!1152 = !DILocation(line: 75, column: 31, scope: !862)
!1153 = !DILocation(line: 75, column: 15, scope: !862)
!1154 = !DILocalVariable(name: "Tr", scope: !862, file: !6, line: 75, type: !16)
!1155 = !DILocation(line: 75, column: 33, scope: !862)
!1156 = !DILocation(line: 75, column: 38, scope: !862)
!1157 = !DILocation(line: 75, column: 37, scope: !862)
!1158 = !DILocalVariable(name: "P", scope: !862, file: !6, line: 75, type: !16)
!1159 = !DILocation(line: 75, column: 41, scope: !862)
!1160 = !DILocation(line: 75, column: 50, scope: !862)
!1161 = !DILocation(line: 75, column: 46, scope: !862)
!1162 = !DILocalVariable(name: "RP", scope: !862, file: !6, line: 75, type: !16)
!1163 = !DILocation(line: 75, column: 53, scope: !862)
!1164 = !DILocation(line: 75, column: 56, scope: !862)
!1165 = !DILocation(line: 75, column: 59, scope: !862)
!1166 = !DILocation(line: 75, column: 58, scope: !862)
!1167 = !DILocalVariable(name: "TP", scope: !862, file: !6, line: 75, type: !16)
!1168 = !DILocation(line: 75, column: 61, scope: !862)
!1169 = !DILocation(line: 75, column: 64, scope: !862)
!1170 = !DILocation(line: 75, column: 70, scope: !862)
!1171 = !DILocation(line: 75, column: 69, scope: !862)
!1172 = !DILocation(line: 75, column: 66, scope: !862)
!1173 = !DILocation(line: 76, column: 10, scope: !862)
!1174 = !DILocation(line: 76, column: 14, scope: !862)
!1175 = !DILocation(line: 76, column: 25, scope: !862)
!1176 = !DILocation(line: 76, column: 30, scope: !862)
!1177 = !DILocation(line: 76, column: 44, scope: !862)
!1178 = !DILocation(line: 76, column: 36, scope: !862)
!1179 = !DILocation(line: 76, column: 48, scope: !862)
!1180 = !DILocation(line: 76, column: 47, scope: !862)
!1181 = !DILocation(line: 77, column: 22, scope: !862)
!1182 = !DILocation(line: 77, column: 28, scope: !862)
!1183 = !DILocation(line: 77, column: 5, scope: !862)
!1184 = !DILocation(line: 77, column: 32, scope: !862)
!1185 = !DILocation(line: 77, column: 31, scope: !862)
!1186 = !DILocation(line: 77, column: 48, scope: !862)
!1187 = !DILocation(line: 77, column: 50, scope: !862)
!1188 = !DILocation(line: 77, column: 44, scope: !862)
!1189 = !DILocation(line: 77, column: 56, scope: !862)
!1190 = !DILocation(line: 77, column: 62, scope: !862)
!1191 = !DILocation(line: 77, column: 35, scope: !862)
!1192 = !DILocation(line: 77, column: 66, scope: !862)
!1193 = !DILocation(line: 77, column: 65, scope: !862)
!1194 = !DILocation(line: 78, column: 22, scope: !862)
!1195 = !DILocation(line: 78, column: 28, scope: !862)
!1196 = !DILocation(line: 78, column: 5, scope: !862)
!1197 = !DILocation(line: 78, column: 32, scope: !862)
!1198 = !DILocation(line: 78, column: 31, scope: !862)
!1199 = !DILocation(line: 78, column: 48, scope: !862)
!1200 = !DILocation(line: 78, column: 50, scope: !862)
!1201 = !DILocation(line: 78, column: 44, scope: !862)
!1202 = !DILocation(line: 78, column: 56, scope: !862)
!1203 = !DILocation(line: 78, column: 62, scope: !862)
!1204 = !DILocation(line: 78, column: 35, scope: !862)
!1205 = !DILocation(line: 78, column: 66, scope: !862)
!1206 = !DILocation(line: 78, column: 65, scope: !862)
!1207 = !DILocation(line: 78, column: 34, scope: !862)
!1208 = !DILocation(line: 76, column: 20, scope: !862)
!1209 = !DILocation(line: 76, column: 16, scope: !862)
!1210 = !DILocation(line: 76, column: 3, scope: !862)
!1211 = !DILocation(line: 79, column: 1, scope: !862)
!1212 = distinct !DISubprogram(name: "intersect", linkageName: "_Z9intersectRK3RayRdRi", scope: !6, file: !6, line: 48, type: !1213, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !761)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!1052, !62, !1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !45, size: 64)
!1217 = !DILocalVariable(name: "r", arg: 1, scope: !1212, file: !6, line: 48, type: !62)
!1218 = !DILocation(line: 48, column: 34, scope: !1212)
!1219 = !DILocalVariable(name: "t", arg: 2, scope: !1212, file: !6, line: 48, type: !1215)
!1220 = !DILocation(line: 48, column: 45, scope: !1212)
!1221 = !DILocalVariable(name: "id", arg: 3, scope: !1212, file: !6, line: 48, type: !1216)
!1222 = !DILocation(line: 48, column: 53, scope: !1212)
!1223 = !DILocalVariable(name: "n", scope: !1212, file: !6, line: 49, type: !16)
!1224 = !DILocation(line: 49, column: 10, scope: !1212)
!1225 = !DILocalVariable(name: "d", scope: !1212, file: !6, line: 49, type: !16)
!1226 = !DILocation(line: 49, column: 44, scope: !1212)
!1227 = !DILocalVariable(name: "inf", scope: !1212, file: !6, line: 49, type: !16)
!1228 = !DILocation(line: 49, column: 47, scope: !1212)
!1229 = !DILocation(line: 49, column: 51, scope: !1212)
!1230 = !DILocation(line: 49, column: 52, scope: !1212)
!1231 = !DILocalVariable(name: "i", scope: !1232, file: !6, line: 50, type: !45)
!1232 = distinct !DILexicalBlock(scope: !1212, file: !6, line: 50, column: 3)
!1233 = !DILocation(line: 50, column: 11, scope: !1232)
!1234 = !DILocation(line: 50, column: 17, scope: !1232)
!1235 = !DILocation(line: 50, column: 7, scope: !1232)
!1236 = !DILocation(line: 50, column: 21, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !6, line: 50, column: 3)
!1238 = !DILocation(line: 50, column: 20, scope: !1237)
!1239 = !DILocation(line: 50, column: 3, scope: !1232)
!1240 = !DILocation(line: 50, column: 40, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !6, line: 50, column: 29)
!1242 = !DILocation(line: 50, column: 32, scope: !1241)
!1243 = !DILocation(line: 50, column: 53, scope: !1241)
!1244 = !DILocation(line: 50, column: 43, scope: !1241)
!1245 = !DILocation(line: 50, column: 31, scope: !1241)
!1246 = !DILocation(line: 50, column: 29, scope: !1241)
!1247 = !DILocation(line: 50, column: 56, scope: !1241)
!1248 = !DILocation(line: 50, column: 58, scope: !1241)
!1249 = !DILocation(line: 50, column: 60, scope: !1241)
!1250 = !DILocation(line: 50, column: 59, scope: !1241)
!1251 = !DILocation(line: 50, column: 29, scope: !1237)
!1252 = !DILocation(line: 50, column: 65, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1241, file: !6, line: 50, column: 62)
!1254 = !DILocation(line: 50, column: 63, scope: !1253)
!1255 = !DILocation(line: 50, column: 64, scope: !1253)
!1256 = !DILocation(line: 50, column: 70, scope: !1253)
!1257 = !DILocation(line: 50, column: 67, scope: !1253)
!1258 = !DILocation(line: 50, column: 69, scope: !1253)
!1259 = !DILocation(line: 50, column: 72, scope: !1253)
!1260 = !DILocation(line: 50, column: 3, scope: !1237)
!1261 = distinct !{!1261, !1239, !1262, !1263}
!1262 = !DILocation(line: 50, column: 72, scope: !1232)
!1263 = !{!"llvm.loop.mustprogress"}
!1264 = !DILocation(line: 51, column: 10, scope: !1212)
!1265 = !DILocation(line: 51, column: 12, scope: !1212)
!1266 = !DILocation(line: 51, column: 11, scope: !1212)
!1267 = !DILocation(line: 51, column: 3, scope: !1212)
!1268 = distinct !DISubprogram(name: "operator+", linkageName: "_ZNK3VecplERKS_", scope: !13, file: !6, line: 12, type: !24, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !23, retainedNodes: !761)
!1269 = !DILocalVariable(name: "this", arg: 1, scope: !1268, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1270 = !DILocation(line: 0, scope: !1268)
!1271 = !DILocalVariable(name: "b", arg: 2, scope: !1268, file: !6, line: 12, type: !28)
!1272 = !DILocation(line: 12, column: 28, scope: !1268)
!1273 = !DILocation(line: 12, column: 50, scope: !1268)
!1274 = !DILocation(line: 12, column: 52, scope: !1268)
!1275 = !DILocation(line: 12, column: 54, scope: !1268)
!1276 = !DILocation(line: 12, column: 51, scope: !1268)
!1277 = !DILocation(line: 12, column: 56, scope: !1268)
!1278 = !DILocation(line: 12, column: 58, scope: !1268)
!1279 = !DILocation(line: 12, column: 60, scope: !1268)
!1280 = !DILocation(line: 12, column: 57, scope: !1268)
!1281 = !DILocation(line: 12, column: 62, scope: !1268)
!1282 = !DILocation(line: 12, column: 64, scope: !1268)
!1283 = !DILocation(line: 12, column: 66, scope: !1268)
!1284 = !DILocation(line: 12, column: 63, scope: !1268)
!1285 = !DILocation(line: 12, column: 46, scope: !1268)
!1286 = !DILocation(line: 12, column: 39, scope: !1268)
!1287 = distinct !DISubprogram(name: "operator-", linkageName: "_ZNK3VecmiERKS_", scope: !13, file: !6, line: 13, type: !24, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !29, retainedNodes: !761)
!1288 = !DILocalVariable(name: "this", arg: 1, scope: !1287, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1289 = !DILocation(line: 0, scope: !1287)
!1290 = !DILocalVariable(name: "b", arg: 2, scope: !1287, file: !6, line: 13, type: !28)
!1291 = !DILocation(line: 13, column: 28, scope: !1287)
!1292 = !DILocation(line: 13, column: 50, scope: !1287)
!1293 = !DILocation(line: 13, column: 52, scope: !1287)
!1294 = !DILocation(line: 13, column: 54, scope: !1287)
!1295 = !DILocation(line: 13, column: 51, scope: !1287)
!1296 = !DILocation(line: 13, column: 56, scope: !1287)
!1297 = !DILocation(line: 13, column: 58, scope: !1287)
!1298 = !DILocation(line: 13, column: 60, scope: !1287)
!1299 = !DILocation(line: 13, column: 57, scope: !1287)
!1300 = !DILocation(line: 13, column: 62, scope: !1287)
!1301 = !DILocation(line: 13, column: 64, scope: !1287)
!1302 = !DILocation(line: 13, column: 66, scope: !1287)
!1303 = !DILocation(line: 13, column: 63, scope: !1287)
!1304 = !DILocation(line: 13, column: 46, scope: !1287)
!1305 = !DILocation(line: 13, column: 39, scope: !1287)
!1306 = distinct !DISubprogram(name: "norm", linkageName: "_ZN3Vec4normEv", scope: !13, file: !6, line: 16, type: !35, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !34, retainedNodes: !761)
!1307 = !DILocalVariable(name: "this", arg: 1, scope: !1306, type: !804, flags: DIFlagArtificial | DIFlagObjectPointer)
!1308 = !DILocation(line: 0, scope: !1306)
!1309 = !DILocation(line: 16, column: 47, scope: !1306)
!1310 = !DILocation(line: 16, column: 49, scope: !1306)
!1311 = !DILocation(line: 16, column: 51, scope: !1306)
!1312 = !DILocation(line: 16, column: 53, scope: !1306)
!1313 = !DILocation(line: 16, column: 52, scope: !1306)
!1314 = !DILocation(line: 16, column: 50, scope: !1306)
!1315 = !DILocation(line: 16, column: 55, scope: !1306)
!1316 = !DILocation(line: 16, column: 57, scope: !1306)
!1317 = !DILocation(line: 16, column: 54, scope: !1306)
!1318 = !DILocation(line: 16, column: 42, scope: !1306)
!1319 = !DILocation(line: 16, column: 41, scope: !1306)
!1320 = !DILocation(line: 16, column: 37, scope: !1306)
!1321 = !DILocation(line: 16, column: 29, scope: !1306)
!1322 = !DILocation(line: 16, column: 16, scope: !1306)
!1323 = distinct !DISubprogram(name: "dot", linkageName: "_ZNK3Vec3dotERKS_", scope: !13, file: !6, line: 17, type: !39, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !38, retainedNodes: !761)
!1324 = !DILocalVariable(name: "this", arg: 1, scope: !1323, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1325 = !DILocation(line: 0, scope: !1323)
!1326 = !DILocalVariable(name: "b", arg: 2, scope: !1323, file: !6, line: 17, type: !28)
!1327 = !DILocation(line: 17, column: 25, scope: !1323)
!1328 = !DILocation(line: 17, column: 43, scope: !1323)
!1329 = !DILocation(line: 17, column: 45, scope: !1323)
!1330 = !DILocation(line: 17, column: 47, scope: !1323)
!1331 = !DILocation(line: 17, column: 49, scope: !1323)
!1332 = !DILocation(line: 17, column: 51, scope: !1323)
!1333 = !DILocation(line: 17, column: 53, scope: !1323)
!1334 = !DILocation(line: 17, column: 50, scope: !1323)
!1335 = !DILocation(line: 17, column: 48, scope: !1323)
!1336 = !DILocation(line: 17, column: 55, scope: !1323)
!1337 = !DILocation(line: 17, column: 57, scope: !1323)
!1338 = !DILocation(line: 17, column: 59, scope: !1323)
!1339 = !DILocation(line: 17, column: 54, scope: !1323)
!1340 = !DILocation(line: 17, column: 36, scope: !1323)
!1341 = distinct !DISubprogram(name: "operator%", linkageName: "_ZN3VecrmERS_", scope: !13, file: !6, line: 18, type: !42, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !41, retainedNodes: !761)
!1342 = !DILocalVariable(name: "this", arg: 1, scope: !1341, type: !804, flags: DIFlagArtificial | DIFlagObjectPointer)
!1343 = !DILocation(line: 0, scope: !1341)
!1344 = !DILocalVariable(name: "b", arg: 2, scope: !1341, file: !6, line: 18, type: !37)
!1345 = !DILocation(line: 18, column: 21, scope: !1341)
!1346 = !DILocation(line: 18, column: 35, scope: !1341)
!1347 = !DILocation(line: 18, column: 37, scope: !1341)
!1348 = !DILocation(line: 18, column: 39, scope: !1341)
!1349 = !DILocation(line: 18, column: 41, scope: !1341)
!1350 = !DILocation(line: 18, column: 43, scope: !1341)
!1351 = !DILocation(line: 18, column: 45, scope: !1341)
!1352 = !DILocation(line: 18, column: 42, scope: !1341)
!1353 = !DILocation(line: 18, column: 40, scope: !1341)
!1354 = !DILocation(line: 18, column: 47, scope: !1341)
!1355 = !DILocation(line: 18, column: 49, scope: !1341)
!1356 = !DILocation(line: 18, column: 51, scope: !1341)
!1357 = !DILocation(line: 18, column: 53, scope: !1341)
!1358 = !DILocation(line: 18, column: 55, scope: !1341)
!1359 = !DILocation(line: 18, column: 57, scope: !1341)
!1360 = !DILocation(line: 18, column: 54, scope: !1341)
!1361 = !DILocation(line: 18, column: 52, scope: !1341)
!1362 = !DILocation(line: 18, column: 59, scope: !1341)
!1363 = !DILocation(line: 18, column: 61, scope: !1341)
!1364 = !DILocation(line: 18, column: 63, scope: !1341)
!1365 = !DILocation(line: 18, column: 65, scope: !1341)
!1366 = !DILocation(line: 18, column: 67, scope: !1341)
!1367 = !DILocation(line: 18, column: 69, scope: !1341)
!1368 = !DILocation(line: 18, column: 66, scope: !1341)
!1369 = !DILocation(line: 18, column: 64, scope: !1341)
!1370 = !DILocation(line: 18, column: 31, scope: !1341)
!1371 = !DILocation(line: 18, column: 24, scope: !1341)
!1372 = distinct !DISubprogram(name: "mult", linkageName: "_ZNK3Vec4multERKS_", scope: !13, file: !6, line: 15, type: !24, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !33, retainedNodes: !761)
!1373 = !DILocalVariable(name: "this", arg: 1, scope: !1372, type: !847, flags: DIFlagArtificial | DIFlagObjectPointer)
!1374 = !DILocation(line: 0, scope: !1372)
!1375 = !DILocalVariable(name: "b", arg: 2, scope: !1372, file: !6, line: 15, type: !28)
!1376 = !DILocation(line: 15, column: 23, scope: !1372)
!1377 = !DILocation(line: 15, column: 45, scope: !1372)
!1378 = !DILocation(line: 15, column: 47, scope: !1372)
!1379 = !DILocation(line: 15, column: 49, scope: !1372)
!1380 = !DILocation(line: 15, column: 46, scope: !1372)
!1381 = !DILocation(line: 15, column: 51, scope: !1372)
!1382 = !DILocation(line: 15, column: 53, scope: !1372)
!1383 = !DILocation(line: 15, column: 55, scope: !1372)
!1384 = !DILocation(line: 15, column: 52, scope: !1372)
!1385 = !DILocation(line: 15, column: 57, scope: !1372)
!1386 = !DILocation(line: 15, column: 59, scope: !1372)
!1387 = !DILocation(line: 15, column: 61, scope: !1372)
!1388 = !DILocation(line: 15, column: 58, scope: !1372)
!1389 = !DILocation(line: 15, column: 41, scope: !1372)
!1390 = !DILocation(line: 15, column: 34, scope: !1372)
!1391 = distinct !DISubprogram(name: "Ray", linkageName: "_ZN3RayC2E3VecS0_", scope: !64, file: !6, line: 20, type: !69, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !68, retainedNodes: !761)
!1392 = !DILocalVariable(name: "this", arg: 1, scope: !1391, type: !1393, flags: DIFlagArtificial | DIFlagObjectPointer)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1394 = !DILocation(line: 0, scope: !1391)
!1395 = !DILocalVariable(name: "o_", arg: 2, scope: !1391, file: !6, line: 20, type: !13)
!1396 = !DILocation(line: 20, column: 32, scope: !1391)
!1397 = !DILocalVariable(name: "d_", arg: 3, scope: !1391, file: !6, line: 20, type: !13)
!1398 = !DILocation(line: 20, column: 40, scope: !1391)
!1399 = !DILocation(line: 20, column: 46, scope: !1391)
!1400 = !DILocation(line: 20, column: 53, scope: !1391)
!1401 = !DILocation(line: 20, column: 60, scope: !1391)
!1402 = distinct !DISubprogram(name: "main", scope: !6, file: !6, line: 80, type: !1403, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !761)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!45, !45, !642}
!1405 = !DILocalVariable(name: "argc", arg: 1, scope: !1402, file: !6, line: 80, type: !45)
!1406 = !DILocation(line: 80, column: 14, scope: !1402)
!1407 = !DILocalVariable(name: "argv", arg: 2, scope: !1402, file: !6, line: 80, type: !642)
!1408 = !DILocation(line: 80, column: 26, scope: !1402)
!1409 = !DILocalVariable(name: "w", scope: !1402, file: !6, line: 81, type: !45)
!1410 = !DILocation(line: 81, column: 7, scope: !1402)
!1411 = !DILocalVariable(name: "h", scope: !1402, file: !6, line: 81, type: !45)
!1412 = !DILocation(line: 81, column: 15, scope: !1402)
!1413 = !DILocalVariable(name: "samps", scope: !1402, file: !6, line: 81, type: !45)
!1414 = !DILocation(line: 81, column: 22, scope: !1402)
!1415 = !DILocation(line: 81, column: 30, scope: !1402)
!1416 = !DILocation(line: 81, column: 34, scope: !1402)
!1417 = !DILocation(line: 81, column: 45, scope: !1402)
!1418 = !DILocation(line: 81, column: 40, scope: !1402)
!1419 = !DILocation(line: 81, column: 53, scope: !1402)
!1420 = !DILocalVariable(name: "Start_t", scope: !1402, file: !6, line: 82, type: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1422, line: 10, baseType: !1423)
!1422 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "34d0816fa9aad5db7f457b5364ebec5f")
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1424, line: 160, baseType: !405)
!1424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "0737a53e1b85eab0e0ba9675962d13f4")
!1425 = !DILocation(line: 82, column: 10, scope: !1402)
!1426 = !DILocation(line: 82, column: 20, scope: !1402)
!1427 = !DILocalVariable(name: "cam", scope: !1402, file: !6, line: 83, type: !64)
!1428 = !DILocation(line: 83, column: 7, scope: !1402)
!1429 = !DILocation(line: 83, column: 11, scope: !1402)
!1430 = !DILocation(line: 83, column: 29, scope: !1402)
!1431 = !DILocation(line: 83, column: 49, scope: !1402)
!1432 = !DILocalVariable(name: "cx", scope: !1402, file: !6, line: 84, type: !13)
!1433 = !DILocation(line: 84, column: 7, scope: !1402)
!1434 = !DILocation(line: 84, column: 14, scope: !1402)
!1435 = !DILocation(line: 84, column: 15, scope: !1402)
!1436 = !DILocation(line: 84, column: 22, scope: !1402)
!1437 = !DILocation(line: 84, column: 21, scope: !1402)
!1438 = !DILocation(line: 84, column: 10, scope: !1402)
!1439 = !DILocalVariable(name: "cy", scope: !1402, file: !6, line: 84, type: !13)
!1440 = !DILocation(line: 84, column: 26, scope: !1402)
!1441 = !DILocation(line: 84, column: 37, scope: !1402)
!1442 = !DILocation(line: 84, column: 32, scope: !1402)
!1443 = !DILocation(line: 84, column: 40, scope: !1402)
!1444 = !DILocation(line: 84, column: 46, scope: !1402)
!1445 = !DILocalVariable(name: "r", scope: !1402, file: !6, line: 84, type: !13)
!1446 = !DILocation(line: 84, column: 54, scope: !1402)
!1447 = !DILocalVariable(name: "c", scope: !1402, file: !6, line: 84, type: !804)
!1448 = !DILocation(line: 84, column: 58, scope: !1402)
!1449 = !DILocation(line: 84, column: 68, scope: !1402)
!1450 = !DILocation(line: 84, column: 70, scope: !1402)
!1451 = !DILocation(line: 84, column: 69, scope: !1402)
!1452 = !DILocation(line: 84, column: 60, scope: !1402)
!1453 = !DILocalVariable(name: "y", scope: !1454, file: !6, line: 86, type: !45)
!1454 = distinct !DILexicalBlock(scope: !1402, file: !6, line: 86, column: 3)
!1455 = !DILocation(line: 86, column: 12, scope: !1454)
!1456 = !DILocation(line: 86, column: 8, scope: !1454)
!1457 = !DILocation(line: 86, column: 17, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !6, line: 86, column: 3)
!1459 = !DILocation(line: 86, column: 19, scope: !1458)
!1460 = !DILocation(line: 86, column: 18, scope: !1458)
!1461 = !DILocation(line: 86, column: 3, scope: !1454)
!1462 = !DILocation(line: 87, column: 13, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1458, file: !6, line: 86, column: 26)
!1464 = !DILocation(line: 87, column: 51, scope: !1463)
!1465 = !DILocation(line: 87, column: 56, scope: !1463)
!1466 = !DILocation(line: 87, column: 64, scope: !1463)
!1467 = !DILocation(line: 87, column: 63, scope: !1463)
!1468 = !DILocation(line: 87, column: 67, scope: !1463)
!1469 = !DILocation(line: 87, column: 68, scope: !1463)
!1470 = !DILocation(line: 87, column: 66, scope: !1463)
!1471 = !DILocation(line: 87, column: 65, scope: !1463)
!1472 = !DILocation(line: 87, column: 5, scope: !1463)
!1473 = !DILocalVariable(name: "x", scope: !1474, file: !6, line: 88, type: !44)
!1474 = distinct !DILexicalBlock(scope: !1463, file: !6, line: 88, column: 5)
!1475 = !DILocation(line: 88, column: 25, scope: !1474)
!1476 = !DILocalVariable(name: "Xi", scope: !1474, file: !6, line: 88, type: !1477)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 48, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 3)
!1480 = !DILocation(line: 88, column: 32, scope: !1474)
!1481 = !DILocation(line: 88, column: 40, scope: !1474)
!1482 = !DILocation(line: 88, column: 75, scope: !1474)
!1483 = !DILocation(line: 88, column: 79, scope: !1474)
!1484 = !DILocation(line: 88, column: 77, scope: !1474)
!1485 = !DILocation(line: 88, column: 83, scope: !1474)
!1486 = !DILocation(line: 88, column: 81, scope: !1474)
!1487 = !DILocation(line: 88, column: 10, scope: !1474)
!1488 = !DILocation(line: 88, column: 87, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1474, file: !6, line: 88, column: 5)
!1490 = !DILocation(line: 88, column: 91, scope: !1489)
!1491 = !DILocation(line: 88, column: 89, scope: !1489)
!1492 = !DILocation(line: 88, column: 5, scope: !1474)
!1493 = !DILocalVariable(name: "sy", scope: !1494, file: !6, line: 89, type: !45)
!1494 = distinct !DILexicalBlock(scope: !1489, file: !6, line: 89, column: 7)
!1495 = !DILocation(line: 89, column: 16, scope: !1494)
!1496 = !DILocalVariable(name: "i", scope: !1494, file: !6, line: 89, type: !45)
!1497 = !DILocation(line: 89, column: 22, scope: !1494)
!1498 = !DILocation(line: 89, column: 25, scope: !1494)
!1499 = !DILocation(line: 89, column: 27, scope: !1494)
!1500 = !DILocation(line: 89, column: 26, scope: !1494)
!1501 = !DILocation(line: 89, column: 28, scope: !1494)
!1502 = !DILocation(line: 89, column: 32, scope: !1494)
!1503 = !DILocation(line: 89, column: 31, scope: !1494)
!1504 = !DILocation(line: 89, column: 34, scope: !1494)
!1505 = !DILocation(line: 89, column: 33, scope: !1494)
!1506 = !DILocation(line: 89, column: 12, scope: !1494)
!1507 = !DILocation(line: 89, column: 37, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1494, file: !6, line: 89, column: 7)
!1509 = !DILocation(line: 89, column: 39, scope: !1508)
!1510 = !DILocation(line: 89, column: 7, scope: !1494)
!1511 = !DILocalVariable(name: "sx", scope: !1512, file: !6, line: 90, type: !45)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !6, line: 90, column: 9)
!1513 = !DILocation(line: 90, column: 18, scope: !1512)
!1514 = !DILocation(line: 90, column: 14, scope: !1512)
!1515 = !DILocation(line: 90, column: 24, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !6, line: 90, column: 9)
!1517 = !DILocation(line: 90, column: 26, scope: !1516)
!1518 = !DILocation(line: 90, column: 9, scope: !1512)
!1519 = !DILocalVariable(name: "s", scope: !1520, file: !6, line: 91, type: !45)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !6, line: 91, column: 11)
!1521 = distinct !DILexicalBlock(scope: !1516, file: !6, line: 90, column: 44)
!1522 = !DILocation(line: 91, column: 20, scope: !1520)
!1523 = !DILocation(line: 91, column: 16, scope: !1520)
!1524 = !DILocation(line: 91, column: 25, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1520, file: !6, line: 91, column: 11)
!1526 = !DILocation(line: 91, column: 27, scope: !1525)
!1527 = !DILocation(line: 91, column: 26, scope: !1525)
!1528 = !DILocation(line: 91, column: 11, scope: !1520)
!1529 = !DILocalVariable(name: "r1", scope: !1530, file: !6, line: 92, type: !16)
!1530 = distinct !DILexicalBlock(scope: !1525, file: !6, line: 91, column: 38)
!1531 = !DILocation(line: 92, column: 20, scope: !1530)
!1532 = !DILocation(line: 92, column: 33, scope: !1530)
!1533 = !DILocation(line: 92, column: 25, scope: !1530)
!1534 = !DILocation(line: 92, column: 24, scope: !1530)
!1535 = !DILocalVariable(name: "dx", scope: !1530, file: !6, line: 92, type: !16)
!1536 = !DILocation(line: 92, column: 38, scope: !1530)
!1537 = !DILocation(line: 92, column: 41, scope: !1530)
!1538 = !DILocation(line: 92, column: 43, scope: !1530)
!1539 = !DILocation(line: 92, column: 53, scope: !1530)
!1540 = !DILocation(line: 92, column: 48, scope: !1530)
!1541 = !DILocation(line: 92, column: 56, scope: !1530)
!1542 = !DILocation(line: 92, column: 69, scope: !1530)
!1543 = !DILocation(line: 92, column: 68, scope: !1530)
!1544 = !DILocation(line: 92, column: 62, scope: !1530)
!1545 = !DILocation(line: 92, column: 61, scope: !1530)
!1546 = !DILocalVariable(name: "r2", scope: !1530, file: !6, line: 93, type: !16)
!1547 = !DILocation(line: 93, column: 20, scope: !1530)
!1548 = !DILocation(line: 93, column: 33, scope: !1530)
!1549 = !DILocation(line: 93, column: 25, scope: !1530)
!1550 = !DILocation(line: 93, column: 24, scope: !1530)
!1551 = !DILocalVariable(name: "dy", scope: !1530, file: !6, line: 93, type: !16)
!1552 = !DILocation(line: 93, column: 38, scope: !1530)
!1553 = !DILocation(line: 93, column: 41, scope: !1530)
!1554 = !DILocation(line: 93, column: 43, scope: !1530)
!1555 = !DILocation(line: 93, column: 53, scope: !1530)
!1556 = !DILocation(line: 93, column: 48, scope: !1530)
!1557 = !DILocation(line: 93, column: 56, scope: !1530)
!1558 = !DILocation(line: 93, column: 69, scope: !1530)
!1559 = !DILocation(line: 93, column: 68, scope: !1530)
!1560 = !DILocation(line: 93, column: 62, scope: !1530)
!1561 = !DILocation(line: 93, column: 61, scope: !1530)
!1562 = !DILocalVariable(name: "d", scope: !1530, file: !6, line: 94, type: !13)
!1563 = !DILocation(line: 94, column: 17, scope: !1530)
!1564 = !DILocation(line: 94, column: 29, scope: !1530)
!1565 = !DILocation(line: 94, column: 31, scope: !1530)
!1566 = !DILocation(line: 94, column: 37, scope: !1530)
!1567 = !DILocation(line: 94, column: 35, scope: !1530)
!1568 = !DILocation(line: 94, column: 40, scope: !1530)
!1569 = !DILocation(line: 94, column: 45, scope: !1530)
!1570 = !DILocation(line: 94, column: 43, scope: !1530)
!1571 = !DILocation(line: 94, column: 48, scope: !1530)
!1572 = !DILocation(line: 94, column: 47, scope: !1530)
!1573 = !DILocation(line: 94, column: 50, scope: !1530)
!1574 = !DILocation(line: 94, column: 23, scope: !1530)
!1575 = !DILocation(line: 95, column: 29, scope: !1530)
!1576 = !DILocation(line: 95, column: 31, scope: !1530)
!1577 = !DILocation(line: 95, column: 37, scope: !1530)
!1578 = !DILocation(line: 95, column: 35, scope: !1530)
!1579 = !DILocation(line: 95, column: 40, scope: !1530)
!1580 = !DILocation(line: 95, column: 45, scope: !1530)
!1581 = !DILocation(line: 95, column: 43, scope: !1530)
!1582 = !DILocation(line: 95, column: 48, scope: !1530)
!1583 = !DILocation(line: 95, column: 47, scope: !1530)
!1584 = !DILocation(line: 95, column: 50, scope: !1530)
!1585 = !DILocation(line: 95, column: 23, scope: !1530)
!1586 = !DILocation(line: 94, column: 56, scope: !1530)
!1587 = !DILocation(line: 95, column: 62, scope: !1530)
!1588 = !DILocation(line: 95, column: 56, scope: !1530)
!1589 = !DILocation(line: 96, column: 38, scope: !1530)
!1590 = !DILocation(line: 96, column: 41, scope: !1530)
!1591 = !DILocation(line: 96, column: 39, scope: !1530)
!1592 = !DILocation(line: 96, column: 48, scope: !1530)
!1593 = !DILocation(line: 96, column: 46, scope: !1530)
!1594 = !DILocation(line: 96, column: 30, scope: !1530)
!1595 = !DILocation(line: 96, column: 58, scope: !1530)
!1596 = !DILocation(line: 96, column: 21, scope: !1530)
!1597 = !DILocation(line: 96, column: 66, scope: !1530)
!1598 = !DILocation(line: 96, column: 65, scope: !1530)
!1599 = !DILocation(line: 96, column: 61, scope: !1530)
!1600 = !DILocation(line: 96, column: 19, scope: !1530)
!1601 = !DILocation(line: 96, column: 15, scope: !1530)
!1602 = !DILocation(line: 97, column: 11, scope: !1530)
!1603 = !DILocation(line: 91, column: 35, scope: !1525)
!1604 = !DILocation(line: 91, column: 11, scope: !1525)
!1605 = distinct !{!1605, !1528, !1606, !1263}
!1606 = !DILocation(line: 97, column: 11, scope: !1520)
!1607 = !DILocation(line: 107, column: 1, scope: !1402)
!1608 = !DILocation(line: 98, column: 18, scope: !1521)
!1609 = !DILocation(line: 98, column: 20, scope: !1521)
!1610 = !DILocation(line: 98, column: 37, scope: !1521)
!1611 = !DILocation(line: 98, column: 29, scope: !1521)
!1612 = !DILocation(line: 98, column: 48, scope: !1521)
!1613 = !DILocation(line: 98, column: 40, scope: !1521)
!1614 = !DILocation(line: 98, column: 59, scope: !1521)
!1615 = !DILocation(line: 98, column: 51, scope: !1521)
!1616 = !DILocation(line: 98, column: 25, scope: !1521)
!1617 = !DILocation(line: 98, column: 62, scope: !1521)
!1618 = !DILocation(line: 98, column: 23, scope: !1521)
!1619 = !DILocation(line: 98, column: 11, scope: !1521)
!1620 = !DILocation(line: 98, column: 13, scope: !1521)
!1621 = !DILocation(line: 98, column: 16, scope: !1521)
!1622 = !DILocation(line: 99, column: 9, scope: !1521)
!1623 = !DILocation(line: 90, column: 32, scope: !1516)
!1624 = !DILocation(line: 90, column: 38, scope: !1516)
!1625 = !DILocation(line: 90, column: 37, scope: !1516)
!1626 = !DILocation(line: 90, column: 9, scope: !1516)
!1627 = distinct !{!1627, !1518, !1628, !1263}
!1628 = !DILocation(line: 99, column: 9, scope: !1512)
!1629 = !DILocation(line: 89, column: 45, scope: !1508)
!1630 = !DILocation(line: 89, column: 7, scope: !1508)
!1631 = distinct !{!1631, !1510, !1632, !1263}
!1632 = !DILocation(line: 99, column: 9, scope: !1494)
!1633 = !DILocation(line: 88, column: 95, scope: !1489)
!1634 = !DILocation(line: 88, column: 5, scope: !1489)
!1635 = distinct !{!1635, !1492, !1636, !1263}
!1636 = !DILocation(line: 99, column: 9, scope: !1474)
!1637 = !DILocation(line: 100, column: 3, scope: !1463)
!1638 = !DILocation(line: 86, column: 23, scope: !1458)
!1639 = !DILocation(line: 86, column: 3, scope: !1458)
!1640 = distinct !{!1640, !1461, !1641, !1263}
!1641 = !DILocation(line: 100, column: 3, scope: !1454)
!1642 = !DILocalVariable(name: "End_t", scope: !1402, file: !6, line: 101, type: !1421)
!1643 = !DILocation(line: 101, column: 10, scope: !1402)
!1644 = !DILocation(line: 101, column: 18, scope: !1402)
!1645 = !DILocation(line: 102, column: 11, scope: !1402)
!1646 = !DILocation(line: 102, column: 64, scope: !1402)
!1647 = !DILocation(line: 102, column: 71, scope: !1402)
!1648 = !DILocation(line: 102, column: 55, scope: !1402)
!1649 = !DILocation(line: 102, column: 3, scope: !1402)
!1650 = !DILocalVariable(name: "f", scope: !1402, file: !6, line: 103, type: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1653, line: 7, baseType: !1654)
!1653 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1655, line: 50, size: 1728, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!1655 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "8b2aa9af4ced87e40d6c436b1f5f8bda")
!1656 = !DILocation(line: 103, column: 9, scope: !1402)
!1657 = !DILocation(line: 103, column: 13, scope: !1402)
!1658 = !DILocation(line: 104, column: 11, scope: !1402)
!1659 = !DILocation(line: 104, column: 33, scope: !1402)
!1660 = !DILocation(line: 104, column: 36, scope: !1402)
!1661 = !DILocation(line: 104, column: 3, scope: !1402)
!1662 = !DILocalVariable(name: "i", scope: !1663, file: !6, line: 105, type: !45)
!1663 = distinct !DILexicalBlock(scope: !1402, file: !6, line: 105, column: 3)
!1664 = !DILocation(line: 105, column: 12, scope: !1663)
!1665 = !DILocation(line: 105, column: 8, scope: !1663)
!1666 = !DILocation(line: 105, column: 17, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !6, line: 105, column: 3)
!1668 = !DILocation(line: 105, column: 19, scope: !1667)
!1669 = !DILocation(line: 105, column: 21, scope: !1667)
!1670 = !DILocation(line: 105, column: 20, scope: !1667)
!1671 = !DILocation(line: 105, column: 18, scope: !1667)
!1672 = !DILocation(line: 105, column: 3, scope: !1663)
!1673 = !DILocation(line: 106, column: 13, scope: !1667)
!1674 = !DILocation(line: 106, column: 34, scope: !1667)
!1675 = !DILocation(line: 106, column: 36, scope: !1667)
!1676 = !DILocation(line: 106, column: 39, scope: !1667)
!1677 = !DILocation(line: 106, column: 28, scope: !1667)
!1678 = !DILocation(line: 106, column: 49, scope: !1667)
!1679 = !DILocation(line: 106, column: 51, scope: !1667)
!1680 = !DILocation(line: 106, column: 54, scope: !1667)
!1681 = !DILocation(line: 106, column: 43, scope: !1667)
!1682 = !DILocation(line: 106, column: 64, scope: !1667)
!1683 = !DILocation(line: 106, column: 66, scope: !1667)
!1684 = !DILocation(line: 106, column: 69, scope: !1667)
!1685 = !DILocation(line: 106, column: 58, scope: !1667)
!1686 = !DILocation(line: 106, column: 5, scope: !1667)
!1687 = !DILocation(line: 105, column: 25, scope: !1667)
!1688 = !DILocation(line: 105, column: 3, scope: !1667)
!1689 = distinct !{!1689, !1672, !1690, !1263}
!1690 = !DILocation(line: 106, column: 71, scope: !1663)
!1691 = distinct !DISubprogram(name: "clamp", linkageName: "_Z5clampd", scope: !6, file: !6, line: 46, type: !84, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !761)
!1692 = !DILocalVariable(name: "x", arg: 1, scope: !1691, file: !6, line: 46, type: !16)
!1693 = !DILocation(line: 46, column: 28, scope: !1691)
!1694 = !DILocation(line: 46, column: 39, scope: !1691)
!1695 = !DILocation(line: 46, column: 40, scope: !1691)
!1696 = !DILocation(line: 46, column: 49, scope: !1691)
!1697 = !DILocation(line: 46, column: 50, scope: !1691)
!1698 = !DILocation(line: 46, column: 59, scope: !1691)
!1699 = !DILocation(line: 46, column: 32, scope: !1691)
!1700 = distinct !DISubprogram(name: "toInt", linkageName: "_Z5toIntd", scope: !6, file: !6, line: 47, type: !348, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !761)
!1701 = !DILocalVariable(name: "x", arg: 1, scope: !1700, file: !6, line: 47, type: !16)
!1702 = !DILocation(line: 47, column: 25, scope: !1700)
!1703 = !DILocation(line: 47, column: 50, scope: !1700)
!1704 = !DILocation(line: 47, column: 44, scope: !1700)
!1705 = !DILocation(line: 47, column: 40, scope: !1700)
!1706 = !DILocation(line: 47, column: 63, scope: !1700)
!1707 = !DILocation(line: 47, column: 29, scope: !1700)
!1708 = distinct !DISubprogram(name: "intersect", linkageName: "_ZNK6Sphere9intersectERK3Ray", scope: !46, file: !6, line: 28, type: !58, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, declaration: !57, retainedNodes: !761)
!1709 = !DILocalVariable(name: "this", arg: 1, scope: !1708, type: !1710, flags: DIFlagArtificial | DIFlagObjectPointer)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1711 = !DILocation(line: 0, scope: !1708)
!1712 = !DILocalVariable(name: "r", arg: 2, scope: !1708, file: !6, line: 28, type: !62)
!1713 = !DILocation(line: 28, column: 31, scope: !1708)
!1714 = !DILocalVariable(name: "op", scope: !1708, file: !6, line: 29, type: !13)
!1715 = !DILocation(line: 29, column: 9, scope: !1708)
!1716 = !DILocation(line: 29, column: 14, scope: !1708)
!1717 = !DILocation(line: 29, column: 16, scope: !1708)
!1718 = !DILocation(line: 29, column: 18, scope: !1708)
!1719 = !DILocation(line: 29, column: 15, scope: !1708)
!1720 = !DILocalVariable(name: "t", scope: !1708, file: !6, line: 30, type: !16)
!1721 = !DILocation(line: 30, column: 12, scope: !1708)
!1722 = !DILocalVariable(name: "eps", scope: !1708, file: !6, line: 30, type: !16)
!1723 = !DILocation(line: 30, column: 15, scope: !1708)
!1724 = !DILocalVariable(name: "b", scope: !1708, file: !6, line: 30, type: !16)
!1725 = !DILocation(line: 30, column: 25, scope: !1708)
!1726 = !DILocation(line: 30, column: 34, scope: !1708)
!1727 = !DILocation(line: 30, column: 36, scope: !1708)
!1728 = !DILocation(line: 30, column: 30, scope: !1708)
!1729 = !DILocalVariable(name: "det", scope: !1708, file: !6, line: 30, type: !16)
!1730 = !DILocation(line: 30, column: 40, scope: !1708)
!1731 = !DILocation(line: 30, column: 44, scope: !1708)
!1732 = !DILocation(line: 30, column: 46, scope: !1708)
!1733 = !DILocation(line: 30, column: 51, scope: !1708)
!1734 = !DILocation(line: 30, column: 47, scope: !1708)
!1735 = !DILocation(line: 30, column: 59, scope: !1708)
!1736 = !DILocation(line: 30, column: 63, scope: !1708)
!1737 = !DILocation(line: 30, column: 58, scope: !1708)
!1738 = !DILocation(line: 31, column: 9, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1708, file: !6, line: 31, column: 9)
!1740 = !DILocation(line: 31, column: 12, scope: !1739)
!1741 = !DILocation(line: 31, column: 9, scope: !1708)
!1742 = !DILocation(line: 31, column: 16, scope: !1739)
!1743 = !DILocation(line: 31, column: 40, scope: !1739)
!1744 = !DILocation(line: 31, column: 35, scope: !1739)
!1745 = !DILocation(line: 31, column: 34, scope: !1739)
!1746 = !DILocation(line: 32, column: 15, scope: !1708)
!1747 = !DILocation(line: 32, column: 17, scope: !1708)
!1748 = !DILocation(line: 32, column: 16, scope: !1708)
!1749 = !DILocation(line: 32, column: 14, scope: !1708)
!1750 = !DILocation(line: 32, column: 22, scope: !1708)
!1751 = !DILocation(line: 32, column: 21, scope: !1708)
!1752 = !DILocation(line: 32, column: 12, scope: !1708)
!1753 = !DILocation(line: 32, column: 28, scope: !1708)
!1754 = !DILocation(line: 32, column: 36, scope: !1708)
!1755 = !DILocation(line: 32, column: 38, scope: !1708)
!1756 = !DILocation(line: 32, column: 37, scope: !1708)
!1757 = !DILocation(line: 32, column: 35, scope: !1708)
!1758 = !DILocation(line: 32, column: 43, scope: !1708)
!1759 = !DILocation(line: 32, column: 42, scope: !1708)
!1760 = !DILocation(line: 32, column: 33, scope: !1708)
!1761 = !DILocation(line: 32, column: 49, scope: !1708)
!1762 = !DILocation(line: 32, column: 5, scope: !1708)
!1763 = !DILocation(line: 33, column: 3, scope: !1708)
!1764 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_smallpt.cpp", scope: !760, file: !760, type: !1765, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !761)
!1765 = !DISubroutineType(types: !761)
!1766 = !DILocation(line: 0, scope: !1764)
