; ModuleID = './Prolangs-C/TimberWolfMC/23tree.c'
source_filename = "./Prolangs-C/TimberWolfMC/23tree.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@.str = private unnamed_addr constant [14 x i8] c"Error Type 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Error Type 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Error Type 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"value: %d  \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tprint(%struct.tnode*) #0 {
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode**, align 8
  %7 = alloca %struct.tnode*, align 8
  store %struct.tnode* %0, %struct.tnode** %2, align 8
  %8 = load %struct.tnode*, %struct.tnode** %2, align 8
  %9 = icmp eq %struct.tnode* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  br label %129

; <label>:11:                                     ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %12 = call noalias i8* @malloc(i64 80008) #3
  %13 = bitcast i8* %12 to %struct.tnode**
  store %struct.tnode** %13, %struct.tnode*** %6, align 8
  %14 = load %struct.tnode*, %struct.tnode** %2, align 8
  %15 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %16 = getelementptr inbounds %struct.tnode*, %struct.tnode** %15, i64 0
  store %struct.tnode* %14, %struct.tnode** %16, align 8
  br label %17

; <label>:17:                                     ; preds = %125, %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %126

; <label>:21:                                     ; preds = %17
  %22 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds %struct.tnode*, %struct.tnode** %22, i64 %25
  %27 = load %struct.tnode*, %struct.tnode** %26, align 8
  store %struct.tnode* %27, %struct.tnode** %5, align 8
  call void @tdump(%struct.tnode* %27)
  %28 = load %struct.tnode*, %struct.tnode** %5, align 8
  %29 = load %struct.tnode*, %struct.tnode** %2, align 8
  %30 = icmp ne %struct.tnode* %28, %29
  br i1 %30, label %31, label %89

; <label>:31:                                     ; preds = %21
  %32 = load %struct.tnode*, %struct.tnode** %5, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 6
  %34 = load %struct.tnode*, %struct.tnode** %33, align 8
  store %struct.tnode* %34, %struct.tnode** %7, align 8
  %35 = load %struct.tnode*, %struct.tnode** %7, align 8
  %36 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 2
  %37 = load %struct.tnode*, %struct.tnode** %36, align 8
  %38 = load %struct.tnode*, %struct.tnode** %5, align 8
  %39 = icmp ne %struct.tnode* %37, %38
  br i1 %39, label %40, label %54

; <label>:40:                                     ; preds = %31
  %41 = load %struct.tnode*, %struct.tnode** %7, align 8
  %42 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 3
  %43 = load %struct.tnode*, %struct.tnode** %42, align 8
  %44 = load %struct.tnode*, %struct.tnode** %5, align 8
  %45 = icmp ne %struct.tnode* %43, %44
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %40
  %47 = load %struct.tnode*, %struct.tnode** %7, align 8
  %48 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 4
  %49 = load %struct.tnode*, %struct.tnode** %48, align 8
  %50 = load %struct.tnode*, %struct.tnode** %5, align 8
  %51 = icmp ne %struct.tnode* %49, %50
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %46
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  br label %54

; <label>:54:                                     ; preds = %52, %46, %40, %31
  %55 = load %struct.tnode*, %struct.tnode** %5, align 8
  %56 = getelementptr inbounds %struct.tnode, %struct.tnode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %88

; <label>:59:                                     ; preds = %54
  %60 = load %struct.tnode*, %struct.tnode** %5, align 8
  %61 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 2
  %62 = load %struct.tnode*, %struct.tnode** %61, align 8
  %63 = getelementptr inbounds %struct.tnode, %struct.tnode* %62, i32 0, i32 6
  %64 = load %struct.tnode*, %struct.tnode** %63, align 8
  %65 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tnode*, %struct.tnode** %5, align 8
  %68 = getelementptr inbounds %struct.tnode, %struct.tnode* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %73

; <label>:71:                                     ; preds = %59
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  br label %73

; <label>:73:                                     ; preds = %71, %59
  %74 = load %struct.tnode*, %struct.tnode** %5, align 8
  %75 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 2
  %76 = load %struct.tnode*, %struct.tnode** %75, align 8
  %77 = getelementptr inbounds %struct.tnode, %struct.tnode* %76, i32 0, i32 6
  %78 = load %struct.tnode*, %struct.tnode** %77, align 8
  %79 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tnode*, %struct.tnode** %5, align 8
  %82 = getelementptr inbounds %struct.tnode, %struct.tnode* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %73
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %87

; <label>:87:                                     ; preds = %85, %73
  br label %88

; <label>:88:                                     ; preds = %87, %54
  br label %89

; <label>:89:                                     ; preds = %88, %21
  %90 = load %struct.tnode*, %struct.tnode** %5, align 8
  %91 = getelementptr inbounds %struct.tnode, %struct.tnode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %125

; <label>:94:                                     ; preds = %89
  %95 = load %struct.tnode*, %struct.tnode** %5, align 8
  %96 = getelementptr inbounds %struct.tnode, %struct.tnode* %95, i32 0, i32 2
  %97 = load %struct.tnode*, %struct.tnode** %96, align 8
  %98 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.tnode*, %struct.tnode** %98, i64 %101
  store %struct.tnode* %97, %struct.tnode** %102, align 8
  %103 = load %struct.tnode*, %struct.tnode** %5, align 8
  %104 = getelementptr inbounds %struct.tnode, %struct.tnode* %103, i32 0, i32 3
  %105 = load %struct.tnode*, %struct.tnode** %104, align 8
  %106 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.tnode*, %struct.tnode** %106, i64 %109
  store %struct.tnode* %105, %struct.tnode** %110, align 8
  %111 = load %struct.tnode*, %struct.tnode** %5, align 8
  %112 = getelementptr inbounds %struct.tnode, %struct.tnode* %111, i32 0, i32 4
  %113 = load %struct.tnode*, %struct.tnode** %112, align 8
  %114 = icmp ne %struct.tnode* %113, null
  br i1 %114, label %115, label %124

; <label>:115:                                    ; preds = %94
  %116 = load %struct.tnode*, %struct.tnode** %5, align 8
  %117 = getelementptr inbounds %struct.tnode, %struct.tnode* %116, i32 0, i32 4
  %118 = load %struct.tnode*, %struct.tnode** %117, align 8
  %119 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.tnode*, %struct.tnode** %119, i64 %122
  store %struct.tnode* %118, %struct.tnode** %123, align 8
  br label %124

; <label>:124:                                    ; preds = %115, %94
  br label %125

; <label>:125:                                    ; preds = %124, %89
  br label %17

; <label>:126:                                    ; preds = %17
  %127 = load %struct.tnode**, %struct.tnode*** %6, align 8
  %128 = bitcast %struct.tnode** %127 to i8*
  call void @free(i8* %128) #3
  br label %129

; <label>:129:                                    ; preds = %126, %10
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tdump(%struct.tnode*) #0 {
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca %struct.plist*, align 8
  store %struct.tnode* %0, %struct.tnode** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %5 = load %struct.tnode*, %struct.tnode** %2, align 8
  %6 = getelementptr inbounds %struct.tnode, %struct.tnode* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

; <label>:9:                                      ; preds = %1
  %10 = load %struct.tnode*, %struct.tnode** %2, align 8
  %11 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 %12)
  %14 = load %struct.tnode*, %struct.tnode** %2, align 8
  %15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 9
  %16 = load %struct.plist*, %struct.plist** %15, align 8
  store %struct.plist* %16, %struct.plist** %3, align 8
  br label %17

; <label>:17:                                     ; preds = %25, %9
  %18 = load %struct.plist*, %struct.plist** %3, align 8
  %19 = icmp ne %struct.plist* %18, null
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %17
  %21 = load %struct.plist*, %struct.plist** %3, align 8
  %22 = getelementptr inbounds %struct.plist, %struct.plist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %23)
  br label %25

; <label>:25:                                     ; preds = %20
  %26 = load %struct.plist*, %struct.plist** %3, align 8
  %27 = getelementptr inbounds %struct.plist, %struct.plist* %26, i32 0, i32 1
  %28 = load %struct.plist*, %struct.plist** %27, align 8
  store %struct.plist* %28, %struct.plist** %3, align 8
  br label %17

; <label>:29:                                     ; preds = %17
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %32

; <label>:31:                                     ; preds = %1
  br label %32

; <label>:32:                                     ; preds = %31, %29
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @tmin(%struct.tnode*, %struct.tnode**, i32*, i32*) #0 {
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tnode*, align 8
  store %struct.tnode* %0, %struct.tnode** %5, align 8
  store %struct.tnode** %1, %struct.tnode*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %10, %struct.tnode** %9, align 8
  %11 = load %struct.tnode*, %struct.tnode** %9, align 8
  %12 = icmp eq %struct.tnode* %11, null
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %4
  %14 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* null, %struct.tnode** %14, align 8
  br label %38

; <label>:15:                                     ; preds = %4
  br label %16

; <label>:16:                                     ; preds = %21, %15
  %17 = load %struct.tnode*, %struct.tnode** %9, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 2
  %19 = load %struct.tnode*, %struct.tnode** %18, align 8
  %20 = icmp ne %struct.tnode* %19, null
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %16
  %22 = load %struct.tnode*, %struct.tnode** %9, align 8
  %23 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 2
  %24 = load %struct.tnode*, %struct.tnode** %23, align 8
  store %struct.tnode* %24, %struct.tnode** %9, align 8
  br label %16

; <label>:25:                                     ; preds = %16
  %26 = load %struct.tnode*, %struct.tnode** %9, align 8
  %27 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* %26, %struct.tnode** %27, align 8
  %28 = load %struct.tnode*, %struct.tnode** %9, align 8
  %29 = getelementptr inbounds %struct.tnode, %struct.tnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.tnode*, %struct.tnode** %9, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 9
  %34 = load %struct.plist*, %struct.plist** %33, align 8
  %35 = getelementptr inbounds %struct.plist, %struct.plist* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  br label %38

; <label>:38:                                     ; preds = %25, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #0 {
  %5 = alloca %struct.tnode**, align 8
  %6 = alloca %struct.tnode**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tnode*, align 8
  store %struct.tnode** %0, %struct.tnode*** %5, align 8
  store %struct.tnode** %1, %struct.tnode*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.tnode**, %struct.tnode*** %5, align 8
  %11 = load %struct.tnode*, %struct.tnode** %10, align 8
  store %struct.tnode* %11, %struct.tnode** %9, align 8
  %12 = load %struct.tnode*, %struct.tnode** %9, align 8
  %13 = icmp eq %struct.tnode* %12, null
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %4
  %15 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* null, %struct.tnode** %15, align 8
  br label %44

; <label>:16:                                     ; preds = %4
  br label %17

; <label>:17:                                     ; preds = %22, %16
  %18 = load %struct.tnode*, %struct.tnode** %9, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 2
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %21 = icmp ne %struct.tnode* %20, null
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %17
  %23 = load %struct.tnode*, %struct.tnode** %9, align 8
  %24 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 2
  %25 = load %struct.tnode*, %struct.tnode** %24, align 8
  store %struct.tnode* %25, %struct.tnode** %9, align 8
  br label %17

; <label>:26:                                     ; preds = %17
  %27 = load %struct.tnode*, %struct.tnode** %9, align 8
  %28 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* %27, %struct.tnode** %28, align 8
  %29 = load %struct.tnode*, %struct.tnode** %9, align 8
  %30 = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load %struct.tnode*, %struct.tnode** %9, align 8
  %34 = getelementptr inbounds %struct.tnode, %struct.tnode* %33, i32 0, i32 9
  %35 = load %struct.plist*, %struct.plist** %34, align 8
  %36 = getelementptr inbounds %struct.plist, %struct.plist* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.tnode**, %struct.tnode*** %5, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  call void @tdelete(%struct.tnode** %39, i32 %41, i32 %43)
  br label %44

; <label>:44:                                     ; preds = %26, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tdelete(%struct.tnode**, i32, i32) #0 {
  %4 = alloca %struct.tnode**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnode*, align 8
  %8 = alloca %struct.tnode*, align 8
  %9 = alloca %struct.tnode*, align 8
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca %struct.plist*, align 8
  %12 = alloca %struct.plist*, align 8
  store %struct.tnode** %0, %struct.tnode*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %14 = load %struct.tnode*, %struct.tnode** %13, align 8
  %15 = icmp eq %struct.tnode* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %3
  br label %895

; <label>:17:                                     ; preds = %3
  %18 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %19 = load %struct.tnode*, %struct.tnode** %18, align 8
  %20 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

; <label>:23:                                     ; preds = %17
  %24 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %25 = load %struct.tnode*, %struct.tnode** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.plist* @pfind(%struct.tnode* %25, i32 %26, %struct.plist** %12)
  store %struct.plist* %27, %struct.plist** %11, align 8
  %28 = load %struct.plist*, %struct.plist** %11, align 8
  %29 = icmp ne %struct.plist* %28, null
  br i1 %29, label %30, label %64

; <label>:30:                                     ; preds = %23
  %31 = load %struct.plist*, %struct.plist** %12, align 8
  %32 = icmp ne %struct.plist* %31, null
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %30
  %34 = load %struct.plist*, %struct.plist** %11, align 8
  %35 = getelementptr inbounds %struct.plist, %struct.plist* %34, i32 0, i32 1
  %36 = load %struct.plist*, %struct.plist** %35, align 8
  %37 = load %struct.plist*, %struct.plist** %12, align 8
  %38 = getelementptr inbounds %struct.plist, %struct.plist* %37, i32 0, i32 1
  store %struct.plist* %36, %struct.plist** %38, align 8
  %39 = load %struct.plist*, %struct.plist** %11, align 8
  %40 = bitcast %struct.plist* %39 to i8*
  call void @free(i8* %40) #3
  br label %63

; <label>:41:                                     ; preds = %30
  %42 = load %struct.plist*, %struct.plist** %11, align 8
  %43 = getelementptr inbounds %struct.plist, %struct.plist* %42, i32 0, i32 1
  %44 = load %struct.plist*, %struct.plist** %43, align 8
  %45 = icmp ne %struct.plist* %44, null
  br i1 %45, label %46, label %55

; <label>:46:                                     ; preds = %41
  %47 = load %struct.plist*, %struct.plist** %11, align 8
  %48 = getelementptr inbounds %struct.plist, %struct.plist* %47, i32 0, i32 1
  %49 = load %struct.plist*, %struct.plist** %48, align 8
  %50 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %51 = load %struct.tnode*, %struct.tnode** %50, align 8
  %52 = getelementptr inbounds %struct.tnode, %struct.tnode* %51, i32 0, i32 9
  store %struct.plist* %49, %struct.plist** %52, align 8
  %53 = load %struct.plist*, %struct.plist** %11, align 8
  %54 = bitcast %struct.plist* %53 to i8*
  call void @free(i8* %54) #3
  br label %62

; <label>:55:                                     ; preds = %41
  %56 = load %struct.plist*, %struct.plist** %11, align 8
  %57 = bitcast %struct.plist* %56 to i8*
  call void @free(i8* %57) #3
  %58 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %59 = load %struct.tnode*, %struct.tnode** %58, align 8
  %60 = bitcast %struct.tnode* %59 to i8*
  call void @free(i8* %60) #3
  %61 = load %struct.tnode**, %struct.tnode*** %4, align 8
  store %struct.tnode* null, %struct.tnode** %61, align 8
  br label %62

; <label>:62:                                     ; preds = %55, %46
  br label %63

; <label>:63:                                     ; preds = %62, %33
  br label %64

; <label>:64:                                     ; preds = %63, %23
  br label %894

; <label>:65:                                     ; preds = %17
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %68 = load %struct.tnode*, %struct.tnode** %67, align 8
  %69 = call %struct.tnode* @tdsearch(i32 %66, %struct.tnode* %68)
  store %struct.tnode* %69, %struct.tnode** %8, align 8
  %70 = load %struct.tnode*, %struct.tnode** %8, align 8
  %71 = icmp ne %struct.tnode* %70, null
  br i1 %71, label %72, label %893

; <label>:72:                                     ; preds = %65
  %73 = load %struct.tnode*, %struct.tnode** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call %struct.plist* @pfind(%struct.tnode* %73, i32 %74, %struct.plist** %12)
  store %struct.plist* %75, %struct.plist** %11, align 8
  %76 = load %struct.plist*, %struct.plist** %11, align 8
  %77 = icmp ne %struct.plist* %76, null
  br i1 %77, label %78, label %892

; <label>:78:                                     ; preds = %72
  %79 = load %struct.plist*, %struct.plist** %12, align 8
  %80 = icmp ne %struct.plist* %79, null
  br i1 %80, label %81, label %89

; <label>:81:                                     ; preds = %78
  %82 = load %struct.plist*, %struct.plist** %11, align 8
  %83 = getelementptr inbounds %struct.plist, %struct.plist* %82, i32 0, i32 1
  %84 = load %struct.plist*, %struct.plist** %83, align 8
  %85 = load %struct.plist*, %struct.plist** %12, align 8
  %86 = getelementptr inbounds %struct.plist, %struct.plist* %85, i32 0, i32 1
  store %struct.plist* %84, %struct.plist** %86, align 8
  %87 = load %struct.plist*, %struct.plist** %11, align 8
  %88 = bitcast %struct.plist* %87 to i8*
  call void @free(i8* %88) #3
  br label %891

; <label>:89:                                     ; preds = %78
  %90 = load %struct.plist*, %struct.plist** %11, align 8
  %91 = getelementptr inbounds %struct.plist, %struct.plist* %90, i32 0, i32 1
  %92 = load %struct.plist*, %struct.plist** %91, align 8
  %93 = icmp ne %struct.plist* %92, null
  br i1 %93, label %94, label %102

; <label>:94:                                     ; preds = %89
  %95 = load %struct.plist*, %struct.plist** %11, align 8
  %96 = getelementptr inbounds %struct.plist, %struct.plist* %95, i32 0, i32 1
  %97 = load %struct.plist*, %struct.plist** %96, align 8
  %98 = load %struct.tnode*, %struct.tnode** %8, align 8
  %99 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 9
  store %struct.plist* %97, %struct.plist** %99, align 8
  %100 = load %struct.plist*, %struct.plist** %11, align 8
  %101 = bitcast %struct.plist* %100 to i8*
  call void @free(i8* %101) #3
  br label %890

; <label>:102:                                    ; preds = %89
  %103 = load %struct.plist*, %struct.plist** %11, align 8
  %104 = bitcast %struct.plist* %103 to i8*
  call void @free(i8* %104) #3
  %105 = load %struct.tnode*, %struct.tnode** %8, align 8
  %106 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 6
  %107 = load %struct.tnode*, %struct.tnode** %106, align 8
  store %struct.tnode* %107, %struct.tnode** %7, align 8
  %108 = load %struct.tnode*, %struct.tnode** %7, align 8
  %109 = getelementptr inbounds %struct.tnode, %struct.tnode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %177

; <label>:112:                                    ; preds = %102
  %113 = load %struct.tnode*, %struct.tnode** %7, align 8
  %114 = getelementptr inbounds %struct.tnode, %struct.tnode* %113, i32 0, i32 2
  %115 = load %struct.tnode*, %struct.tnode** %114, align 8
  %116 = load %struct.tnode*, %struct.tnode** %8, align 8
  %117 = icmp eq %struct.tnode* %115, %116
  br i1 %117, label %118, label %145

; <label>:118:                                    ; preds = %112
  %119 = load %struct.tnode*, %struct.tnode** %7, align 8
  %120 = getelementptr inbounds %struct.tnode, %struct.tnode* %119, i32 0, i32 3
  %121 = load %struct.tnode*, %struct.tnode** %120, align 8
  %122 = load %struct.tnode*, %struct.tnode** %7, align 8
  %123 = getelementptr inbounds %struct.tnode, %struct.tnode* %122, i32 0, i32 2
  store %struct.tnode* %121, %struct.tnode** %123, align 8
  %124 = load %struct.tnode*, %struct.tnode** %7, align 8
  %125 = getelementptr inbounds %struct.tnode, %struct.tnode* %124, i32 0, i32 4
  %126 = load %struct.tnode*, %struct.tnode** %125, align 8
  %127 = load %struct.tnode*, %struct.tnode** %7, align 8
  %128 = getelementptr inbounds %struct.tnode, %struct.tnode* %127, i32 0, i32 3
  store %struct.tnode* %126, %struct.tnode** %128, align 8
  %129 = load %struct.tnode*, %struct.tnode** %7, align 8
  %130 = getelementptr inbounds %struct.tnode, %struct.tnode* %129, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %130, align 8
  %131 = load %struct.tnode*, %struct.tnode** %7, align 8
  %132 = getelementptr inbounds %struct.tnode, %struct.tnode* %131, i32 0, i32 2
  %133 = load %struct.tnode*, %struct.tnode** %132, align 8
  %134 = getelementptr inbounds %struct.tnode, %struct.tnode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.tnode*, %struct.tnode** %7, align 8
  %137 = getelementptr inbounds %struct.tnode, %struct.tnode* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 8
  %138 = load %struct.tnode*, %struct.tnode** %7, align 8
  %139 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 3
  %140 = load %struct.tnode*, %struct.tnode** %139, align 8
  %141 = getelementptr inbounds %struct.tnode, %struct.tnode* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.tnode*, %struct.tnode** %7, align 8
  %144 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 4
  br label %172

; <label>:145:                                    ; preds = %112
  %146 = load %struct.tnode*, %struct.tnode** %7, align 8
  %147 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 3
  %148 = load %struct.tnode*, %struct.tnode** %147, align 8
  %149 = load %struct.tnode*, %struct.tnode** %8, align 8
  %150 = icmp eq %struct.tnode* %148, %149
  br i1 %150, label %151, label %166

; <label>:151:                                    ; preds = %145
  %152 = load %struct.tnode*, %struct.tnode** %7, align 8
  %153 = getelementptr inbounds %struct.tnode, %struct.tnode* %152, i32 0, i32 4
  %154 = load %struct.tnode*, %struct.tnode** %153, align 8
  %155 = load %struct.tnode*, %struct.tnode** %7, align 8
  %156 = getelementptr inbounds %struct.tnode, %struct.tnode* %155, i32 0, i32 3
  store %struct.tnode* %154, %struct.tnode** %156, align 8
  %157 = load %struct.tnode*, %struct.tnode** %7, align 8
  %158 = getelementptr inbounds %struct.tnode, %struct.tnode* %157, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %158, align 8
  %159 = load %struct.tnode*, %struct.tnode** %7, align 8
  %160 = getelementptr inbounds %struct.tnode, %struct.tnode* %159, i32 0, i32 3
  %161 = load %struct.tnode*, %struct.tnode** %160, align 8
  %162 = getelementptr inbounds %struct.tnode, %struct.tnode* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.tnode*, %struct.tnode** %7, align 8
  %165 = getelementptr inbounds %struct.tnode, %struct.tnode* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  br label %171

; <label>:166:                                    ; preds = %145
  %167 = load %struct.tnode*, %struct.tnode** %7, align 8
  %168 = getelementptr inbounds %struct.tnode, %struct.tnode* %167, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %168, align 8
  %169 = load %struct.tnode*, %struct.tnode** %7, align 8
  %170 = load i32, i32* %5, align 4
  call void @tpatch(%struct.tnode* %169, i32 %170)
  br label %171

; <label>:171:                                    ; preds = %166, %151
  br label %172

; <label>:172:                                    ; preds = %171, %118
  %173 = load %struct.tnode*, %struct.tnode** %8, align 8
  %174 = bitcast %struct.tnode* %173 to i8*
  call void @free(i8* %174) #3
  %175 = load %struct.tnode*, %struct.tnode** %7, align 8
  %176 = getelementptr inbounds %struct.tnode, %struct.tnode* %175, i32 0, i32 1
  store i32 2, i32* %176, align 4
  br label %889

; <label>:177:                                    ; preds = %102
  %178 = load %struct.tnode*, %struct.tnode** %7, align 8
  %179 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %180 = load %struct.tnode*, %struct.tnode** %179, align 8
  %181 = icmp eq %struct.tnode* %178, %180
  br i1 %181, label %182, label %247

; <label>:182:                                    ; preds = %177
  %183 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %184 = load %struct.tnode*, %struct.tnode** %183, align 8
  %185 = getelementptr inbounds %struct.tnode, %struct.tnode* %184, i32 0, i32 2
  %186 = load %struct.tnode*, %struct.tnode** %185, align 8
  %187 = load %struct.tnode*, %struct.tnode** %8, align 8
  %188 = icmp eq %struct.tnode* %186, %187
  br i1 %188, label %189, label %208

; <label>:189:                                    ; preds = %182
  %190 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %191 = load %struct.tnode*, %struct.tnode** %190, align 8
  %192 = getelementptr inbounds %struct.tnode, %struct.tnode* %191, i32 0, i32 3
  %193 = load %struct.tnode*, %struct.tnode** %192, align 8
  %194 = getelementptr inbounds %struct.tnode, %struct.tnode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %197 = load %struct.tnode*, %struct.tnode** %196, align 8
  %198 = getelementptr inbounds %struct.tnode, %struct.tnode* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  %199 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %200 = load %struct.tnode*, %struct.tnode** %199, align 8
  %201 = getelementptr inbounds %struct.tnode, %struct.tnode* %200, i32 0, i32 3
  %202 = load %struct.tnode*, %struct.tnode** %201, align 8
  %203 = getelementptr inbounds %struct.tnode, %struct.tnode* %202, i32 0, i32 9
  %204 = load %struct.plist*, %struct.plist** %203, align 8
  %205 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %206 = load %struct.tnode*, %struct.tnode** %205, align 8
  %207 = getelementptr inbounds %struct.tnode, %struct.tnode* %206, i32 0, i32 9
  store %struct.plist* %204, %struct.plist** %207, align 8
  br label %227

