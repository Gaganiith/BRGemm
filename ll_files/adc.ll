; ModuleID = './NPB-serial/dc/adc.c'
source_filename = "./NPB-serial/dc/adc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ADCpar = type { i32, i32, i32, i64, i32, i8*, i8 }
%struct.Factorization = type { i64*, i64*, i64 }
%struct.dc_view = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"ADC\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"prime.\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%ld^%ld\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@adcprime = dso_local global [20 x i64] [i64 421, i64 601, i64 631, i64 701, i64 883, i64 419, i64 443, i64 647, i64 21737, i64 31769, i64 1427, i64 18353, i64 22817, i64 34337, i64 98717, i64 3527, i64 8693, i64 9677, i64 11093, i64 18233], align 16
@LARGE_NUM = dso_local global i64 5764607523034234879, align 8
@maxprmfctr = dso_local global i64 59, align 8
@adcexp = dso_local global [20 x i64] [i64 11, i64 13, i64 17, i64 19, i64 23, i64 23, i64 29, i64 31, i64 37, i64 41, i64 41, i64 43, i64 47, i64 53, i64 59, i64 3, i64 5, i64 7, i64 11, i64 13], align 16
@adcexpS = dso_local global [5 x i64] [i64 11, i64 13, i64 17, i64 19, i64 23], align 16
@adcexpW = dso_local global [10 x i64] [i64 4, i64 40, i64 6, i64 20, i64 42, i64 23, i64 29, i64 31, i64 4, i64 76], align 16
@adcexpA = dso_local global [15 x i64] [i64 4, i64 40, i64 6, i64 20, i64 42, i64 38, i64 26, i64 38, i64 1976, i64 2888, i64 46, i64 16, i64 736, i64 32, i64 92], align 16
@adcexpB = dso_local global [20 x i64] [i64 28, i64 40, i64 42, i64 140, i64 294, i64 38, i64 26, i64 38, i64 1976, i64 2888, i64 62, i64 496, i64 992, i64 928, i64 116, i64 86, i64 4, i64 4, i64 188, i64 344], align 16
@UpPrimeLim = dso_local global i64 100000, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"view.sz\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%s.%s.%d\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"CalculateVeiwSizes: Can't open file: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Selection:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" %lld\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0AView Size: %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"\0ATotal in bytes: %lld  Number of tuples: %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"View sizes are written into %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"ParseParFile: Can't open file: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@adcKeyword = internal global [7 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.23 = private unnamed_addr constant [33 x i8] c"WriteADCPar: can't open file %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"attrNum=%d\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"measuresNum=%d\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"tuplesNum=%lld\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"class=%c\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"INVERSE_ENDIAN=%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"fileName=%s\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"********************* ADC paramters\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" id\09\09%d\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c" attributes \09%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c" measures   \09%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c" tuples     \09%lld\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" class\09\09%c\0A\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c" filename       %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"***********************************\0A\00", align 1
@adcgen = dso_local global [20 x i64] [i64 2, i64 7, i64 3, i64 2, i64 2, i64 2, i64 2, i64 5, i64 31, i64 7, i64 2, i64 3, i64 3, i64 3, i64 2, i64 5, i64 2, i64 2, i64 2, i64 3], align 16
@GetNextTuple.tuplenum = internal global i32 0, align 4
@GetNextTuple.maxdim = internal constant i32 20, align 4
@GetNextTuple.measbound = internal global i32 31415, align 4
@GetNextTuple.seed = internal global [20 x i64] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [46 x i8] c"GetNextTuple: number of dcdim is too large:%d\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"GetNextTuple: number of mes is too large:%d\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"Prime \09Generator \09Seed\0A\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c" %ld\09 %ld\09\09 %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%s.dat.%d\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"GenerateADC: Can't open file: %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"\0AGenerateADC: writing %d tuples of %d attributes and %d measures to %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Binary ADC file %s \00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"have been generated.\0A\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"attrNum\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"measuresNum\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"tuplesNum\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"INVERSE_ENDIAN\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"fileName\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"class\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap4(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %3, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 3
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8, i8* %3, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 %12, i8* %14, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %3, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8, i8* %3, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %23, i8* %25, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap8(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %3, align 1
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 7
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8, i8* %3, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 7
  store i8 %12, i8* %14, align 1
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %3, align 1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 6
  %20 = load i8, i8* %19, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8, i8* %3, align 1
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 6
  store i8 %23, i8* %25, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %3, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  store i8 %31, i8* %33, align 1
  %34 = load i8, i8* %3, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %3, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 3
  store i8 %42, i8* %44, align 1
  %45 = load i8, i8* %3, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  store i8 %45, i8* %47, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initADCpar(%struct.ADCpar*) #0 {
  %2 = alloca %struct.ADCpar*, align 8
  store %struct.ADCpar* %0, %struct.ADCpar** %2, align 8
  %3 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %4 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %6 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %5, i32 0, i32 1
  store i32 5, i32* %6, align 4
  %7 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %8 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %7, i32 0, i32 2
  store i32 1, i32* %8, align 8
  %9 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %10 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %9, i32 0, i32 3
  store i64 100, i64* %10, align 8
  %11 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %12 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %11, i32 0, i32 4
  store i32 0, i32* %12, align 8
  %13 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %14 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %13, i32 0, i32 5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %14, align 8
  %15 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %16 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %15, i32 0, i32 6
  store i8 85, i8* %16, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ShowFactorization(%struct.Factorization*) #0 {
  %2 = alloca %struct.Factorization*, align 8
  %3 = alloca i32, align 4
  store %struct.Factorization* %0, %struct.Factorization** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %3, align 4
  br label %4

; <label>:4:                                      ; preds = %70, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %8 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %73

; <label>:11:                                     ; preds = %4
  %12 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %13 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 1
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %11
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %26

; <label>:26:                                     ; preds = %23, %20
  br label %73

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %30, %27
  %34 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %35 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %33
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %44 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %45 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 %50)
  br label %69

; <label>:52:                                     ; preds = %33
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %55 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.Factorization*, %struct.Factorization** %2, align 8
  %62 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 %60, i64 %67)
  br label %69

; <label>:69:                                     ; preds = %52, %42
  br label %70

; <label>:70:                                     ; preds = %69
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %4

; <label>:73:                                     ; preds = %26, %4
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ListFirstPrimes(i64, i64*) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = getelementptr inbounds i64, i64* %9, i64 %10
  store i64 2, i64* %12, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 3, i64* %16, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 5, i64* %20, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %5, align 8
  %24 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 7, i64* %24, align 8
  store i64 8, i64* %7, align 8
  br label %25

