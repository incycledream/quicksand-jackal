.class public Lcom/jhlabs/math/SCNoise;
.super Ljava/lang/Object;
.source "SCNoise.java"

# interfaces
.implements Lcom/jhlabs/math/Function1D;
.implements Lcom/jhlabs/math/Function2D;
.implements Lcom/jhlabs/math/Function3D;


# static fields
.field private static final NENTRIES:I = 0x191

.field private static final NIMPULSES:I = 0x3

.field private static final SAMPRATE:I = 0x64

.field private static final TABMASK:I = 0xff

.field private static final TABSIZE:I = 0x100

.field private static impulseTab:[F

.field private static randomGenerator:Ljava/util/Random;

.field private static table:[F


# instance fields
.field public perm:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [S

    .line 102
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jhlabs/math/SCNoise;->perm:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xe1s
        0x9bs
        0xd2s
        0x6cs
        0xafs
        0xc7s
        0xdds
        0x90s
        0xcbs
        0x74s
        0x46s
        0xd5s
        0x45s
        0x9es
        0x21s
        0xfcs
        0x5s
        0x52s
        0xads
        0x85s
        0xdes
        0x8bs
        0xaes
        0x1bs
        0x9s
        0x47s
        0x5as
        0xf6s
        0x4bs
        0x82s
        0x5bs
        0xbfs
        0xa9s
        0x8as
        0x2s
        0x97s
        0xc2s
        0xebs
        0x51s
        0x7s
        0x19s
        0x71s
        0xe4s
        0x9fs
        0xcds
        0xfds
        0x86s
        0x8es
        0xf8s
        0x41s
        0xe0s
        0xd9s
        0x16s
        0x79s
        0xe5s
        0x3fs
        0x59s
        0x67s
        0x60s
        0x68s
        0x9cs
        0x11s
        0xc9s
        0x81s
        0x24s
        0x8s
        0xa5s
        0x6es
        0xeds
        0x75s
        0xe7s
        0x38s
        0x84s
        0xd3s
        0x98s
        0x14s
        0xb5s
        0x6fs
        0xefs
        0xdas
        0xaas
        0xa3s
        0x33s
        0xacs
        0x9ds
        0x2fs
        0x50s
        0xd4s
        0xb0s
        0xfas
        0x57s
        0x31s
        0x63s
        0xf2s
        0x88s
        0xbds
        0xa2s
        0x73s
        0x2cs
        0x2bs
        0x7cs
        0x5es
        0x96s
        0x10s
        0x8ds
        0xf7s
        0x20s
        0xas
        0xc6s
        0xdfs
        0xffs
        0x48s
        0x35s
        0x83s
        0x54s
        0x39s
        0xdcs
        0xc5s
        0x3as
        0x32s
        0xd0s
        0xbs
        0xf1s
        0x1cs
        0x3s
        0xc0s
        0x3es
        0xcas
        0x12s
        0xd7s
        0x99s
        0x18s
        0x4cs
        0x29s
        0xfs
        0xb3s
        0x27s
        0x2es
        0x37s
        0x6s
        0x80s
        0xa7s
        0x17s
        0xbcs
        0x6as
        0x22s
        0xbbs
        0x8cs
        0xa4s
        0x49s
        0x70s
        0xb6s
        0xf4s
        0xc3s
        0xe3s
        0xds
        0x23s
        0x4ds
        0xc4s
        0xb9s
        0x1as
        0xc8s
        0xe2s
        0x77s
        0x1fs
        0x7bs
        0xa8s
        0x7ds
        0xf9s
        0x44s
        0xb7s
        0xe6s
        0xb1s
        0x87s
        0xa0s
        0xb4s
        0xcs
        0x1s
        0xf3s
        0x94s
        0x66s
        0xa6s
        0x26s
        0xees
        0xfbs
        0x25s
        0xf0s
        0x7es
        0x40s
        0x4as
        0xa1s
        0x28s
        0xb8s
        0x95s
        0xabs
        0xb2s
        0x65s
        0x42s
        0x1ds
        0x3bs
        0x92s
        0x3ds
        0xfes
        0x6bs
        0x2as
        0x56s
        0x9as
        0x4s
        0xecs
        0xe8s
        0x78s
        0x15s
        0xe9s
        0xd1s
        0x2ds
        0x62s
        0xc1s
        0x72s
        0x4es
        0x13s
        0xces
        0xes
        0x76s
        0x7fs
        0x30s
        0x4fs
        0x93s
        0x55s
        0x1es
        0xcfs
        0xdbs
        0x36s
        0x58s
        0xeas
        0xbes
        0x7as
        0x5fs
        0x43s
        0x8fs
        0x6ds
        0x89s
        0xd6s
        0x91s
        0x5ds
        0x5cs
        0x64s
        0xf5s
        0x0s
        0xd8s
        0xbas
        0x3cs
        0x53s
        0x69s
        0x61s
        0xccs
        0x34s
    .end array-data
.end method

.method public static floor(F)I
    .locals 2

    float-to-int v0, p0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    int-to-float v1, v0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method static impulseTabInit(I)[F
    .locals 5

    const/16 v0, 0x400

    new-array v0, v0, [F

    .line 167
    new-instance v1, Ljava/util/Random;

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v1, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    const/4 p0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge p0, v1, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 169
    sget-object v2, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, p0

    add-int/lit8 p0, v1, 0x1

    .line 170
    sget-object v2, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, p0, 0x1

    .line 171
    sget-object v2, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, v0, p0

    add-int/lit8 p0, v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 172
    sget-object v4, Lcom/jhlabs/math/SCNoise;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    aput v2, v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public catrom2(F)F
    .locals 12

    const/4 v0, 0x0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_0

    return v0

    .line 145
    :cond_0
    sget-object v2, Lcom/jhlabs/math/SCNoise;->table:[F

    const/high16 v3, 0x42c80000    # 100.0f

    const/16 v4, 0x191

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v2, :cond_2

    new-array v2, v4, [F

    .line 146
    sput-object v2, Lcom/jhlabs/math/SCNoise;->table:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    int-to-float v6, v2

    div-float/2addr v6, v3

    float-to-double v6, v6

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    .line 151
    sget-object v7, Lcom/jhlabs/math/SCNoise;->table:[F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v6, v6

    const/high16 v10, -0x3f600000    # -5.0f

    const/high16 v11, 0x40400000    # 3.0f

    mul-float v6, v6, v11

    add-float/2addr v6, v10

    mul-float v9, v9, v6

    add-float/2addr v9, v8

    mul-float v9, v9, v5

    aput v9, v7, v2

    goto :goto_1

    .line 153
    :cond_1
    sget-object v7, Lcom/jhlabs/math/SCNoise;->table:[F

    const/high16 v8, -0x3f000000    # -8.0f

    const/high16 v9, 0x40a00000    # 5.0f

    sub-float/2addr v9, v6

    mul-float v9, v9, v6

    add-float/2addr v9, v8

    mul-float v6, v6, v9

    add-float/2addr v6, v1

    mul-float v6, v6, v5

    aput v6, v7, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    mul-float p1, p1, v3

    add-float/2addr p1, v5

    .line 158
    invoke-static {p1}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result p1

    if-lt p1, v4, :cond_3

    return v0

    .line 161
    :cond_3
    sget-object v0, Lcom/jhlabs/math/SCNoise;->table:[F

    aget p1, v0, p1

    return p1
.end method

.method public evaluate(F)F
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/jhlabs/math/SCNoise;->evaluate(FF)F

    move-result p1

    return p1
.end method

.method public evaluate(FF)F
    .locals 17

    move-object/from16 v0, p0

    .line 38
    sget-object v1, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    if-nez v1, :cond_0

    const/16 v1, 0x299

    .line 39
    invoke-static {v1}, Lcom/jhlabs/math/SCNoise;->impulseTabInit(I)[F

    move-result-object v1

    sput-object v1, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    .line 41
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result v1

    int-to-float v2, v1

    sub-float v2, p1, v2

    .line 42
    invoke-static/range {p2 .. p2}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result v3

    int-to-float v4, v3

    sub-float v4, p2, v4

    const/4 v5, 0x2

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v7, -0x2

    const/4 v8, 0x0

    :goto_0
    if-gt v7, v5, :cond_3

    move v9, v8

    const/4 v8, -0x2

    :goto_1
    if-gt v8, v5, :cond_2

    .line 49
    iget-object v10, v0, Lcom/jhlabs/math/SCNoise;->perm:[S

    add-int v11, v1, v7

    add-int v12, v3, v8

    and-int/lit16 v12, v12, 0xff

    aget-short v12, v10, v12

    add-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    aget-short v10, v10, v11

    const/4 v11, 0x3

    :goto_2
    if-lez v11, :cond_1

    mul-int/lit8 v12, v10, 0x4

    int-to-float v13, v7

    .line 54
    sget-object v14, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    add-int/lit8 v15, v12, 0x1

    aget v12, v14, v12

    add-float/2addr v13, v12

    sub-float v12, v2, v13

    int-to-float v13, v8

    add-int/lit8 v16, v15, 0x1

    .line 55
    aget v14, v14, v15

    add-float/2addr v13, v14

    sub-float v13, v4, v13

    mul-float v12, v12, v12

    mul-float v13, v13, v13

    add-float/2addr v12, v13

    .line 57
    invoke-virtual {v0, v12}, Lcom/jhlabs/math/SCNoise;->catrom2(F)F

    move-result v12

    sget-object v13, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    aget v13, v13, v16

    mul-float v12, v12, v13

    add-float/2addr v9, v12

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v10, v10, 0xff

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_0

    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v8, v1

    return v8
.end method

.method public evaluate(FFF)F
    .locals 19

    move-object/from16 v0, p0

    .line 71
    sget-object v1, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    if-nez v1, :cond_0

    const/16 v1, 0x299

    .line 72
    invoke-static {v1}, Lcom/jhlabs/math/SCNoise;->impulseTabInit(I)[F

    move-result-object v1

    sput-object v1, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    .line 74
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result v1

    int-to-float v2, v1

    sub-float v2, p1, v2

    .line 75
    invoke-static/range {p2 .. p2}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result v3

    int-to-float v4, v3

    sub-float v4, p2, v4

    .line 76
    invoke-static/range {p3 .. p3}, Lcom/jhlabs/math/SCNoise;->floor(F)I

    move-result v5

    int-to-float v6, v5

    sub-float v6, p3, v6

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v9, -0x2

    const/4 v10, 0x0

    :goto_0
    if-gt v9, v7, :cond_4

    move v11, v10

    const/4 v10, -0x2

    :goto_1
    if-gt v10, v7, :cond_3

    move v12, v11

    const/4 v11, -0x2

    :goto_2
    if-gt v11, v7, :cond_2

    .line 84
    iget-object v13, v0, Lcom/jhlabs/math/SCNoise;->perm:[S

    add-int v14, v1, v9

    add-int v15, v3, v10

    add-int v7, v5, v11

    and-int/lit16 v7, v7, 0xff

    aget-short v7, v13, v7

    add-int/2addr v15, v7

    and-int/lit16 v7, v15, 0xff

    aget-short v7, v13, v7

    add-int/2addr v14, v7

    and-int/lit16 v7, v14, 0xff

    aget-short v7, v13, v7

    const/4 v13, 0x3

    :goto_3
    if-lez v13, :cond_1

    mul-int/lit8 v14, v7, 0x4

    int-to-float v15, v9

    .line 89
    sget-object v16, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    add-int/lit8 v17, v14, 0x1

    aget v14, v16, v14

    add-float/2addr v15, v14

    sub-float v14, v2, v15

    int-to-float v15, v10

    add-int/lit8 v18, v17, 0x1

    .line 90
    aget v17, v16, v17

    add-float v15, v15, v17

    sub-float v15, v4, v15

    int-to-float v8, v11

    add-int/lit8 v17, v18, 0x1

    .line 91
    aget v16, v16, v18

    add-float v8, v8, v16

    sub-float v8, v6, v8

    mul-float v14, v14, v14

    mul-float v15, v15, v15

    add-float/2addr v14, v15

    mul-float v8, v8, v8

    add-float/2addr v14, v8

    .line 93
    invoke-virtual {v0, v14}, Lcom/jhlabs/math/SCNoise;->catrom2(F)F

    move-result v8

    sget-object v14, Lcom/jhlabs/math/SCNoise;->impulseTab:[F

    aget v14, v14, v17

    mul-float v8, v8, v14

    add-float/2addr v12, v8

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    goto :goto_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x2

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    const/4 v7, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move v10, v11

    const/4 v7, 0x2

    goto :goto_0

    :cond_4
    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v10, v1

    return v10
.end method
