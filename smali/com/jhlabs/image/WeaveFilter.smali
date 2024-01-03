.class public Lcom/jhlabs/image/WeaveFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "WeaveFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x434750d7f0e739e2L


# instance fields
.field private cols:I

.field public matrix:[[I

.field private rgbX:I

.field private rgbY:I

.field private roundThreads:Z

.field private rows:I

.field private shadeCrossings:Z

.field private useImageColors:Z

.field private xGap:F

.field private xWidth:F

.field private yGap:F

.field private yWidth:F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 45
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    .line 27
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 28
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    const/4 v0, 0x4

    .line 30
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->rows:I

    .line 31
    iput v0, p0, Lcom/jhlabs/image/WeaveFilter;->cols:I

    const/16 v1, -0x7f80

    .line 32
    iput v1, p0, Lcom/jhlabs/image/WeaveFilter;->rgbX:I

    const v1, -0x7f7f01

    .line 33
    iput v1, p0, Lcom/jhlabs/image/WeaveFilter;->rgbY:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/jhlabs/image/WeaveFilter;->useImageColors:Z

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/jhlabs/image/WeaveFilter;->roundThreads:Z

    .line 36
    iput-boolean v1, p0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    new-array v3, v0, [[I

    new-array v4, v0, [I

    .line 38
    fill-array-data v4, :array_0

    aput-object v4, v3, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    aput-object v2, v3, v1

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v3, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v1, 0x3

    aput-object v0, v3, v1

    iput-object v3, p0, Lcom/jhlabs/image/WeaveFilter;->matrix:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-float v1, v1

    .line 113
    iget v2, v0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    iget v3, v0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    add-float/2addr v5, v2

    add-float/2addr v1, v5

    float-to-int v1, v1

    move/from16 v5, p2

    int-to-float v5, v5

    .line 114
    iget v6, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    iget v7, v0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v1, v1

    add-float/2addr v2, v3

    .line 115
    invoke-static {v1, v2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v2

    int-to-float v3, v5

    .line 116
    iget v5, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    iget v6, v0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v5

    .line 117
    iget v6, v0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    iget v7, v0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    add-float/2addr v7, v6

    div-float/2addr v1, v7

    float-to-int v1, v1

    .line 118
    iget v7, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    iget v8, v0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    add-float/2addr v7, v8

    div-float/2addr v3, v7

    float-to-int v3, v3

    cmpg-float v6, v2, v6

    if-gez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 120
    :goto_0
    iget v9, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 125
    :goto_1
    iget-boolean v10, v0, Lcom/jhlabs/image/WeaveFilter;->roundThreads:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    .line 126
    iget v10, v0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    div-float/2addr v10, v4

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v12, v0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    div-float/2addr v10, v12

    div-float/2addr v10, v4

    .line 127
    iget v12, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    div-float/2addr v12, v4

    sub-float/2addr v12, v5

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    div-float/2addr v12, v13

    div-float/2addr v12, v4

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 132
    :goto_2
    iget-boolean v13, v0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    if-eqz v13, :cond_3

    .line 133
    iget v11, v0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    div-float v13, v11, v4

    div-float v14, v11, v4

    iget v15, v0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    add-float/2addr v14, v15

    div-float/2addr v11, v4

    sub-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v13, v14, v2}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v11

    .line 134
    iget v2, v0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    div-float v13, v2, v4

    div-float v14, v2, v4

    iget v15, v0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    add-float/2addr v14, v15

    div-float/2addr v2, v4

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v13, v14, v2}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 139
    :goto_3
    iget-boolean v5, v0, Lcom/jhlabs/image/WeaveFilter;->useImageColors:Z

    if-eqz v5, :cond_4

    move/from16 v5, p3

    move v13, v5

    goto :goto_4

    .line 142
    :cond_4
    iget v5, v0, Lcom/jhlabs/image/WeaveFilter;->rgbX:I

    .line 143
    iget v13, v0, Lcom/jhlabs/image/WeaveFilter;->rgbY:I

    .line 146
    :goto_4
    iget v14, v0, Lcom/jhlabs/image/WeaveFilter;->cols:I

    rem-int v15, v1, v14

    .line 147
    iget v7, v0, Lcom/jhlabs/image/WeaveFilter;->rows:I

    rem-int v16, v3, v7

    .line 148
    iget-object v4, v0, Lcom/jhlabs/image/WeaveFilter;->matrix:[[I

    aget-object v17, v4, v16

    aget v8, v17, v15

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v18, v12

    const/high16 v12, -0x1000000

    if-eqz v6, :cond_b

    if-eqz v9, :cond_7

    const/4 v1, 0x1

    if-ne v8, v1, :cond_5

    move v13, v5

    :cond_5
    if-ne v8, v1, :cond_6

    move/from16 v18, v10

    :cond_6
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v18

    .line 152
    invoke-static {v1, v13, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v7

    goto :goto_7

    :cond_7
    const/4 v1, 0x1

    .line 154
    iget-boolean v6, v0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    if-eqz v6, :cond_a

    add-int/2addr v3, v1

    .line 155
    rem-int/2addr v3, v7

    aget-object v1, v4, v3

    aget v1, v1, v15

    if-eq v8, v1, :cond_9

    if-nez v8, :cond_8

    sub-float v2, v17, v2

    :cond_8
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    .line 159
    invoke-static {v2, v5, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v5

    goto :goto_5

    :cond_9
    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v8, :cond_a

    .line 161
    invoke-static {v1, v5, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v5

    :cond_a
    :goto_5
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v10, v10, v1

    .line 163
    invoke-static {v10, v5, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v7

    goto :goto_7

    :cond_b
    if-eqz v9, :cond_f

    .line 166
    iget-boolean v2, v0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    if-eqz v2, :cond_e

    .line 167
    aget-object v2, v4, v16

    const/4 v3, 0x1

    add-int/2addr v1, v3

    rem-int/2addr v1, v14

    aget v1, v2, v1

    if-eq v8, v1, :cond_d

    if-ne v8, v3, :cond_c

    sub-float v11, v17, v11

    :cond_c
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v11, v11, v1

    .line 171
    invoke-static {v11, v13, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v13

    goto :goto_6

    :cond_d
    const/high16 v1, 0x3f000000    # 0.5f

    if-ne v8, v3, :cond_e

    .line 173
    invoke-static {v1, v13, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v13

    :cond_e
    :goto_6
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, v18

    .line 175
    invoke-static {v1, v13, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v7

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    :goto_7
    return v7
.end method

.method public getCrossings()[[I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jhlabs/image/WeaveFilter;->matrix:[[I

    return-object v0
.end method

.method public getRoundThreads()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/jhlabs/image/WeaveFilter;->roundThreads:Z

    return v0
.end method

.method public getShadeCrossings()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    return v0
.end method

.method public getUseImageColors()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/jhlabs/image/WeaveFilter;->useImageColors:Z

    return v0
.end method

.method public getXGap()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    return v0
.end method

.method public getXWidth()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    return v0
.end method

.method public getYGap()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    return v0
.end method

.method public getYWidth()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    return v0
.end method

.method public setCrossings([[I)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/jhlabs/image/WeaveFilter;->matrix:[[I

    return-void
.end method

.method public setRoundThreads(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/jhlabs/image/WeaveFilter;->roundThreads:Z

    return-void
.end method

.method public setShadeCrossings(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/jhlabs/image/WeaveFilter;->shadeCrossings:Z

    return-void
.end method

.method public setUseImageColors(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/jhlabs/image/WeaveFilter;->useImageColors:Z

    return-void
.end method

.method public setXGap(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jhlabs/image/WeaveFilter;->xGap:F

    return-void
.end method

.method public setXWidth(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/WeaveFilter;->xWidth:F

    return-void
.end method

.method public setYGap(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/jhlabs/image/WeaveFilter;->yGap:F

    return-void
.end method

.method public setYWidth(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/WeaveFilter;->yWidth:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Weave..."

    return-object v0
.end method