; <label>:25:                                     ; preds = %72, %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %75

; <label>:29:                                     ; preds = %25
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  br label %30

; <label>:30:                                     ; preds = %59, %29
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = mul nsw i64 %34, %38
  %40 = load i64, i64* %7, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %62

; <label>:42:                                     ; preds = %30
  %43 = load i64, i64* %7, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sdiv i64 %48, %52
  %54 = mul nsw i64 %47, %53
  %55 = sub nsw i64 %43, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %42
  store i32 1, i32* %6, align 4
  br label %62

; <label>:58:                                     ; preds = %42
  br label %59

; <label>:59:                                     ; preds = %58
  %60 = load i64, i64* %8, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %30

; <label>:62:                                     ; preds = %57, %30
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = load i64*, i64** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %5, align 8
  %70 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %66, i64* %70, align 8
  br label %71

; <label>:71:                                     ; preds = %65, %62
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %25

; <label>:75:                                     ; preds = %25
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @GetLCM(i64, %struct.Factorization**, i64*) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.Factorization**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.Factorization** %1, %struct.Factorization*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i64, i64* @maxprmfctr, align 8
  %18 = add nsw i64 %17, 1
  %19 = call noalias i8* @calloc(i64 %18, i64 4) #4
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %11, align 8
  store i64 1, i64* %12, align 8
  store i64 2, i64* %13, align 8
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 2, i32* %16, align 4
  store i32 0, i32* %8, align 4
  br label %21

; <label>:21:                                     ; preds = %32, %3
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @maxprmfctr, align 8
  %25 = add nsw i64 %24, 1
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %35

; <label>:27:                                     ; preds = %21
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %21

; <label>:35:                                     ; preds = %21
  store i32 0, i32* %8, align 4
  br label %36

; <label>:36:                                     ; preds = %175, %45, %35
  %37 = load i64, i64* %5, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %180

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = sdiv i64 %41, 2
  %43 = mul nsw i64 2, %42
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %39
  %46 = load i64, i64* %5, align 8
  %47 = ashr i64 %46, 1
  store i64 %47, i64* %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %36

; <label>:50:                                     ; preds = %39
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %61

; <label>:61:                                     ; preds = %172, %50
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %65, 1
  %67 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %64, i64 %66
  %68 = load %struct.Factorization*, %struct.Factorization** %67, align 8
  %69 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %63, %70
  br i1 %71, label %72, label %175

; <label>:72:                                     ; preds = %61
  %73 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %74 = load i64, i64* %13, align 8
  %75 = sub nsw i64 %74, 1
  %76 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %73, i64 %75
  %77 = load %struct.Factorization*, %struct.Factorization** %76, align 8
  %78 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %16, align 4
  %85 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %86 = load i64, i64* %13, align 8
  %87 = sub nsw i64 %86, 1
  %88 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %85, i64 %87
  %89 = load %struct.Factorization*, %struct.Factorization** %88, align 8
  %90 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %97

; <label>:97:                                     ; preds = %154, %72
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %100, i64 %102
  %104 = load %struct.Factorization*, %struct.Factorization** %103, align 8
  %105 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %99, %106
  br i1 %107, label %108, label %157

; <label>:108:                                    ; preds = %97
  %109 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %109, i64 %111
  %113 = load %struct.Factorization*, %struct.Factorization** %112, align 8
  %114 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %108
  br label %157

; <label>:122:                                    ; preds = %108
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %125, i64 %127
  %129 = load %struct.Factorization*, %struct.Factorization** %128, align 8
  %130 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %124, %135
  br i1 %136, label %137, label %138

; <label>:137:                                    ; preds = %122
  br label %154

; <label>:138:                                    ; preds = %122
  %139 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %139, i64 %141
  %143 = load %struct.Factorization*, %struct.Factorization** %142, align 8
  %144 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %15, align 4
  br label %157

; <label>:154:                                    ; preds = %137
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %10, align 4
  br label %97

; <label>:157:                                    ; preds = %138, %121, %97
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %171

; <label>:165:                                    ; preds = %157
  %166 = load i32, i32* %15, align 4
  %167 = load i32*, i32** %11, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

; <label>:171:                                    ; preds = %165, %157
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %61

; <label>:175:                                    ; preds = %61
  %176 = load i64, i64* %5, align 8
  %177 = ashr i64 %176, 1
  store i64 %177, i64* %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %36

; <label>:180:                                    ; preds = %36
  store i32 0, i32* %8, align 4
  br label %181

; <label>:181:                                    ; preds = %214, %180
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = load i64, i64* @maxprmfctr, align 8
  %185 = icmp sle i64 %183, %184
  br i1 %185, label %186, label %217

; <label>:186:                                    ; preds = %181
  br label %187

; <label>:187:                                    ; preds = %206, %186
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %213

; <label>:194:                                    ; preds = %187
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %12, align 8
  %198 = mul nsw i64 %197, %196
  store i64 %198, i64* %12, align 8
  %199 = load i64, i64* %12, align 8
  %200 = load i64, i64* @LARGE_NUM, align 8
  %201 = load i64, i64* @maxprmfctr, align 8
  %202 = sdiv i64 %200, %201
  %203 = icmp sgt i64 %199, %202
  br i1 %203, label %204, label %206

; <label>:204:                                    ; preds = %194
  %205 = load i64, i64* %12, align 8
  store i64 %205, i64* %4, align 8
  br label %221

; <label>:206:                                    ; preds = %194
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %210, align 4
  br label %187

; <label>:213:                                    ; preds = %187
  br label %214

; <label>:214:                                    ; preds = %213
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %181

; <label>:217:                                    ; preds = %181
  %218 = load i32*, i32** %11, align 8
  %219 = bitcast i32* %218 to i8*
  call void @free(i8* %219) #4
  %220 = load i64, i64* %12, align 8
  store i64 %220, i64* %4, align 8
  br label %221

; <label>:221:                                    ; preds = %217, %204
  %222 = load i64, i64* %4, align 8
  ret i64 %222
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ExtendFactors(i64, i64, %struct.Factorization*, %struct.Factorization**) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Factorization*, align 8
  %8 = alloca %struct.Factorization**, align 8
  %9 = alloca %struct.Factorization*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.Factorization* %2, %struct.Factorization** %7, align 8
  store %struct.Factorization** %3, %struct.Factorization*** %8, align 8
  %14 = load %struct.Factorization**, %struct.Factorization*** %8, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = sdiv i64 %15, %16
  %18 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %14, i64 %17
  %19 = load %struct.Factorization*, %struct.Factorization** %18, align 8
  store %struct.Factorization* %19, %struct.Factorization** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %20

