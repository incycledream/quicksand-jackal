.class public Lcom/jhlabs/image/ImageMath;
.super Ljava/lang/Object;
.source "ImageMath.java"


# static fields
.field public static final HALF_PI:F = 1.5707964f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final TWO_PI:F = 6.2831855f

.field private static final m00:F = -0.5f

.field private static final m01:F = 1.5f

.field private static final m02:F = -1.5f

.field private static final m03:F = 0.5f

.field private static final m10:F = 1.0f

.field private static final m11:F = -2.5f

.field private static final m12:F = 2.0f

.field private static final m13:F = -0.5f

.field private static final m20:F = -0.5f

.field private static final m21:F = 0.0f

.field private static final m22:F = 0.5f

.field private static final m23:F = 0.0f

.field private static final m30:F = 0.0f

.field private static final m31:F = 1.0f

.field private static final m32:F

.field private static final m33:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bias(FF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    sub-float v1, v0, p0

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static bilinearInterpolate(FFIIII)I
    .locals 18

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v0, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v1, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v1, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v10, v2, 0x18

    and-int/lit16 v10, v10, 0xff

    shr-int/lit8 v11, v2, 0x10

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v12, v2, 0x8

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v13, v3, 0x18

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v14, v3, 0x10

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v3, 0x8

    and-int/lit16 v15, v15, 0xff

    and-int/lit16 v3, v3, 0xff

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v17, v16, p0

    sub-float v16, v16, p1

    int-to-float v4, v4

    mul-float v4, v4, v17

    int-to-float v7, v7

    mul-float v7, v7, p0

    add-float/2addr v4, v7

    int-to-float v7, v10

    mul-float v7, v7, v17

    int-to-float v10, v13

    mul-float v10, v10, p0

    add-float/2addr v7, v10

    mul-float v4, v4, v16

    mul-float v7, v7, p1

    add-float/2addr v4, v7

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float v5, v5, v17

    int-to-float v7, v8

    mul-float v7, v7, p0

    add-float/2addr v5, v7

    int-to-float v7, v11

    mul-float v7, v7, v17

    int-to-float v8, v14

    mul-float v8, v8, p0

    add-float/2addr v7, v8

    mul-float v5, v5, v16

    mul-float v7, v7, p1

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v6, v6

    mul-float v6, v6, v17

    int-to-float v7, v9

    mul-float v7, v7, p0

    add-float/2addr v6, v7

    int-to-float v7, v12

    mul-float v7, v7, v17

    int-to-float v8, v15

    mul-float v8, v8, p0

    add-float/2addr v7, v8

    mul-float v6, v6, v16

    mul-float v7, v7, p1

    add-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v0, v0

    mul-float v0, v0, v17

    int-to-float v1, v1

    mul-float v1, v1, p0

    add-float/2addr v0, v1

    int-to-float v1, v2

    mul-float v17, v17, v1

    int-to-float v1, v3

    mul-float v1, v1, p0

    add-float v17, v17, v1

    mul-float v16, v16, v0

    mul-float v0, p1, v17

    add-float v0, v16, v0

    float-to-int v0, v0

    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v2, v5, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static brightnessNTSC(I)I
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    int-to-float v0, v0

    const v2, 0x3e991687    # 0.299f

    mul-float v0, v0, v2

    int-to-float v1, v1

    const v2, 0x3f1645a2    # 0.587f

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    int-to-float p0, p0

    const v1, 0x3de978d5    # 0.114f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static circleDown(F)F
    .locals 3

    mul-float p0, p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    float-to-double v1, p0

    .line 142
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static circleUp(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p0, v0, p0

    mul-float p0, p0, p0

    sub-float/2addr v0, p0

    float-to-double v0, v0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static colorSpline(FI[I)I
    .locals 20

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move/from16 v3, p0

    .line 438
    invoke-static {v3, v2, v1}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result v3

    int-to-float v0, v0

    mul-float v3, v3, v0

    float-to-int v0, v3

    const/4 v4, 0x4

    add-int/lit8 v5, p1, -0x4

    if-le v0, v5, :cond_0

    move v0, v5

    :cond_0
    int-to-float v5, v0

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    mul-int/lit8 v8, v6, 0x8

    .line 448
    aget v9, p2, v0

    shr-int/2addr v9, v8

    const/16 v10, 0xff

    and-int/2addr v9, v10

    int-to-float v9, v9

    add-int/lit8 v11, v0, 0x1

    .line 449
    aget v11, p2, v11

    shr-int/2addr v11, v8

    and-int/2addr v11, v10

    int-to-float v11, v11

    add-int/lit8 v12, v0, 0x2

    .line 450
    aget v12, p2, v12

    shr-int/2addr v12, v8

    and-int/2addr v12, v10

    int-to-float v12, v12

    add-int/lit8 v13, v0, 0x3

    .line 451
    aget v13, p2, v13

    shr-int/2addr v13, v8

    and-int/2addr v13, v10

    int-to-float v13, v13

    const/high16 v14, -0x41000000    # -0.5f

    mul-float v15, v9, v14

    const/high16 v16, 0x3fc00000    # 1.5f

    mul-float v16, v16, v11

    add-float v16, v15, v16

    const/high16 v17, -0x40400000    # -1.5f

    mul-float v17, v17, v12

    add-float v16, v16, v17

    const/high16 v17, 0x3f000000    # 0.5f

    mul-float v18, v13, v17

    add-float v16, v16, v18

    mul-float v18, v9, v1

    const/high16 v19, -0x3fe00000    # -2.5f

    mul-float v19, v19, v11

    add-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v12

    add-float v18, v18, v19

    mul-float v14, v14, v13

    add-float v18, v18, v14

    mul-float v14, v11, v2

    add-float/2addr v15, v14

    mul-float v17, v17, v12

    add-float v15, v15, v17

    mul-float v13, v13, v2

    add-float/2addr v15, v13

    mul-float v9, v9, v2

    mul-float v11, v11, v1

    add-float/2addr v9, v11

    mul-float v12, v12, v2

    add-float/2addr v9, v12

    add-float/2addr v9, v13

    mul-float v16, v16, v3

    add-float v16, v16, v18

    mul-float v16, v16, v3

    add-float v16, v16, v15

    mul-float v16, v16, v3

    add-float v9, v16, v9

    float-to-int v9, v9

    if-gez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    if-le v9, v10, :cond_2

    const/16 v9, 0xff

    :cond_2
    :goto_1
    shl-int v8, v9, v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return v7

    .line 436
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static colorSpline(II[I[I)I
    .locals 19

    move/from16 v0, p0

    add-int/lit8 v1, p1, -0x3

    const/4 v2, 0x1

    if-lt v1, v2, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    .line 486
    aget v5, p2, v4

    if-le v5, v0, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-le v3, v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 490
    :goto_2
    aget v3, p2, v1

    sub-int/2addr v0, v3

    int-to-float v0, v0

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aget v4, p2, v1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    if-gez v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x4

    if-ge v4, v6, :cond_6

    mul-int/lit8 v6, v4, 0x8

    .line 501
    aget v7, p3, v1

    shr-int/2addr v7, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    int-to-float v7, v7

    add-int/lit8 v9, v1, 0x1

    .line 502
    aget v9, p3, v9

    shr-int/2addr v9, v6

    and-int/2addr v9, v8

    int-to-float v9, v9

    add-int/lit8 v10, v1, 0x2

    .line 503
    aget v10, p3, v10

    shr-int/2addr v10, v6

    and-int/2addr v10, v8

    int-to-float v10, v10

    add-int/lit8 v11, v1, 0x3

    .line 504
    aget v11, p3, v11

    shr-int/2addr v11, v6

    and-int/2addr v11, v8

    int-to-float v11, v11

    const/high16 v12, -0x41000000    # -0.5f

    mul-float v13, v7, v12

    const/high16 v14, 0x3fc00000    # 1.5f

    mul-float v14, v14, v9

    add-float/2addr v14, v13

    const/high16 v15, -0x40400000    # -1.5f

    mul-float v15, v15, v10

    add-float/2addr v14, v15

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float v16, v11, v15

    add-float v14, v14, v16

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v17, v7, v16

    const/high16 v18, -0x3fe00000    # -2.5f

    mul-float v18, v18, v9

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v10

    add-float v17, v17, v18

    mul-float v12, v12, v11

    add-float v17, v17, v12

    mul-float v12, v9, v3

    add-float/2addr v13, v12

    mul-float v15, v15, v10

    add-float/2addr v13, v15

    mul-float v11, v11, v3

    add-float/2addr v13, v11

    mul-float v7, v7, v3

    mul-float v9, v9, v16

    add-float/2addr v7, v9

    mul-float v10, v10, v3

    add-float/2addr v7, v10

    add-float/2addr v7, v11

    mul-float v14, v14, v0

    add-float v14, v14, v17

    mul-float v14, v14, v0

    add-float/2addr v14, v13

    mul-float v14, v14, v0

    add-float/2addr v14, v7

    float-to-int v7, v14

    if-gez v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    if-le v7, v8, :cond_5

    const/16 v7, 0xff

    :cond_5
    :goto_4
    shl-int v6, v7, v6

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return v5

    .line 483
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static gain(FF)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr p1, v1

    mul-float v1, v1, p0

    sub-float v1, v0, v1

    mul-float p1, p1, v1

    float-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    add-float/2addr p1, v0

    :goto_0
    div-float/2addr p0, p1

    return p0

    :cond_0
    sub-float p0, p1, p0

    sub-float/2addr p1, v0

    goto :goto_0
.end method

.method public static lerp(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p0, p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static lerp(FII)I
    .locals 1

    int-to-float v0, p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float p0, p0, p1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static mixColors(FII)I
    .locals 6

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p2, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p2, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 260
    invoke-static {p0, v0, v3}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v0

    .line 261
    invoke-static {p0, v1, v4}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v1

    .line 262
    invoke-static {p0, v2, v5}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v2

    .line 263
    invoke-static {p0, p1, p2}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result p0

    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, v1, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static mod(DD)D
    .locals 3

    div-double v0, p0, p2

    double-to-int v0, v0

    int-to-double v0, v0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p2

    sub-double/2addr p0, v0

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    add-double/2addr p0, p2

    :cond_0
    return-wide p0
.end method

.method public static mod(FF)F
    .locals 1

    div-float v0, p0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static mod(II)I
    .locals 1

    .line 204
    div-int v0, p0, p1

    mul-int v0, v0, p1

    sub-int/2addr p0, v0

    if-gez p0, :cond_0

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public static pulse(FFF)F
    .locals 0

    cmpg-float p0, p2, p0

    if-ltz p0, :cond_1

    cmpl-float p0, p2, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static resample([I[IIII[F)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 541
    array-length v2, v0

    add-int/lit8 v3, v1, 0x2

    .line 544
    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    :goto_1
    add-int/lit8 v6, v5, 0x1

    .line 547
    aget v7, p5, v6

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    int-to-float v7, v5

    .line 549
    aget v9, p5, v5

    sub-float/2addr v8, v9

    aget v6, p5, v6

    aget v9, p5, v5

    sub-float/2addr v6, v9

    div-float/2addr v8, v6

    add-float/2addr v7, v8

    aput v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    int-to-float v4, v1

    .line 552
    aput v4, v3, v1

    add-int/lit8 v5, v1, 0x1

    .line 553
    aput v4, v3, v5

    const/4 v4, 0x1

    .line 556
    aget v5, v3, v4

    .line 559
    aget v6, v0, p3

    shr-int/lit8 v7, v6, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x10

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v6, v6, 0xff

    add-int v10, p3, p4

    .line 565
    aget v11, v0, v10

    shr-int/lit8 v12, v11, 0x18

    and-int/lit16 v12, v12, 0xff

    shr-int/lit8 v13, v11, 0x10

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v14, v11, 0x8

    and-int/lit16 v14, v14, 0xff

    and-int/lit16 v15, v11, 0xff

    add-int v10, v10, p4

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v21, p3

    move-object/from16 v23, v3

    move/from16 v22, v5

    move v3, v10

    move/from16 v24, v11

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v10, v22

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_2
    if-gt v4, v1, :cond_4

    int-to-float v1, v7

    mul-float v1, v1, v5

    sub-float v25, v17, v5

    move/from16 p3, v7

    int-to-float v7, v12

    mul-float v7, v7, v25

    add-float/2addr v1, v7

    int-to-float v7, v8

    mul-float v7, v7, v5

    move/from16 p5, v8

    int-to-float v8, v13

    mul-float v8, v8, v25

    add-float/2addr v7, v8

    int-to-float v8, v9

    mul-float v8, v8, v5

    move/from16 v26, v9

    int-to-float v9, v14

    mul-float v9, v9, v25

    add-float/2addr v8, v9

    int-to-float v9, v6

    mul-float v9, v9, v5

    move/from16 v27, v6

    int-to-float v6, v15

    mul-float v25, v25, v6

    add-float v9, v9, v25

    cmpg-float v6, v5, v10

    if-gez v6, :cond_3

    mul-float v1, v1, v5

    add-float/2addr v11, v1

    mul-float v7, v7, v5

    add-float v18, v18, v7

    mul-float v8, v8, v5

    add-float v19, v19, v8

    mul-float v9, v9, v5

    add-float v20, v20, v9

    sub-float/2addr v10, v5

    if-ge v3, v2, :cond_2

    .line 590
    aget v24, v0, v3

    :cond_2
    move/from16 v1, v24

    shr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v1, 0xff

    add-int v3, v3, p4

    move/from16 v24, v1

    move v9, v14

    move v14, v7

    move v7, v12

    move v12, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v28, v13

    move v13, v6

    move v6, v15

    move v15, v8

    move/from16 v8, v28

    goto :goto_3

    :cond_3
    mul-float v1, v1, v10

    add-float/2addr v11, v1

    mul-float v7, v7, v10

    add-float v18, v18, v7

    mul-float v8, v8, v10

    add-float v19, v19, v8

    mul-float v9, v9, v10

    add-float v20, v20, v9

    div-float v11, v11, v22

    const/high16 v1, 0x437f0000    # 255.0f

    .line 601
    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    div-float v7, v18, v22

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    div-float v7, v19, v22

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    div-float v7, v20, v22

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    or-int/2addr v1, v6

    aput v1, p1, v21

    add-int v21, v21, p4

    sub-float/2addr v5, v10

    add-int/lit8 v1, v4, 0x1

    .line 609
    aget v6, v23, v1

    aget v4, v23, v4

    sub-float/2addr v6, v4

    move/from16 v7, p3

    move/from16 v8, p5

    move v4, v1

    move v10, v6

    move/from16 v22, v10

    move/from16 v9, v26

    move/from16 v6, v27

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_3
    move/from16 v1, p2

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method public static smoothPulse(FFFFF)F
    .locals 3

    cmpg-float v0, p4, p0

    if-ltz v0, :cond_3

    cmpl-float v0, p4, p3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v2, p4, p1

    if-ltz v2, :cond_2

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p2

    if-gez p1, :cond_1

    return p0

    :cond_1
    sub-float/2addr p4, p2

    sub-float/2addr p3, p2

    div-float/2addr p4, p3

    mul-float p1, p4, p4

    mul-float p4, p4, v0

    sub-float/2addr v1, p4

    mul-float p1, p1, v1

    sub-float/2addr p0, p1

    return p0

    :cond_2
    sub-float/2addr p4, p0

    sub-float/2addr p1, p0

    div-float/2addr p4, p1

    mul-float p0, p4, p4

    mul-float p4, p4, v0

    sub-float/2addr v1, p4

    mul-float p0, p0, v1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static smoothStep(FFF)F
    .locals 1

    cmpg-float v0, p2, p0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    mul-float p0, p2, p2

    const/high16 p1, 0x40400000    # 3.0f

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    sub-float/2addr p1, p2

    mul-float p0, p0, p1

    return p0
.end method

.method public static spline(FI[F)F
    .locals 10

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 361
    invoke-static {p0, v2, v1}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p0

    int-to-float v0, v0

    mul-float p0, p0, v0

    float-to-int v0, p0

    add-int/lit8 p1, p1, -0x4

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    int-to-float v0, p1

    sub-float/2addr p0, v0

    .line 367
    aget v0, p2, p1

    add-int/lit8 v3, p1, 0x1

    .line 368
    aget v3, p2, v3

    add-int/lit8 v4, p1, 0x2

    .line 369
    aget v4, p2, v4

    add-int/lit8 p1, p1, 0x3

    .line 370
    aget p1, p2, p1

    const/high16 p2, -0x41000000    # -0.5f

    mul-float v5, v0, p2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    const/high16 v7, -0x40400000    # -1.5f

    mul-float v7, v7, v4

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v8, p1, v7

    add-float/2addr v6, v8

    mul-float v8, v0, v1

    const/high16 v9, -0x3fe00000    # -2.5f

    mul-float v9, v9, v3

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v9, v9, v4

    add-float/2addr v8, v9

    mul-float p2, p2, p1

    add-float/2addr v8, p2

    mul-float p2, v3, v2

    add-float/2addr v5, p2

    mul-float v7, v7, v4

    add-float/2addr v5, v7

    mul-float p1, p1, v2

    add-float/2addr v5, p1

    mul-float v0, v0, v2

    mul-float v3, v3, v1

    add-float/2addr v0, v3

    mul-float v4, v4, v2

    add-float/2addr v0, v4

    add-float/2addr v0, p1

    mul-float v6, v6, p0

    add-float/2addr v6, v8

    mul-float v6, v6, p0

    add-float/2addr v6, v5

    mul-float v6, v6, p0

    add-float/2addr v6, v0

    return v6

    .line 359
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few knots in spline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static spline(FI[I[I)F
    .locals 9

    add-int/lit8 p1, p1, -0x3

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 398
    aget v3, p2, v2

    int-to-float v3, v3

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    if-le v1, p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    .line 402
    :goto_2
    aget v1, p2, p1

    int-to-float v1, v1

    sub-float/2addr p0, v1

    add-int/lit8 v1, p1, 0x1

    aget v1, p2, v1

    aget p2, p2, p1

    sub-int/2addr v1, p2

    int-to-float p2, v1

    div-float/2addr p0, p2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x0

    if-gez p1, :cond_3

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 409
    :cond_3
    aget v0, p3, p1

    int-to-float v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 410
    aget v1, p3, v1

    int-to-float v1, v1

    add-int/lit8 v2, p1, 0x2

    .line 411
    aget v2, p3, v2

    int-to-float v2, v2

    add-int/lit8 p1, p1, 0x3

    .line 412
    aget p1, p3, p1

    int-to-float p1, p1

    const/high16 p3, -0x41000000    # -0.5f

    mul-float v3, v0, p3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v4, v4, v1

    add-float/2addr v4, v3

    const/high16 v5, -0x40400000    # -1.5f

    mul-float v5, v5, v2

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, p1, v5

    add-float/2addr v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, v0, v6

    const/high16 v8, -0x3fe00000    # -2.5f

    mul-float v8, v8, v1

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    mul-float p3, p3, p1

    add-float/2addr v7, p3

    mul-float p3, v1, p2

    add-float/2addr v3, p3

    mul-float v5, v5, v2

    add-float/2addr v3, v5

    mul-float p1, p1, p2

    add-float/2addr v3, p1

    mul-float v0, v0, p2

    mul-float v1, v1, v6

    add-float/2addr v0, v1

    mul-float v2, v2, p2

    add-float/2addr v0, v2

    add-float/2addr v0, p1

    mul-float v4, v4, p0

    add-float/2addr v4, v7

    mul-float v4, v4, p0

    add-float/2addr v4, v3

    mul-float v4, v4, p0

    add-float/2addr v4, v0

    return v4

    .line 395
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Too few knots in spline"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method

.method public static step(FF)F
    .locals 0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public static triangle(F)F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 218
    invoke-static {p0, v0}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result p0

    float-to-double v1, p0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float p0, p0, v0

    return p0
.end method