; <label>:208:                                    ; preds = %182
  %209 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %210 = load %struct.tnode*, %struct.tnode** %209, align 8
  %211 = getelementptr inbounds %struct.tnode, %struct.tnode* %210, i32 0, i32 2
  %212 = load %struct.tnode*, %struct.tnode** %211, align 8
  %213 = getelementptr inbounds %struct.tnode, %struct.tnode* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %216 = load %struct.tnode*, %struct.tnode** %215, align 8
  %217 = getelementptr inbounds %struct.tnode, %struct.tnode* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %219 = load %struct.tnode*, %struct.tnode** %218, align 8
  %220 = getelementptr inbounds %struct.tnode, %struct.tnode* %219, i32 0, i32 2
  %221 = load %struct.tnode*, %struct.tnode** %220, align 8
  %222 = getelementptr inbounds %struct.tnode, %struct.tnode* %221, i32 0, i32 9
  %223 = load %struct.plist*, %struct.plist** %222, align 8
  %224 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %225 = load %struct.tnode*, %struct.tnode** %224, align 8
  %226 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 9
  store %struct.plist* %223, %struct.plist** %226, align 8
  br label %227

; <label>:227:                                    ; preds = %208, %189
  %228 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %229 = load %struct.tnode*, %struct.tnode** %228, align 8
  %230 = getelementptr inbounds %struct.tnode, %struct.tnode* %229, i32 0, i32 2
  %231 = load %struct.tnode*, %struct.tnode** %230, align 8
  %232 = bitcast %struct.tnode* %231 to i8*
  call void @free(i8* %232) #3
  %233 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %234 = load %struct.tnode*, %struct.tnode** %233, align 8
  %235 = getelementptr inbounds %struct.tnode, %struct.tnode* %234, i32 0, i32 3
  %236 = load %struct.tnode*, %struct.tnode** %235, align 8
  %237 = bitcast %struct.tnode* %236 to i8*
  call void @free(i8* %237) #3
  %238 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %239 = load %struct.tnode*, %struct.tnode** %238, align 8
  %240 = getelementptr inbounds %struct.tnode, %struct.tnode* %239, i32 0, i32 2
  store %struct.tnode* null, %struct.tnode** %240, align 8
  %241 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %242 = load %struct.tnode*, %struct.tnode** %241, align 8
  %243 = getelementptr inbounds %struct.tnode, %struct.tnode* %242, i32 0, i32 3
  store %struct.tnode* null, %struct.tnode** %243, align 8
  %244 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %245 = load %struct.tnode*, %struct.tnode** %244, align 8
  %246 = getelementptr inbounds %struct.tnode, %struct.tnode* %245, i32 0, i32 1
  store i32 0, i32* %246, align 4
  br label %888

; <label>:247:                                    ; preds = %177
  %248 = load %struct.tnode*, %struct.tnode** %7, align 8
  %249 = getelementptr inbounds %struct.tnode, %struct.tnode* %248, i32 0, i32 2
  %250 = load %struct.tnode*, %struct.tnode** %249, align 8
  %251 = load %struct.tnode*, %struct.tnode** %8, align 8
  %252 = icmp eq %struct.tnode* %250, %251
  br i1 %252, label %253, label %257

; <label>:253:                                    ; preds = %247
  %254 = load %struct.tnode*, %struct.tnode** %7, align 8
  %255 = getelementptr inbounds %struct.tnode, %struct.tnode* %254, i32 0, i32 3
  %256 = load %struct.tnode*, %struct.tnode** %255, align 8
  store %struct.tnode* %256, %struct.tnode** %10, align 8
  br label %261

; <label>:257:                                    ; preds = %247
  %258 = load %struct.tnode*, %struct.tnode** %7, align 8
  %259 = getelementptr inbounds %struct.tnode, %struct.tnode* %258, i32 0, i32 2
  %260 = load %struct.tnode*, %struct.tnode** %259, align 8
  store %struct.tnode* %260, %struct.tnode** %10, align 8
  br label %261

; <label>:261:                                    ; preds = %257, %253
  %262 = load %struct.tnode*, %struct.tnode** %7, align 8
  %263 = getelementptr inbounds %struct.tnode, %struct.tnode* %262, i32 0, i32 6
  %264 = load %struct.tnode*, %struct.tnode** %263, align 8
  %265 = getelementptr inbounds %struct.tnode, %struct.tnode* %264, i32 0, i32 2
  %266 = load %struct.tnode*, %struct.tnode** %265, align 8
  %267 = load %struct.tnode*, %struct.tnode** %7, align 8
  %268 = icmp eq %struct.tnode* %266, %267
  br i1 %268, label %269, label %560

; <label>:269:                                    ; preds = %261
  %270 = load %struct.tnode*, %struct.tnode** %7, align 8
  %271 = getelementptr inbounds %struct.tnode, %struct.tnode* %270, i32 0, i32 6
  %272 = load %struct.tnode*, %struct.tnode** %271, align 8
  %273 = getelementptr inbounds %struct.tnode, %struct.tnode* %272, i32 0, i32 3
  %274 = load %struct.tnode*, %struct.tnode** %273, align 8
  store %struct.tnode* %274, %struct.tnode** %9, align 8
  %275 = load %struct.tnode*, %struct.tnode** %7, align 8
  %276 = getelementptr inbounds %struct.tnode, %struct.tnode* %275, i32 0, i32 6
  %277 = load %struct.tnode*, %struct.tnode** %276, align 8
  %278 = getelementptr inbounds %struct.tnode, %struct.tnode* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %281, label %385

; <label>:281:                                    ; preds = %269
  %282 = load %struct.tnode*, %struct.tnode** %9, align 8
  %283 = getelementptr inbounds %struct.tnode, %struct.tnode* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %321

; <label>:286:                                    ; preds = %281
  %287 = load %struct.tnode*, %struct.tnode** %9, align 8
  %288 = getelementptr inbounds %struct.tnode, %struct.tnode* %287, i32 0, i32 1
  store i32 3, i32* %288, align 4
  %289 = load %struct.tnode*, %struct.tnode** %9, align 8
  %290 = getelementptr inbounds %struct.tnode, %struct.tnode* %289, i32 0, i32 3
  %291 = load %struct.tnode*, %struct.tnode** %290, align 8
  %292 = load %struct.tnode*, %struct.tnode** %9, align 8
  %293 = getelementptr inbounds %struct.tnode, %struct.tnode* %292, i32 0, i32 4
  store %struct.tnode* %291, %struct.tnode** %293, align 8
  %294 = load %struct.tnode*, %struct.tnode** %9, align 8
  %295 = getelementptr inbounds %struct.tnode, %struct.tnode* %294, i32 0, i32 2
  %296 = load %struct.tnode*, %struct.tnode** %295, align 8
  %297 = load %struct.tnode*, %struct.tnode** %9, align 8
  %298 = getelementptr inbounds %struct.tnode, %struct.tnode* %297, i32 0, i32 3
  store %struct.tnode* %296, %struct.tnode** %298, align 8
  %299 = load %struct.tnode*, %struct.tnode** %10, align 8
  %300 = load %struct.tnode*, %struct.tnode** %9, align 8
  %301 = getelementptr inbounds %struct.tnode, %struct.tnode* %300, i32 0, i32 2
  store %struct.tnode* %299, %struct.tnode** %301, align 8
  %302 = load %struct.tnode*, %struct.tnode** %9, align 8
  %303 = load %struct.tnode*, %struct.tnode** %10, align 8
  %304 = getelementptr inbounds %struct.tnode, %struct.tnode* %303, i32 0, i32 6
  store %struct.tnode* %302, %struct.tnode** %304, align 8
  %305 = load %struct.tnode*, %struct.tnode** %8, align 8
  %306 = bitcast %struct.tnode* %305 to i8*
  call void @free(i8* %306) #3
  %307 = load %struct.tnode*, %struct.tnode** %10, align 8
  %308 = getelementptr inbounds %struct.tnode, %struct.tnode* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.tnode*, %struct.tnode** %9, align 8
  %311 = getelementptr inbounds %struct.tnode, %struct.tnode* %310, i32 0, i32 7
  store i32 %309, i32* %311, align 8
  %312 = load %struct.tnode*, %struct.tnode** %9, align 8
  %313 = getelementptr inbounds %struct.tnode, %struct.tnode* %312, i32 0, i32 3
  %314 = load %struct.tnode*, %struct.tnode** %313, align 8
  %315 = getelementptr inbounds %struct.tnode, %struct.tnode* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.tnode*, %struct.tnode** %9, align 8
  %318 = getelementptr inbounds %struct.tnode, %struct.tnode* %317, i32 0, i32 8
  store i32 %316, i32* %318, align 4
  %319 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %320 = load %struct.tnode*, %struct.tnode** %7, align 8
  call void @tsubson(%struct.tnode** %319, %struct.tnode* %320)
  br label %384

; <label>:321:                                    ; preds = %281
  %322 = load %struct.tnode*, %struct.tnode** %9, align 8
  %323 = getelementptr inbounds %struct.tnode, %struct.tnode* %322, i32 0, i32 1
  store i32 2, i32* %323, align 4
  %324 = load %struct.tnode*, %struct.tnode** %10, align 8
  %325 = load %struct.tnode*, %struct.tnode** %7, align 8
  %326 = getelementptr inbounds %struct.tnode, %struct.tnode* %325, i32 0, i32 2
  store %struct.tnode* %324, %struct.tnode** %326, align 8
  %327 = load %struct.tnode*, %struct.tnode** %9, align 8
  %328 = getelementptr inbounds %struct.tnode, %struct.tnode* %327, i32 0, i32 2
  %329 = load %struct.tnode*, %struct.tnode** %328, align 8
  %330 = load %struct.tnode*, %struct.tnode** %7, align 8
  %331 = getelementptr inbounds %struct.tnode, %struct.tnode* %330, i32 0, i32 3
  store %struct.tnode* %329, %struct.tnode** %331, align 8
  %332 = load %struct.tnode*, %struct.tnode** %9, align 8
  %333 = getelementptr inbounds %struct.tnode, %struct.tnode* %332, i32 0, i32 3
  %334 = load %struct.tnode*, %struct.tnode** %333, align 8
  %335 = load %struct.tnode*, %struct.tnode** %9, align 8
  %336 = getelementptr inbounds %struct.tnode, %struct.tnode* %335, i32 0, i32 2
  store %struct.tnode* %334, %struct.tnode** %336, align 8
  %337 = load %struct.tnode*, %struct.tnode** %9, align 8
  %338 = getelementptr inbounds %struct.tnode, %struct.tnode* %337, i32 0, i32 4
  %339 = load %struct.tnode*, %struct.tnode** %338, align 8
  %340 = load %struct.tnode*, %struct.tnode** %9, align 8
  %341 = getelementptr inbounds %struct.tnode, %struct.tnode* %340, i32 0, i32 3
  store %struct.tnode* %339, %struct.tnode** %341, align 8
  %342 = load %struct.tnode*, %struct.tnode** %7, align 8
  %343 = load %struct.tnode*, %struct.tnode** %7, align 8
  %344 = getelementptr inbounds %struct.tnode, %struct.tnode* %343, i32 0, i32 3
  %345 = load %struct.tnode*, %struct.tnode** %344, align 8
  %346 = getelementptr inbounds %struct.tnode, %struct.tnode* %345, i32 0, i32 6
  store %struct.tnode* %342, %struct.tnode** %346, align 8
  %347 = load %struct.tnode*, %struct.tnode** %9, align 8
  %348 = getelementptr inbounds %struct.tnode, %struct.tnode* %347, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %348, align 8
  %349 = load %struct.tnode*, %struct.tnode** %10, align 8
  %350 = getelementptr inbounds %struct.tnode, %struct.tnode* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.tnode*, %struct.tnode** %7, align 8
  %353 = getelementptr inbounds %struct.tnode, %struct.tnode* %352, i32 0, i32 7
  store i32 %351, i32* %353, align 8
  %354 = load %struct.tnode*, %struct.tnode** %7, align 8
  %355 = getelementptr inbounds %struct.tnode, %struct.tnode* %354, i32 0, i32 3
  %356 = load %struct.tnode*, %struct.tnode** %355, align 8
  %357 = getelementptr inbounds %struct.tnode, %struct.tnode* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.tnode*, %struct.tnode** %7, align 8
  %360 = getelementptr inbounds %struct.tnode, %struct.tnode* %359, i32 0, i32 8
  store i32 %358, i32* %360, align 4
  %361 = load %struct.tnode*, %struct.tnode** %9, align 8
  %362 = getelementptr inbounds %struct.tnode, %struct.tnode* %361, i32 0, i32 2
  %363 = load %struct.tnode*, %struct.tnode** %362, align 8
  %364 = getelementptr inbounds %struct.tnode, %struct.tnode* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.tnode*, %struct.tnode** %9, align 8
  %367 = getelementptr inbounds %struct.tnode, %struct.tnode* %366, i32 0, i32 7
  store i32 %365, i32* %367, align 8
  %368 = load %struct.tnode*, %struct.tnode** %9, align 8
  %369 = getelementptr inbounds %struct.tnode, %struct.tnode* %368, i32 0, i32 3
  %370 = load %struct.tnode*, %struct.tnode** %369, align 8
  %371 = getelementptr inbounds %struct.tnode, %struct.tnode* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.tnode*, %struct.tnode** %9, align 8
  %374 = getelementptr inbounds %struct.tnode, %struct.tnode* %373, i32 0, i32 8
  store i32 %372, i32* %374, align 4
  %375 = load %struct.tnode*, %struct.tnode** %7, align 8
  %376 = getelementptr inbounds %struct.tnode, %struct.tnode* %375, i32 0, i32 8
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.tnode*, %struct.tnode** %9, align 8
  %379 = getelementptr inbounds %struct.tnode, %struct.tnode* %378, i32 0, i32 6
  %380 = load %struct.tnode*, %struct.tnode** %379, align 8
  %381 = getelementptr inbounds %struct.tnode, %struct.tnode* %380, i32 0, i32 7
  store i32 %377, i32* %381, align 8
  %382 = load %struct.tnode*, %struct.tnode** %8, align 8
  %383 = bitcast %struct.tnode* %382 to i8*
  call void @free(i8* %383) #3
  br label %384

; <label>:384:                                    ; preds = %321, %286
  br label %559

; <label>:385:                                    ; preds = %269
  %386 = load %struct.tnode*, %struct.tnode** %9, align 8
  %387 = getelementptr inbounds %struct.tnode, %struct.tnode* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %390, label %495

; <label>:390:                                    ; preds = %385
  %391 = load %struct.tnode*, %struct.tnode** %9, align 8
  %392 = getelementptr inbounds %struct.tnode, %struct.tnode* %391, i32 0, i32 1
  store i32 3, i32* %392, align 4
  %393 = load %struct.tnode*, %struct.tnode** %9, align 8
  %394 = getelementptr inbounds %struct.tnode, %struct.tnode* %393, i32 0, i32 3
  %395 = load %struct.tnode*, %struct.tnode** %394, align 8
  %396 = load %struct.tnode*, %struct.tnode** %9, align 8
  %397 = getelementptr inbounds %struct.tnode, %struct.tnode* %396, i32 0, i32 4
  store %struct.tnode* %395, %struct.tnode** %397, align 8
  %398 = load %struct.tnode*, %struct.tnode** %9, align 8
  %399 = getelementptr inbounds %struct.tnode, %struct.tnode* %398, i32 0, i32 2
  %400 = load %struct.tnode*, %struct.tnode** %399, align 8
  %401 = load %struct.tnode*, %struct.tnode** %9, align 8
  %402 = getelementptr inbounds %struct.tnode, %struct.tnode* %401, i32 0, i32 3
  store %struct.tnode* %400, %struct.tnode** %402, align 8
  %403 = load %struct.tnode*, %struct.tnode** %10, align 8
  %404 = load %struct.tnode*, %struct.tnode** %9, align 8
  %405 = getelementptr inbounds %struct.tnode, %struct.tnode* %404, i32 0, i32 2
  store %struct.tnode* %403, %struct.tnode** %405, align 8
  %406 = load %struct.tnode*, %struct.tnode** %9, align 8
  %407 = load %struct.tnode*, %struct.tnode** %10, align 8
  %408 = getelementptr inbounds %struct.tnode, %struct.tnode* %407, i32 0, i32 6
  store %struct.tnode* %406, %struct.tnode** %408, align 8
  %409 = load %struct.tnode*, %struct.tnode** %8, align 8
  %410 = bitcast %struct.tnode* %409 to i8*
  call void @free(i8* %410) #3
  %411 = load %struct.tnode*, %struct.tnode** %10, align 8
  %412 = getelementptr inbounds %struct.tnode, %struct.tnode* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.tnode*, %struct.tnode** %9, align 8
  %415 = getelementptr inbounds %struct.tnode, %struct.tnode* %414, i32 0, i32 7
  store i32 %413, i32* %415, align 8
  %416 = load %struct.tnode*, %struct.tnode** %9, align 8
  %417 = getelementptr inbounds %struct.tnode, %struct.tnode* %416, i32 0, i32 3
  %418 = load %struct.tnode*, %struct.tnode** %417, align 8
  %419 = getelementptr inbounds %struct.tnode, %struct.tnode* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.tnode*, %struct.tnode** %9, align 8
  %422 = getelementptr inbounds %struct.tnode, %struct.tnode* %421, i32 0, i32 8
  store i32 %420, i32* %422, align 4
  %423 = load %struct.tnode*, %struct.tnode** %7, align 8
  %424 = getelementptr inbounds %struct.tnode, %struct.tnode* %423, i32 0, i32 6
  %425 = load %struct.tnode*, %struct.tnode** %424, align 8
  %426 = getelementptr inbounds %struct.tnode, %struct.tnode* %425, i32 0, i32 3
  %427 = load %struct.tnode*, %struct.tnode** %426, align 8
  %428 = load %struct.tnode*, %struct.tnode** %7, align 8
  %429 = getelementptr inbounds %struct.tnode, %struct.tnode* %428, i32 0, i32 6
  %430 = load %struct.tnode*, %struct.tnode** %429, align 8
  %431 = getelementptr inbounds %struct.tnode, %struct.tnode* %430, i32 0, i32 2
  store %struct.tnode* %427, %struct.tnode** %431, align 8
  %432 = load %struct.tnode*, %struct.tnode** %7, align 8
  %433 = getelementptr inbounds %struct.tnode, %struct.tnode* %432, i32 0, i32 6
  %434 = load %struct.tnode*, %struct.tnode** %433, align 8
  %435 = getelementptr inbounds %struct.tnode, %struct.tnode* %434, i32 0, i32 4
  %436 = load %struct.tnode*, %struct.tnode** %435, align 8
  %437 = load %struct.tnode*, %struct.tnode** %7, align 8
  %438 = getelementptr inbounds %struct.tnode, %struct.tnode* %437, i32 0, i32 6
  %439 = load %struct.tnode*, %struct.tnode** %438, align 8
  %440 = getelementptr inbounds %struct.tnode, %struct.tnode* %439, i32 0, i32 3
  store %struct.tnode* %436, %struct.tnode** %440, align 8
  %441 = load %struct.tnode*, %struct.tnode** %7, align 8
  %442 = getelementptr inbounds %struct.tnode, %struct.tnode* %441, i32 0, i32 6
  %443 = load %struct.tnode*, %struct.tnode** %442, align 8
  %444 = getelementptr inbounds %struct.tnode, %struct.tnode* %443, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %444, align 8
  %445 = load %struct.tnode*, %struct.tnode** %7, align 8
  %446 = getelementptr inbounds %struct.tnode, %struct.tnode* %445, i32 0, i32 6
  %447 = load %struct.tnode*, %struct.tnode** %446, align 8
  %448 = getelementptr inbounds %struct.tnode, %struct.tnode* %447, i32 0, i32 1
  store i32 2, i32* %448, align 4
  %449 = load %struct.tnode*, %struct.tnode** %7, align 8
  %450 = getelementptr inbounds %struct.tnode, %struct.tnode* %449, i32 0, i32 6
  %451 = load %struct.tnode*, %struct.tnode** %450, align 8
  %452 = getelementptr inbounds %struct.tnode, %struct.tnode* %451, i32 0, i32 8
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.tnode*, %struct.tnode** %7, align 8
  %455 = getelementptr inbounds %struct.tnode, %struct.tnode* %454, i32 0, i32 6
  %456 = load %struct.tnode*, %struct.tnode** %455, align 8
  %457 = getelementptr inbounds %struct.tnode, %struct.tnode* %456, i32 0, i32 7
  store i32 %453, i32* %457, align 8
  %458 = load %struct.tnode*, %struct.tnode** %7, align 8
  %459 = getelementptr inbounds %struct.tnode, %struct.tnode* %458, i32 0, i32 6
  %460 = load %struct.tnode*, %struct.tnode** %459, align 8
  %461 = getelementptr inbounds %struct.tnode, %struct.tnode* %460, i32 0, i32 3
  %462 = load %struct.tnode*, %struct.tnode** %461, align 8
  %463 = getelementptr inbounds %struct.tnode, %struct.tnode* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 4
  %465 = icmp eq i32 %464, 2
  br i1 %465, label %466, label %478

; <label>:466:                                    ; preds = %390
  %467 = load %struct.tnode*, %struct.tnode** %7, align 8
  %468 = getelementptr inbounds %struct.tnode, %struct.tnode* %467, i32 0, i32 6
  %469 = load %struct.tnode*, %struct.tnode** %468, align 8
  %470 = getelementptr inbounds %struct.tnode, %struct.tnode* %469, i32 0, i32 3
  %471 = load %struct.tnode*, %struct.tnode** %470, align 8
  %472 = getelementptr inbounds %struct.tnode, %struct.tnode* %471, i32 0, i32 8
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.tnode*, %struct.tnode** %7, align 8
  %475 = getelementptr inbounds %struct.tnode, %struct.tnode* %474, i32 0, i32 6
  %476 = load %struct.tnode*, %struct.tnode** %475, align 8
  %477 = getelementptr inbounds %struct.tnode, %struct.tnode* %476, i32 0, i32 8
  store i32 %473, i32* %477, align 4
  br label %492

; <label>:478:                                    ; preds = %390
  %479 = load %struct.tnode*, %struct.tnode** %7, align 8
  %480 = getelementptr inbounds %struct.tnode, %struct.tnode* %479, i32 0, i32 6
  %481 = load %struct.tnode*, %struct.tnode** %480, align 8
  %482 = getelementptr inbounds %struct.tnode, %struct.tnode* %481, i32 0, i32 3
  %483 = load %struct.tnode*, %struct.tnode** %482, align 8
  %484 = getelementptr inbounds %struct.tnode, %struct.tnode* %483, i32 0, i32 4
  %485 = load %struct.tnode*, %struct.tnode** %484, align 8
  %486 = getelementptr inbounds %struct.tnode, %struct.tnode* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.tnode*, %struct.tnode** %7, align 8
  %489 = getelementptr inbounds %struct.tnode, %struct.tnode* %488, i32 0, i32 6
  %490 = load %struct.tnode*, %struct.tnode** %489, align 8
  %491 = getelementptr inbounds %struct.tnode, %struct.tnode* %490, i32 0, i32 8
  store i32 %487, i32* %491, align 4
  br label %492

; <label>:492:                                    ; preds = %478, %466
  %493 = load %struct.tnode*, %struct.tnode** %7, align 8
  %494 = bitcast %struct.tnode* %493 to i8*
  call void @free(i8* %494) #3
  br label %558