; <label>:20:                                     ; preds = %167, %4
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %24 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %170

; <label>:27:                                     ; preds = %20
  %28 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %29 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %27
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

; <label>:39:                                     ; preds = %36
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %42 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 %40, i64* %46, align 8
  %47 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %48 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 1, i64* %52, align 8
  br label %53

; <label>:53:                                     ; preds = %39, %36
  br label %170

; <label>:54:                                     ; preds = %27
  %55 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %56 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %93

; <label>:64:                                     ; preds = %54
  %65 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %66 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %73 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %71, i64* %77, align 8
  %78 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %79 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %86 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  store i64 %84, i64* %90, align 8
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %166

; <label>:93:                                     ; preds = %54
  %94 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %95 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %131

; <label>:103:                                    ; preds = %93
  %104 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %105 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %112 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %110, i64* %116, align 8
  %117 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %118 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %117, i32 0, i32 1
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  %125 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %126 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %125, i32 0, i32 1
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %124, i64* %130, align 8
  store i32 1, i32* %10, align 4
  br label %165

; <label>:131:                                    ; preds = %93
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %138

; <label>:138:                                    ; preds = %135, %131
  %139 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %140 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %147 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %146, i32 0, i32 0
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  store i64 %145, i64* %151, align 8
  %152 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %153 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %152, i32 0, i32 1
  %154 = load i64*, i64** %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.Factorization*, %struct.Factorization** %7, align 8
  %160 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  store i64 %158, i64* %164, align 8
  br label %165

; <label>:165:                                    ; preds = %138, %103
  br label %166

; <label>:166:                                    ; preds = %165, %64
  br label %167

; <label>:167:                                    ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %20

; <label>:170:                                    ; preds = %53, %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @GetFactorization(i64, i64*, %struct.Factorization**) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.Factorization**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Factorization*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.Factorization** %2, %struct.Factorization*** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = call noalias i8* @malloc(i64 48) #4
  %15 = bitcast i8* %14 to %struct.Factorization*
  store %struct.Factorization* %15, %struct.Factorization** %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %16 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %17 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %16, i32 0, i32 2
  store i64 2, i64* %17, align 8
  %18 = call noalias i8* @malloc(i64 16) #4
  %19 = bitcast i8* %18 to i64*
  %20 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %21 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %20, i32 0, i32 0
  store i64* %19, i64** %21, align 8
  %22 = call noalias i8* @malloc(i64 16) #4
  %23 = bitcast i8* %22 to i64*
  %24 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %25 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %24, i32 0, i32 1
  store i64* %23, i64** %25, align 8
  store i64 0, i64* %7, align 8
  br label %26

; <label>:26:                                     ; preds = %43, %3
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %29 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %46

; <label>:32:                                     ; preds = %26
  %33 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %34 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 1, i64* %37, align 8
  %38 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %39 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 0, i64* %42, align 8
  br label %43

; <label>:43:                                     ; preds = %32
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %7, align 8
  br label %26

; <label>:46:                                     ; preds = %26
  %47 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %48 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  store i64 2, i64* %50, align 8
  %51 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %52 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 1, i64* %54, align 8
  %55 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %56 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %57 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %56, i64 2
  store %struct.Factorization* %55, %struct.Factorization** %57, align 8
  %58 = call noalias i8* @malloc(i64 48) #4
  %59 = bitcast i8* %58 to %struct.Factorization*
  store %struct.Factorization* %59, %struct.Factorization** %9, align 8
  %60 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %61 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %60, i32 0, i32 2
  store i64 2, i64* %61, align 8
  %62 = call noalias i8* @malloc(i64 16) #4
  %63 = bitcast i8* %62 to i64*
  %64 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %65 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %64, i32 0, i32 0
  store i64* %63, i64** %65, align 8
  %66 = call noalias i8* @malloc(i64 16) #4
  %67 = bitcast i8* %66 to i64*
  %68 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %69 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %68, i32 0, i32 1
  store i64* %67, i64** %69, align 8
  store i64 0, i64* %7, align 8
  br label %70

; <label>:70:                                     ; preds = %87, %46
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %73 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %90

; <label>:76:                                     ; preds = %70
  %77 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %78 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 1, i64* %81, align 8
  %82 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %83 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %82, i32 0, i32 1
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

; <label>:87:                                     ; preds = %76
  %88 = load i64, i64* %7, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %70

; <label>:90:                                     ; preds = %70
  %91 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %92 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 0
  store i64 3, i64* %94, align 8
  %95 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %96 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 1, i64* %98, align 8
  %99 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %100 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %101 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %100, i64 3
  store %struct.Factorization* %99, %struct.Factorization** %101, align 8
  store i64 0, i64* %7, align 8
  br label %102

; <label>:102:                                    ; preds = %233, %90
  %103 = load i64, i64* %7, align 8
  %104 = load i64*, i64** %5, align 8
  %105 = load i64, i64* %4, align 8
  %106 = sub nsw i64 %105, 1
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %103, %108
  br i1 %109, label %110, label %236

; <label>:110:                                    ; preds = %102
  store i64 0, i64* %10, align 8
  %111 = load i64, i64* %7, align 8
  store i64 %111, i64* %11, align 8
  br label %112

; <label>:112:                                    ; preds = %115, %110
  %113 = load i64, i64* %11, align 8
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %120

; <label>:115:                                    ; preds = %112
  %116 = load i64, i64* %10, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = ashr i64 %118, 1
  store i64 %119, i64* %11, align 8
  br label %112

; <label>:120:                                    ; preds = %112
  %121 = call noalias i8* @malloc(i64 48) #4
  %122 = bitcast i8* %121 to %struct.Factorization*
  store %struct.Factorization* %122, %struct.Factorization** %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %125 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %10, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %120
  store i64 1, i64* %10, align 8
  br label %129

; <label>:129:                                    ; preds = %128, %120
  %130 = load i64, i64* %10, align 8
  %131 = mul i64 %130, 8
  %132 = call noalias i8* @malloc(i64 %131) #4
  %133 = bitcast i8* %132 to i64*
  %134 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %135 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %134, i32 0, i32 0
  store i64* %133, i64** %135, align 8
  %136 = load i64, i64* %10, align 8
  %137 = mul i64 %136, 8
  %138 = call noalias i8* @malloc(i64 %137) #4
  %139 = bitcast i8* %138 to i64*
  %140 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %141 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %140, i32 0, i32 1
  store i64* %139, i64** %141, align 8
  store i64 0, i64* %8, align 8
  br label %142

