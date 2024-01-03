.class public Lcom/jhlabs/image/WarpGrid;
.super Ljava/lang/Object;
.source "WarpGrid.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final m00:F = -0.5f

.field private static final m01:F = 1.5f

.field private static final m02:F = -1.5f

.field private static final m03:F = 0.5f

.field private static final m10:F = 1.0f

.field private static final m11:F = -2.5f

.field private static final m12:F = 2.0f

.field private static final m13:F = -0.5f

.field private static final m20:F = -0.5f

.field private static final m22:F = 0.5f

.field private static final m31:F = 1.0f

.field static final serialVersionUID:J = 0x3bd8c23a8312ff70L


# instance fields
.field public cols:I

.field public rows:I

.field public xGrid:[F

.field public yGrid:[F


# direct methods
.method public constructor <init>(IIII)V
    .locals 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 31
    iput-object v0, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    .line 35
    iput p1, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    .line 36
    iput p2, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    mul-int v0, p1, p2

    .line 37
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 38
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_0

    .line 42
    iget-object v4, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    int-to-float v5, v2

    add-int/lit8 v6, p3, -0x1

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-int/lit8 v6, p2, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v3

    .line 43
    iget-object v4, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    int-to-float v5, v1

    add-int/lit8 v6, p4, -0x1

    int-to-float v6, v6

    mul-float v5, v5, v6

    add-int/lit8 v6, p1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addCol(I)V
    .locals 11

    .line 84
    iget v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget v1, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    add-int/lit8 v2, v1, 0x1

    mul-int v0, v0, v2

    .line 85
    new-array v2, v0, [F

    .line 86
    new-array v0, v0, [F

    add-int/lit8 v1, v1, 0x1

    .line 88
    iput v1, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 91
    :goto_0
    iget v6, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ge v3, v6, :cond_2

    move v6, v4

    const/4 v4, 0x0

    .line 94
    :goto_1
    iget v7, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ge v4, v7, :cond_1

    if-ne v4, p1, :cond_0

    .line 96
    iget-object v7, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v8, v7, v6

    add-int/lit8 v9, v6, -0x1

    aget v7, v7, v9

    add-float/2addr v8, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v8, v7

    aput v8, v2, v5

    .line 97
    iget-object v8, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v10, v8, v6

    aget v8, v8, v9

    add-float/2addr v10, v8

    div-float/2addr v10, v7

    aput v10, v0, v5

    goto :goto_2

    .line 99
    :cond_0
    iget-object v7, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v7, v7, v6

    aput v7, v2, v5

    .line 100
    iget-object v7, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v7, v7, v6

    aput v7, v0, v5

    add-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 106
    :cond_2
    iput-object v2, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 107
    iput-object v0, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    return-void
.end method

.method public addRow(I)V
    .locals 11

    .line 53
    iget v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    mul-int v1, v1, v2

    .line 54
    new-array v2, v1, [F

    .line 55
    new-array v1, v1, [F

    add-int/lit8 v0, v0, 0x1

    .line 57
    iput v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 60
    :goto_0
    iget v6, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ge v3, v6, :cond_3

    const/4 v6, 0x0

    .line 61
    :goto_1
    iget v7, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ge v6, v7, :cond_1

    add-int v7, v5, v6

    add-int v8, v4, v6

    if-ne v3, p1, :cond_0

    .line 65
    iget-object v9, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v10, v9, v8

    aget v9, v9, v7

    add-float/2addr v10, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v10, v9

    aput v10, v2, v7

    .line 66
    iget-object v10, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v8, v10, v8

    aget v10, v10, v7

    add-float/2addr v8, v10

    div-float/2addr v8, v9

    aput v8, v1, v7

    goto :goto_2

    .line 68
    :cond_0
    iget-object v9, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v9, v9, v8

    aput v9, v2, v7

    .line 69
    iget-object v9, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v8, v9, v8

    aput v8, v1, v7

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, p1, -0x1

    if-eq v3, v6, :cond_2

    add-int/2addr v4, v7

    .line 74
    :cond_2
    iget v6, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_3
    iput-object v2, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 77
    iput-object v1, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    return-void
.end method

.method protected interpolateSpline([F[FII[FII)V
    .locals 19

    add-int v0, p3, p4

    add-int/lit8 v0, v0, -0x1

    .line 305
    aget v1, p1, p3

    .line 306
    aget v2, p2, p3

    add-int/lit8 v3, p3, 0x1

    .line 307
    aget v4, p1, v3

    .line 308
    aget v3, p2, v3

    const/4 v5, 0x0

    move v7, v1

    move v9, v2

    move v6, v3

    move v8, v4

    move/from16 v1, p7

    move v3, v9

    move v4, v3

    move/from16 v2, p3

    :goto_0
    if-ge v5, v1, :cond_3

    if-gt v2, v0, :cond_2

    int-to-float v10, v5

    .line 311
    aget v11, p1, v2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 315
    aget v7, p1, v2

    add-int/lit8 v2, v2, 0x1

    if-gt v2, v0, :cond_0

    .line 318
    aget v8, p1, v2

    :cond_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v9, v2, 0x1

    .line 320
    aget v9, p2, v9

    move/from16 v18, v9

    move v9, v3

    move v3, v4

    move v4, v6

    move/from16 v6, v18

    goto :goto_1

    :cond_1
    move v9, v3

    move v3, v4

    move v4, v6

    :cond_2
    :goto_1
    int-to-float v10, v5

    sub-float/2addr v10, v7

    sub-float v11, v8, v7

    div-float/2addr v10, v11

    const/high16 v11, -0x41000000    # -0.5f

    mul-float v12, v9, v11

    const/high16 v13, 0x3fc00000    # 1.5f

    mul-float v13, v13, v3

    add-float/2addr v13, v12

    const/high16 v14, -0x40400000    # -1.5f

    mul-float v14, v14, v4

    add-float/2addr v13, v14

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float v15, v6, v14

    add-float/2addr v13, v15

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v16, v9, v15

    const/high16 v17, -0x3fe00000    # -2.5f

    mul-float v17, v17, v3

    add-float v16, v16, v17

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v4

    add-float v16, v16, v17

    mul-float v11, v11, v6

    add-float v16, v16, v11

    mul-float v14, v14, v4

    add-float/2addr v12, v14

    mul-float v15, v15, v3

    add-int v11, p6, v5

    mul-float v13, v13, v10

    add-float v13, v13, v16

    mul-float v13, v13, v10

    add-float/2addr v13, v12

    mul-float v13, v13, v10

    add-float/2addr v13, v15

    .line 330
    aput v13, p5, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected interpolateSpline2([F[FI[FII)V
    .locals 9

    .line 339
    aget v0, p1, p3

    .line 340
    aget v1, p2, p3

    add-int/lit8 v2, p3, 0x1

    .line 341
    aget v3, p1, v2

    .line 342
    aget v2, p2, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p6, :cond_1

    int-to-float v5, v4

    .line 345
    aget v6, p1, p3

    cmpl-float v6, v5, v6

    if-lez v6, :cond_0

    .line 346
    aget v0, p1, p3

    .line 347
    aget v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    .line 349
    aget v2, p1, p3

    .line 350
    aget v3, p2, p3

    move v8, v3

    move v3, v2

    move v2, v8

    :cond_0
    sub-float/2addr v5, v0

    sub-float v6, v3, v0

    div-float/2addr v5, v6

    add-int v6, p5, v4

    sub-float v7, v2, v1

    mul-float v5, v5, v7

    add-float/2addr v5, v1

    .line 353
    aput v5, p4, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public lerp(FLcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;)V
    .locals 7

    .line 163
    iget v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget v1, p2, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    iget v2, p2, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ne v1, v2, :cond_3

    .line 165
    iget v2, p3, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ne v0, v2, :cond_2

    iget v0, p3, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget v3, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ge v1, v3, :cond_1

    move v3, v2

    const/4 v2, 0x0

    .line 169
    :goto_1
    iget v4, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ge v2, v4, :cond_0

    .line 170
    iget-object v4, p3, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    iget-object v5, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v5, v5, v3

    iget-object v6, p2, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v6, v6, v3

    invoke-static {p1, v5, v6}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v5

    aput v5, v4, v3

    .line 171
    iget-object v4, p3, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    iget-object v5, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v5, v5, v3

    iget-object v6, p2, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v6, v6, v3

    invoke-static {p1, v5, v6}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return-void

    .line 166
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source and intermediate are different sizes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "source and destination are different sizes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public removeCol(I)V
    .locals 8

    .line 141
    iget v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget v1, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    add-int/lit8 v2, v1, 0x1

    mul-int v0, v0, v2

    .line 142
    new-array v2, v0, [F

    .line 143
    new-array v0, v0, [F

    add-int/lit8 v1, v1, -0x1

    .line 145
    iput v1, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 146
    :goto_0
    iget v4, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ge v3, v4, :cond_2

    .line 147
    iget v4, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    add-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v3

    mul-int v4, v4, v3

    move v6, v5

    move v5, v4

    const/4 v4, 0x0

    .line 149
    :goto_1
    iget v7, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ge v4, v7, :cond_1

    .line 150
    iget-object v7, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v7, v7, v6

    aput v7, v2, v5

    .line 151
    iget-object v7, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v7, v7, v6

    aput v7, v0, v5

    add-int/lit8 v7, p1, -0x1

    if-ne v4, v7, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iput-object v2, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 159
    iput-object v0, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    return-void
.end method

.method public removeRow(I)V
    .locals 10

    .line 114
    iget v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    mul-int v1, v1, v2

    .line 115
    new-array v2, v1, [F

    .line 116
    new-array v1, v1, [F

    add-int/lit8 v0, v0, -0x1

    .line 118
    iput v0, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 121
    :goto_0
    iget v6, p0, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ge v3, v6, :cond_2

    const/4 v6, 0x0

    .line 122
    :goto_1
    iget v7, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ge v6, v7, :cond_0

    add-int v7, v5, v6

    add-int v8, v4, v6

    .line 125
    iget-object v9, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v9, v9, v8

    aput v9, v2, v7

    .line 126
    iget-object v9, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v8, v9, v8

    aput v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, p1, -0x1

    if-ne v3, v6, :cond_1

    add-int/2addr v4, v7

    .line 130
    :cond_1
    iget v6, p0, Lcom/jhlabs/image/WarpGrid;->cols:I

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_2
    iput-object v2, p0, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    .line 134
    iput-object v1, p0, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    return-void
.end method

.method public warp([IIILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;[I)V
    .locals 23

    move/from16 v0, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 184
    :try_start_0
    iget v1, v10, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget v2, v11, Lcom/jhlabs/image/WarpGrid;->rows:I

    if-ne v1, v2, :cond_a

    iget v1, v10, Lcom/jhlabs/image/WarpGrid;->cols:I

    iget v2, v11, Lcom/jhlabs/image/WarpGrid;->cols:I

    if-ne v1, v2, :cond_a

    .line 187
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 188
    new-array v12, v1, [F

    .line 189
    new-array v13, v1, [F

    const/4 v14, 0x1

    add-int/2addr v1, v14

    .line 190
    new-array v15, v1, [F

    .line 191
    new-array v8, v1, [F

    .line 193
    iget v7, v10, Lcom/jhlabs/image/WarpGrid;->cols:I

    .line 194
    iget v6, v10, Lcom/jhlabs/image/WarpGrid;->rows:I

    .line 196
    new-instance v5, Lcom/jhlabs/image/WarpGrid;

    invoke-direct {v5, v9, v7, v14, v14}, Lcom/jhlabs/image/WarpGrid;-><init>(IIII)V

    const/16 v16, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_2

    move v2, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_0

    .line 202
    iget-object v3, v10, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v3, v3, v2

    aput v3, v12, v1

    .line 203
    iget-object v3, v10, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v3, v3, v2

    aput v3, v13, v1

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v12

    move/from16 v19, v4

    move/from16 v4, v17

    move-object v14, v5

    move v5, v6

    move/from16 v20, v6

    move-object v6, v8

    move/from16 v21, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, p3

    .line 207
    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    move/from16 v2, v19

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_1

    .line 211
    iget-object v3, v14, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v4, v18, v1

    aput v4, v3, v2

    move/from16 v8, v21

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    move/from16 v21, v8

    goto :goto_2

    :cond_1
    move/from16 v8, v21

    add-int/lit8 v4, v19, 0x1

    move v7, v8

    move-object v5, v14

    move-object/from16 v8, v18

    move/from16 v6, v20

    const/4 v14, 0x1

    goto :goto_0

    :cond_2
    move-object v14, v5

    move/from16 v20, v6

    move-object/from16 v18, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v8, :cond_5

    move v2, v7

    move/from16 v6, v20

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_3

    .line 220
    iget-object v3, v11, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v3, v3, v2

    aput v3, v12, v1

    .line 221
    iget-object v3, v11, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v3, v3, v2

    aput v3, v13, v1

    add-int/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v12

    move v5, v6

    move/from16 v22, v6

    move-object/from16 v6, v18

    move/from16 v20, v7

    move/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, p3

    .line 225
    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    move/from16 v2, v20

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_4

    .line 229
    iget-object v3, v14, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v4, v18, v1

    aput v4, v3, v2

    add-int v2, v2, v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v20, 0x1

    move/from16 v8, v19

    move/from16 v20, v22

    goto :goto_3

    :cond_5
    move/from16 v19, v8

    move/from16 v22, v20

    mul-int v1, v9, v0

    .line 235
    new-array v8, v1, [I

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_6
    if-ge v7, v9, :cond_6

    .line 240
    iget-object v2, v14, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    iget-object v3, v14, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v18

    move/from16 v5, v19

    move-object v6, v15

    move/from16 v21, v7

    move/from16 v7, v20

    move-object/from16 v20, v8

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    int-to-float v1, v0

    .line 241
    aput v1, v15, v0

    mul-int v4, v21, v0

    const/4 v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, p2

    move-object v6, v15

    .line 242
    invoke-static/range {v1 .. v6}, Lcom/jhlabs/image/ImageMath;->resample([I[IIII[F)V

    add-int v18, v18, v19

    add-int/lit8 v7, v21, 0x1

    move-object/from16 v8, v20

    goto :goto_6

    :cond_6
    move-object/from16 v20, v8

    .line 247
    new-instance v14, Lcom/jhlabs/image/WarpGrid;

    move/from16 v8, v22

    const/4 v1, 0x1

    invoke-direct {v14, v8, v0, v1, v1}, Lcom/jhlabs/image/WarpGrid;-><init>(IIII)V

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_7
    if-ge v7, v8, :cond_7

    .line 252
    iget-object v2, v10, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    iget-object v3, v10, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    iget-object v6, v14, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    move-object/from16 v1, p0

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v21, v7

    move/from16 v7, v18

    move v10, v8

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    add-int v17, v17, v19

    add-int v18, v18, v0

    add-int/lit8 v7, v21, 0x1

    move v8, v10

    move-object/from16 v10, p4

    goto :goto_7

    :cond_7
    move v10, v8

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_8
    if-ge v8, v10, :cond_8

    .line 260
    iget-object v2, v11, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    iget-object v3, v11, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    iget-object v6, v14, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    move-object/from16 v1, p0

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v7, v18

    move/from16 v21, v8

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    add-int v17, v17, v19

    add-int v18, v18, v0

    add-int/lit8 v8, v21, 0x1

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v0, :cond_b

    move v2, v11

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v10, :cond_9

    .line 271
    iget-object v3, v14, Lcom/jhlabs/image/WarpGrid;->xGrid:[F

    aget v3, v3, v2

    aput v3, v12, v1

    .line 272
    iget-object v3, v14, Lcom/jhlabs/image/WarpGrid;->yGrid:[F

    aget v3, v3, v2

    aput v3, v13, v1

    add-int/2addr v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v3, v13

    move v5, v10

    move-object v6, v15

    move/from16 v8, p3

    .line 276
    invoke-virtual/range {v1 .. v8}, Lcom/jhlabs/image/WarpGrid;->interpolateSpline([F[FII[FII)V

    int-to-float v1, v9

    .line 277
    aput v1, v15, v9

    move-object/from16 v1, v20

    move-object/from16 v2, p6

    move/from16 v3, p3

    move v4, v11

    move/from16 v5, p2

    move-object v6, v15

    .line 278
    invoke-static/range {v1 .. v6}, Lcom/jhlabs/image/ImageMath;->resample([I[IIII[F)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 185
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source and destination grids are different sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    return-void
.end method