; <label>:495:                                    ; preds = %385
  %496 = load %struct.tnode*, %struct.tnode** %9, align 8
  %497 = getelementptr inbounds %struct.tnode, %struct.tnode* %496, i32 0, i32 1
  store i32 2, i32* %497, align 4
  %498 = load %struct.tnode*, %struct.tnode** %10, align 8
  %499 = load %struct.tnode*, %struct.tnode** %7, align 8
  %500 = getelementptr inbounds %struct.tnode, %struct.tnode* %499, i32 0, i32 2
  store %struct.tnode* %498, %struct.tnode** %500, align 8
  %501 = load %struct.tnode*, %struct.tnode** %9, align 8
  %502 = getelementptr inbounds %struct.tnode, %struct.tnode* %501, i32 0, i32 2
  %503 = load %struct.tnode*, %struct.tnode** %502, align 8
  %504 = load %struct.tnode*, %struct.tnode** %7, align 8
  %505 = getelementptr inbounds %struct.tnode, %struct.tnode* %504, i32 0, i32 3
  store %struct.tnode* %503, %struct.tnode** %505, align 8
  %506 = load %struct.tnode*, %struct.tnode** %9, align 8
  %507 = getelementptr inbounds %struct.tnode, %struct.tnode* %506, i32 0, i32 3
  %508 = load %struct.tnode*, %struct.tnode** %507, align 8
  %509 = load %struct.tnode*, %struct.tnode** %9, align 8
  %510 = getelementptr inbounds %struct.tnode, %struct.tnode* %509, i32 0, i32 2
  store %struct.tnode* %508, %struct.tnode** %510, align 8
  %511 = load %struct.tnode*, %struct.tnode** %9, align 8
  %512 = getelementptr inbounds %struct.tnode, %struct.tnode* %511, i32 0, i32 4
  %513 = load %struct.tnode*, %struct.tnode** %512, align 8
  %514 = load %struct.tnode*, %struct.tnode** %9, align 8
  %515 = getelementptr inbounds %struct.tnode, %struct.tnode* %514, i32 0, i32 3
  store %struct.tnode* %513, %struct.tnode** %515, align 8
  %516 = load %struct.tnode*, %struct.tnode** %7, align 8
  %517 = load %struct.tnode*, %struct.tnode** %7, align 8
  %518 = getelementptr inbounds %struct.tnode, %struct.tnode* %517, i32 0, i32 3
  %519 = load %struct.tnode*, %struct.tnode** %518, align 8
  %520 = getelementptr inbounds %struct.tnode, %struct.tnode* %519, i32 0, i32 6
  store %struct.tnode* %516, %struct.tnode** %520, align 8
  %521 = load %struct.tnode*, %struct.tnode** %9, align 8
  %522 = getelementptr inbounds %struct.tnode, %struct.tnode* %521, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %522, align 8
  %523 = load %struct.tnode*, %struct.tnode** %10, align 8
  %524 = getelementptr inbounds %struct.tnode, %struct.tnode* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = load %struct.tnode*, %struct.tnode** %7, align 8
  %527 = getelementptr inbounds %struct.tnode, %struct.tnode* %526, i32 0, i32 7
  store i32 %525, i32* %527, align 8
  %528 = load %struct.tnode*, %struct.tnode** %7, align 8
  %529 = getelementptr inbounds %struct.tnode, %struct.tnode* %528, i32 0, i32 3
  %530 = load %struct.tnode*, %struct.tnode** %529, align 8
  %531 = getelementptr inbounds %struct.tnode, %struct.tnode* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load %struct.tnode*, %struct.tnode** %7, align 8
  %534 = getelementptr inbounds %struct.tnode, %struct.tnode* %533, i32 0, i32 8
  store i32 %532, i32* %534, align 4
  %535 = load %struct.tnode*, %struct.tnode** %9, align 8
  %536 = getelementptr inbounds %struct.tnode, %struct.tnode* %535, i32 0, i32 2
  %537 = load %struct.tnode*, %struct.tnode** %536, align 8
  %538 = getelementptr inbounds %struct.tnode, %struct.tnode* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.tnode*, %struct.tnode** %9, align 8
  %541 = getelementptr inbounds %struct.tnode, %struct.tnode* %540, i32 0, i32 7
  store i32 %539, i32* %541, align 8
  %542 = load %struct.tnode*, %struct.tnode** %9, align 8
  %543 = getelementptr inbounds %struct.tnode, %struct.tnode* %542, i32 0, i32 3
  %544 = load %struct.tnode*, %struct.tnode** %543, align 8
  %545 = getelementptr inbounds %struct.tnode, %struct.tnode* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load %struct.tnode*, %struct.tnode** %9, align 8
  %548 = getelementptr inbounds %struct.tnode, %struct.tnode* %547, i32 0, i32 8
  store i32 %546, i32* %548, align 4
  %549 = load %struct.tnode*, %struct.tnode** %7, align 8
  %550 = getelementptr inbounds %struct.tnode, %struct.tnode* %549, i32 0, i32 8
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.tnode*, %struct.tnode** %9, align 8
  %553 = getelementptr inbounds %struct.tnode, %struct.tnode* %552, i32 0, i32 6
  %554 = load %struct.tnode*, %struct.tnode** %553, align 8
  %555 = getelementptr inbounds %struct.tnode, %struct.tnode* %554, i32 0, i32 7
  store i32 %551, i32* %555, align 8
  %556 = load %struct.tnode*, %struct.tnode** %8, align 8
  %557 = bitcast %struct.tnode* %556 to i8*
  call void @free(i8* %557) #3
  br label %558

; <label>:558:                                    ; preds = %495, %492
  br label %559

; <label>:559:                                    ; preds = %558, %384
  br label %887

; <label>:560:                                    ; preds = %261
  %561 = load %struct.tnode*, %struct.tnode** %7, align 8
  %562 = getelementptr inbounds %struct.tnode, %struct.tnode* %561, i32 0, i32 6
  %563 = load %struct.tnode*, %struct.tnode** %562, align 8
  %564 = getelementptr inbounds %struct.tnode, %struct.tnode* %563, i32 0, i32 3
  %565 = load %struct.tnode*, %struct.tnode** %564, align 8
  %566 = load %struct.tnode*, %struct.tnode** %7, align 8
  %567 = icmp eq %struct.tnode* %565, %566
  br i1 %567, label %568, label %796

; <label>:568:                                    ; preds = %560
  %569 = load %struct.tnode*, %struct.tnode** %7, align 8
  %570 = getelementptr inbounds %struct.tnode, %struct.tnode* %569, i32 0, i32 6
  %571 = load %struct.tnode*, %struct.tnode** %570, align 8
  %572 = getelementptr inbounds %struct.tnode, %struct.tnode* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 4
  %574 = icmp eq i32 %573, 2
  br i1 %574, label %575, label %658

; <label>:575:                                    ; preds = %568
  %576 = load %struct.tnode*, %struct.tnode** %7, align 8
  %577 = getelementptr inbounds %struct.tnode, %struct.tnode* %576, i32 0, i32 6
  %578 = load %struct.tnode*, %struct.tnode** %577, align 8
  %579 = getelementptr inbounds %struct.tnode, %struct.tnode* %578, i32 0, i32 2
  %580 = load %struct.tnode*, %struct.tnode** %579, align 8
  store %struct.tnode* %580, %struct.tnode** %9, align 8
  %581 = load %struct.tnode*, %struct.tnode** %9, align 8
  %582 = getelementptr inbounds %struct.tnode, %struct.tnode* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, 2
  br i1 %584, label %585, label %605

; <label>:585:                                    ; preds = %575
  %586 = load %struct.tnode*, %struct.tnode** %9, align 8
  %587 = getelementptr inbounds %struct.tnode, %struct.tnode* %586, i32 0, i32 1
  store i32 3, i32* %587, align 4
  %588 = load %struct.tnode*, %struct.tnode** %10, align 8
  %589 = load %struct.tnode*, %struct.tnode** %9, align 8
  %590 = getelementptr inbounds %struct.tnode, %struct.tnode* %589, i32 0, i32 4
  store %struct.tnode* %588, %struct.tnode** %590, align 8
  %591 = load %struct.tnode*, %struct.tnode** %9, align 8
  %592 = load %struct.tnode*, %struct.tnode** %10, align 8
  %593 = getelementptr inbounds %struct.tnode, %struct.tnode* %592, i32 0, i32 6
  store %struct.tnode* %591, %struct.tnode** %593, align 8
  %594 = load %struct.tnode*, %struct.tnode** %8, align 8
  %595 = bitcast %struct.tnode* %594 to i8*
  call void @free(i8* %595) #3
  %596 = load %struct.tnode*, %struct.tnode** %10, align 8
  %597 = getelementptr inbounds %struct.tnode, %struct.tnode* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 8
  %599 = load %struct.tnode*, %struct.tnode** %7, align 8
  %600 = getelementptr inbounds %struct.tnode, %struct.tnode* %599, i32 0, i32 6
  %601 = load %struct.tnode*, %struct.tnode** %600, align 8
  %602 = getelementptr inbounds %struct.tnode, %struct.tnode* %601, i32 0, i32 7
  store i32 %598, i32* %602, align 8
  %603 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %604 = load %struct.tnode*, %struct.tnode** %7, align 8
  call void @tsubson(%struct.tnode** %603, %struct.tnode* %604)
  br label %657

; <label>:605:                                    ; preds = %575
  %606 = load %struct.tnode*, %struct.tnode** %9, align 8
  %607 = getelementptr inbounds %struct.tnode, %struct.tnode* %606, i32 0, i32 1
  store i32 2, i32* %607, align 4
  %608 = load %struct.tnode*, %struct.tnode** %9, align 8
  %609 = getelementptr inbounds %struct.tnode, %struct.tnode* %608, i32 0, i32 4
  %610 = load %struct.tnode*, %struct.tnode** %609, align 8
  %611 = load %struct.tnode*, %struct.tnode** %7, align 8
  %612 = getelementptr inbounds %struct.tnode, %struct.tnode* %611, i32 0, i32 2
  store %struct.tnode* %610, %struct.tnode** %612, align 8
  %613 = load %struct.tnode*, %struct.tnode** %10, align 8
  %614 = load %struct.tnode*, %struct.tnode** %7, align 8
  %615 = getelementptr inbounds %struct.tnode, %struct.tnode* %614, i32 0, i32 3
  store %struct.tnode* %613, %struct.tnode** %615, align 8
  %616 = load %struct.tnode*, %struct.tnode** %7, align 8
  %617 = load %struct.tnode*, %struct.tnode** %7, align 8
  %618 = getelementptr inbounds %struct.tnode, %struct.tnode* %617, i32 0, i32 2
  %619 = load %struct.tnode*, %struct.tnode** %618, align 8
  %620 = getelementptr inbounds %struct.tnode, %struct.tnode* %619, i32 0, i32 6
  store %struct.tnode* %616, %struct.tnode** %620, align 8
  %621 = load %struct.tnode*, %struct.tnode** %9, align 8
  %622 = getelementptr inbounds %struct.tnode, %struct.tnode* %621, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %622, align 8
  %623 = load %struct.tnode*, %struct.tnode** %7, align 8
  %624 = getelementptr inbounds %struct.tnode, %struct.tnode* %623, i32 0, i32 2
  %625 = load %struct.tnode*, %struct.tnode** %624, align 8
  %626 = getelementptr inbounds %struct.tnode, %struct.tnode* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = load %struct.tnode*, %struct.tnode** %7, align 8
  %629 = getelementptr inbounds %struct.tnode, %struct.tnode* %628, i32 0, i32 7
  store i32 %627, i32* %629, align 8
  %630 = load %struct.tnode*, %struct.tnode** %10, align 8
  %631 = getelementptr inbounds %struct.tnode, %struct.tnode* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 8
  %633 = load %struct.tnode*, %struct.tnode** %7, align 8
  %634 = getelementptr inbounds %struct.tnode, %struct.tnode* %633, i32 0, i32 8
  store i32 %632, i32* %634, align 4
  %635 = load %struct.tnode*, %struct.tnode** %9, align 8
  %636 = getelementptr inbounds %struct.tnode, %struct.tnode* %635, i32 0, i32 8
  %637 = load i32, i32* %636, align 4
  %638 = load %struct.tnode*, %struct.tnode** %7, align 8
  %639 = getelementptr inbounds %struct.tnode, %struct.tnode* %638, i32 0, i32 6
  %640 = load %struct.tnode*, %struct.tnode** %639, align 8
  %641 = getelementptr inbounds %struct.tnode, %struct.tnode* %640, i32 0, i32 7
  store i32 %637, i32* %641, align 8
  %642 = load %struct.tnode*, %struct.tnode** %7, align 8
  %643 = getelementptr inbounds %struct.tnode, %struct.tnode* %642, i32 0, i32 8
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.tnode*, %struct.tnode** %7, align 8
  %646 = getelementptr inbounds %struct.tnode, %struct.tnode* %645, i32 0, i32 6
  %647 = load %struct.tnode*, %struct.tnode** %646, align 8
  %648 = getelementptr inbounds %struct.tnode, %struct.tnode* %647, i32 0, i32 8
  store i32 %644, i32* %648, align 4
  %649 = load %struct.tnode*, %struct.tnode** %7, align 8
  %650 = getelementptr inbounds %struct.tnode, %struct.tnode* %649, i32 0, i32 6
  %651 = load %struct.tnode*, %struct.tnode** %650, align 8
  %652 = load %struct.tnode*, %struct.tnode** %7, align 8
  %653 = getelementptr inbounds %struct.tnode, %struct.tnode* %652, i32 0, i32 8
  %654 = load i32, i32* %653, align 4
  call void @tpatch(%struct.tnode* %651, i32 %654)
  %655 = load %struct.tnode*, %struct.tnode** %8, align 8
  %656 = bitcast %struct.tnode* %655 to i8*
  call void @free(i8* %656) #3
  br label %657

; <label>:657:                                    ; preds = %605, %585
  br label %795

; <label>:658:                                    ; preds = %568
  %659 = load %struct.tnode*, %struct.tnode** %7, align 8
  %660 = getelementptr inbounds %struct.tnode, %struct.tnode* %659, i32 0, i32 6
  %661 = load %struct.tnode*, %struct.tnode** %660, align 8
  %662 = getelementptr inbounds %struct.tnode, %struct.tnode* %661, i32 0, i32 4
  %663 = load %struct.tnode*, %struct.tnode** %662, align 8
  store %struct.tnode* %663, %struct.tnode** %9, align 8
  %664 = load %struct.tnode*, %struct.tnode** %9, align 8
  %665 = getelementptr inbounds %struct.tnode, %struct.tnode* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = icmp eq i32 %666, 2
  br i1 %667, label %668, label %729

; <label>:668:                                    ; preds = %658
  %669 = load %struct.tnode*, %struct.tnode** %9, align 8
  %670 = getelementptr inbounds %struct.tnode, %struct.tnode* %669, i32 0, i32 1
  store i32 3, i32* %670, align 4
  %671 = load %struct.tnode*, %struct.tnode** %9, align 8
  %672 = getelementptr inbounds %struct.tnode, %struct.tnode* %671, i32 0, i32 3
  %673 = load %struct.tnode*, %struct.tnode** %672, align 8
  %674 = load %struct.tnode*, %struct.tnode** %9, align 8
  %675 = getelementptr inbounds %struct.tnode, %struct.tnode* %674, i32 0, i32 4
  store %struct.tnode* %673, %struct.tnode** %675, align 8
  %676 = load %struct.tnode*, %struct.tnode** %9, align 8
  %677 = getelementptr inbounds %struct.tnode, %struct.tnode* %676, i32 0, i32 2
  %678 = load %struct.tnode*, %struct.tnode** %677, align 8
  %679 = load %struct.tnode*, %struct.tnode** %9, align 8
  %680 = getelementptr inbounds %struct.tnode, %struct.tnode* %679, i32 0, i32 3
  store %struct.tnode* %678, %struct.tnode** %680, align 8
  %681 = load %struct.tnode*, %struct.tnode** %10, align 8
  %682 = load %struct.tnode*, %struct.tnode** %9, align 8
  %683 = getelementptr inbounds %struct.tnode, %struct.tnode* %682, i32 0, i32 2
  store %struct.tnode* %681, %struct.tnode** %683, align 8
  %684 = load %struct.tnode*, %struct.tnode** %9, align 8
  %685 = load %struct.tnode*, %struct.tnode** %10, align 8
  %686 = getelementptr inbounds %struct.tnode, %struct.tnode* %685, i32 0, i32 6
  store %struct.tnode* %684, %struct.tnode** %686, align 8
  %687 = load %struct.tnode*, %struct.tnode** %8, align 8
  %688 = bitcast %struct.tnode* %687 to i8*
  call void @free(i8* %688) #3
  %689 = load %struct.tnode*, %struct.tnode** %10, align 8
  %690 = getelementptr inbounds %struct.tnode, %struct.tnode* %689, i32 0, i32 0
  %691 = load i32, i32* %690, align 8
  %692 = load %struct.tnode*, %struct.tnode** %9, align 8
  %693 = getelementptr inbounds %struct.tnode, %struct.tnode* %692, i32 0, i32 7
  store i32 %691, i32* %693, align 8
  %694 = load %struct.tnode*, %struct.tnode** %9, align 8
  %695 = getelementptr inbounds %struct.tnode, %struct.tnode* %694, i32 0, i32 3
  %696 = load %struct.tnode*, %struct.tnode** %695, align 8
  %697 = getelementptr inbounds %struct.tnode, %struct.tnode* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = load %struct.tnode*, %struct.tnode** %9, align 8
  %700 = getelementptr inbounds %struct.tnode, %struct.tnode* %699, i32 0, i32 8
  store i32 %698, i32* %700, align 4
  %701 = load %struct.tnode*, %struct.tnode** %9, align 8
  %702 = getelementptr inbounds %struct.tnode, %struct.tnode* %701, i32 0, i32 4
  %703 = load %struct.tnode*, %struct.tnode** %702, align 8
  %704 = getelementptr inbounds %struct.tnode, %struct.tnode* %703, i32 0, i32 0
  %705 = load i32, i32* %704, align 8
  %706 = load %struct.tnode*, %struct.tnode** %9, align 8
  %707 = getelementptr inbounds %struct.tnode, %struct.tnode* %706, i32 0, i32 6
  %708 = load %struct.tnode*, %struct.tnode** %707, align 8
  %709 = getelementptr inbounds %struct.tnode, %struct.tnode* %708, i32 0, i32 8
  store i32 %705, i32* %709, align 4
  %710 = load %struct.tnode*, %struct.tnode** %7, align 8
  %711 = bitcast %struct.tnode* %710 to i8*
  call void @free(i8* %711) #3
  %712 = load %struct.tnode*, %struct.tnode** %9, align 8
  %713 = getelementptr inbounds %struct.tnode, %struct.tnode* %712, i32 0, i32 6
  %714 = load %struct.tnode*, %struct.tnode** %713, align 8
  %715 = getelementptr inbounds %struct.tnode, %struct.tnode* %714, i32 0, i32 4
  %716 = load %struct.tnode*, %struct.tnode** %715, align 8
  %717 = load %struct.tnode*, %struct.tnode** %9, align 8
  %718 = getelementptr inbounds %struct.tnode, %struct.tnode* %717, i32 0, i32 6
  %719 = load %struct.tnode*, %struct.tnode** %718, align 8
  %720 = getelementptr inbounds %struct.tnode, %struct.tnode* %719, i32 0, i32 3
  store %struct.tnode* %716, %struct.tnode** %720, align 8
  %721 = load %struct.tnode*, %struct.tnode** %9, align 8
  %722 = getelementptr inbounds %struct.tnode, %struct.tnode* %721, i32 0, i32 6
  %723 = load %struct.tnode*, %struct.tnode** %722, align 8
  %724 = getelementptr inbounds %struct.tnode, %struct.tnode* %723, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %724, align 8
  %725 = load %struct.tnode*, %struct.tnode** %9, align 8
  %726 = getelementptr inbounds %struct.tnode, %struct.tnode* %725, i32 0, i32 6
  %727 = load %struct.tnode*, %struct.tnode** %726, align 8
  %728 = getelementptr inbounds %struct.tnode, %struct.tnode* %727, i32 0, i32 1
  store i32 2, i32* %728, align 4
  br label %794

; <label>:729:                                    ; preds = %658
  %730 = load %struct.tnode*, %struct.tnode** %9, align 8
  %731 = getelementptr inbounds %struct.tnode, %struct.tnode* %730, i32 0, i32 1
  store i32 2, i32* %731, align 4
  %732 = load %struct.tnode*, %struct.tnode** %10, align 8
  %733 = load %struct.tnode*, %struct.tnode** %7, align 8
  %734 = getelementptr inbounds %struct.tnode, %struct.tnode* %733, i32 0, i32 2
  store %struct.tnode* %732, %struct.tnode** %734, align 8
  %735 = load %struct.tnode*, %struct.tnode** %9, align 8
  %736 = getelementptr inbounds %struct.tnode, %struct.tnode* %735, i32 0, i32 2
  %737 = load %struct.tnode*, %struct.tnode** %736, align 8
  %738 = load %struct.tnode*, %struct.tnode** %7, align 8
  %739 = getelementptr inbounds %struct.tnode, %struct.tnode* %738, i32 0, i32 3
  store %struct.tnode* %737, %struct.tnode** %739, align 8
  %740 = load %struct.tnode*, %struct.tnode** %7, align 8
  %741 = load %struct.tnode*, %struct.tnode** %7, align 8
  %742 = getelementptr inbounds %struct.tnode, %struct.tnode* %741, i32 0, i32 3
  %743 = load %struct.tnode*, %struct.tnode** %742, align 8
  %744 = getelementptr inbounds %struct.tnode, %struct.tnode* %743, i32 0, i32 6
  store %struct.tnode* %740, %struct.tnode** %744, align 8
  %745 = load %struct.tnode*, %struct.tnode** %9, align 8
  %746 = getelementptr inbounds %struct.tnode, %struct.tnode* %745, i32 0, i32 3
  %747 = load %struct.tnode*, %struct.tnode** %746, align 8
  %748 = load %struct.tnode*, %struct.tnode** %9, align 8
  %749 = getelementptr inbounds %struct.tnode, %struct.tnode* %748, i32 0, i32 2
  store %struct.tnode* %747, %struct.tnode** %749, align 8
  %750 = load %struct.tnode*, %struct.tnode** %9, align 8
  %751 = getelementptr inbounds %struct.tnode, %struct.tnode* %750, i32 0, i32 4
  %752 = load %struct.tnode*, %struct.tnode** %751, align 8
  %753 = load %struct.tnode*, %struct.tnode** %9, align 8
  %754 = getelementptr inbounds %struct.tnode, %struct.tnode* %753, i32 0, i32 3
  store %struct.tnode* %752, %struct.tnode** %754, align 8
  %755 = load %struct.tnode*, %struct.tnode** %9, align 8
  %756 = getelementptr inbounds %struct.tnode, %struct.tnode* %755, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %756, align 8
  %757 = load %struct.tnode*, %struct.tnode** %9, align 8
  %758 = getelementptr inbounds %struct.tnode, %struct.tnode* %757, i32 0, i32 2
  %759 = load %struct.tnode*, %struct.tnode** %758, align 8
  %760 = getelementptr inbounds %struct.tnode, %struct.tnode* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 8
  %762 = load %struct.tnode*, %struct.tnode** %9, align 8
  %763 = getelementptr inbounds %struct.tnode, %struct.tnode* %762, i32 0, i32 7
  store i32 %761, i32* %763, align 8
  %764 = load %struct.tnode*, %struct.tnode** %9, align 8
  %765 = getelementptr inbounds %struct.tnode, %struct.tnode* %764, i32 0, i32 3
  %766 = load %struct.tnode*, %struct.tnode** %765, align 8
  %767 = getelementptr inbounds %struct.tnode, %struct.tnode* %766, i32 0, i32 0
  %768 = load i32, i32* %767, align 8
  %769 = load %struct.tnode*, %struct.tnode** %9, align 8
  %770 = getelementptr inbounds %struct.tnode, %struct.tnode* %769, i32 0, i32 8
  store i32 %768, i32* %770, align 4
  %771 = load %struct.tnode*, %struct.tnode** %7, align 8
  %772 = getelementptr inbounds %struct.tnode, %struct.tnode* %771, i32 0, i32 2
  %773 = load %struct.tnode*, %struct.tnode** %772, align 8
  %774 = getelementptr inbounds %struct.tnode, %struct.tnode* %773, i32 0, i32 0
  %775 = load i32, i32* %774, align 8
  %776 = load %struct.tnode*, %struct.tnode** %7, align 8
  %777 = getelementptr inbounds %struct.tnode, %struct.tnode* %776, i32 0, i32 7
  store i32 %775, i32* %777, align 8
  %778 = load %struct.tnode*, %struct.tnode** %7, align 8
  %779 = getelementptr inbounds %struct.tnode, %struct.tnode* %778, i32 0, i32 3
  %780 = load %struct.tnode*, %struct.tnode** %779, align 8
  %781 = getelementptr inbounds %struct.tnode, %struct.tnode* %780, i32 0, i32 0
  %782 = load i32, i32* %781, align 8
  %783 = load %struct.tnode*, %struct.tnode** %7, align 8
  %784 = getelementptr inbounds %struct.tnode, %struct.tnode* %783, i32 0, i32 8
  store i32 %782, i32* %784, align 4
  %785 = load %struct.tnode*, %struct.tnode** %7, align 8
  %786 = getelementptr inbounds %struct.tnode, %struct.tnode* %785, i32 0, i32 8
  %787 = load i32, i32* %786, align 4
  %788 = load %struct.tnode*, %struct.tnode** %7, align 8
  %789 = getelementptr inbounds %struct.tnode, %struct.tnode* %788, i32 0, i32 6
  %790 = load %struct.tnode*, %struct.tnode** %789, align 8
  %791 = getelementptr inbounds %struct.tnode, %struct.tnode* %790, i32 0, i32 8
  store i32 %787, i32* %791, align 4
  %792 = load %struct.tnode*, %struct.tnode** %8, align 8
  %793 = bitcast %struct.tnode* %792 to i8*
  call void @free(i8* %793) #3
  br label %794

; <label>:794:                                    ; preds = %729, %668
  br label %795

; <label>:795:                                    ; preds = %794, %657
  br label %886

; <label>:796:                                    ; preds = %560
  %797 = load %struct.tnode*, %struct.tnode** %7, align 8
  %798 = getelementptr inbounds %struct.tnode, %struct.tnode* %797, i32 0, i32 6
  %799 = load %struct.tnode*, %struct.tnode** %798, align 8
  %800 = getelementptr inbounds %struct.tnode, %struct.tnode* %799, i32 0, i32 3
  %801 = load %struct.tnode*, %struct.tnode** %800, align 8
  store %struct.tnode* %801, %struct.tnode** %9, align 8
  %802 = load %struct.tnode*, %struct.tnode** %9, align 8
  %803 = getelementptr inbounds %struct.tnode, %struct.tnode* %802, i32 0, i32 1
  %804 = load i32, i32* %803, align 4
  %805 = icmp eq i32 %804, 2
  br i1 %805, label %806, label %840