; <label>:142:                                    ; preds = %159, %129
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %145 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %148, label %162

; <label>:148:                                    ; preds = %142
  %149 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %150 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  store i64 1, i64* %153, align 8
  %154 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %155 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %154, i32 0, i32 1
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  store i64 0, i64* %158, align 8
  br label %159

; <label>:159:                                    ; preds = %148
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %142

; <label>:162:                                    ; preds = %142
  store i64 1, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %163

; <label>:163:                                    ; preds = %212, %162
  %164 = load i64*, i64** %5, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %5, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds i64, i64* %168, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = mul nsw i64 %167, %171
  %173 = load i64, i64* %7, align 8
  %174 = icmp sle i64 %172, %173
  br i1 %174, label %175, label %215

; <label>:175:                                    ; preds = %163
  %176 = load i64*, i64** %5, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %13, align 8
  %180 = load i64, i64* %7, align 8
  %181 = load i64, i64* %13, align 8
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* %13, align 8
  %184 = sdiv i64 %182, %183
  %185 = mul nsw i64 %181, %184
  %186 = sub nsw i64 %180, %185
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %211

; <label>:188:                                    ; preds = %175
  %189 = load i64, i64* %13, align 8
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %13, align 8
  %191 = load i64, i64* %13, align 8
  %192 = mul nsw i64 %190, %191
  %193 = load i64, i64* %7, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %205

; <label>:195:                                    ; preds = %188
  %196 = load i64, i64* %13, align 8
  %197 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %198 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  store i64 %196, i64* %200, align 8
  %201 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %202 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  store i64 2, i64* %204, align 8
  br label %210

; <label>:205:                                    ; preds = %188
  %206 = load i64, i64* %7, align 8
  %207 = load i64, i64* %13, align 8
  %208 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %209 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  call void @ExtendFactors(i64 %206, i64 %207, %struct.Factorization* %208, %struct.Factorization** %209)
  br label %210

; <label>:210:                                    ; preds = %205, %195
  br label %215

; <label>:211:                                    ; preds = %175
  br label %212

; <label>:212:                                    ; preds = %211
  %213 = load i64, i64* %8, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %8, align 8
  br label %163

; <label>:215:                                    ; preds = %210, %163
  %216 = load i64, i64* %12, align 8
  %217 = icmp eq i64 %216, 1
  br i1 %217, label %218, label %228

; <label>:218:                                    ; preds = %215
  %219 = load i64, i64* %7, align 8
  %220 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %221 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 0
  store i64 %219, i64* %223, align 8
  %224 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %225 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %224, i32 0, i32 1
  %226 = load i64*, i64** %225, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  store i64 1, i64* %227, align 8
  br label %228

; <label>:228:                                    ; preds = %218, %215
  %229 = load %struct.Factorization*, %struct.Factorization** %9, align 8
  %230 = load %struct.Factorization**, %struct.Factorization*** %6, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %230, i64 %231
  store %struct.Factorization* %229, %struct.Factorization** %232, align 8
  br label %233

; <label>:233:                                    ; preds = %228
  %234 = load i64, i64* %7, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %7, align 8
  br label %102

; <label>:236:                                    ; preds = %102
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CompareSizesByValue(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %13, %15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %2
  store i32 1, i32* %7, align 4
  br label %28

; <label>:19:                                     ; preds = %2
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %21, %23
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %27

; <label>:27:                                     ; preds = %26, %19
  br label %28

; <label>:28:                                     ; preds = %27, %18
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CompareViewsBySize(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dc_view*, align 8
  %6 = alloca %struct.dc_view*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.dc_view*
  store %struct.dc_view* %9, %struct.dc_view** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dc_view*
  store %struct.dc_view* %11, %struct.dc_view** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.dc_view*, %struct.dc_view** %5, align 8
  %13 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dc_view*, %struct.dc_view** %6, align 8
  %16 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %2
  store i32 1, i32* %7, align 4
  br label %50

; <label>:20:                                     ; preds = %2
  %21 = load %struct.dc_view*, %struct.dc_view** %5, align 8
  %22 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dc_view*, %struct.dc_view** %6, align 8
  %25 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %20
  store i32 -1, i32* %7, align 4
  br label %49

; <label>:29:                                     ; preds = %20
  %30 = load %struct.dc_view*, %struct.dc_view** %5, align 8
  %31 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dc_view*, %struct.dc_view** %6, align 8
  %34 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %29
  store i32 1, i32* %7, align 4
  br label %48

; <label>:38:                                     ; preds = %29
  %39 = load %struct.dc_view*, %struct.dc_view** %5, align 8
  %40 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.dc_view*, %struct.dc_view** %6, align 8
  %43 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %38
  store i32 -1, i32* %7, align 4
  br label %47

; <label>:47:                                     ; preds = %46, %38
  br label %48

; <label>:48:                                     ; preds = %47, %37
  br label %49

; <label>:49:                                     ; preds = %48, %28
  br label %50

; <label>:50:                                     ; preds = %49, %19
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CalculateVeiwSizes(%struct.ADCpar*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ADCpar*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Factorization**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dc_view*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct._IO_FILE*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.ADCpar* %0, %struct.ADCpar** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %26 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %27 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %26, i32 0, i32 5
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %30 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %33 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %32, i32 0, i32 6
  %34 = load i8, i8* %33, align 8
  store i8 %34, i8* %9, align 1
  %35 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %36 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  %38 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %39 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %41 = load i64, i64* @UpPrimeLim, align 8
  %42 = call noalias i8* @calloc(i64 %41, i64 8) #4
  %43 = bitcast i8* %42 to %struct.Factorization**
  store %struct.Factorization** %43, %struct.Factorization*** %14, align 8
  %44 = load i64, i64* @UpPrimeLim, align 8
  %45 = call noalias i8* @calloc(i64 %44, i64 8) #4
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %15, align 8
  %47 = load i64, i64* @UpPrimeLim, align 8
  %48 = load i64*, i64** %15, align 8
  %49 = call i64 @ListFirstPrimes(i64 %47, i64* %48)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  %54 = call noalias i8* @calloc(i64 %53, i64 16) #4
  %55 = bitcast i8* %54 to %struct.dc_view*
  store %struct.dc_view* %55, %struct.dc_view** %17, align 8
  store i8* null, i8** %19, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %20, align 8
  store i32 1, i32* %21, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 1, %56
  store i32 %57, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i64 0, i64* %24, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %15, align 8
  %61 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  call void @GetFactorization(i64 %59, i64* %60, %struct.Factorization** %61)
  store i64 1, i64* %12, align 8
  br label %62

; <label>:62:                                     ; preds = %108, %1
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %111

; <label>:68:                                     ; preds = %62
  store i64 1, i64* %25, align 8
  %69 = load i8, i8* %9, align 1
  %70 = sext i8 %69 to i32
  switch i32 %70, label %91 [
    i32 85, label %71
    i32 83, label %75
    i32 87, label %79
    i32 65, label %83
    i32 66, label %87
  ]

; <label>:71:                                     ; preds = %68
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %74 = call i64 @GetLCM(i64 %72, %struct.Factorization** %73, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @adcexp, i32 0, i32 0))
  store i64 %74, i64* %25, align 8
  br label %91

; <label>:75:                                     ; preds = %68
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %78 = call i64 @GetLCM(i64 %76, %struct.Factorization** %77, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @adcexpS, i32 0, i32 0))
  store i64 %78, i64* %25, align 8
  br label %91

; <label>:79:                                     ; preds = %68
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %82 = call i64 @GetLCM(i64 %80, %struct.Factorization** %81, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @adcexpW, i32 0, i32 0))
  store i64 %82, i64* %25, align 8
  br label %91

