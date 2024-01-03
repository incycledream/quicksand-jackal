.class public Lcom/jhlabs/math/FFT;
.super Ljava/lang/Object;
.source "FFT.java"


# instance fields
.field protected w1:[F

.field protected w2:[F

.field protected w3:[F


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/jhlabs/math/FFT;->w1:[F

    .line 29
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/jhlabs/math/FFT;->w2:[F

    .line 30
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/jhlabs/math/FFT;->w3:[F

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/2addr v2, v0

    const-wide v3, -0x3fe6de04abbbd2e8L    # -6.283185307179586

    int-to-double v5, v2

    .line 34
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 35
    iget-object v5, p0, Lcom/jhlabs/math/FFT;->w1:[F

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v1

    .line 36
    iget-object v5, p0, Lcom/jhlabs/math/FFT;->w2:[F

    const/high16 v6, -0x40000000    # -2.0f

    iget-object v7, p0, Lcom/jhlabs/math/FFT;->w1:[F

    aget v8, v7, v1

    mul-float v8, v8, v6

    aget v6, v7, v1

    mul-float v8, v8, v6

    aput v8, v5, v1

    .line 37
    iget-object v5, p0, Lcom/jhlabs/math/FFT;->w3:[F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private butterflies(III[F[F)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, p2

    if-ge v4, v7, :cond_2

    shl-int/lit8 v8, v5, 0x1

    int-to-float v9, v2

    .line 70
    iget-object v10, v0, Lcom/jhlabs/math/FFT;->w1:[F

    aget v10, v10, v4

    .line 71
    iget-object v10, v0, Lcom/jhlabs/math/FFT;->w2:[F

    aget v10, v10, v4

    .line 72
    iget-object v11, v0, Lcom/jhlabs/math/FFT;->w3:[F

    aget v11, v11, v4

    mul-float v9, v9, v11

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    move v13, v6

    :goto_2
    if-ge v13, v1, :cond_0

    add-int v14, v13, v5

    .line 78
    aget v15, p4, v14

    .line 79
    aget v16, p5, v14

    mul-float v17, v11, v15

    mul-float v18, v12, v16

    sub-float v17, v17, v18

    mul-float v15, v15, v12

    mul-float v16, v16, v11

    add-float v15, v15, v16

    .line 82
    aget v16, p4, v13

    sub-float v16, v16, v17

    aput v16, p4, v14

    .line 83
    aget v16, p4, v13

    add-float v16, v16, v17

    aput v16, p4, v13

    .line 84
    aget v16, p5, v13

    sub-float v16, v16, v15

    aput v16, p5, v14

    .line 85
    aget v14, p5, v13

    add-float/2addr v14, v15

    aput v14, p5, v13

    add-int/2addr v13, v8

    goto :goto_2

    :cond_0
    mul-float v13, v11, v10

    mul-float v14, v12, v9

    sub-float/2addr v13, v14

    add-float/2addr v13, v11

    mul-float v14, v12, v10

    mul-float v11, v11, v9

    add-float/2addr v14, v11

    add-float/2addr v12, v14

    add-int/lit8 v6, v6, 0x1

    move v11, v13

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v8

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    int-to-float v2, v1

    div-float/2addr v6, v2

    :goto_3
    if-ge v3, v1, :cond_3

    .line 95
    aget v2, p4, v3

    mul-float v2, v2, v6

    aput v2, p4, v3

    .line 96
    aget v2, p5, v3

    mul-float v2, v2, v6

    aput v2, p5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private log2(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private scramble(I[F[F)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    if-le v0, v1, :cond_0

    .line 47
    aget v2, p2, v1

    .line 48
    aget v3, p2, v0

    aput v3, p2, v1

    .line 49
    aput v2, p2, v0

    .line 50
    aget v2, p3, v1

    .line 51
    aget v3, p3, v0

    aput v3, p3, v1

    .line 52
    aput v2, p3, v0

    :cond_0
    shr-int/lit8 v2, p1, 0x1

    :goto_1
    if-lt v1, v2, :cond_1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    sub-int/2addr v1, v2

    shr-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public transform1D([F[FIIZ)V
    .locals 6

    .line 102
    invoke-direct {p0, p4, p1, p2}, Lcom/jhlabs/math/FFT;->scramble(I[F[F)V

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, -0x1

    const/4 v3, -0x1

    :goto_0
    move-object v0, p0

    move v1, p4

    move v2, p3

    move-object v4, p1

    move-object v5, p2

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/FFT;->butterflies(III[F[F)V

    return-void
.end method

.method public transform2D([F[FIIZ)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 107
    invoke-direct {v6, v9}, Lcom/jhlabs/math/FFT;->log2(I)I

    move-result v11

    .line 108
    invoke-direct {v6, v10}, Lcom/jhlabs/math/FFT;->log2(I)I

    move-result v12

    .line 109
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 110
    new-array v13, v0, [F

    .line 111
    new-array v14, v0, [F

    const/4 v15, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v10, :cond_0

    mul-int v4, v5, v9

    .line 116
    invoke-static {v7, v4, v13, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    invoke-static {v8, v4, v14, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v11

    move v15, v4

    move/from16 v4, p3

    move/from16 v16, v5

    move/from16 v5, p5

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/math/FFT;->transform1D([F[FIIZ)V

    const/4 v5, 0x0

    .line 119
    invoke-static {v13, v5, v7, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    invoke-static {v14, v5, v8, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v16, 0x1

    move v5, v0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    move v1, v11

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 127
    aget v2, v7, v1

    aput v2, v13, v0

    .line 128
    aget v2, v8, v1

    aput v2, v14, v0

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v12

    move/from16 v4, p4

    const/4 v15, 0x0

    move/from16 v5, p5

    .line 131
    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/math/FFT;->transform1D([F[FIIZ)V

    move v1, v11

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_2

    .line 134
    aget v2, v13, v0

    aput v2, v7, v1

    .line 135
    aget v2, v14, v0

    aput v2, v8, v1

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method