; <label>:806:                                    ; preds = %796
  %807 = load %struct.tnode*, %struct.tnode** %9, align 8
  %808 = getelementptr inbounds %struct.tnode, %struct.tnode* %807, i32 0, i32 1
  store i32 3, i32* %808, align 4
  %809 = load %struct.tnode*, %struct.tnode** %10, align 8
  %810 = load %struct.tnode*, %struct.tnode** %9, align 8
  %811 = getelementptr inbounds %struct.tnode, %struct.tnode* %810, i32 0, i32 4
  store %struct.tnode* %809, %struct.tnode** %811, align 8
  %812 = load %struct.tnode*, %struct.tnode** %9, align 8
  %813 = load %struct.tnode*, %struct.tnode** %10, align 8
  %814 = getelementptr inbounds %struct.tnode, %struct.tnode* %813, i32 0, i32 6
  store %struct.tnode* %812, %struct.tnode** %814, align 8
  %815 = load %struct.tnode*, %struct.tnode** %8, align 8
  %816 = bitcast %struct.tnode* %815 to i8*
  call void @free(i8* %816) #3
  %817 = load %struct.tnode*, %struct.tnode** %10, align 8
  %818 = getelementptr inbounds %struct.tnode, %struct.tnode* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 8
  %820 = load %struct.tnode*, %struct.tnode** %9, align 8
  %821 = getelementptr inbounds %struct.tnode, %struct.tnode* %820, i32 0, i32 6
  %822 = load %struct.tnode*, %struct.tnode** %821, align 8
  %823 = getelementptr inbounds %struct.tnode, %struct.tnode* %822, i32 0, i32 8
  store i32 %819, i32* %823, align 4
  %824 = load %struct.tnode*, %struct.tnode** %9, align 8
  %825 = getelementptr inbounds %struct.tnode, %struct.tnode* %824, i32 0, i32 6
  %826 = load %struct.tnode*, %struct.tnode** %825, align 8
  %827 = load %struct.tnode*, %struct.tnode** %10, align 8
  %828 = getelementptr inbounds %struct.tnode, %struct.tnode* %827, i32 0, i32 0
  %829 = load i32, i32* %828, align 8
  call void @tpatch(%struct.tnode* %826, i32 %829)
  %830 = load %struct.tnode*, %struct.tnode** %9, align 8
  %831 = getelementptr inbounds %struct.tnode, %struct.tnode* %830, i32 0, i32 6
  %832 = load %struct.tnode*, %struct.tnode** %831, align 8
  %833 = getelementptr inbounds %struct.tnode, %struct.tnode* %832, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %833, align 8
  %834 = load %struct.tnode*, %struct.tnode** %9, align 8
  %835 = getelementptr inbounds %struct.tnode, %struct.tnode* %834, i32 0, i32 6
  %836 = load %struct.tnode*, %struct.tnode** %835, align 8
  %837 = getelementptr inbounds %struct.tnode, %struct.tnode* %836, i32 0, i32 1
  store i32 2, i32* %837, align 4
  %838 = load %struct.tnode*, %struct.tnode** %7, align 8
  %839 = bitcast %struct.tnode* %838 to i8*
  call void @free(i8* %839) #3
  br label %885

; <label>:840:                                    ; preds = %796
  %841 = load %struct.tnode*, %struct.tnode** %9, align 8
  %842 = getelementptr inbounds %struct.tnode, %struct.tnode* %841, i32 0, i32 1
  store i32 2, i32* %842, align 4
  %843 = load %struct.tnode*, %struct.tnode** %9, align 8
  %844 = getelementptr inbounds %struct.tnode, %struct.tnode* %843, i32 0, i32 4
  %845 = load %struct.tnode*, %struct.tnode** %844, align 8
  %846 = load %struct.tnode*, %struct.tnode** %7, align 8
  %847 = getelementptr inbounds %struct.tnode, %struct.tnode* %846, i32 0, i32 2
  store %struct.tnode* %845, %struct.tnode** %847, align 8
  %848 = load %struct.tnode*, %struct.tnode** %10, align 8
  %849 = load %struct.tnode*, %struct.tnode** %7, align 8
  %850 = getelementptr inbounds %struct.tnode, %struct.tnode* %849, i32 0, i32 3
  store %struct.tnode* %848, %struct.tnode** %850, align 8
  %851 = load %struct.tnode*, %struct.tnode** %7, align 8
  %852 = load %struct.tnode*, %struct.tnode** %7, align 8
  %853 = getelementptr inbounds %struct.tnode, %struct.tnode* %852, i32 0, i32 2
  %854 = load %struct.tnode*, %struct.tnode** %853, align 8
  %855 = getelementptr inbounds %struct.tnode, %struct.tnode* %854, i32 0, i32 6
  store %struct.tnode* %851, %struct.tnode** %855, align 8
  %856 = load %struct.tnode*, %struct.tnode** %9, align 8
  %857 = getelementptr inbounds %struct.tnode, %struct.tnode* %856, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %857, align 8
  %858 = load %struct.tnode*, %struct.tnode** %7, align 8
  %859 = getelementptr inbounds %struct.tnode, %struct.tnode* %858, i32 0, i32 2
  %860 = load %struct.tnode*, %struct.tnode** %859, align 8
  %861 = getelementptr inbounds %struct.tnode, %struct.tnode* %860, i32 0, i32 0
  %862 = load i32, i32* %861, align 8
  %863 = load %struct.tnode*, %struct.tnode** %7, align 8
  %864 = getelementptr inbounds %struct.tnode, %struct.tnode* %863, i32 0, i32 7
  store i32 %862, i32* %864, align 8
  %865 = load %struct.tnode*, %struct.tnode** %10, align 8
  %866 = getelementptr inbounds %struct.tnode, %struct.tnode* %865, i32 0, i32 0
  %867 = load i32, i32* %866, align 8
  %868 = load %struct.tnode*, %struct.tnode** %7, align 8
  %869 = getelementptr inbounds %struct.tnode, %struct.tnode* %868, i32 0, i32 8
  store i32 %867, i32* %869, align 4
  %870 = load %struct.tnode*, %struct.tnode** %9, align 8
  %871 = getelementptr inbounds %struct.tnode, %struct.tnode* %870, i32 0, i32 8
  %872 = load i32, i32* %871, align 4
  %873 = load %struct.tnode*, %struct.tnode** %9, align 8
  %874 = getelementptr inbounds %struct.tnode, %struct.tnode* %873, i32 0, i32 6
  %875 = load %struct.tnode*, %struct.tnode** %874, align 8
  %876 = getelementptr inbounds %struct.tnode, %struct.tnode* %875, i32 0, i32 8
  store i32 %872, i32* %876, align 4
  %877 = load %struct.tnode*, %struct.tnode** %7, align 8
  %878 = getelementptr inbounds %struct.tnode, %struct.tnode* %877, i32 0, i32 6
  %879 = load %struct.tnode*, %struct.tnode** %878, align 8
  %880 = load %struct.tnode*, %struct.tnode** %10, align 8
  %881 = getelementptr inbounds %struct.tnode, %struct.tnode* %880, i32 0, i32 0
  %882 = load i32, i32* %881, align 8
  call void @tpatch(%struct.tnode* %879, i32 %882)
  %883 = load %struct.tnode*, %struct.tnode** %8, align 8
  %884 = bitcast %struct.tnode* %883 to i8*
  call void @free(i8* %884) #3
  br label %885

; <label>:885:                                    ; preds = %840, %806
  br label %886

; <label>:886:                                    ; preds = %885, %795
  br label %887

; <label>:887:                                    ; preds = %886, %559
  br label %888

; <label>:888:                                    ; preds = %887, %227
  br label %889

; <label>:889:                                    ; preds = %888, %172
  br label %890

; <label>:890:                                    ; preds = %889, %94
  br label %891

; <label>:891:                                    ; preds = %890, %81
  br label %892

; <label>:892:                                    ; preds = %891, %72
  br label %893

; <label>:893:                                    ; preds = %892, %65
  br label %894

; <label>:894:                                    ; preds = %893, %64
  br label %895

; <label>:895:                                    ; preds = %894, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tmax(%struct.tnode**, %struct.tnode**, i32*, i32*) #0 {
  %5 = alloca %struct.tnode**, align 8
  %6 = alloca %struct.tnode**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tnode*, align 8
  store %struct.tnode** %0, %struct.tnode*** %5, align 8
  store %struct.tnode** %1, %struct.tnode*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.tnode**, %struct.tnode*** %5, align 8
  %11 = load %struct.tnode*, %struct.tnode** %10, align 8
  store %struct.tnode* %11, %struct.tnode** %9, align 8
  %12 = load %struct.tnode*, %struct.tnode** %9, align 8
  %13 = icmp eq %struct.tnode* %12, null
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %4
  %15 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* null, %struct.tnode** %15, align 8
  br label %51

; <label>:16:                                     ; preds = %4
  br label %17

; <label>:17:                                     ; preds = %37, %16
  %18 = load %struct.tnode*, %struct.tnode** %9, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %17
  %23 = load %struct.tnode*, %struct.tnode** %9, align 8
  %24 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 4
  %25 = load %struct.tnode*, %struct.tnode** %24, align 8
  store %struct.tnode* %25, %struct.tnode** %9, align 8
  br label %37

; <label>:26:                                     ; preds = %17
  %27 = load %struct.tnode*, %struct.tnode** %9, align 8
  %28 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %26
  %32 = load %struct.tnode*, %struct.tnode** %9, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 3
  %34 = load %struct.tnode*, %struct.tnode** %33, align 8
  store %struct.tnode* %34, %struct.tnode** %9, align 8
  br label %36

; <label>:35:                                     ; preds = %26
  br label %38

; <label>:36:                                     ; preds = %31
  br label %37

; <label>:37:                                     ; preds = %36, %22
  br label %17

; <label>:38:                                     ; preds = %35
  %39 = load %struct.tnode*, %struct.tnode** %9, align 8
  %40 = load %struct.tnode**, %struct.tnode*** %6, align 8
  store %struct.tnode* %39, %struct.tnode** %40, align 8
  %41 = load %struct.tnode*, %struct.tnode** %9, align 8
  %42 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.tnode*, %struct.tnode** %9, align 8
  %46 = getelementptr inbounds %struct.tnode, %struct.tnode* %45, i32 0, i32 9
  %47 = load %struct.plist*, %struct.plist** %46, align 8
  %48 = getelementptr inbounds %struct.plist, %struct.plist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %51

; <label>:51:                                     ; preds = %38, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ttrim(%struct.tnode**, i32) #0 {
  %3 = alloca %struct.tnode**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tnode** %0, %struct.tnode*** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %8

; <label>:8:                                      ; preds = %23, %2
  %9 = load %struct.tnode**, %struct.tnode*** %3, align 8
  call void @tmax(%struct.tnode** %9, %struct.tnode** %5, i32* %7, i32* %6)
  %10 = load %struct.tnode*, %struct.tnode** %5, align 8
  %11 = icmp eq %struct.tnode* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  br label %24

; <label>:13:                                     ; preds = %8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  br label %24