; <label>:83:                                     ; preds = %68
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %86 = call i64 @GetLCM(i64 %84, %struct.Factorization** %85, i64* getelementptr inbounds ([15 x i64], [15 x i64]* @adcexpA, i32 0, i32 0))
  store i64 %86, i64* %25, align 8
  br label %91

; <label>:87:                                     ; preds = %68
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %90 = call i64 @GetLCM(i64 %88, %struct.Factorization** %89, i64* getelementptr inbounds ([20 x i64], [20 x i64]* @adcexpB, i32 0, i32 0))
  store i64 %90, i64* %25, align 8
  br label %91

; <label>:91:                                     ; preds = %68, %87, %83, %79, %75, %71
  %92 = load i64, i64* %25, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %97

; <label>:95:                                     ; preds = %91
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %25, align 8
  br label %97

; <label>:97:                                     ; preds = %95, %91
  %98 = load i64, i64* %25, align 8
  %99 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %99, i64 %100
  %102 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %101, i32 0, i32 0
  store i64 %98, i64* %102, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %104, i64 %105
  %107 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %106, i32 0, i32 1
  store i64 %103, i64* %107, align 8
  br label %108

; <label>:108:                                    ; preds = %97
  %109 = load i64, i64* %12, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %12, align 8
  br label %62

; <label>:111:                                    ; preds = %62
  store i64 0, i64* %12, align 8
  br label %112

; <label>:112:                                    ; preds = %161, %111
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @UpPrimeLim, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %164

; <label>:116:                                    ; preds = %112
  %117 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %117, i64 %118
  %120 = load %struct.Factorization*, %struct.Factorization** %119, align 8
  %121 = icmp ne %struct.Factorization* %120, null
  br i1 %121, label %123, label %122

; <label>:122:                                    ; preds = %116
  br label %161

; <label>:123:                                    ; preds = %116
  %124 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %124, i64 %125
  %127 = load %struct.Factorization*, %struct.Factorization** %126, align 8
  %128 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = icmp ne i64* %129, null
  br i1 %130, label %131, label %139

; <label>:131:                                    ; preds = %123
  %132 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %133 = load i64, i64* %12, align 8
  %134 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %132, i64 %133
  %135 = load %struct.Factorization*, %struct.Factorization** %134, align 8
  %136 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = bitcast i64* %137 to i8*
  call void @free(i8* %138) #4
  br label %139

; <label>:139:                                    ; preds = %131, %123
  %140 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %140, i64 %141
  %143 = load %struct.Factorization*, %struct.Factorization** %142, align 8
  %144 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %143, i32 0, i32 1
  %145 = load i64*, i64** %144, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %155

; <label>:147:                                    ; preds = %139
  %148 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %148, i64 %149
  %151 = load %struct.Factorization*, %struct.Factorization** %150, align 8
  %152 = getelementptr inbounds %struct.Factorization, %struct.Factorization* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = bitcast i64* %153 to i8*
  call void @free(i8* %154) #4
  br label %155

; <label>:155:                                    ; preds = %147, %139
  %156 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.Factorization*, %struct.Factorization** %156, i64 %157
  %159 = load %struct.Factorization*, %struct.Factorization** %158, align 8
  %160 = bitcast %struct.Factorization* %159 to i8*
  call void @free(i8* %160) #4
  br label %161

; <label>:161:                                    ; preds = %155, %122
  %162 = load i64, i64* %12, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %12, align 8
  br label %112

; <label>:164:                                    ; preds = %112
  %165 = load %struct.Factorization**, %struct.Factorization*** %14, align 8
  %166 = bitcast %struct.Factorization** %165 to i8*
  call void @free(i8* %166) #4
  %167 = load i64*, i64** %15, align 8
  %168 = bitcast i64* %167 to i8*
  call void @free(i8* %168) #4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8** %18, align 8
  %169 = call noalias i8* @calloc(i64 1024, i64 1) #4
  store i8* %169, i8** %19, align 8
  %170 = load i8*, i8** %19, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = load i32, i32* %8, align 4
  %174 = call i32 (i8*, i8*, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %171, i8* %172, i32 %173) #4
  %175 = load i8*, i8** %19, align 8
  %176 = call %struct._IO_FILE* @fopen(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %176, %struct._IO_FILE** %20, align 8
  %177 = icmp ne %struct._IO_FILE* %176, null
  br i1 %177, label %182, label %178

; <label>:178:                                    ; preds = %164
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = load i8*, i8** %19, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0), i8* %180)
  store i32 0, i32* %2, align 4
  br label %277

; <label>:182:                                    ; preds = %164
  %183 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %184 = bitcast %struct.dc_view* %183 to i8*
  %185 = load i32, i32* %10, align 4
  %186 = shl i32 1, %185
  %187 = sext i32 %186 to i64
  call void @qsort(i8* %184, i64 %187, i64 16, i32 (i8*, i8*)* @CompareViewsBySize)
  %188 = load i8, i8* %9, align 1
  %189 = sext i8 %188 to i32
  switch i32 %189, label %195 [
    i32 85, label %190
    i32 83, label %191
    i32 87, label %192
    i32 65, label %193
    i32 66, label %194
  ]

; <label>:190:                                    ; preds = %182
  store i32 8, i32* %23, align 4
  br label %195

; <label>:191:                                    ; preds = %182
  br label %195

; <label>:192:                                    ; preds = %182
  br label %195

; <label>:193:                                    ; preds = %182
  store i32 64, i32* %23, align 4
  br label %195

; <label>:194:                                    ; preds = %182
  store i32 16384, i32* %23, align 4
  br label %195

; <label>:195:                                    ; preds = %182, %194, %193, %192, %191, %190
  %196 = load i32, i32* %21, align 4
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %12, align 8
  br label %198

; <label>:198:                                    ; preds = %259, %195
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %22, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp slt i64 %199, %201
  br i1 %202, label %203, label %264

; <label>:203:                                    ; preds = %198
  store i64 0, i64* %5, align 8
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0))
  %206 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %206, i64 %207
  %209 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %24, align 8
  store i64 0, i64* %13, align 8
  br label %211

; <label>:211:                                    ; preds = %230, %203
  %212 = load i64, i64* %13, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = icmp slt i64 %212, %214
  br i1 %215, label %216, label %233

; <label>:216:                                    ; preds = %211
  %217 = load i64, i64* %24, align 8
  %218 = load i64, i64* %13, align 8
  %219 = ashr i64 %217, %218
  %220 = and i64 %219, 1
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

; <label>:222:                                    ; preds = %216
  %223 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %224 = load i64, i64* %13, align 8
  %225 = add nsw i64 %224, 1
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 %225)
  %227 = load i64, i64* %5, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %5, align 8
  br label %229

; <label>:229:                                    ; preds = %222, %216
  br label %230

; <label>:230:                                    ; preds = %229
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %13, align 8
  br label %211

; <label>:233:                                    ; preds = %211
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %235 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %236 = load i64, i64* %12, align 8
  %237 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %235, i64 %236
  %238 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), i64 %239)
  %241 = load i64, i64* %5, align 8
  %242 = mul i64 4, %241
  %243 = add i64 8, %242
  %244 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %245 = load i64, i64* %12, align 8
  %246 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %244, i64 %245
  %247 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = mul i64 %243, %248
  %250 = load i64, i64* %4, align 8
  %251 = add i64 %250, %249
  store i64 %251, i64* %4, align 8
  %252 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %253 = load i64, i64* %12, align 8
  %254 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %252, i64 %253
  %255 = getelementptr inbounds %struct.dc_view, %struct.dc_view* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %6, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %6, align 8
  br label %259

; <label>:259:                                    ; preds = %233
  %260 = load i32, i32* %23, align 4
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %12, align 8
  %263 = add nsw i64 %262, %261
  store i64 %263, i64* %12, align 8
  br label %198

; <label>:264:                                    ; preds = %198
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %266 = load i64, i64* %4, align 8
  %267 = load i64, i64* %6, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %265, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i32 0, i32 0), i64 %266, i64 %267)
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %270 = call i32 @fclose(%struct._IO_FILE* %269)
  %271 = load %struct.dc_view*, %struct.dc_view** %17, align 8
  %272 = bitcast %struct.dc_view* %271 to i8*
  call void @free(i8* %272) #4
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %274 = load i8*, i8** %19, align 8
  %275 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %274)
  %276 = load i8*, i8** %19, align 8
  call void @free(i8* %276) #4
  store i32 1, i32* %2, align 4
  br label %277

; <label>:277:                                    ; preds = %264, %178
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ParseParFile(i8*, %struct.ADCpar*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ADCpar*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ADCpar* %1, %struct.ADCpar** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i32 46) #5
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = call %struct._IO_FILE* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store %struct._IO_FILE* %16, %struct._IO_FILE** %7, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %155

; <label>:22:                                     ; preds = %2
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = call i8* @strchr(i8* %27, i32 46) #5
  store i8* %28, i8** %8, align 8
  br label %29

; <label>:29:                                     ; preds = %25, %22
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

; <label>:32:                                     ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %36 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %35, i32 0, i32 0
  %37 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %36) #4
  br label %38

; <label>:38:                                     ; preds = %32, %29
  store i32 0, i32* %9, align 4
  br label %39

; <label>:39:                                     ; preds = %116, %38
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %42 = call i8* @fgets(i8* %40, i32 1024, %struct._IO_FILE* %41)
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %119

; <label>:44:                                     ; preds = %39
  store i32 0, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x i8*], [7 x i8*]* @adcKeyword, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %11, align 8
  br label %49

; <label>:49:                                     ; preds = %109, %44
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %116

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %54 = call i8* @strstr(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #5
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %52
  br label %109

; <label>:57:                                     ; preds = %52
  %58 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %59 = load i8*, i8** %11, align 8
  %60 = call i8* @strstr(i8* %58, i8* %59) #5
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %108

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i32 0, i32 0
  %64 = load i8*, i8** %11, align 8
  %65 = call i64 @strlen(i8* %64) #5
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  store i8* %67, i8** %12, align 8
  %68 = load i32, i32* %10, align 4
  switch i32 %68, label %107 [
    i32 0, label %69
    i32 1, label %74
    i32 2, label %79
    i32 3, label %84
    i32 4, label %85
    i32 5, label %90
    i32 6, label %102
  ]

; <label>:69:                                     ; preds = %62
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %72 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %71, i32 0, i32 1
  %73 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %72) #4
  br label %107

; <label>:74:                                     ; preds = %62
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %77 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %76, i32 0, i32 2
  %78 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %77) #4
  br label %107

; <label>:79:                                     ; preds = %62
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %82 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %81, i32 0, i32 3
  %83 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i64* %82) #4
  br label %107

; <label>:84:                                     ; preds = %62
  br label %107

; <label>:85:                                     ; preds = %62
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %88 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %87, i32 0, i32 4
  %89 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32* %88) #4
  br label %107

; <label>:90:                                     ; preds = %62
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @strlen(i8* %91) #5
  %93 = mul i64 %92, 1
  %94 = call noalias i8* @malloc(i64 %93) #4
  %95 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %96 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %99 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %100) #4
  br label %107

; <label>:102:                                    ; preds = %62
  %103 = load i8*, i8** %12, align 8
  %104 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %105 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %104, i32 0, i32 6
  %106 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0), i8* %105) #4
  br label %107

; <label>:107:                                    ; preds = %62, %102, %90, %85, %84, %79, %74, %69
  br label %116