; <label>:18:                                     ; preds = %13
  %19 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  call void @tdelete(%struct.tnode** %19, i32 %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22
  br label %8

; <label>:24:                                     ; preds = %17, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tdiscard(%struct.tnode**, i32) #0 {
  %3 = alloca %struct.tnode**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tnode** %0, %struct.tnode*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %23, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %26

; <label>:13:                                     ; preds = %9
  %14 = load %struct.tnode**, %struct.tnode*** %3, align 8
  call void @tmax(%struct.tnode** %14, %struct.tnode** %5, i32* %7, i32* %6)
  %15 = load %struct.tnode*, %struct.tnode** %5, align 8
  %16 = icmp eq %struct.tnode* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  br label %26

; <label>:18:                                     ; preds = %13
  %19 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  call void @tdelete(%struct.tnode** %19, i32 %20, i32 %21)
  br label %22

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %9

; <label>:26:                                     ; preds = %17, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tnode* @tsearch(i32, %struct.tnode*) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %6 = load %struct.tnode*, %struct.tnode** %5, align 8
  %7 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 2
  %8 = load %struct.tnode*, %struct.tnode** %7, align 8
  %9 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %2
  %13 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %13, %struct.tnode** %3, align 8
  br label %49

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.tnode*, %struct.tnode** %5, align 8
  %17 = getelementptr inbounds %struct.tnode, %struct.tnode* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = icmp sle i32 %15, %18
  br i1 %19, label %20, label %26

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.tnode*, %struct.tnode** %5, align 8
  %23 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 2
  %24 = load %struct.tnode*, %struct.tnode** %23, align 8
  %25 = call %struct.tnode* @tsearch(i32 %21, %struct.tnode* %24)
  store %struct.tnode* %25, %struct.tnode** %3, align 8
  br label %49

; <label>:26:                                     ; preds = %14
  %27 = load %struct.tnode*, %struct.tnode** %5, align 8
  %28 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %37, label %31

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.tnode*, %struct.tnode** %5, align 8
  %34 = getelementptr inbounds %struct.tnode, %struct.tnode* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %43

; <label>:37:                                     ; preds = %31, %26
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tnode*, %struct.tnode** %5, align 8
  %40 = getelementptr inbounds %struct.tnode, %struct.tnode* %39, i32 0, i32 3
  %41 = load %struct.tnode*, %struct.tnode** %40, align 8
  %42 = call %struct.tnode* @tsearch(i32 %38, %struct.tnode* %41)
  store %struct.tnode* %42, %struct.tnode** %3, align 8
  br label %49

; <label>:43:                                     ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.tnode*, %struct.tnode** %5, align 8
  %46 = getelementptr inbounds %struct.tnode, %struct.tnode* %45, i32 0, i32 4
  %47 = load %struct.tnode*, %struct.tnode** %46, align 8
  %48 = call %struct.tnode* @tsearch(i32 %44, %struct.tnode* %47)
  store %struct.tnode* %48, %struct.tnode** %3, align 8
  br label %49

; <label>:49:                                     ; preds = %43, %37, %20, %12
  %50 = load %struct.tnode*, %struct.tnode** %3, align 8
  ret %struct.tnode* %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @taddson(%struct.tnode**, %struct.tnode*) #0 {
  %3 = alloca %struct.tnode**, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca %struct.tnode*, align 8
  store %struct.tnode** %0, %struct.tnode*** %3, align 8
  store %struct.tnode* %1, %struct.tnode** %4, align 8
  %8 = call noalias i8* @malloc(i64 64) #3
  %9 = bitcast i8* %8 to %struct.tnode*
  store %struct.tnode* %9, %struct.tnode** %5, align 8
  %10 = load %struct.tnode*, %struct.tnode** %4, align 8
  %11 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 4
  %12 = load %struct.tnode*, %struct.tnode** %11, align 8
  %13 = load %struct.tnode*, %struct.tnode** %5, align 8
  %14 = getelementptr inbounds %struct.tnode, %struct.tnode* %13, i32 0, i32 2
  store %struct.tnode* %12, %struct.tnode** %14, align 8
  %15 = load %struct.tnode*, %struct.tnode** %4, align 8
  %16 = getelementptr inbounds %struct.tnode, %struct.tnode* %15, i32 0, i32 5
  %17 = load %struct.tnode*, %struct.tnode** %16, align 8
  %18 = load %struct.tnode*, %struct.tnode** %5, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 3
  store %struct.tnode* %17, %struct.tnode** %19, align 8
  %20 = load %struct.tnode*, %struct.tnode** %5, align 8
  %21 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %21, align 8
  %22 = load %struct.tnode*, %struct.tnode** %5, align 8
  %23 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %23, align 8
  %24 = load %struct.tnode*, %struct.tnode** %4, align 8
  %25 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 6
  %26 = load %struct.tnode*, %struct.tnode** %25, align 8
  %27 = load %struct.tnode*, %struct.tnode** %5, align 8
  %28 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 6
  store %struct.tnode* %26, %struct.tnode** %28, align 8
  %29 = load %struct.tnode*, %struct.tnode** %5, align 8
  %30 = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 1
  store i32 2, i32* %30, align 4
  %31 = load %struct.tnode*, %struct.tnode** %4, align 8
  %32 = getelementptr inbounds %struct.tnode, %struct.tnode* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = load %struct.tnode*, %struct.tnode** %4, align 8
  %34 = getelementptr inbounds %struct.tnode, %struct.tnode* %33, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %34, align 8
  %35 = load %struct.tnode*, %struct.tnode** %4, align 8
  %36 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %36, align 8
  %37 = load %struct.tnode*, %struct.tnode** %5, align 8
  %38 = load %struct.tnode*, %struct.tnode** %5, align 8
  %39 = getelementptr inbounds %struct.tnode, %struct.tnode* %38, i32 0, i32 2
  %40 = load %struct.tnode*, %struct.tnode** %39, align 8
  %41 = getelementptr inbounds %struct.tnode, %struct.tnode* %40, i32 0, i32 6
  store %struct.tnode* %37, %struct.tnode** %41, align 8
  %42 = load %struct.tnode*, %struct.tnode** %5, align 8
  %43 = load %struct.tnode*, %struct.tnode** %5, align 8
  %44 = getelementptr inbounds %struct.tnode, %struct.tnode* %43, i32 0, i32 3
  %45 = load %struct.tnode*, %struct.tnode** %44, align 8
  %46 = getelementptr inbounds %struct.tnode, %struct.tnode* %45, i32 0, i32 6
  store %struct.tnode* %42, %struct.tnode** %46, align 8
  %47 = load %struct.tnode*, %struct.tnode** %4, align 8
  %48 = getelementptr inbounds %struct.tnode, %struct.tnode* %47, i32 0, i32 2
  %49 = load %struct.tnode*, %struct.tnode** %48, align 8
  store %struct.tnode* %49, %struct.tnode** %7, align 8
  br label %50

; <label>:50:                                     ; preds = %55, %2
  %51 = load %struct.tnode*, %struct.tnode** %7, align 8
  %52 = getelementptr inbounds %struct.tnode, %struct.tnode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %50
  %56 = load %struct.tnode*, %struct.tnode** %7, align 8
  %57 = getelementptr inbounds %struct.tnode, %struct.tnode* %56, i32 0, i32 4
  %58 = load %struct.tnode*, %struct.tnode** %57, align 8
  store %struct.tnode* %58, %struct.tnode** %7, align 8
  br label %50

; <label>:59:                                     ; preds = %50
  %60 = load %struct.tnode*, %struct.tnode** %7, align 8
  %61 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

; <label>:64:                                     ; preds = %59
  %65 = load %struct.tnode*, %struct.tnode** %7, align 8
  %66 = getelementptr inbounds %struct.tnode, %struct.tnode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tnode*, %struct.tnode** %4, align 8
  %69 = getelementptr inbounds %struct.tnode, %struct.tnode* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 8
  br label %76

; <label>:70:                                     ; preds = %59
  %71 = load %struct.tnode*, %struct.tnode** %7, align 8
  %72 = getelementptr inbounds %struct.tnode, %struct.tnode* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tnode*, %struct.tnode** %4, align 8
  %75 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 8
  br label %76

; <label>:76:                                     ; preds = %70, %64
  %77 = load %struct.tnode*, %struct.tnode** %4, align 8
  %78 = getelementptr inbounds %struct.tnode, %struct.tnode* %77, i32 0, i32 3
  %79 = load %struct.tnode*, %struct.tnode** %78, align 8
  store %struct.tnode* %79, %struct.tnode** %7, align 8
  br label %80

; <label>:80:                                     ; preds = %85, %76
  %81 = load %struct.tnode*, %struct.tnode** %7, align 8
  %82 = getelementptr inbounds %struct.tnode, %struct.tnode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 3
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %80
  %86 = load %struct.tnode*, %struct.tnode** %7, align 8
  %87 = getelementptr inbounds %struct.tnode, %struct.tnode* %86, i32 0, i32 4
  %88 = load %struct.tnode*, %struct.tnode** %87, align 8
  store %struct.tnode* %88, %struct.tnode** %7, align 8
  br label %80

; <label>:89:                                     ; preds = %80
  %90 = load %struct.tnode*, %struct.tnode** %7, align 8
  %91 = getelementptr inbounds %struct.tnode, %struct.tnode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %100

; <label>:94:                                     ; preds = %89
  %95 = load %struct.tnode*, %struct.tnode** %7, align 8
  %96 = getelementptr inbounds %struct.tnode, %struct.tnode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tnode*, %struct.tnode** %4, align 8
  %99 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 4
  br label %106

; <label>:100:                                    ; preds = %89
  %101 = load %struct.tnode*, %struct.tnode** %7, align 8
  %102 = getelementptr inbounds %struct.tnode, %struct.tnode* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.tnode*, %struct.tnode** %4, align 8
  %105 = getelementptr inbounds %struct.tnode, %struct.tnode* %104, i32 0, i32 8
  store i32 %103, i32* %105, align 4
  br label %106

; <label>:106:                                    ; preds = %100, %94
  %107 = load %struct.tnode*, %struct.tnode** %5, align 8
  %108 = getelementptr inbounds %struct.tnode, %struct.tnode* %107, i32 0, i32 2
  %109 = load %struct.tnode*, %struct.tnode** %108, align 8
  store %struct.tnode* %109, %struct.tnode** %7, align 8
  br label %110

; <label>:110:                                    ; preds = %115, %106
  %111 = load %struct.tnode*, %struct.tnode** %7, align 8
  %112 = getelementptr inbounds %struct.tnode, %struct.tnode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %119

; <label>:115:                                    ; preds = %110
  %116 = load %struct.tnode*, %struct.tnode** %7, align 8
  %117 = getelementptr inbounds %struct.tnode, %struct.tnode* %116, i32 0, i32 4
  %118 = load %struct.tnode*, %struct.tnode** %117, align 8
  store %struct.tnode* %118, %struct.tnode** %7, align 8
  br label %110

; <label>:119:                                    ; preds = %110
  %120 = load %struct.tnode*, %struct.tnode** %7, align 8
  %121 = getelementptr inbounds %struct.tnode, %struct.tnode* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

; <label>:124:                                    ; preds = %119
  %125 = load %struct.tnode*, %struct.tnode** %7, align 8
  %126 = getelementptr inbounds %struct.tnode, %struct.tnode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.tnode*, %struct.tnode** %5, align 8
  %129 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 8
  br label %136

; <label>:130:                                    ; preds = %119
  %131 = load %struct.tnode*, %struct.tnode** %7, align 8
  %132 = getelementptr inbounds %struct.tnode, %struct.tnode* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.tnode*, %struct.tnode** %5, align 8
  %135 = getelementptr inbounds %struct.tnode, %struct.tnode* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  br label %136

; <label>:136:                                    ; preds = %130, %124
  %137 = load %struct.tnode*, %struct.tnode** %5, align 8
  %138 = getelementptr inbounds %struct.tnode, %struct.tnode* %137, i32 0, i32 3
  %139 = load %struct.tnode*, %struct.tnode** %138, align 8
  store %struct.tnode* %139, %struct.tnode** %7, align 8
  br label %140

; <label>:140:                                    ; preds = %145, %136
  %141 = load %struct.tnode*, %struct.tnode** %7, align 8
  %142 = getelementptr inbounds %struct.tnode, %struct.tnode* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %149

; <label>:145:                                    ; preds = %140
  %146 = load %struct.tnode*, %struct.tnode** %7, align 8
  %147 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 4
  %148 = load %struct.tnode*, %struct.tnode** %147, align 8
  store %struct.tnode* %148, %struct.tnode** %7, align 8
  br label %140

; <label>:149:                                    ; preds = %140
  %150 = load %struct.tnode*, %struct.tnode** %7, align 8
  %151 = getelementptr inbounds %struct.tnode, %struct.tnode* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

; <label>:154:                                    ; preds = %149
  %155 = load %struct.tnode*, %struct.tnode** %7, align 8
  %156 = getelementptr inbounds %struct.tnode, %struct.tnode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tnode*, %struct.tnode** %5, align 8
  %159 = getelementptr inbounds %struct.tnode, %struct.tnode* %158, i32 0, i32 8
  store i32 %157, i32* %159, align 4
  br label %166

; <label>:160:                                    ; preds = %149
  %161 = load %struct.tnode*, %struct.tnode** %7, align 8
  %162 = getelementptr inbounds %struct.tnode, %struct.tnode* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.tnode*, %struct.tnode** %5, align 8
  %165 = getelementptr inbounds %struct.tnode, %struct.tnode* %164, i32 0, i32 8
  store i32 %163, i32* %165, align 4
  br label %166

; <label>:166:                                    ; preds = %160, %154
  %167 = load %struct.tnode*, %struct.tnode** %4, align 8
  %168 = getelementptr inbounds %struct.tnode, %struct.tnode* %167, i32 0, i32 6
  %169 = load %struct.tnode*, %struct.tnode** %168, align 8
  %170 = icmp eq %struct.tnode* %169, null
  br i1 %170, label %171, label %206

; <label>:171:                                    ; preds = %166
  %172 = call noalias i8* @malloc(i64 64) #3
  %173 = bitcast i8* %172 to %struct.tnode*
  store %struct.tnode* %173, %struct.tnode** %6, align 8
  %174 = load %struct.tnode*, %struct.tnode** %4, align 8
  %175 = load %struct.tnode*, %struct.tnode** %6, align 8
  %176 = getelementptr inbounds %struct.tnode, %struct.tnode* %175, i32 0, i32 2
  store %struct.tnode* %174, %struct.tnode** %176, align 8
  %177 = load %struct.tnode*, %struct.tnode** %5, align 8
  %178 = load %struct.tnode*, %struct.tnode** %6, align 8
  %179 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 3
  store %struct.tnode* %177, %struct.tnode** %179, align 8
  %180 = load %struct.tnode*, %struct.tnode** %6, align 8
  %181 = getelementptr inbounds %struct.tnode, %struct.tnode* %180, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %181, align 8
  %182 = load %struct.tnode*, %struct.tnode** %6, align 8
  %183 = getelementptr inbounds %struct.tnode, %struct.tnode* %182, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %183, align 8
  %184 = load %struct.tnode*, %struct.tnode** %6, align 8
  %185 = getelementptr inbounds %struct.tnode, %struct.tnode* %184, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %185, align 8
  %186 = load %struct.tnode*, %struct.tnode** %6, align 8
  %187 = getelementptr inbounds %struct.tnode, %struct.tnode* %186, i32 0, i32 1
  store i32 2, i32* %187, align 4
  %188 = load %struct.tnode*, %struct.tnode** %6, align 8
  %189 = load %struct.tnode*, %struct.tnode** %4, align 8
  %190 = getelementptr inbounds %struct.tnode, %struct.tnode* %189, i32 0, i32 6
  store %struct.tnode* %188, %struct.tnode** %190, align 8
  %191 = load %struct.tnode*, %struct.tnode** %6, align 8
  %192 = load %struct.tnode*, %struct.tnode** %5, align 8
  %193 = getelementptr inbounds %struct.tnode, %struct.tnode* %192, i32 0, i32 6
  store %struct.tnode* %191, %struct.tnode** %193, align 8
  %194 = load %struct.tnode*, %struct.tnode** %4, align 8
  %195 = getelementptr inbounds %struct.tnode, %struct.tnode* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.tnode*, %struct.tnode** %6, align 8
  %198 = getelementptr inbounds %struct.tnode, %struct.tnode* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  %199 = load %struct.tnode*, %struct.tnode** %5, align 8
  %200 = getelementptr inbounds %struct.tnode, %struct.tnode* %199, i32 0, i32 8
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.tnode*, %struct.tnode** %6, align 8
  %203 = getelementptr inbounds %struct.tnode, %struct.tnode* %202, i32 0, i32 8
  store i32 %201, i32* %203, align 4
  %204 = load %struct.tnode*, %struct.tnode** %6, align 8
  %205 = load %struct.tnode**, %struct.tnode*** %3, align 8
  store %struct.tnode* %204, %struct.tnode** %205, align 8
  br label %298

; <label>:206:                                    ; preds = %166
  %207 = load %struct.tnode*, %struct.tnode** %4, align 8
  %208 = getelementptr inbounds %struct.tnode, %struct.tnode* %207, i32 0, i32 6
  %209 = load %struct.tnode*, %struct.tnode** %208, align 8
  store %struct.tnode* %209, %struct.tnode** %7, align 8
  %210 = load %struct.tnode*, %struct.tnode** %7, align 8
  %211 = getelementptr inbounds %struct.tnode, %struct.tnode* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = icmp eq i32 %213, 4
  br i1 %214, label %215, label %258

; <label>:215:                                    ; preds = %206
  %216 = load %struct.tnode*, %struct.tnode** %7, align 8
  %217 = getelementptr inbounds %struct.tnode, %struct.tnode* %216, i32 0, i32 2
  %218 = load %struct.tnode*, %struct.tnode** %217, align 8
  %219 = load %struct.tnode*, %struct.tnode** %4, align 8
  %220 = icmp eq %struct.tnode* %218, %219
  br i1 %220, label %221, label %235

; <label>:221:                                    ; preds = %215
  %222 = load %struct.tnode*, %struct.tnode** %7, align 8
  %223 = getelementptr inbounds %struct.tnode, %struct.tnode* %222, i32 0, i32 4
  %224 = load %struct.tnode*, %struct.tnode** %223, align 8
  %225 = load %struct.tnode*, %struct.tnode** %7, align 8
  %226 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 5
  store %struct.tnode* %224, %struct.tnode** %226, align 8
  %227 = load %struct.tnode*, %struct.tnode** %7, align 8
  %228 = getelementptr inbounds %struct.tnode, %struct.tnode* %227, i32 0, i32 3
  %229 = load %struct.tnode*, %struct.tnode** %228, align 8
  %230 = load %struct.tnode*, %struct.tnode** %7, align 8
  %231 = getelementptr inbounds %struct.tnode, %struct.tnode* %230, i32 0, i32 4
  store %struct.tnode* %229, %struct.tnode** %231, align 8
  %232 = load %struct.tnode*, %struct.tnode** %5, align 8
  %233 = load %struct.tnode*, %struct.tnode** %7, align 8
  %234 = getelementptr inbounds %struct.tnode, %struct.tnode* %233, i32 0, i32 3
  store %struct.tnode* %232, %struct.tnode** %234, align 8
  br label %255

; <label>:235:                                    ; preds = %215
  %236 = load %struct.tnode*, %struct.tnode** %7, align 8
  %237 = getelementptr inbounds %struct.tnode, %struct.tnode* %236, i32 0, i32 3
  %238 = load %struct.tnode*, %struct.tnode** %237, align 8
  %239 = load %struct.tnode*, %struct.tnode** %4, align 8
  %240 = icmp eq %struct.tnode* %238, %239
  br i1 %240, label %241, label %250

; <label>:241:                                    ; preds = %235
  %242 = load %struct.tnode*, %struct.tnode** %7, align 8
  %243 = getelementptr inbounds %struct.tnode, %struct.tnode* %242, i32 0, i32 4
  %244 = load %struct.tnode*, %struct.tnode** %243, align 8
  %245 = load %struct.tnode*, %struct.tnode** %7, align 8
  %246 = getelementptr inbounds %struct.tnode, %struct.tnode* %245, i32 0, i32 5
  store %struct.tnode* %244, %struct.tnode** %246, align 8
  %247 = load %struct.tnode*, %struct.tnode** %5, align 8
  %248 = load %struct.tnode*, %struct.tnode** %7, align 8
  %249 = getelementptr inbounds %struct.tnode, %struct.tnode* %248, i32 0, i32 4
  store %struct.tnode* %247, %struct.tnode** %249, align 8
  br label %254

; <label>:250:                                    ; preds = %235
  %251 = load %struct.tnode*, %struct.tnode** %5, align 8
  %252 = load %struct.tnode*, %struct.tnode** %7, align 8
  %253 = getelementptr inbounds %struct.tnode, %struct.tnode* %252, i32 0, i32 5
  store %struct.tnode* %251, %struct.tnode** %253, align 8
  br label %254

; <label>:254:                                    ; preds = %250, %241
  br label %255

; <label>:255:                                    ; preds = %254, %221
  %256 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %257 = load %struct.tnode*, %struct.tnode** %7, align 8
  call void @taddson(%struct.tnode** %256, %struct.tnode* %257)
  br label %297

; <label>:258:                                    ; preds = %206
  %259 = load %struct.tnode*, %struct.tnode** %7, align 8
  %260 = getelementptr inbounds %struct.tnode, %struct.tnode* %259, i32 0, i32 2
  %261 = load %struct.tnode*, %struct.tnode** %260, align 8
  %262 = load %struct.tnode*, %struct.tnode** %4, align 8
  %263 = icmp eq %struct.tnode* %261, %262
  br i1 %263, label %264, label %283

; <label>:264:                                    ; preds = %258
  %265 = load %struct.tnode*, %struct.tnode** %7, align 8
  %266 = getelementptr inbounds %struct.tnode, %struct.tnode* %265, i32 0, i32 3
  %267 = load %struct.tnode*, %struct.tnode** %266, align 8
  %268 = load %struct.tnode*, %struct.tnode** %7, align 8
  %269 = getelementptr inbounds %struct.tnode, %struct.tnode* %268, i32 0, i32 4
  store %struct.tnode* %267, %struct.tnode** %269, align 8
  %270 = load %struct.tnode*, %struct.tnode** %5, align 8
  %271 = load %struct.tnode*, %struct.tnode** %7, align 8
  %272 = getelementptr inbounds %struct.tnode, %struct.tnode* %271, i32 0, i32 3
  store %struct.tnode* %270, %struct.tnode** %272, align 8
  %273 = load %struct.tnode*, %struct.tnode** %4, align 8
  %274 = getelementptr inbounds %struct.tnode, %struct.tnode* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.tnode*, %struct.tnode** %7, align 8
  %277 = getelementptr inbounds %struct.tnode, %struct.tnode* %276, i32 0, i32 7
  store i32 %275, i32* %277, align 8
  %278 = load %struct.tnode*, %struct.tnode** %5, align 8
  %279 = getelementptr inbounds %struct.tnode, %struct.tnode* %278, i32 0, i32 8
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.tnode*, %struct.tnode** %7, align 8
  %282 = getelementptr inbounds %struct.tnode, %struct.tnode* %281, i32 0, i32 8
  store i32 %280, i32* %282, align 4
  br label %296

; <label>:283:                                    ; preds = %258
  %284 = load %struct.tnode*, %struct.tnode** %5, align 8
  %285 = load %struct.tnode*, %struct.tnode** %7, align 8
  %286 = getelementptr inbounds %struct.tnode, %struct.tnode* %285, i32 0, i32 4
  store %struct.tnode* %284, %struct.tnode** %286, align 8
  %287 = load %struct.tnode*, %struct.tnode** %4, align 8
  %288 = getelementptr inbounds %struct.tnode, %struct.tnode* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.tnode*, %struct.tnode** %7, align 8
  %291 = getelementptr inbounds %struct.tnode, %struct.tnode* %290, i32 0, i32 8
  store i32 %289, i32* %291, align 4
  %292 = load %struct.tnode*, %struct.tnode** %7, align 8
  %293 = load %struct.tnode*, %struct.tnode** %5, align 8
  %294 = getelementptr inbounds %struct.tnode, %struct.tnode* %293, i32 0, i32 8
  %295 = load i32, i32* %294, align 4
  call void @tpatch(%struct.tnode* %292, i32 %295)
  br label %296

; <label>:296:                                    ; preds = %283, %264
  br label %297

; <label>:297:                                    ; preds = %296, %255
  br label %298

; <label>:298:                                    ; preds = %297, %171
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tpatch(%struct.tnode*, i32) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  store %struct.tnode* %0, %struct.tnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tnode*, %struct.tnode** %3, align 8
  %7 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 6
  %8 = load %struct.tnode*, %struct.tnode** %7, align 8
  store %struct.tnode* %8, %struct.tnode** %5, align 8
  %9 = load %struct.tnode*, %struct.tnode** %5, align 8
  %10 = icmp ne %struct.tnode* %9, null
  br i1 %10, label %11, label %44

; <label>:11:                                     ; preds = %2
  %12 = load %struct.tnode*, %struct.tnode** %5, align 8
  %13 = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 2
  %14 = load %struct.tnode*, %struct.tnode** %13, align 8
  %15 = load %struct.tnode*, %struct.tnode** %3, align 8
  %16 = icmp eq %struct.tnode* %14, %15
  br i1 %16, label %17, label %21

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.tnode*, %struct.tnode** %5, align 8
  %20 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  br label %43

; <label>:21:                                     ; preds = %11
  %22 = load %struct.tnode*, %struct.tnode** %5, align 8
  %23 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 3
  %24 = load %struct.tnode*, %struct.tnode** %23, align 8
  %25 = load %struct.tnode*, %struct.tnode** %3, align 8
  %26 = icmp eq %struct.tnode* %24, %25
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.tnode*, %struct.tnode** %5, align 8
  %30 = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.tnode*, %struct.tnode** %5, align 8
  %32 = getelementptr inbounds %struct.tnode, %struct.tnode* %31, i32 0, i32 4
  %33 = load %struct.tnode*, %struct.tnode** %32, align 8
  %34 = icmp eq %struct.tnode* %33, null
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %27
  %36 = load %struct.tnode*, %struct.tnode** %5, align 8
  %37 = load i32, i32* %4, align 4
  call void @tpatch(%struct.tnode* %36, i32 %37)
  br label %38

; <label>:38:                                     ; preds = %35, %27
  br label %42

; <label>:39:                                     ; preds = %21
  %40 = load %struct.tnode*, %struct.tnode** %5, align 8
  %41 = load i32, i32* %4, align 4
  call void @tpatch(%struct.tnode* %40, i32 %41)
  br label %42

; <label>:42:                                     ; preds = %39, %38
  br label %43

; <label>:43:                                     ; preds = %42, %17
  br label %44

; <label>:44:                                     ; preds = %43, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tinsert(%struct.tnode**, i32, i32) #0 {
  %4 = alloca %struct.tnode**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tnode*, align 8
  %8 = alloca %struct.tnode*, align 8
  %9 = alloca %struct.tnode*, align 8
  %10 = alloca %struct.tnode*, align 8
  store %struct.tnode** %0, %struct.tnode*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %12 = load %struct.tnode*, %struct.tnode** %11, align 8
  %13 = icmp eq %struct.tnode* %12, null
  br i1 %13, label %14, label %21

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  call void @makenode(%struct.tnode** %7, i32 %15, i32 %16)
  %17 = load %struct.tnode*, %struct.tnode** %7, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %18, align 8
  %19 = load %struct.tnode*, %struct.tnode** %7, align 8
  %20 = load %struct.tnode**, %struct.tnode*** %4, align 8
  store %struct.tnode* %19, %struct.tnode** %20, align 8
  br label %270

; <label>:21:                                     ; preds = %3
  %22 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %23 = load %struct.tnode*, %struct.tnode** %22, align 8
  %24 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %106

; <label>:27:                                     ; preds = %21
  %28 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %29 = load %struct.tnode*, %struct.tnode** %28, align 8
  %30 = getelementptr inbounds %struct.tnode, %struct.tnode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %27
  %35 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %36 = load %struct.tnode*, %struct.tnode** %35, align 8
  %37 = load i32, i32* %6, align 4
  call void @addplist(%struct.tnode* %36, i32 %37)
  br label %105

; <label>:38:                                     ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  call void @makenode(%struct.tnode** %7, i32 %39, i32 %40)
  %41 = call noalias i8* @malloc(i64 64) #3
  %42 = bitcast i8* %41 to %struct.tnode*
  store %struct.tnode* %42, %struct.tnode** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %45 = load %struct.tnode*, %struct.tnode** %44, align 8
  %46 = getelementptr inbounds %struct.tnode, %struct.tnode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %43, %47
  br i1 %48, label %49, label %70

; <label>:49:                                     ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.tnode*, %struct.tnode** %8, align 8
  %52 = getelementptr inbounds %struct.tnode, %struct.tnode* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %54 = load %struct.tnode*, %struct.tnode** %53, align 8
  %55 = getelementptr inbounds %struct.tnode, %struct.tnode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tnode*, %struct.tnode** %8, align 8
  %58 = getelementptr inbounds %struct.tnode, %struct.tnode* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tnode*, %struct.tnode** %7, align 8
  %60 = load %struct.tnode*, %struct.tnode** %8, align 8
  %61 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 2
  store %struct.tnode* %59, %struct.tnode** %61, align 8
  %62 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %63 = load %struct.tnode*, %struct.tnode** %62, align 8
  %64 = load %struct.tnode*, %struct.tnode** %8, align 8
  %65 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 3
  store %struct.tnode* %63, %struct.tnode** %65, align 8
  %66 = load %struct.tnode*, %struct.tnode** %8, align 8
  %67 = getelementptr inbounds %struct.tnode, %struct.tnode* %66, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %67, align 8
  %68 = load %struct.tnode*, %struct.tnode** %8, align 8
  %69 = getelementptr inbounds %struct.tnode, %struct.tnode* %68, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %69, align 8
  br label %91

; <label>:70:                                     ; preds = %38
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.tnode*, %struct.tnode** %8, align 8
  %73 = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %75 = load %struct.tnode*, %struct.tnode** %74, align 8
  %76 = getelementptr inbounds %struct.tnode, %struct.tnode* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.tnode*, %struct.tnode** %8, align 8
  %79 = getelementptr inbounds %struct.tnode, %struct.tnode* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %81 = load %struct.tnode*, %struct.tnode** %80, align 8
  %82 = load %struct.tnode*, %struct.tnode** %8, align 8
  %83 = getelementptr inbounds %struct.tnode, %struct.tnode* %82, i32 0, i32 2
  store %struct.tnode* %81, %struct.tnode** %83, align 8
  %84 = load %struct.tnode*, %struct.tnode** %7, align 8
  %85 = load %struct.tnode*, %struct.tnode** %8, align 8
  %86 = getelementptr inbounds %struct.tnode, %struct.tnode* %85, i32 0, i32 3
  store %struct.tnode* %84, %struct.tnode** %86, align 8
  %87 = load %struct.tnode*, %struct.tnode** %8, align 8
  %88 = getelementptr inbounds %struct.tnode, %struct.tnode* %87, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %88, align 8
  %89 = load %struct.tnode*, %struct.tnode** %8, align 8
  %90 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %90, align 8
  br label %91

; <label>:91:                                     ; preds = %70, %49
  %92 = load %struct.tnode*, %struct.tnode** %8, align 8
  %93 = getelementptr inbounds %struct.tnode, %struct.tnode* %92, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %93, align 8
  %94 = load %struct.tnode*, %struct.tnode** %8, align 8
  %95 = getelementptr inbounds %struct.tnode, %struct.tnode* %94, i32 0, i32 1
  store i32 2, i32* %95, align 4
  %96 = load %struct.tnode*, %struct.tnode** %8, align 8
  %97 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %98 = load %struct.tnode*, %struct.tnode** %97, align 8
  %99 = getelementptr inbounds %struct.tnode, %struct.tnode* %98, i32 0, i32 6
  store %struct.tnode* %96, %struct.tnode** %99, align 8
  %100 = load %struct.tnode*, %struct.tnode** %8, align 8
  %101 = load %struct.tnode*, %struct.tnode** %7, align 8
  %102 = getelementptr inbounds %struct.tnode, %struct.tnode* %101, i32 0, i32 6
  store %struct.tnode* %100, %struct.tnode** %102, align 8
  %103 = load %struct.tnode*, %struct.tnode** %8, align 8
  %104 = load %struct.tnode**, %struct.tnode*** %4, align 8
  store %struct.tnode* %103, %struct.tnode** %104, align 8
  br label %105

; <label>:105:                                    ; preds = %91, %34
  br label %269

; <label>:106:                                    ; preds = %21
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %109 = load %struct.tnode*, %struct.tnode** %108, align 8
  %110 = call %struct.tnode* @tsearch(i32 %107, %struct.tnode* %109)
  store %struct.tnode* %110, %struct.tnode** %9, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.tnode*, %struct.tnode** %9, align 8
  %113 = call %struct.tnode* @tfind(i32 %111, %struct.tnode* %112)
  store %struct.tnode* %113, %struct.tnode** %10, align 8
  %114 = load %struct.tnode*, %struct.tnode** %10, align 8
  %115 = icmp ne %struct.tnode* %114, null
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %106
  %117 = load %struct.tnode*, %struct.tnode** %10, align 8
  %118 = load i32, i32* %6, align 4
  call void @addplist(%struct.tnode* %117, i32 %118)
  br label %268

; <label>:119:                                    ; preds = %106
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  call void @makenode(%struct.tnode** %7, i32 %120, i32 %121)
  %122 = load %struct.tnode*, %struct.tnode** %9, align 8
  %123 = getelementptr inbounds %struct.tnode, %struct.tnode* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %189

; <label>:126:                                    ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.tnode*, %struct.tnode** %9, align 8
  %129 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 2
  %130 = load %struct.tnode*, %struct.tnode** %129, align 8
  %131 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %127, %132
  br i1 %133, label %134, label %156

; <label>:134:                                    ; preds = %126
  %135 = load %struct.tnode*, %struct.tnode** %9, align 8
  %136 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 3
  %137 = load %struct.tnode*, %struct.tnode** %136, align 8
  %138 = load %struct.tnode*, %struct.tnode** %9, align 8
  %139 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 4
  store %struct.tnode* %137, %struct.tnode** %139, align 8
  %140 = load %struct.tnode*, %struct.tnode** %9, align 8
  %141 = getelementptr inbounds %struct.tnode, %struct.tnode* %140, i32 0, i32 2
  %142 = load %struct.tnode*, %struct.tnode** %141, align 8
  %143 = load %struct.tnode*, %struct.tnode** %9, align 8
  %144 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 3
  store %struct.tnode* %142, %struct.tnode** %144, align 8
  %145 = load %struct.tnode*, %struct.tnode** %7, align 8
  %146 = load %struct.tnode*, %struct.tnode** %9, align 8
  %147 = getelementptr inbounds %struct.tnode, %struct.tnode* %146, i32 0, i32 2
  store %struct.tnode* %145, %struct.tnode** %147, align 8
  %148 = load %struct.tnode*, %struct.tnode** %9, align 8
  %149 = getelementptr inbounds %struct.tnode, %struct.tnode* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.tnode*, %struct.tnode** %9, align 8
  %152 = getelementptr inbounds %struct.tnode, %struct.tnode* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.tnode*, %struct.tnode** %9, align 8
  %155 = getelementptr inbounds %struct.tnode, %struct.tnode* %154, i32 0, i32 7
  store i32 %153, i32* %155, align 8
  br label %183

; <label>:156:                                    ; preds = %126
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.tnode*, %struct.tnode** %9, align 8
  %159 = getelementptr inbounds %struct.tnode, %struct.tnode* %158, i32 0, i32 3
  %160 = load %struct.tnode*, %struct.tnode** %159, align 8
  %161 = getelementptr inbounds %struct.tnode, %struct.tnode* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp sle i32 %157, %162
  br i1 %163, label %164, label %176

; <label>:164:                                    ; preds = %156
  %165 = load %struct.tnode*, %struct.tnode** %9, align 8
  %166 = getelementptr inbounds %struct.tnode, %struct.tnode* %165, i32 0, i32 3
  %167 = load %struct.tnode*, %struct.tnode** %166, align 8
  %168 = load %struct.tnode*, %struct.tnode** %9, align 8
  %169 = getelementptr inbounds %struct.tnode, %struct.tnode* %168, i32 0, i32 4
  store %struct.tnode* %167, %struct.tnode** %169, align 8
  %170 = load %struct.tnode*, %struct.tnode** %7, align 8
  %171 = load %struct.tnode*, %struct.tnode** %9, align 8
  %172 = getelementptr inbounds %struct.tnode, %struct.tnode* %171, i32 0, i32 3
  store %struct.tnode* %170, %struct.tnode** %172, align 8
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.tnode*, %struct.tnode** %9, align 8
  %175 = getelementptr inbounds %struct.tnode, %struct.tnode* %174, i32 0, i32 8
  store i32 %173, i32* %175, align 4
  br label %182

; <label>:176:                                    ; preds = %156
  %177 = load %struct.tnode*, %struct.tnode** %7, align 8
  %178 = load %struct.tnode*, %struct.tnode** %9, align 8
  %179 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 4
  store %struct.tnode* %177, %struct.tnode** %179, align 8
  %180 = load %struct.tnode*, %struct.tnode** %9, align 8
  %181 = load i32, i32* %5, align 4
  call void @tpatch(%struct.tnode* %180, i32 %181)
  br label %182

; <label>:182:                                    ; preds = %176, %164
  br label %183

; <label>:183:                                    ; preds = %182, %134
  %184 = load %struct.tnode*, %struct.tnode** %9, align 8
  %185 = getelementptr inbounds %struct.tnode, %struct.tnode* %184, i32 0, i32 1
  store i32 3, i32* %185, align 4
  %186 = load %struct.tnode*, %struct.tnode** %9, align 8
  %187 = load %struct.tnode*, %struct.tnode** %7, align 8
  %188 = getelementptr inbounds %struct.tnode, %struct.tnode* %187, i32 0, i32 6
  store %struct.tnode* %186, %struct.tnode** %188, align 8
  br label %267

; <label>:189:                                    ; preds = %119
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.tnode*, %struct.tnode** %9, align 8
  %192 = getelementptr inbounds %struct.tnode, %struct.tnode* %191, i32 0, i32 2
  %193 = load %struct.tnode*, %struct.tnode** %192, align 8
  %194 = getelementptr inbounds %struct.tnode, %struct.tnode* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp sle i32 %190, %195
  br i1 %196, label %197, label %216

; <label>:197:                                    ; preds = %189
  %198 = load %struct.tnode*, %struct.tnode** %9, align 8
  %199 = getelementptr inbounds %struct.tnode, %struct.tnode* %198, i32 0, i32 4
  %200 = load %struct.tnode*, %struct.tnode** %199, align 8
  %201 = load %struct.tnode*, %struct.tnode** %9, align 8
  %202 = getelementptr inbounds %struct.tnode, %struct.tnode* %201, i32 0, i32 5
  store %struct.tnode* %200, %struct.tnode** %202, align 8
  %203 = load %struct.tnode*, %struct.tnode** %9, align 8
  %204 = getelementptr inbounds %struct.tnode, %struct.tnode* %203, i32 0, i32 3
  %205 = load %struct.tnode*, %struct.tnode** %204, align 8
  %206 = load %struct.tnode*, %struct.tnode** %9, align 8
  %207 = getelementptr inbounds %struct.tnode, %struct.tnode* %206, i32 0, i32 4
  store %struct.tnode* %205, %struct.tnode** %207, align 8
  %208 = load %struct.tnode*, %struct.tnode** %9, align 8
  %209 = getelementptr inbounds %struct.tnode, %struct.tnode* %208, i32 0, i32 2
  %210 = load %struct.tnode*, %struct.tnode** %209, align 8
  %211 = load %struct.tnode*, %struct.tnode** %9, align 8
  %212 = getelementptr inbounds %struct.tnode, %struct.tnode* %211, i32 0, i32 3
  store %struct.tnode* %210, %struct.tnode** %212, align 8
  %213 = load %struct.tnode*, %struct.tnode** %7, align 8
  %214 = load %struct.tnode*, %struct.tnode** %9, align 8
  %215 = getelementptr inbounds %struct.tnode, %struct.tnode* %214, i32 0, i32 2
  store %struct.tnode* %213, %struct.tnode** %215, align 8
  br label %261

; <label>:216:                                    ; preds = %189
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.tnode*, %struct.tnode** %9, align 8
  %219 = getelementptr inbounds %struct.tnode, %struct.tnode* %218, i32 0, i32 3
  %220 = load %struct.tnode*, %struct.tnode** %219, align 8
  %221 = getelementptr inbounds %struct.tnode, %struct.tnode* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp sle i32 %217, %222
  br i1 %223, label %224, label %238

; <label>:224:                                    ; preds = %216
  %225 = load %struct.tnode*, %struct.tnode** %9, align 8
  %226 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 4
  %227 = load %struct.tnode*, %struct.tnode** %226, align 8
  %228 = load %struct.tnode*, %struct.tnode** %9, align 8
  %229 = getelementptr inbounds %struct.tnode, %struct.tnode* %228, i32 0, i32 5
  store %struct.tnode* %227, %struct.tnode** %229, align 8
  %230 = load %struct.tnode*, %struct.tnode** %9, align 8
  %231 = getelementptr inbounds %struct.tnode, %struct.tnode* %230, i32 0, i32 3
  %232 = load %struct.tnode*, %struct.tnode** %231, align 8
  %233 = load %struct.tnode*, %struct.tnode** %9, align 8
  %234 = getelementptr inbounds %struct.tnode, %struct.tnode* %233, i32 0, i32 4
  store %struct.tnode* %232, %struct.tnode** %234, align 8
  %235 = load %struct.tnode*, %struct.tnode** %7, align 8
  %236 = load %struct.tnode*, %struct.tnode** %9, align 8
  %237 = getelementptr inbounds %struct.tnode, %struct.tnode* %236, i32 0, i32 3
  store %struct.tnode* %235, %struct.tnode** %237, align 8
  br label %260

; <label>:238:                                    ; preds = %216
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.tnode*, %struct.tnode** %9, align 8
  %241 = getelementptr inbounds %struct.tnode, %struct.tnode* %240, i32 0, i32 4
  %242 = load %struct.tnode*, %struct.tnode** %241, align 8
  %243 = getelementptr inbounds %struct.tnode, %struct.tnode* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp sle i32 %239, %244
  br i1 %245, label %246, label %255

; <label>:246:                                    ; preds = %238
  %247 = load %struct.tnode*, %struct.tnode** %9, align 8
  %248 = getelementptr inbounds %struct.tnode, %struct.tnode* %247, i32 0, i32 4
  %249 = load %struct.tnode*, %struct.tnode** %248, align 8
  %250 = load %struct.tnode*, %struct.tnode** %9, align 8
  %251 = getelementptr inbounds %struct.tnode, %struct.tnode* %250, i32 0, i32 5
  store %struct.tnode* %249, %struct.tnode** %251, align 8
  %252 = load %struct.tnode*, %struct.tnode** %7, align 8
  %253 = load %struct.tnode*, %struct.tnode** %9, align 8
  %254 = getelementptr inbounds %struct.tnode, %struct.tnode* %253, i32 0, i32 4
  store %struct.tnode* %252, %struct.tnode** %254, align 8
  br label %259

; <label>:255:                                    ; preds = %238
  %256 = load %struct.tnode*, %struct.tnode** %7, align 8
  %257 = load %struct.tnode*, %struct.tnode** %9, align 8
  %258 = getelementptr inbounds %struct.tnode, %struct.tnode* %257, i32 0, i32 5
  store %struct.tnode* %256, %struct.tnode** %258, align 8
  br label %259

; <label>:259:                                    ; preds = %255, %246
  br label %260

; <label>:260:                                    ; preds = %259, %224
  br label %261

; <label>:261:                                    ; preds = %260, %197
  %262 = load %struct.tnode*, %struct.tnode** %9, align 8
  %263 = load %struct.tnode*, %struct.tnode** %7, align 8
  %264 = getelementptr inbounds %struct.tnode, %struct.tnode* %263, i32 0, i32 6
  store %struct.tnode* %262, %struct.tnode** %264, align 8
  %265 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %266 = load %struct.tnode*, %struct.tnode** %9, align 8
  call void @taddson(%struct.tnode** %265, %struct.tnode* %266)
  br label %267

; <label>:267:                                    ; preds = %261, %183
  br label %268

; <label>:268:                                    ; preds = %267, %116
  br label %269

; <label>:269:                                    ; preds = %268, %105
  br label %270

; <label>:270:                                    ; preds = %269, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makenode(%struct.tnode**, i32, i32) #0 {
  %4 = alloca %struct.tnode**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tnode** %0, %struct.tnode*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = call noalias i8* @malloc(i64 64) #3
  %8 = bitcast i8* %7 to %struct.tnode*
  %9 = load %struct.tnode**, %struct.tnode*** %4, align 8
  store %struct.tnode* %8, %struct.tnode** %9, align 8
  %10 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %11 = load %struct.tnode*, %struct.tnode** %10, align 8
  %12 = getelementptr inbounds %struct.tnode, %struct.tnode* %11, i32 0, i32 2
  store %struct.tnode* null, %struct.tnode** %12, align 8
  %13 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %14 = load %struct.tnode*, %struct.tnode** %13, align 8
  %15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 3
  store %struct.tnode* null, %struct.tnode** %15, align 8
  %16 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %17 = load %struct.tnode*, %struct.tnode** %16, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %18, align 8
  %19 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %21 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 5
  store %struct.tnode* null, %struct.tnode** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %24 = load %struct.tnode*, %struct.tnode** %23, align 8
  %25 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %27 = load %struct.tnode*, %struct.tnode** %26, align 8
  %28 = getelementptr inbounds %struct.tnode, %struct.tnode* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = call noalias i8* @malloc(i64 16) #3
  %30 = bitcast i8* %29 to %struct.plist*
  %31 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %32 = load %struct.tnode*, %struct.tnode** %31, align 8
  %33 = getelementptr inbounds %struct.tnode, %struct.tnode* %32, i32 0, i32 9
  store %struct.plist* %30, %struct.plist** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %36 = load %struct.tnode*, %struct.tnode** %35, align 8
  %37 = getelementptr inbounds %struct.tnode, %struct.tnode* %36, i32 0, i32 9
  %38 = load %struct.plist*, %struct.plist** %37, align 8
  %39 = getelementptr inbounds %struct.plist, %struct.plist* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load %struct.tnode**, %struct.tnode*** %4, align 8
  %41 = load %struct.tnode*, %struct.tnode** %40, align 8
  %42 = getelementptr inbounds %struct.tnode, %struct.tnode* %41, i32 0, i32 9
  %43 = load %struct.plist*, %struct.plist** %42, align 8
  %44 = getelementptr inbounds %struct.plist, %struct.plist* %43, i32 0, i32 1
  store %struct.plist* null, %struct.plist** %44, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @addplist(%struct.tnode*, i32) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.plist*, align 8
  store %struct.tnode* %0, %struct.tnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call noalias i8* @malloc(i64 16) #3
  %7 = bitcast i8* %6 to %struct.plist*
  store %struct.plist* %7, %struct.plist** %5, align 8
  %8 = load %struct.tnode*, %struct.tnode** %3, align 8
  %9 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 9
  %10 = load %struct.plist*, %struct.plist** %9, align 8
  %11 = load %struct.plist*, %struct.plist** %5, align 8
  %12 = getelementptr inbounds %struct.plist, %struct.plist* %11, i32 0, i32 1
  store %struct.plist* %10, %struct.plist** %12, align 8
  %13 = load %struct.plist*, %struct.plist** %5, align 8
  %14 = load %struct.tnode*, %struct.tnode** %3, align 8
  %15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 9
  store %struct.plist* %13, %struct.plist** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.tnode*, %struct.tnode** %3, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 9
  %19 = load %struct.plist*, %struct.plist** %18, align 8
  %20 = getelementptr inbounds %struct.plist, %struct.plist* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tsubson(%struct.tnode**, %struct.tnode*) #0 {
  %3 = alloca %struct.tnode**, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca %struct.tnode*, align 8
  %8 = alloca i32, align 4
  store %struct.tnode** %0, %struct.tnode*** %3, align 8
  store %struct.tnode* %1, %struct.tnode** %4, align 8
  %9 = load %struct.tnode*, %struct.tnode** %4, align 8
  %10 = getelementptr inbounds %struct.tnode, %struct.tnode* %9, i32 0, i32 6
  %11 = load %struct.tnode*, %struct.tnode** %10, align 8
  store %struct.tnode* %11, %struct.tnode** %5, align 8
  %12 = load %struct.tnode*, %struct.tnode** %5, align 8
  %13 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %14 = load %struct.tnode*, %struct.tnode** %13, align 8
  %15 = icmp eq %struct.tnode* %12, %14
  br i1 %15, label %16, label %43

; <label>:16:                                     ; preds = %2
  %17 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %18 = load %struct.tnode*, %struct.tnode** %17, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 2
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %21 = load %struct.tnode*, %struct.tnode** %4, align 8
  %22 = icmp eq %struct.tnode* %20, %21
  br i1 %22, label %23, label %28

; <label>:23:                                     ; preds = %16
  %24 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %25 = load %struct.tnode*, %struct.tnode** %24, align 8
  %26 = getelementptr inbounds %struct.tnode, %struct.tnode* %25, i32 0, i32 3
  %27 = load %struct.tnode*, %struct.tnode** %26, align 8
  store %struct.tnode* %27, %struct.tnode** %6, align 8
  br label %33

; <label>:28:                                     ; preds = %16
  %29 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %30 = load %struct.tnode*, %struct.tnode** %29, align 8
  %31 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 2
  %32 = load %struct.tnode*, %struct.tnode** %31, align 8
  store %struct.tnode* %32, %struct.tnode** %6, align 8
  br label %33

; <label>:33:                                     ; preds = %28, %23
  %34 = load %struct.tnode*, %struct.tnode** %6, align 8
  %35 = getelementptr inbounds %struct.tnode, %struct.tnode* %34, i32 0, i32 6
  store %struct.tnode* null, %struct.tnode** %35, align 8
  %36 = load %struct.tnode*, %struct.tnode** %4, align 8
  %37 = bitcast %struct.tnode* %36 to i8*
  call void @free(i8* %37) #3
  %38 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %39 = load %struct.tnode*, %struct.tnode** %38, align 8
  %40 = bitcast %struct.tnode* %39 to i8*
  call void @free(i8* %40) #3
  %41 = load %struct.tnode*, %struct.tnode** %6, align 8
  %42 = load %struct.tnode**, %struct.tnode*** %3, align 8
  store %struct.tnode* %41, %struct.tnode** %42, align 8
  br label %666

; <label>:43:                                     ; preds = %2
  %44 = load %struct.tnode*, %struct.tnode** %5, align 8
  %45 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 2
  %46 = load %struct.tnode*, %struct.tnode** %45, align 8
  %47 = load %struct.tnode*, %struct.tnode** %4, align 8
  %48 = icmp eq %struct.tnode* %46, %47
  br i1 %48, label %49, label %56

; <label>:49:                                     ; preds = %43
  %50 = load %struct.tnode*, %struct.tnode** %5, align 8
  %51 = getelementptr inbounds %struct.tnode, %struct.tnode* %50, i32 0, i32 3
  %52 = load %struct.tnode*, %struct.tnode** %51, align 8
  store %struct.tnode* %52, %struct.tnode** %6, align 8
  %53 = load %struct.tnode*, %struct.tnode** %5, align 8
  %54 = getelementptr inbounds %struct.tnode, %struct.tnode* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %63

; <label>:56:                                     ; preds = %43
  %57 = load %struct.tnode*, %struct.tnode** %5, align 8
  %58 = getelementptr inbounds %struct.tnode, %struct.tnode* %57, i32 0, i32 2
  %59 = load %struct.tnode*, %struct.tnode** %58, align 8
  store %struct.tnode* %59, %struct.tnode** %6, align 8
  %60 = load %struct.tnode*, %struct.tnode** %5, align 8
  %61 = getelementptr inbounds %struct.tnode, %struct.tnode* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %8, align 4
  br label %63

; <label>:63:                                     ; preds = %56, %49
  %64 = load %struct.tnode*, %struct.tnode** %5, align 8
  %65 = getelementptr inbounds %struct.tnode, %struct.tnode* %64, i32 0, i32 6
  %66 = load %struct.tnode*, %struct.tnode** %65, align 8
  %67 = getelementptr inbounds %struct.tnode, %struct.tnode* %66, i32 0, i32 2
  %68 = load %struct.tnode*, %struct.tnode** %67, align 8
  %69 = load %struct.tnode*, %struct.tnode** %5, align 8
  %70 = icmp eq %struct.tnode* %68, %69
  br i1 %70, label %71, label %343

; <label>:71:                                     ; preds = %63
  %72 = load %struct.tnode*, %struct.tnode** %5, align 8
  %73 = getelementptr inbounds %struct.tnode, %struct.tnode* %72, i32 0, i32 6
  %74 = load %struct.tnode*, %struct.tnode** %73, align 8
  %75 = getelementptr inbounds %struct.tnode, %struct.tnode* %74, i32 0, i32 3
  %76 = load %struct.tnode*, %struct.tnode** %75, align 8
  store %struct.tnode* %76, %struct.tnode** %7, align 8
  %77 = load %struct.tnode*, %struct.tnode** %5, align 8
  %78 = getelementptr inbounds %struct.tnode, %struct.tnode* %77, i32 0, i32 6
  %79 = load %struct.tnode*, %struct.tnode** %78, align 8
  %80 = getelementptr inbounds %struct.tnode, %struct.tnode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %177

; <label>:83:                                     ; preds = %71
  %84 = load %struct.tnode*, %struct.tnode** %7, align 8
  %85 = getelementptr inbounds %struct.tnode, %struct.tnode* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %119

; <label>:88:                                     ; preds = %83
  %89 = load %struct.tnode*, %struct.tnode** %7, align 8
  %90 = getelementptr inbounds %struct.tnode, %struct.tnode* %89, i32 0, i32 1
  store i32 3, i32* %90, align 4
  %91 = load %struct.tnode*, %struct.tnode** %7, align 8
  %92 = getelementptr inbounds %struct.tnode, %struct.tnode* %91, i32 0, i32 3
  %93 = load %struct.tnode*, %struct.tnode** %92, align 8
  %94 = load %struct.tnode*, %struct.tnode** %7, align 8
  %95 = getelementptr inbounds %struct.tnode, %struct.tnode* %94, i32 0, i32 4
  store %struct.tnode* %93, %struct.tnode** %95, align 8
  %96 = load %struct.tnode*, %struct.tnode** %7, align 8
  %97 = getelementptr inbounds %struct.tnode, %struct.tnode* %96, i32 0, i32 2
  %98 = load %struct.tnode*, %struct.tnode** %97, align 8
  %99 = load %struct.tnode*, %struct.tnode** %7, align 8
  %100 = getelementptr inbounds %struct.tnode, %struct.tnode* %99, i32 0, i32 3
  store %struct.tnode* %98, %struct.tnode** %100, align 8
  %101 = load %struct.tnode*, %struct.tnode** %6, align 8
  %102 = load %struct.tnode*, %struct.tnode** %7, align 8
  %103 = getelementptr inbounds %struct.tnode, %struct.tnode* %102, i32 0, i32 2
  store %struct.tnode* %101, %struct.tnode** %103, align 8
  %104 = load %struct.tnode*, %struct.tnode** %7, align 8
  %105 = load %struct.tnode*, %struct.tnode** %6, align 8
  %106 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i32 0, i32 6
  store %struct.tnode* %104, %struct.tnode** %106, align 8
  %107 = load %struct.tnode*, %struct.tnode** %4, align 8
  %108 = bitcast %struct.tnode* %107 to i8*
  call void @free(i8* %108) #3
  %109 = load %struct.tnode*, %struct.tnode** %7, align 8
  %110 = getelementptr inbounds %struct.tnode, %struct.tnode* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.tnode*, %struct.tnode** %7, align 8
  %113 = getelementptr inbounds %struct.tnode, %struct.tnode* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.tnode*, %struct.tnode** %7, align 8
  %116 = getelementptr inbounds %struct.tnode, %struct.tnode* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %118 = load %struct.tnode*, %struct.tnode** %5, align 8
  call void @tsubson(%struct.tnode** %117, %struct.tnode* %118)
  br label %176

; <label>:119:                                    ; preds = %83
  %120 = load %struct.tnode*, %struct.tnode** %7, align 8
  %121 = getelementptr inbounds %struct.tnode, %struct.tnode* %120, i32 0, i32 1
  store i32 2, i32* %121, align 4
  %122 = load %struct.tnode*, %struct.tnode** %6, align 8
  %123 = load %struct.tnode*, %struct.tnode** %5, align 8
  %124 = getelementptr inbounds %struct.tnode, %struct.tnode* %123, i32 0, i32 2
  store %struct.tnode* %122, %struct.tnode** %124, align 8
  %125 = load %struct.tnode*, %struct.tnode** %7, align 8
  %126 = getelementptr inbounds %struct.tnode, %struct.tnode* %125, i32 0, i32 2
  %127 = load %struct.tnode*, %struct.tnode** %126, align 8
  %128 = load %struct.tnode*, %struct.tnode** %5, align 8
  %129 = getelementptr inbounds %struct.tnode, %struct.tnode* %128, i32 0, i32 3
  store %struct.tnode* %127, %struct.tnode** %129, align 8
  %130 = load %struct.tnode*, %struct.tnode** %7, align 8
  %131 = getelementptr inbounds %struct.tnode, %struct.tnode* %130, i32 0, i32 3
  %132 = load %struct.tnode*, %struct.tnode** %131, align 8
  %133 = load %struct.tnode*, %struct.tnode** %7, align 8
  %134 = getelementptr inbounds %struct.tnode, %struct.tnode* %133, i32 0, i32 2
  store %struct.tnode* %132, %struct.tnode** %134, align 8
  %135 = load %struct.tnode*, %struct.tnode** %7, align 8
  %136 = getelementptr inbounds %struct.tnode, %struct.tnode* %135, i32 0, i32 4
  %137 = load %struct.tnode*, %struct.tnode** %136, align 8
  %138 = load %struct.tnode*, %struct.tnode** %7, align 8
  %139 = getelementptr inbounds %struct.tnode, %struct.tnode* %138, i32 0, i32 3
  store %struct.tnode* %137, %struct.tnode** %139, align 8
  %140 = load %struct.tnode*, %struct.tnode** %5, align 8
  %141 = load %struct.tnode*, %struct.tnode** %5, align 8
  %142 = getelementptr inbounds %struct.tnode, %struct.tnode* %141, i32 0, i32 3
  %143 = load %struct.tnode*, %struct.tnode** %142, align 8
  %144 = getelementptr inbounds %struct.tnode, %struct.tnode* %143, i32 0, i32 6
  store %struct.tnode* %140, %struct.tnode** %144, align 8
  %145 = load %struct.tnode*, %struct.tnode** %7, align 8
  %146 = getelementptr inbounds %struct.tnode, %struct.tnode* %145, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.tnode*, %struct.tnode** %5, align 8
  %149 = getelementptr inbounds %struct.tnode, %struct.tnode* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 8
  %150 = load %struct.tnode*, %struct.tnode** %7, align 8
  %151 = getelementptr inbounds %struct.tnode, %struct.tnode* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.tnode*, %struct.tnode** %5, align 8
  %154 = getelementptr inbounds %struct.tnode, %struct.tnode* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load %struct.tnode*, %struct.tnode** %7, align 8
  %156 = getelementptr inbounds %struct.tnode, %struct.tnode* %155, i32 0, i32 8
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tnode*, %struct.tnode** %7, align 8
  %159 = getelementptr inbounds %struct.tnode, %struct.tnode* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load %struct.tnode*, %struct.tnode** %7, align 8
  %161 = getelementptr inbounds %struct.tnode, %struct.tnode* %160, i32 0, i32 6
  %162 = load %struct.tnode*, %struct.tnode** %161, align 8
  %163 = getelementptr inbounds %struct.tnode, %struct.tnode* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.tnode*, %struct.tnode** %7, align 8
  %166 = getelementptr inbounds %struct.tnode, %struct.tnode* %165, i32 0, i32 8
  store i32 %164, i32* %166, align 4
  %167 = load %struct.tnode*, %struct.tnode** %5, align 8
  %168 = getelementptr inbounds %struct.tnode, %struct.tnode* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.tnode*, %struct.tnode** %7, align 8
  %171 = getelementptr inbounds %struct.tnode, %struct.tnode* %170, i32 0, i32 6
  %172 = load %struct.tnode*, %struct.tnode** %171, align 8
  %173 = getelementptr inbounds %struct.tnode, %struct.tnode* %172, i32 0, i32 7
  store i32 %169, i32* %173, align 8
  %174 = load %struct.tnode*, %struct.tnode** %4, align 8
  %175 = bitcast %struct.tnode* %174 to i8*
  call void @free(i8* %175) #3
  br label %176

; <label>:176:                                    ; preds = %119, %88
  br label %342

; <label>:177:                                    ; preds = %71
  %178 = load %struct.tnode*, %struct.tnode** %7, align 8
  %179 = getelementptr inbounds %struct.tnode, %struct.tnode* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %284

; <label>:182:                                    ; preds = %177
  %183 = load %struct.tnode*, %struct.tnode** %7, align 8
  %184 = getelementptr inbounds %struct.tnode, %struct.tnode* %183, i32 0, i32 1
  store i32 3, i32* %184, align 4
  %185 = load %struct.tnode*, %struct.tnode** %7, align 8
  %186 = getelementptr inbounds %struct.tnode, %struct.tnode* %185, i32 0, i32 3
  %187 = load %struct.tnode*, %struct.tnode** %186, align 8
  %188 = load %struct.tnode*, %struct.tnode** %7, align 8
  %189 = getelementptr inbounds %struct.tnode, %struct.tnode* %188, i32 0, i32 4
  store %struct.tnode* %187, %struct.tnode** %189, align 8
  %190 = load %struct.tnode*, %struct.tnode** %7, align 8
  %191 = getelementptr inbounds %struct.tnode, %struct.tnode* %190, i32 0, i32 2
  %192 = load %struct.tnode*, %struct.tnode** %191, align 8
  %193 = load %struct.tnode*, %struct.tnode** %7, align 8
  %194 = getelementptr inbounds %struct.tnode, %struct.tnode* %193, i32 0, i32 3
  store %struct.tnode* %192, %struct.tnode** %194, align 8
  %195 = load %struct.tnode*, %struct.tnode** %6, align 8
  %196 = load %struct.tnode*, %struct.tnode** %7, align 8
  %197 = getelementptr inbounds %struct.tnode, %struct.tnode* %196, i32 0, i32 2
  store %struct.tnode* %195, %struct.tnode** %197, align 8
  %198 = load %struct.tnode*, %struct.tnode** %7, align 8
  %199 = load %struct.tnode*, %struct.tnode** %6, align 8
  %200 = getelementptr inbounds %struct.tnode, %struct.tnode* %199, i32 0, i32 6
  store %struct.tnode* %198, %struct.tnode** %200, align 8
  %201 = load %struct.tnode*, %struct.tnode** %4, align 8
  %202 = bitcast %struct.tnode* %201 to i8*
  call void @free(i8* %202) #3
  %203 = load %struct.tnode*, %struct.tnode** %7, align 8
  %204 = getelementptr inbounds %struct.tnode, %struct.tnode* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.tnode*, %struct.tnode** %7, align 8
  %207 = getelementptr inbounds %struct.tnode, %struct.tnode* %206, i32 0, i32 8
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.tnode*, %struct.tnode** %7, align 8
  %210 = getelementptr inbounds %struct.tnode, %struct.tnode* %209, i32 0, i32 7
  store i32 %208, i32* %210, align 8
  %211 = load %struct.tnode*, %struct.tnode** %5, align 8
  %212 = getelementptr inbounds %struct.tnode, %struct.tnode* %211, i32 0, i32 6
  %213 = load %struct.tnode*, %struct.tnode** %212, align 8
  %214 = getelementptr inbounds %struct.tnode, %struct.tnode* %213, i32 0, i32 3
  %215 = load %struct.tnode*, %struct.tnode** %214, align 8
  %216 = load %struct.tnode*, %struct.tnode** %5, align 8
  %217 = getelementptr inbounds %struct.tnode, %struct.tnode* %216, i32 0, i32 6
  %218 = load %struct.tnode*, %struct.tnode** %217, align 8
  %219 = getelementptr inbounds %struct.tnode, %struct.tnode* %218, i32 0, i32 2
  store %struct.tnode* %215, %struct.tnode** %219, align 8
  %220 = load %struct.tnode*, %struct.tnode** %5, align 8
  %221 = getelementptr inbounds %struct.tnode, %struct.tnode* %220, i32 0, i32 6
  %222 = load %struct.tnode*, %struct.tnode** %221, align 8
  %223 = getelementptr inbounds %struct.tnode, %struct.tnode* %222, i32 0, i32 4
  %224 = load %struct.tnode*, %struct.tnode** %223, align 8
  %225 = load %struct.tnode*, %struct.tnode** %5, align 8
  %226 = getelementptr inbounds %struct.tnode, %struct.tnode* %225, i32 0, i32 6
  %227 = load %struct.tnode*, %struct.tnode** %226, align 8
  %228 = getelementptr inbounds %struct.tnode, %struct.tnode* %227, i32 0, i32 3
  store %struct.tnode* %224, %struct.tnode** %228, align 8
  %229 = load %struct.tnode*, %struct.tnode** %5, align 8
  %230 = getelementptr inbounds %struct.tnode, %struct.tnode* %229, i32 0, i32 6
  %231 = load %struct.tnode*, %struct.tnode** %230, align 8
  %232 = getelementptr inbounds %struct.tnode, %struct.tnode* %231, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %232, align 8
  %233 = load %struct.tnode*, %struct.tnode** %5, align 8
  %234 = getelementptr inbounds %struct.tnode, %struct.tnode* %233, i32 0, i32 6
  %235 = load %struct.tnode*, %struct.tnode** %234, align 8
  %236 = getelementptr inbounds %struct.tnode, %struct.tnode* %235, i32 0, i32 1
  store i32 2, i32* %236, align 4
  %237 = load %struct.tnode*, %struct.tnode** %5, align 8
  %238 = getelementptr inbounds %struct.tnode, %struct.tnode* %237, i32 0, i32 6
  %239 = load %struct.tnode*, %struct.tnode** %238, align 8
  %240 = getelementptr inbounds %struct.tnode, %struct.tnode* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.tnode*, %struct.tnode** %5, align 8
  %243 = getelementptr inbounds %struct.tnode, %struct.tnode* %242, i32 0, i32 6
  %244 = load %struct.tnode*, %struct.tnode** %243, align 8
  %245 = getelementptr inbounds %struct.tnode, %struct.tnode* %244, i32 0, i32 7
  store i32 %241, i32* %245, align 8
  %246 = load %struct.tnode*, %struct.tnode** %5, align 8
  %247 = bitcast %struct.tnode* %246 to i8*
  call void @free(i8* %247) #3
  %248 = load %struct.tnode*, %struct.tnode** %7, align 8
  %249 = getelementptr inbounds %struct.tnode, %struct.tnode* %248, i32 0, i32 6
  %250 = load %struct.tnode*, %struct.tnode** %249, align 8
  %251 = getelementptr inbounds %struct.tnode, %struct.tnode* %250, i32 0, i32 3
  %252 = load %struct.tnode*, %struct.tnode** %251, align 8
  store %struct.tnode* %252, %struct.tnode** %5, align 8
  br label %253

; <label>:253:                                    ; preds = %258, %182
  %254 = load %struct.tnode*, %struct.tnode** %5, align 8
  %255 = getelementptr inbounds %struct.tnode, %struct.tnode* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %262

; <label>:258:                                    ; preds = %253
  %259 = load %struct.tnode*, %struct.tnode** %5, align 8
  %260 = getelementptr inbounds %struct.tnode, %struct.tnode* %259, i32 0, i32 4
  %261 = load %struct.tnode*, %struct.tnode** %260, align 8
  store %struct.tnode* %261, %struct.tnode** %5, align 8
  br label %253

; <label>:262:                                    ; preds = %253
  %263 = load %struct.tnode*, %struct.tnode** %5, align 8
  %264 = getelementptr inbounds %struct.tnode, %struct.tnode* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %275

; <label>:267:                                    ; preds = %262
  %268 = load %struct.tnode*, %struct.tnode** %5, align 8
  %269 = getelementptr inbounds %struct.tnode, %struct.tnode* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.tnode*, %struct.tnode** %7, align 8
  %272 = getelementptr inbounds %struct.tnode, %struct.tnode* %271, i32 0, i32 6
  %273 = load %struct.tnode*, %struct.tnode** %272, align 8
  %274 = getelementptr inbounds %struct.tnode, %struct.tnode* %273, i32 0, i32 8
  store i32 %270, i32* %274, align 4
  br label %283

; <label>:275:                                    ; preds = %262
  %276 = load %struct.tnode*, %struct.tnode** %5, align 8
  %277 = getelementptr inbounds %struct.tnode, %struct.tnode* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.tnode*, %struct.tnode** %7, align 8
  %280 = getelementptr inbounds %struct.tnode, %struct.tnode* %279, i32 0, i32 6
  %281 = load %struct.tnode*, %struct.tnode** %280, align 8
  %282 = getelementptr inbounds %struct.tnode, %struct.tnode* %281, i32 0, i32 8
  store i32 %278, i32* %282, align 4
  br label %283

; <label>:283:                                    ; preds = %275, %267
  br label %341

; <label>:284:                                    ; preds = %177
  %285 = load %struct.tnode*, %struct.tnode** %7, align 8
  %286 = getelementptr inbounds %struct.tnode, %struct.tnode* %285, i32 0, i32 1
  store i32 2, i32* %286, align 4
  %287 = load %struct.tnode*, %struct.tnode** %6, align 8
  %288 = load %struct.tnode*, %struct.tnode** %5, align 8
  %289 = getelementptr inbounds %struct.tnode, %struct.tnode* %288, i32 0, i32 2
  store %struct.tnode* %287, %struct.tnode** %289, align 8
  %290 = load %struct.tnode*, %struct.tnode** %7, align 8
  %291 = getelementptr inbounds %struct.tnode, %struct.tnode* %290, i32 0, i32 2
  %292 = load %struct.tnode*, %struct.tnode** %291, align 8
  %293 = load %struct.tnode*, %struct.tnode** %5, align 8
  %294 = getelementptr inbounds %struct.tnode, %struct.tnode* %293, i32 0, i32 3
  store %struct.tnode* %292, %struct.tnode** %294, align 8
  %295 = load %struct.tnode*, %struct.tnode** %7, align 8
  %296 = getelementptr inbounds %struct.tnode, %struct.tnode* %295, i32 0, i32 3
  %297 = load %struct.tnode*, %struct.tnode** %296, align 8
  %298 = load %struct.tnode*, %struct.tnode** %7, align 8
  %299 = getelementptr inbounds %struct.tnode, %struct.tnode* %298, i32 0, i32 2
  store %struct.tnode* %297, %struct.tnode** %299, align 8
  %300 = load %struct.tnode*, %struct.tnode** %7, align 8
  %301 = getelementptr inbounds %struct.tnode, %struct.tnode* %300, i32 0, i32 4
  %302 = load %struct.tnode*, %struct.tnode** %301, align 8
  %303 = load %struct.tnode*, %struct.tnode** %7, align 8
  %304 = getelementptr inbounds %struct.tnode, %struct.tnode* %303, i32 0, i32 3
  store %struct.tnode* %302, %struct.tnode** %304, align 8
  %305 = load %struct.tnode*, %struct.tnode** %5, align 8
  %306 = load %struct.tnode*, %struct.tnode** %5, align 8
  %307 = getelementptr inbounds %struct.tnode, %struct.tnode* %306, i32 0, i32 3
  %308 = load %struct.tnode*, %struct.tnode** %307, align 8
  %309 = getelementptr inbounds %struct.tnode, %struct.tnode* %308, i32 0, i32 6
  store %struct.tnode* %305, %struct.tnode** %309, align 8
  %310 = load %struct.tnode*, %struct.tnode** %7, align 8
  %311 = getelementptr inbounds %struct.tnode, %struct.tnode* %310, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %311, align 8
  %312 = load i32, i32* %8, align 4
  %313 = load %struct.tnode*, %struct.tnode** %5, align 8
  %314 = getelementptr inbounds %struct.tnode, %struct.tnode* %313, i32 0, i32 7
  store i32 %312, i32* %314, align 8
  %315 = load %struct.tnode*, %struct.tnode** %7, align 8
  %316 = getelementptr inbounds %struct.tnode, %struct.tnode* %315, i32 0, i32 7
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.tnode*, %struct.tnode** %5, align 8
  %319 = getelementptr inbounds %struct.tnode, %struct.tnode* %318, i32 0, i32 8
  store i32 %317, i32* %319, align 4
  %320 = load %struct.tnode*, %struct.tnode** %7, align 8
  %321 = getelementptr inbounds %struct.tnode, %struct.tnode* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.tnode*, %struct.tnode** %7, align 8
  %324 = getelementptr inbounds %struct.tnode, %struct.tnode* %323, i32 0, i32 7
  store i32 %322, i32* %324, align 8
  %325 = load %struct.tnode*, %struct.tnode** %7, align 8
  %326 = getelementptr inbounds %struct.tnode, %struct.tnode* %325, i32 0, i32 6
  %327 = load %struct.tnode*, %struct.tnode** %326, align 8
  %328 = getelementptr inbounds %struct.tnode, %struct.tnode* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.tnode*, %struct.tnode** %7, align 8
  %331 = getelementptr inbounds %struct.tnode, %struct.tnode* %330, i32 0, i32 8
  store i32 %329, i32* %331, align 4
  %332 = load %struct.tnode*, %struct.tnode** %5, align 8
  %333 = getelementptr inbounds %struct.tnode, %struct.tnode* %332, i32 0, i32 8
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.tnode*, %struct.tnode** %7, align 8
  %336 = getelementptr inbounds %struct.tnode, %struct.tnode* %335, i32 0, i32 6
  %337 = load %struct.tnode*, %struct.tnode** %336, align 8
  %338 = getelementptr inbounds %struct.tnode, %struct.tnode* %337, i32 0, i32 7
  store i32 %334, i32* %338, align 8
  %339 = load %struct.tnode*, %struct.tnode** %4, align 8
  %340 = bitcast %struct.tnode* %339 to i8*
  call void @free(i8* %340) #3
  br label %341

; <label>:341:                                    ; preds = %284, %283
  br label %342

; <label>:342:                                    ; preds = %341, %176
  br label %665

; <label>:343:                                    ; preds = %63
  %344 = load %struct.tnode*, %struct.tnode** %5, align 8
  %345 = getelementptr inbounds %struct.tnode, %struct.tnode* %344, i32 0, i32 6
  %346 = load %struct.tnode*, %struct.tnode** %345, align 8
  %347 = getelementptr inbounds %struct.tnode, %struct.tnode* %346, i32 0, i32 3
  %348 = load %struct.tnode*, %struct.tnode** %347, align 8
  %349 = load %struct.tnode*, %struct.tnode** %5, align 8
  %350 = icmp eq %struct.tnode* %348, %349
  br i1 %350, label %351, label %582

; <label>:351:                                    ; preds = %343
  %352 = load %struct.tnode*, %struct.tnode** %5, align 8
  %353 = getelementptr inbounds %struct.tnode, %struct.tnode* %352, i32 0, i32 6
  %354 = load %struct.tnode*, %struct.tnode** %353, align 8
  %355 = getelementptr inbounds %struct.tnode, %struct.tnode* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 2
  br i1 %357, label %358, label %435

; <label>:358:                                    ; preds = %351
  %359 = load %struct.tnode*, %struct.tnode** %5, align 8
  %360 = getelementptr inbounds %struct.tnode, %struct.tnode* %359, i32 0, i32 6
  %361 = load %struct.tnode*, %struct.tnode** %360, align 8
  %362 = getelementptr inbounds %struct.tnode, %struct.tnode* %361, i32 0, i32 2
  %363 = load %struct.tnode*, %struct.tnode** %362, align 8
  store %struct.tnode* %363, %struct.tnode** %7, align 8
  %364 = load %struct.tnode*, %struct.tnode** %7, align 8
  %365 = getelementptr inbounds %struct.tnode, %struct.tnode* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %386

; <label>:368:                                    ; preds = %358
  %369 = load %struct.tnode*, %struct.tnode** %7, align 8
  %370 = getelementptr inbounds %struct.tnode, %struct.tnode* %369, i32 0, i32 1
  store i32 3, i32* %370, align 4
  %371 = load %struct.tnode*, %struct.tnode** %6, align 8
  %372 = load %struct.tnode*, %struct.tnode** %7, align 8
  %373 = getelementptr inbounds %struct.tnode, %struct.tnode* %372, i32 0, i32 4
  store %struct.tnode* %371, %struct.tnode** %373, align 8
  %374 = load %struct.tnode*, %struct.tnode** %7, align 8
  %375 = load %struct.tnode*, %struct.tnode** %6, align 8
  %376 = getelementptr inbounds %struct.tnode, %struct.tnode* %375, i32 0, i32 6
  store %struct.tnode* %374, %struct.tnode** %376, align 8
  %377 = load %struct.tnode*, %struct.tnode** %4, align 8
  %378 = bitcast %struct.tnode* %377 to i8*
  call void @free(i8* %378) #3
  %379 = load i32, i32* %8, align 4
  %380 = load %struct.tnode*, %struct.tnode** %5, align 8
  %381 = getelementptr inbounds %struct.tnode, %struct.tnode* %380, i32 0, i32 6
  %382 = load %struct.tnode*, %struct.tnode** %381, align 8
  %383 = getelementptr inbounds %struct.tnode, %struct.tnode* %382, i32 0, i32 7
  store i32 %379, i32* %383, align 8
  %384 = load %struct.tnode**, %struct.tnode*** %3, align 8
  %385 = load %struct.tnode*, %struct.tnode** %5, align 8
  call void @tsubson(%struct.tnode** %384, %struct.tnode* %385)
  br label %434

; <label>:386:                                    ; preds = %358
  %387 = load %struct.tnode*, %struct.tnode** %7, align 8
  %388 = getelementptr inbounds %struct.tnode, %struct.tnode* %387, i32 0, i32 1
  store i32 2, i32* %388, align 4
  %389 = load %struct.tnode*, %struct.tnode** %7, align 8
  %390 = getelementptr inbounds %struct.tnode, %struct.tnode* %389, i32 0, i32 4
  %391 = load %struct.tnode*, %struct.tnode** %390, align 8
  %392 = load %struct.tnode*, %struct.tnode** %5, align 8
  %393 = getelementptr inbounds %struct.tnode, %struct.tnode* %392, i32 0, i32 2
  store %struct.tnode* %391, %struct.tnode** %393, align 8
  %394 = load %struct.tnode*, %struct.tnode** %6, align 8
  %395 = load %struct.tnode*, %struct.tnode** %5, align 8
  %396 = getelementptr inbounds %struct.tnode, %struct.tnode* %395, i32 0, i32 3
  store %struct.tnode* %394, %struct.tnode** %396, align 8
  %397 = load %struct.tnode*, %struct.tnode** %5, align 8
  %398 = load %struct.tnode*, %struct.tnode** %5, align 8
  %399 = getelementptr inbounds %struct.tnode, %struct.tnode* %398, i32 0, i32 2
  %400 = load %struct.tnode*, %struct.tnode** %399, align 8
  %401 = getelementptr inbounds %struct.tnode, %struct.tnode* %400, i32 0, i32 6
  store %struct.tnode* %397, %struct.tnode** %401, align 8
  %402 = load %struct.tnode*, %struct.tnode** %7, align 8
  %403 = getelementptr inbounds %struct.tnode, %struct.tnode* %402, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %403, align 8
  %404 = load %struct.tnode*, %struct.tnode** %7, align 8
  %405 = getelementptr inbounds %struct.tnode, %struct.tnode* %404, i32 0, i32 6
  %406 = load %struct.tnode*, %struct.tnode** %405, align 8
  %407 = getelementptr inbounds %struct.tnode, %struct.tnode* %406, i32 0, i32 7
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.tnode*, %struct.tnode** %5, align 8
  %410 = getelementptr inbounds %struct.tnode, %struct.tnode* %409, i32 0, i32 7
  store i32 %408, i32* %410, align 8
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.tnode*, %struct.tnode** %5, align 8
  %413 = getelementptr inbounds %struct.tnode, %struct.tnode* %412, i32 0, i32 8
  store i32 %411, i32* %413, align 4
  %414 = load %struct.tnode*, %struct.tnode** %7, align 8
  %415 = getelementptr inbounds %struct.tnode, %struct.tnode* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.tnode*, %struct.tnode** %7, align 8
  %418 = getelementptr inbounds %struct.tnode, %struct.tnode* %417, i32 0, i32 6
  %419 = load %struct.tnode*, %struct.tnode** %418, align 8
  %420 = getelementptr inbounds %struct.tnode, %struct.tnode* %419, i32 0, i32 7
  store i32 %416, i32* %420, align 8
  %421 = load i32, i32* %8, align 4
  %422 = load %struct.tnode*, %struct.tnode** %7, align 8
  %423 = getelementptr inbounds %struct.tnode, %struct.tnode* %422, i32 0, i32 6
  %424 = load %struct.tnode*, %struct.tnode** %423, align 8
  %425 = getelementptr inbounds %struct.tnode, %struct.tnode* %424, i32 0, i32 8
  store i32 %421, i32* %425, align 4
  %426 = load %struct.tnode*, %struct.tnode** %5, align 8
  %427 = getelementptr inbounds %struct.tnode, %struct.tnode* %426, i32 0, i32 6
  %428 = load %struct.tnode*, %struct.tnode** %427, align 8
  %429 = load %struct.tnode*, %struct.tnode** %5, align 8
  %430 = getelementptr inbounds %struct.tnode, %struct.tnode* %429, i32 0, i32 8
  %431 = load i32, i32* %430, align 4
  call void @tpatch(%struct.tnode* %428, i32 %431)
  %432 = load %struct.tnode*, %struct.tnode** %4, align 8
  %433 = bitcast %struct.tnode* %432 to i8*
  call void @free(i8* %433) #3
  br label %434

; <label>:434:                                    ; preds = %386, %368
  br label %581

; <label>:435:                                    ; preds = %351
  %436 = load %struct.tnode*, %struct.tnode** %5, align 8
  %437 = getelementptr inbounds %struct.tnode, %struct.tnode* %436, i32 0, i32 6
  %438 = load %struct.tnode*, %struct.tnode** %437, align 8
  %439 = getelementptr inbounds %struct.tnode, %struct.tnode* %438, i32 0, i32 4
  %440 = load %struct.tnode*, %struct.tnode** %439, align 8
  store %struct.tnode* %440, %struct.tnode** %7, align 8
  %441 = load %struct.tnode*, %struct.tnode** %7, align 8
  %442 = getelementptr inbounds %struct.tnode, %struct.tnode* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = icmp eq i32 %443, 2
  br i1 %444, label %445, label %500

; <label>:445:                                    ; preds = %435
  %446 = load %struct.tnode*, %struct.tnode** %7, align 8
  %447 = getelementptr inbounds %struct.tnode, %struct.tnode* %446, i32 0, i32 1
  store i32 3, i32* %447, align 4
  %448 = load %struct.tnode*, %struct.tnode** %7, align 8
  %449 = getelementptr inbounds %struct.tnode, %struct.tnode* %448, i32 0, i32 3
  %450 = load %struct.tnode*, %struct.tnode** %449, align 8
  %451 = load %struct.tnode*, %struct.tnode** %7, align 8
  %452 = getelementptr inbounds %struct.tnode, %struct.tnode* %451, i32 0, i32 4
  store %struct.tnode* %450, %struct.tnode** %452, align 8
  %453 = load %struct.tnode*, %struct.tnode** %7, align 8
  %454 = getelementptr inbounds %struct.tnode, %struct.tnode* %453, i32 0, i32 2
  %455 = load %struct.tnode*, %struct.tnode** %454, align 8
  %456 = load %struct.tnode*, %struct.tnode** %7, align 8
  %457 = getelementptr inbounds %struct.tnode, %struct.tnode* %456, i32 0, i32 3
  store %struct.tnode* %455, %struct.tnode** %457, align 8
  %458 = load %struct.tnode*, %struct.tnode** %6, align 8
  %459 = load %struct.tnode*, %struct.tnode** %7, align 8
  %460 = getelementptr inbounds %struct.tnode, %struct.tnode* %459, i32 0, i32 2
  store %struct.tnode* %458, %struct.tnode** %460, align 8
  %461 = load %struct.tnode*, %struct.tnode** %7, align 8
  %462 = load %struct.tnode*, %struct.tnode** %6, align 8
  %463 = getelementptr inbounds %struct.tnode, %struct.tnode* %462, i32 0, i32 6
  store %struct.tnode* %461, %struct.tnode** %463, align 8
  %464 = load %struct.tnode*, %struct.tnode** %4, align 8
  %465 = bitcast %struct.tnode* %464 to i8*
  call void @free(i8* %465) #3
  %466 = load %struct.tnode*, %struct.tnode** %7, align 8
  %467 = getelementptr inbounds %struct.tnode, %struct.tnode* %466, i32 0, i32 8
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.tnode*, %struct.tnode** %7, align 8
  %470 = getelementptr inbounds %struct.tnode, %struct.tnode* %469, i32 0, i32 6
  %471 = load %struct.tnode*, %struct.tnode** %470, align 8
  %472 = getelementptr inbounds %struct.tnode, %struct.tnode* %471, i32 0, i32 8
  store i32 %468, i32* %472, align 4
  %473 = load %struct.tnode*, %struct.tnode** %7, align 8
  %474 = getelementptr inbounds %struct.tnode, %struct.tnode* %473, i32 0, i32 7
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.tnode*, %struct.tnode** %7, align 8
  %477 = getelementptr inbounds %struct.tnode, %struct.tnode* %476, i32 0, i32 8
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %8, align 4
  %479 = load %struct.tnode*, %struct.tnode** %7, align 8
  %480 = getelementptr inbounds %struct.tnode, %struct.tnode* %479, i32 0, i32 7
  store i32 %478, i32* %480, align 8
  %481 = load %struct.tnode*, %struct.tnode** %5, align 8
  %482 = bitcast %struct.tnode* %481 to i8*
  call void @free(i8* %482) #3
  %483 = load %struct.tnode*, %struct.tnode** %7, align 8
  %484 = getelementptr inbounds %struct.tnode, %struct.tnode* %483, i32 0, i32 6
  %485 = load %struct.tnode*, %struct.tnode** %484, align 8
  %486 = getelementptr inbounds %struct.tnode, %struct.tnode* %485, i32 0, i32 4
  %487 = load %struct.tnode*, %struct.tnode** %486, align 8
  %488 = load %struct.tnode*, %struct.tnode** %7, align 8
  %489 = getelementptr inbounds %struct.tnode, %struct.tnode* %488, i32 0, i32 6
  %490 = load %struct.tnode*, %struct.tnode** %489, align 8
  %491 = getelementptr inbounds %struct.tnode, %struct.tnode* %490, i32 0, i32 3
  store %struct.tnode* %487, %struct.tnode** %491, align 8
  %492 = load %struct.tnode*, %struct.tnode** %7, align 8
  %493 = getelementptr inbounds %struct.tnode, %struct.tnode* %492, i32 0, i32 6
  %494 = load %struct.tnode*, %struct.tnode** %493, align 8
  %495 = getelementptr inbounds %struct.tnode, %struct.tnode* %494, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %495, align 8
  %496 = load %struct.tnode*, %struct.tnode** %7, align 8
  %497 = getelementptr inbounds %struct.tnode, %struct.tnode* %496, i32 0, i32 6
  %498 = load %struct.tnode*, %struct.tnode** %497, align 8
  %499 = getelementptr inbounds %struct.tnode, %struct.tnode* %498, i32 0, i32 1
  store i32 2, i32* %499, align 4
  br label %580

; <label>:500:                                    ; preds = %435
  %501 = load %struct.tnode*, %struct.tnode** %7, align 8
  %502 = getelementptr inbounds %struct.tnode, %struct.tnode* %501, i32 0, i32 1
  store i32 2, i32* %502, align 4
  %503 = load %struct.tnode*, %struct.tnode** %6, align 8
  %504 = load %struct.tnode*, %struct.tnode** %5, align 8
  %505 = getelementptr inbounds %struct.tnode, %struct.tnode* %504, i32 0, i32 2
  store %struct.tnode* %503, %struct.tnode** %505, align 8
  %506 = load %struct.tnode*, %struct.tnode** %7, align 8
  %507 = getelementptr inbounds %struct.tnode, %struct.tnode* %506, i32 0, i32 2
  %508 = load %struct.tnode*, %struct.tnode** %507, align 8
  %509 = load %struct.tnode*, %struct.tnode** %5, align 8
  %510 = getelementptr inbounds %struct.tnode, %struct.tnode* %509, i32 0, i32 3
  store %struct.tnode* %508, %struct.tnode** %510, align 8
  %511 = load %struct.tnode*, %struct.tnode** %5, align 8
  %512 = load %struct.tnode*, %struct.tnode** %5, align 8
  %513 = getelementptr inbounds %struct.tnode, %struct.tnode* %512, i32 0, i32 3
  %514 = load %struct.tnode*, %struct.tnode** %513, align 8
  %515 = getelementptr inbounds %struct.tnode, %struct.tnode* %514, i32 0, i32 6
  store %struct.tnode* %511, %struct.tnode** %515, align 8
  %516 = load %struct.tnode*, %struct.tnode** %7, align 8
  %517 = getelementptr inbounds %struct.tnode, %struct.tnode* %516, i32 0, i32 3
  %518 = load %struct.tnode*, %struct.tnode** %517, align 8
  %519 = load %struct.tnode*, %struct.tnode** %7, align 8
  %520 = getelementptr inbounds %struct.tnode, %struct.tnode* %519, i32 0, i32 2
  store %struct.tnode* %518, %struct.tnode** %520, align 8
  %521 = load %struct.tnode*, %struct.tnode** %7, align 8
  %522 = getelementptr inbounds %struct.tnode, %struct.tnode* %521, i32 0, i32 4
  %523 = load %struct.tnode*, %struct.tnode** %522, align 8
  %524 = load %struct.tnode*, %struct.tnode** %7, align 8
  %525 = getelementptr inbounds %struct.tnode, %struct.tnode* %524, i32 0, i32 3
  store %struct.tnode* %523, %struct.tnode** %525, align 8
  %526 = load %struct.tnode*, %struct.tnode** %7, align 8
  %527 = getelementptr inbounds %struct.tnode, %struct.tnode* %526, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %527, align 8
  %528 = load i32, i32* %8, align 4
  %529 = load %struct.tnode*, %struct.tnode** %5, align 8
  %530 = getelementptr inbounds %struct.tnode, %struct.tnode* %529, i32 0, i32 7
  store i32 %528, i32* %530, align 8
  %531 = load %struct.tnode*, %struct.tnode** %7, align 8
  %532 = getelementptr inbounds %struct.tnode, %struct.tnode* %531, i32 0, i32 7
  %533 = load i32, i32* %532, align 8
  %534 = load %struct.tnode*, %struct.tnode** %5, align 8
  %535 = getelementptr inbounds %struct.tnode, %struct.tnode* %534, i32 0, i32 8
  store i32 %533, i32* %535, align 4
  %536 = load %struct.tnode*, %struct.tnode** %7, align 8
  %537 = getelementptr inbounds %struct.tnode, %struct.tnode* %536, i32 0, i32 8
  %538 = load i32, i32* %537, align 4
  %539 = load %struct.tnode*, %struct.tnode** %7, align 8
  %540 = getelementptr inbounds %struct.tnode, %struct.tnode* %539, i32 0, i32 7
  store i32 %538, i32* %540, align 8
  %541 = load %struct.tnode*, %struct.tnode** %5, align 8
  %542 = getelementptr inbounds %struct.tnode, %struct.tnode* %541, i32 0, i32 8
  %543 = load i32, i32* %542, align 4
  %544 = load %struct.tnode*, %struct.tnode** %7, align 8
  %545 = getelementptr inbounds %struct.tnode, %struct.tnode* %544, i32 0, i32 6
  %546 = load %struct.tnode*, %struct.tnode** %545, align 8
  %547 = getelementptr inbounds %struct.tnode, %struct.tnode* %546, i32 0, i32 8
  store i32 %543, i32* %547, align 4
  %548 = load %struct.tnode*, %struct.tnode** %7, align 8
  %549 = getelementptr inbounds %struct.tnode, %struct.tnode* %548, i32 0, i32 3
  %550 = load %struct.tnode*, %struct.tnode** %549, align 8
  store %struct.tnode* %550, %struct.tnode** %5, align 8
  br label %551

; <label>:551:                                    ; preds = %556, %500
  %552 = load %struct.tnode*, %struct.tnode** %5, align 8
  %553 = getelementptr inbounds %struct.tnode, %struct.tnode* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = icmp eq i32 %554, 3
  br i1 %555, label %556, label %560

; <label>:556:                                    ; preds = %551
  %557 = load %struct.tnode*, %struct.tnode** %5, align 8
  %558 = getelementptr inbounds %struct.tnode, %struct.tnode* %557, i32 0, i32 4
  %559 = load %struct.tnode*, %struct.tnode** %558, align 8
  store %struct.tnode* %559, %struct.tnode** %5, align 8
  br label %551

; <label>:560:                                    ; preds = %551
  %561 = load %struct.tnode*, %struct.tnode** %5, align 8
  %562 = getelementptr inbounds %struct.tnode, %struct.tnode* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %571

; <label>:565:                                    ; preds = %560
  %566 = load %struct.tnode*, %struct.tnode** %5, align 8
  %567 = getelementptr inbounds %struct.tnode, %struct.tnode* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 8
  %569 = load %struct.tnode*, %struct.tnode** %7, align 8
  %570 = getelementptr inbounds %struct.tnode, %struct.tnode* %569, i32 0, i32 8
  store i32 %568, i32* %570, align 4
  br label %577

; <label>:571:                                    ; preds = %560
  %572 = load %struct.tnode*, %struct.tnode** %5, align 8
  %573 = getelementptr inbounds %struct.tnode, %struct.tnode* %572, i32 0, i32 8
  %574 = load i32, i32* %573, align 4
  %575 = load %struct.tnode*, %struct.tnode** %7, align 8
  %576 = getelementptr inbounds %struct.tnode, %struct.tnode* %575, i32 0, i32 8
  store i32 %574, i32* %576, align 4
  br label %577

; <label>:577:                                    ; preds = %571, %565
  %578 = load %struct.tnode*, %struct.tnode** %4, align 8
  %579 = bitcast %struct.tnode* %578 to i8*
  call void @free(i8* %579) #3
  br label %580

; <label>:580:                                    ; preds = %577, %445
  br label %581

; <label>:581:                                    ; preds = %580, %434
  br label %664

; <label>:582:                                    ; preds = %343
  %583 = load %struct.tnode*, %struct.tnode** %5, align 8
  %584 = getelementptr inbounds %struct.tnode, %struct.tnode* %583, i32 0, i32 6
  %585 = load %struct.tnode*, %struct.tnode** %584, align 8
  %586 = getelementptr inbounds %struct.tnode, %struct.tnode* %585, i32 0, i32 3
  %587 = load %struct.tnode*, %struct.tnode** %586, align 8
  store %struct.tnode* %587, %struct.tnode** %7, align 8
  %588 = load %struct.tnode*, %struct.tnode** %7, align 8
  %589 = getelementptr inbounds %struct.tnode, %struct.tnode* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = icmp eq i32 %590, 2
  br i1 %591, label %592, label %622

; <label>:592:                                    ; preds = %582
  %593 = load %struct.tnode*, %struct.tnode** %7, align 8
  %594 = getelementptr inbounds %struct.tnode, %struct.tnode* %593, i32 0, i32 1
  store i32 3, i32* %594, align 4
  %595 = load %struct.tnode*, %struct.tnode** %6, align 8
  %596 = load %struct.tnode*, %struct.tnode** %7, align 8
  %597 = getelementptr inbounds %struct.tnode, %struct.tnode* %596, i32 0, i32 4
  store %struct.tnode* %595, %struct.tnode** %597, align 8
  %598 = load %struct.tnode*, %struct.tnode** %7, align 8
  %599 = load %struct.tnode*, %struct.tnode** %6, align 8
  %600 = getelementptr inbounds %struct.tnode, %struct.tnode* %599, i32 0, i32 6
  store %struct.tnode* %598, %struct.tnode** %600, align 8
  %601 = load %struct.tnode*, %struct.tnode** %4, align 8
  %602 = bitcast %struct.tnode* %601 to i8*
  call void @free(i8* %602) #3
  %603 = load i32, i32* %8, align 4
  %604 = load %struct.tnode*, %struct.tnode** %7, align 8
  %605 = getelementptr inbounds %struct.tnode, %struct.tnode* %604, i32 0, i32 6
  %606 = load %struct.tnode*, %struct.tnode** %605, align 8
  %607 = getelementptr inbounds %struct.tnode, %struct.tnode* %606, i32 0, i32 8
  store i32 %603, i32* %607, align 4
  %608 = load %struct.tnode*, %struct.tnode** %7, align 8
  %609 = getelementptr inbounds %struct.tnode, %struct.tnode* %608, i32 0, i32 6
  %610 = load %struct.tnode*, %struct.tnode** %609, align 8
  %611 = load i32, i32* %8, align 4
  call void @tpatch(%struct.tnode* %610, i32 %611)
  %612 = load %struct.tnode*, %struct.tnode** %7, align 8
  %613 = getelementptr inbounds %struct.tnode, %struct.tnode* %612, i32 0, i32 6
  %614 = load %struct.tnode*, %struct.tnode** %613, align 8
  %615 = getelementptr inbounds %struct.tnode, %struct.tnode* %614, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %615, align 8
  %616 = load %struct.tnode*, %struct.tnode** %7, align 8
  %617 = getelementptr inbounds %struct.tnode, %struct.tnode* %616, i32 0, i32 6
  %618 = load %struct.tnode*, %struct.tnode** %617, align 8
  %619 = getelementptr inbounds %struct.tnode, %struct.tnode* %618, i32 0, i32 1
  store i32 2, i32* %619, align 4
  %620 = load %struct.tnode*, %struct.tnode** %5, align 8
  %621 = bitcast %struct.tnode* %620 to i8*
  call void @free(i8* %621) #3
  br label %663

; <label>:622:                                    ; preds = %582
  %623 = load %struct.tnode*, %struct.tnode** %7, align 8
  %624 = getelementptr inbounds %struct.tnode, %struct.tnode* %623, i32 0, i32 1
  store i32 2, i32* %624, align 4
  %625 = load %struct.tnode*, %struct.tnode** %7, align 8
  %626 = getelementptr inbounds %struct.tnode, %struct.tnode* %625, i32 0, i32 4
  %627 = load %struct.tnode*, %struct.tnode** %626, align 8
  %628 = load %struct.tnode*, %struct.tnode** %5, align 8
  %629 = getelementptr inbounds %struct.tnode, %struct.tnode* %628, i32 0, i32 2
  store %struct.tnode* %627, %struct.tnode** %629, align 8
  %630 = load %struct.tnode*, %struct.tnode** %6, align 8
  %631 = load %struct.tnode*, %struct.tnode** %5, align 8
  %632 = getelementptr inbounds %struct.tnode, %struct.tnode* %631, i32 0, i32 3
  store %struct.tnode* %630, %struct.tnode** %632, align 8
  %633 = load %struct.tnode*, %struct.tnode** %5, align 8
  %634 = load %struct.tnode*, %struct.tnode** %5, align 8
  %635 = getelementptr inbounds %struct.tnode, %struct.tnode* %634, i32 0, i32 2
  %636 = load %struct.tnode*, %struct.tnode** %635, align 8
  %637 = getelementptr inbounds %struct.tnode, %struct.tnode* %636, i32 0, i32 6
  store %struct.tnode* %633, %struct.tnode** %637, align 8
  %638 = load %struct.tnode*, %struct.tnode** %7, align 8
  %639 = getelementptr inbounds %struct.tnode, %struct.tnode* %638, i32 0, i32 4
  store %struct.tnode* null, %struct.tnode** %639, align 8
  %640 = load %struct.tnode*, %struct.tnode** %7, align 8
  %641 = getelementptr inbounds %struct.tnode, %struct.tnode* %640, i32 0, i32 6
  %642 = load %struct.tnode*, %struct.tnode** %641, align 8
  %643 = getelementptr inbounds %struct.tnode, %struct.tnode* %642, i32 0, i32 8
  %644 = load i32, i32* %643, align 4
  %645 = load %struct.tnode*, %struct.tnode** %5, align 8
  %646 = getelementptr inbounds %struct.tnode, %struct.tnode* %645, i32 0, i32 7
  store i32 %644, i32* %646, align 8
  %647 = load i32, i32* %8, align 4
  %648 = load %struct.tnode*, %struct.tnode** %5, align 8
  %649 = getelementptr inbounds %struct.tnode, %struct.tnode* %648, i32 0, i32 8
  store i32 %647, i32* %649, align 4
  %650 = load %struct.tnode*, %struct.tnode** %7, align 8
  %651 = getelementptr inbounds %struct.tnode, %struct.tnode* %650, i32 0, i32 8
  %652 = load i32, i32* %651, align 4
  %653 = load %struct.tnode*, %struct.tnode** %7, align 8
  %654 = getelementptr inbounds %struct.tnode, %struct.tnode* %653, i32 0, i32 6
  %655 = load %struct.tnode*, %struct.tnode** %654, align 8
  %656 = getelementptr inbounds %struct.tnode, %struct.tnode* %655, i32 0, i32 8
  store i32 %652, i32* %656, align 4
  %657 = load %struct.tnode*, %struct.tnode** %5, align 8
  %658 = getelementptr inbounds %struct.tnode, %struct.tnode* %657, i32 0, i32 6
  %659 = load %struct.tnode*, %struct.tnode** %658, align 8
  %660 = load i32, i32* %8, align 4
  call void @tpatch(%struct.tnode* %659, i32 %660)
  %661 = load %struct.tnode*, %struct.tnode** %4, align 8
  %662 = bitcast %struct.tnode* %661 to i8*
  call void @free(i8* %662) #3
  br label %663

; <label>:663:                                    ; preds = %622, %592
  br label %664

; <label>:664:                                    ; preds = %663, %581
  br label %665

; <label>:665:                                    ; preds = %664, %342
  br label %666

; <label>:666:                                    ; preds = %665, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tnode* @tdsearch(i32, %struct.tnode*) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %6 = load %struct.tnode*, %struct.tnode** %5, align 8
  %7 = icmp eq %struct.tnode* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %2
  store %struct.tnode* null, %struct.tnode** %3, align 8
  br label %46

; <label>:9:                                      ; preds = %2
  %10 = load %struct.tnode*, %struct.tnode** %5, align 8
  %11 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %9
  %15 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %15, %struct.tnode** %3, align 8
  br label %46

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tnode*, %struct.tnode** %5, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.tnode*, %struct.tnode** %5, align 8
  %25 = getelementptr inbounds %struct.tnode, %struct.tnode* %24, i32 0, i32 2
  %26 = load %struct.tnode*, %struct.tnode** %25, align 8
  %27 = call %struct.tnode* @tdsearch(i32 %23, %struct.tnode* %26)
  store %struct.tnode* %27, %struct.tnode** %3, align 8
  br label %46

; <label>:28:                                     ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.tnode*, %struct.tnode** %5, align 8
  %31 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tnode*, %struct.tnode** %5, align 8
  %37 = getelementptr inbounds %struct.tnode, %struct.tnode* %36, i32 0, i32 3
  %38 = load %struct.tnode*, %struct.tnode** %37, align 8
  %39 = call %struct.tnode* @tdsearch(i32 %35, %struct.tnode* %38)
  store %struct.tnode* %39, %struct.tnode** %3, align 8
  br label %46

; <label>:40:                                     ; preds = %28
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.tnode*, %struct.tnode** %5, align 8
  %43 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 4
  %44 = load %struct.tnode*, %struct.tnode** %43, align 8
  %45 = call %struct.tnode* @tdsearch(i32 %41, %struct.tnode* %44)
  store %struct.tnode* %45, %struct.tnode** %3, align 8
  br label %46

; <label>:46:                                     ; preds = %40, %34, %22, %14, %8
  %47 = load %struct.tnode*, %struct.tnode** %3, align 8
  ret %struct.tnode* %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tnode* @tfind(i32, %struct.tnode*) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnode*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %6 = load %struct.tnode*, %struct.tnode** %5, align 8
  %7 = getelementptr inbounds %struct.tnode, %struct.tnode* %6, i32 0, i32 2
  %8 = load %struct.tnode*, %struct.tnode** %7, align 8
  %9 = getelementptr inbounds %struct.tnode, %struct.tnode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %2
  %14 = load %struct.tnode*, %struct.tnode** %5, align 8
  %15 = getelementptr inbounds %struct.tnode, %struct.tnode* %14, i32 0, i32 2
  %16 = load %struct.tnode*, %struct.tnode** %15, align 8
  store %struct.tnode* %16, %struct.tnode** %3, align 8
  br label %50

; <label>:17:                                     ; preds = %2
  %18 = load %struct.tnode*, %struct.tnode** %5, align 8
  %19 = getelementptr inbounds %struct.tnode, %struct.tnode* %18, i32 0, i32 3
  %20 = load %struct.tnode*, %struct.tnode** %19, align 8
  %21 = getelementptr inbounds %struct.tnode, %struct.tnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %17
  %26 = load %struct.tnode*, %struct.tnode** %5, align 8
  %27 = getelementptr inbounds %struct.tnode, %struct.tnode* %26, i32 0, i32 3
  %28 = load %struct.tnode*, %struct.tnode** %27, align 8
  store %struct.tnode* %28, %struct.tnode** %3, align 8
  br label %50

; <label>:29:                                     ; preds = %17
  %30 = load %struct.tnode*, %struct.tnode** %5, align 8
  %31 = getelementptr inbounds %struct.tnode, %struct.tnode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %47

; <label>:34:                                     ; preds = %29
  %35 = load %struct.tnode*, %struct.tnode** %5, align 8
  %36 = getelementptr inbounds %struct.tnode, %struct.tnode* %35, i32 0, i32 4
  %37 = load %struct.tnode*, %struct.tnode** %36, align 8
  %38 = getelementptr inbounds %struct.tnode, %struct.tnode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %34
  %43 = load %struct.tnode*, %struct.tnode** %5, align 8
  %44 = getelementptr inbounds %struct.tnode, %struct.tnode* %43, i32 0, i32 4
  %45 = load %struct.tnode*, %struct.tnode** %44, align 8
  store %struct.tnode* %45, %struct.tnode** %3, align 8
  br label %50

; <label>:46:                                     ; preds = %34
  br label %47

; <label>:47:                                     ; preds = %46, %29
  br label %48

; <label>:48:                                     ; preds = %47
  br label %49

; <label>:49:                                     ; preds = %48
  store %struct.tnode* null, %struct.tnode** %3, align 8
  br label %50

; <label>:50:                                     ; preds = %49, %42, %25, %13
  %51 = load %struct.tnode*, %struct.tnode** %3, align 8
  ret %struct.tnode* %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.plist* @pfind(%struct.tnode*, i32, %struct.plist**) #0 {
  %4 = alloca %struct.plist*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.plist**, align 8
  %8 = alloca %struct.plist*, align 8
  store %struct.tnode* %0, %struct.tnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.plist** %2, %struct.plist*** %7, align 8
  %9 = load %struct.plist**, %struct.plist*** %7, align 8
  store %struct.plist* null, %struct.plist** %9, align 8
  %10 = load %struct.tnode*, %struct.tnode** %5, align 8
  %11 = getelementptr inbounds %struct.tnode, %struct.tnode* %10, i32 0, i32 9
  %12 = load %struct.plist*, %struct.plist** %11, align 8
  store %struct.plist* %12, %struct.plist** %8, align 8
  br label %13

; <label>:13:                                     ; preds = %24, %3
  %14 = load %struct.plist*, %struct.plist** %8, align 8
  %15 = icmp ne %struct.plist* %14, null
  br i1 %15, label %16, label %30

; <label>:16:                                     ; preds = %13
  %17 = load %struct.plist*, %struct.plist** %8, align 8
  %18 = getelementptr inbounds %struct.plist, %struct.plist* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %16
  %23 = load %struct.plist*, %struct.plist** %8, align 8
  store %struct.plist* %23, %struct.plist** %4, align 8
  br label %31

; <label>:24:                                     ; preds = %16
  %25 = load %struct.plist*, %struct.plist** %8, align 8
  %26 = load %struct.plist**, %struct.plist*** %7, align 8
  store %struct.plist* %25, %struct.plist** %26, align 8
  %27 = load %struct.plist*, %struct.plist** %8, align 8
  %28 = getelementptr inbounds %struct.plist, %struct.plist* %27, i32 0, i32 1
  %29 = load %struct.plist*, %struct.plist** %28, align 8
  store %struct.plist* %29, %struct.plist** %8, align 8
  br label %13

; <label>:30:                                     ; preds = %13
  store %struct.plist* null, %struct.plist** %4, align 8
  br label %31

; <label>:31:                                     ; preds = %30, %22
  %32 = load %struct.plist*, %struct.plist** %4, align 8
  ret %struct.plist* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tprop(%struct.tnode*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca %struct.tnode*, align 8
  store %struct.tnode* %0, %struct.tnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tnode*, %struct.tnode** %4, align 8
  %9 = icmp eq %struct.tnode* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %49

; <label>:11:                                     ; preds = %2
  %12 = load %struct.tnode*, %struct.tnode** %4, align 8
  %13 = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

; <label>:16:                                     ; preds = %11
  %17 = load %struct.tnode*, %struct.tnode** %4, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

; <label>:22:                                     ; preds = %16
  %23 = load %struct.tnode*, %struct.tnode** %4, align 8
  %24 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 9
  %25 = load %struct.plist*, %struct.plist** %24, align 8
  %26 = getelementptr inbounds %struct.plist, %struct.plist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  br label %49

; <label>:28:                                     ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %49

; <label>:29:                                     ; preds = %11
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tnode*, %struct.tnode** %4, align 8
  %32 = call %struct.tnode* @tsearch(i32 %30, %struct.tnode* %31)
  store %struct.tnode* %32, %struct.tnode** %7, align 8
  %33 = load %struct.tnode*, %struct.tnode** %7, align 8
  %34 = icmp eq %struct.tnode* %33, null
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %49

; <label>:36:                                     ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.tnode*, %struct.tnode** %7, align 8
  %39 = call %struct.tnode* @tfind(i32 %37, %struct.tnode* %38)
  store %struct.tnode* %39, %struct.tnode** %6, align 8
  %40 = load %struct.tnode*, %struct.tnode** %6, align 8
  %41 = icmp eq %struct.tnode* %40, null
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %36
  store i32 -1, i32* %3, align 4
  br label %49

; <label>:43:                                     ; preds = %36
  %44 = load %struct.tnode*, %struct.tnode** %6, align 8
  %45 = getelementptr inbounds %struct.tnode, %struct.tnode* %44, i32 0, i32 9
  %46 = load %struct.plist*, %struct.plist** %45, align 8
  %47 = getelementptr inbounds %struct.plist, %struct.plist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %49

; <label>:49:                                     ; preds = %43, %42, %35, %28, %22, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.plist* @tplist(%struct.tnode*, i32) #0 {
  %3 = alloca %struct.plist*, align 8
  %4 = alloca %struct.tnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca %struct.tnode*, align 8
  store %struct.tnode* %0, %struct.tnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tnode*, %struct.tnode** %4, align 8
  %9 = icmp eq %struct.tnode* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store %struct.plist* null, %struct.plist** %3, align 8
  br label %45

; <label>:11:                                     ; preds = %2
  %12 = load %struct.tnode*, %struct.tnode** %4, align 8
  %13 = getelementptr inbounds %struct.tnode, %struct.tnode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %11
  %17 = load %struct.tnode*, %struct.tnode** %4, align 8
  %18 = getelementptr inbounds %struct.tnode, %struct.tnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %16
  %23 = load %struct.tnode*, %struct.tnode** %4, align 8
  %24 = getelementptr inbounds %struct.tnode, %struct.tnode* %23, i32 0, i32 9
  %25 = load %struct.plist*, %struct.plist** %24, align 8
  store %struct.plist* %25, %struct.plist** %3, align 8
  br label %45

; <label>:26:                                     ; preds = %16
  store %struct.plist* null, %struct.plist** %3, align 8
  br label %45

; <label>:27:                                     ; preds = %11
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.tnode*, %struct.tnode** %4, align 8
  %30 = call %struct.tnode* @tsearch(i32 %28, %struct.tnode* %29)
  store %struct.tnode* %30, %struct.tnode** %7, align 8
  %31 = load %struct.tnode*, %struct.tnode** %7, align 8
  %32 = icmp eq %struct.tnode* %31, null
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %27
  store %struct.plist* null, %struct.plist** %3, align 8
  br label %45

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tnode*, %struct.tnode** %7, align 8
  %37 = call %struct.tnode* @tfind(i32 %35, %struct.tnode* %36)
  store %struct.tnode* %37, %struct.tnode** %6, align 8
  %38 = load %struct.tnode*, %struct.tnode** %6, align 8
  %39 = icmp eq %struct.tnode* %38, null
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %34
  store %struct.plist* null, %struct.plist** %3, align 8
  br label %45

; <label>:41:                                     ; preds = %34
  %42 = load %struct.tnode*, %struct.tnode** %6, align 8
  %43 = getelementptr inbounds %struct.tnode, %struct.tnode* %42, i32 0, i32 9
  %44 = load %struct.plist*, %struct.plist** %43, align 8
  store %struct.plist* %44, %struct.plist** %3, align 8
  br label %45

; <label>:45:                                     ; preds = %41, %40, %33, %26, %22, %10
  %46 = load %struct.plist*, %struct.plist** %3, align 8
  ret %struct.plist* %46
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.1-svn369350-1~exp1~20190820121219.79 (branches/release_80)"}