; <label>:108:                                    ; preds = %57
  br label %109

; <label>:109:                                    ; preds = %108, %56
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [7 x i8*], [7 x i8*]* @adcKeyword, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %11, align 8
  br label %49

; <label>:116:                                    ; preds = %107, %49
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %39

; <label>:119:                                    ; preds = %39
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %121 = call i32 @fclose(%struct._IO_FILE* %120)
  %122 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %123 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %122, i32 0, i32 6
  %124 = load i8, i8* %123, align 8
  %125 = sext i8 %124 to i32
  switch i32 %125, label %154 [
    i32 83, label %126
    i32 87, label %133
    i32 65, label %140
    i32 66, label %147
  ]

; <label>:126:                                    ; preds = %119
  %127 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %128 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %127, i32 0, i32 1
  store i32 5, i32* %128, align 4
  %129 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %130 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  %131 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %132 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %131, i32 0, i32 3
  store i64 1000, i64* %132, align 8
  br label %154

; <label>:133:                                    ; preds = %119
  %134 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %135 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %134, i32 0, i32 1
  store i32 10, i32* %135, align 4
  %136 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %137 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %136, i32 0, i32 2
  store i32 1, i32* %137, align 8
  %138 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %139 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %138, i32 0, i32 3
  store i64 10000, i64* %139, align 8
  br label %154

; <label>:140:                                    ; preds = %119
  %141 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %142 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %141, i32 0, i32 1
  store i32 15, i32* %142, align 4
  %143 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %144 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %146 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %145, i32 0, i32 3
  store i64 1000000, i64* %146, align 8
  br label %154

; <label>:147:                                    ; preds = %119
  %148 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %149 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %148, i32 0, i32 1
  store i32 20, i32* %149, align 4
  %150 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %151 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  %152 = load %struct.ADCpar*, %struct.ADCpar** %5, align 8
  %153 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %152, i32 0, i32 3
  store i64 10000000, i64* %153, align 8
  br label %154

; <label>:154:                                    ; preds = %119, %147, %140, %133, %126
  store i32 1, i32* %3, align 4
  br label %155

; <label>:155:                                    ; preds = %154, %18
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @WriteADCPar(%struct.ADCpar*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ADCpar*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  store %struct.ADCpar* %0, %struct.ADCpar** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call noalias i8* @calloc(i64 1024, i64 1) #4
  store i8* %8, i8** %6, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %10) #4
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %7, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %15 = icmp ne %struct._IO_FILE* %14, null
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0), i8* %18)
  store i32 0, i32* %3, align 4
  br label %54

; <label>:20:                                     ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %23 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i32 %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %27 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %28 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %33 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i64 %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %37 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %38 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %37, i32 0, i32 6
  %39 = load i8, i8* %38, align 8
  %40 = sext i8 %39 to i32
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 %40)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %43 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %44 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0), i32 %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %48 = load %struct.ADCpar*, %struct.ADCpar** %4, align 8
  %49 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8* %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %53 = call i32 @fclose(%struct._IO_FILE* %52)
  store i32 1, i32* %3, align 4
  br label %54

; <label>:54:                                     ; preds = %20, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ShowADCPar(%struct.ADCpar*) #0 {
  %2 = alloca %struct.ADCpar*, align 8
  store %struct.ADCpar* %0, %struct.ADCpar** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %7 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %11 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %12 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i32 0, i32 0), i32 %13)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %17 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %22 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i64 %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %27 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %26, i32 0, i32 6
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i32
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0), i32 %29)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = load %struct.ADCpar*, %struct.ADCpar** %2, align 8
  %33 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i8* %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GetNextTuple(i32, i32, i64*, i64*, i8 signext) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i8 %4, i8* %11, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64* null, i64** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 20
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i32 0, i32 0), i32 %21)
  store i32 0, i32* %6, align 4
  br label %230

; <label>:23:                                     ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @GetNextTuple.measbound, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %31

; <label>:27:                                     ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0), i32 %29)
  store i32 0, i32* %6, align 4
  br label %230

; <label>:31:                                     ; preds = %23
  store i64* getelementptr inbounds ([20 x i64], [20 x i64]* @adcexp, i32 0, i32 0), i64** %15, align 8
  %32 = load i8, i8* %11, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %38 [
    i32 83, label %34
    i32 87, label %35
    i32 65, label %36
    i32 66, label %37
  ]

; <label>:34:                                     ; preds = %31
  store i64* getelementptr inbounds ([5 x i64], [5 x i64]* @adcexpS, i32 0, i32 0), i64** %15, align 8
  br label %38

; <label>:35:                                     ; preds = %31
  store i64* getelementptr inbounds ([10 x i64], [10 x i64]* @adcexpW, i32 0, i32 0), i64** %15, align 8
  br label %38

; <label>:36:                                     ; preds = %31
  store i64* getelementptr inbounds ([15 x i64], [15 x i64]* @adcexpA, i32 0, i32 0), i64** %15, align 8
  br label %38

; <label>:37:                                     ; preds = %31
  store i64* getelementptr inbounds ([20 x i64], [20 x i64]* @adcexpB, i32 0, i32 0), i64** %15, align 8
  br label %38

; <label>:38:                                     ; preds = %31, %37, %36, %35, %34
  %39 = load i32, i32* @GetNextTuple.tuplenum, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %125

; <label>:41:                                     ; preds = %38
  store i32 0, i32* %12, align 4
  br label %42

; <label>:42:                                     ; preds = %87, %41
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 20
  br i1 %44, label %45, label %90

; <label>:45:                                     ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x i64], [20 x i64]* @adcgen, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %51

; <label>:51:                                     ; preds = %78, %45
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %15, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, 1
  %60 = icmp slt i64 %53, %59
  br i1 %60, label %61, label %81

; <label>:61:                                     ; preds = %51
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [20 x i64], [20 x i64]* @adcgen, i64 0, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = srem i64 %71, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %16, align 4
  br label %78

; <label>:78:                                     ; preds = %61
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %51

; <label>:81:                                     ; preds = %51
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [20 x i64], [20 x i64]* @adcgen, i64 0, i64 %85
  store i64 %83, i64* %86, align 8
  br label %87

; <label>:87:                                     ; preds = %81
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %42

; <label>:90:                                     ; preds = %42
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.40, i32 0, i32 0))
  store i32 0, i32* %12, align 4
  br label %93

; <label>:93:                                     ; preds = %121, %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %124

; <label>:97:                                     ; preds = %93
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = sdiv i64 %102, 2
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %105
  store i64 %103, i64* %106, align 8
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [20 x i64], [20 x i64]* @adcgen, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i64 %111, i64 %115, i64 %119)
  br label %121

; <label>:121:                                    ; preds = %97
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %93

; <label>:124:                                    ; preds = %93
  br label %125

; <label>:125:                                    ; preds = %124, %38
  %126 = load i32, i32* @GetNextTuple.tuplenum, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @GetNextTuple.tuplenum, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %128

; <label>:128:                                    ; preds = %189, %125
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %192

; <label>:132:                                    ; preds = %128
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [20 x i64], [20 x i64]* @adcgen, i64 0, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = mul nsw i64 %136, %140
  %142 = load i64*, i64** %9, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  store i64 %141, i64* %145, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i64, i64* %150, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [20 x i64], [20 x i64]* @adcprime, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = sdiv i64 %154, %158
  %160 = mul nsw i64 %149, %159
  %161 = load i64*, i64** %9, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %165, %160
  store i64 %166, i64* %164, align 8
  %167 = load i64*, i64** %9, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %173
  store i64 %171, i64* %174, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = icmp sgt i64 %178, %180
  br i1 %181, label %182, label %188

; <label>:182:                                    ; preds = %132
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %14, align 4
  br label %188

; <label>:188:                                    ; preds = %182, %132
  br label %189

; <label>:189:                                    ; preds = %188
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  br label %128

; <label>:192:                                    ; preds = %128
  store i32 0, i32* %12, align 4
  br label %193

; <label>:193:                                    ; preds = %226, %192
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %229

; <label>:197:                                    ; preds = %193
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [20 x i64], [20 x i64]* @GetNextTuple.seed, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = mul nsw i64 %201, %203
  %205 = load i64*, i64** %10, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  store i64 %204, i64* %208, align 8
  %209 = load i32, i32* @GetNextTuple.measbound, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64*, i64** %10, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i32, i32* @GetNextTuple.measbound, align 4
  %217 = sext i32 %216 to i64
  %218 = sdiv i64 %215, %217
  %219 = mul nsw i64 %210, %218
  %220 = load i64*, i64** %10, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %224, %219
  store i64 %225, i64* %223, align 8
  br label %226

; <label>:226:                                    ; preds = %197
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %12, align 4
  br label %193

; <label>:229:                                    ; preds = %193
  store i32 1, i32* %6, align 4
  br label %230

; <label>:230:                                    ; preds = %229, %27, %19
  %231 = load i32, i32* %6, align 4
  ret i32 %231
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @GenerateADC(%struct.ADCpar*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ADCpar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ADCpar* %0, %struct.ADCpar** %3, align 8
  %15 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %16 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %19 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %22 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = call noalias i8* @calloc(i64 1024, i64 1) #4
  store i8* %25, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64* null, i64** %11, align 8
  store i64* null, i64** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %28 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %31 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* %29, i32 %32) #4
  %34 = load i8*, i8** %7, align 8
  %35 = call %struct._IO_FILE* @fopen(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i32 0, i32 0))
  store %struct._IO_FILE* %35, %struct._IO_FILE** %8, align 8
  %36 = icmp ne %struct._IO_FILE* %35, null
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %1
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.44, i32 0, i32 0), i8* %39)
  store i32 0, i32* %2, align 4
  br label %141

; <label>:41:                                     ; preds = %1
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 %44) #4
  %46 = bitcast i8* %45 to i64*
  store i64* %46, i64** %11, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = call noalias i8* @malloc(i64 %49) #4
  %51 = bitcast i8* %50 to i64*
  store i64* %51, i64** %12, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i32 0, i32 0), i32 %53, i32 %54, i32 %55, i8* %56)
  store i32 0, i32* %9, align 4
  br label %58

; <label>:58:                                     ; preds = %123, %41
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %126

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i64*, i64** %11, align 8
  %66 = load i64*, i64** %12, align 8
  %67 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %68 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %67, i32 0, i32 6
  %69 = load i8, i8* %68, align 8
  %70 = call i32 @GetNextTuple(i32 %63, i32 %64, i64* %65, i64* %66, i8 signext %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

; <label>:72:                                     ; preds = %62
  store i32 0, i32* %2, align 4
  br label %141

; <label>:73:                                     ; preds = %62
  store i32 0, i32* %10, align 4
  br label %74

; <label>:74:                                     ; preds = %94, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %97

; <label>:78:                                     ; preds = %74
  %79 = load i64*, i64** %12, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %13, align 8
  %84 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %85 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %78
  %89 = bitcast i64* %13 to i8*
  call void @swap8(i8* %89)
  br label %90

; <label>:90:                                     ; preds = %88, %78
  %91 = bitcast i64* %13 to i8*
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %93 = call i64 @fwrite(i8* %91, i64 8, i64 1, %struct._IO_FILE* %92)
  br label %94

; <label>:94:                                     ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %74

; <label>:97:                                     ; preds = %74
  store i32 0, i32* %10, align 4
  br label %98

; <label>:98:                                     ; preds = %119, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

; <label>:102:                                    ; preds = %98
  %103 = load i64*, i64** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %110 = getelementptr inbounds %struct.ADCpar, %struct.ADCpar* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %102
  %114 = bitcast i32* %14 to i8*
  call void @swap4(i8* %114)
  br label %115

; <label>:115:                                    ; preds = %113, %102
  %116 = bitcast i32* %14 to i8*
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %118 = call i64 @fwrite(i8* %116, i64 4, i64 1, %struct._IO_FILE* %117)
  br label %119

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %98

; <label>:122:                                    ; preds = %98
  br label %123

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %58

; <label>:126:                                    ; preds = %58
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %128 = call i32 @fclose(%struct._IO_FILE* %127)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %130)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0))
  %134 = load i64*, i64** %11, align 8
  %135 = bitcast i64* %134 to i8*
  call void @free(i8* %135) #4
  %136 = load i64*, i64** %12, align 8
  %137 = bitcast i64* %136 to i8*
  call void @free(i8* %137) #4
  %138 = load i8*, i8** %7, align 8
  call void @free(i8* %138) #4
  %139 = load %struct.ADCpar*, %struct.ADCpar** %3, align 8
  %140 = call i32 @CalculateVeiwSizes(%struct.ADCpar* %139)
  store i32 1, i32* %2, align 4
  br label %141

; <label>:141:                                    ; preds = %126, %72, %37
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1-svn369350-1~exp1~20190820121219.79 (branches/release_80)"}
