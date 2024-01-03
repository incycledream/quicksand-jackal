.class public Lcom/jhlabs/image/SmearFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "SmearFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CIRCLES:I = 0x2

.field public static final CROSSES:I = 0x0

.field public static final LINES:I = 0x1

.field public static final SQUARES:I = 0x3

.field static final serialVersionUID:J = 0x5a17c2f6cc44dce8L


# instance fields
.field private angle:F

.field private background:Z

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private density:F

.field private distance:I

.field private fadeout:I

.field private mix:F

.field private randomGenerator:Ljava/util/Random;

.field private scatter:F

.field private seed:J

.field private shape:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    .line 33
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    invoke-direct {v0}, Lcom/jhlabs/image/LinearColormap;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/SmearFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/jhlabs/image/SmearFilter;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 35
    iput v1, p0, Lcom/jhlabs/image/SmearFilter;->density:F

    .line 36
    iput v0, p0, Lcom/jhlabs/image/SmearFilter;->scatter:F

    const/16 v0, 0x8

    .line 37
    iput v0, p0, Lcom/jhlabs/image/SmearFilter;->distance:I

    const-wide/16 v2, 0x237

    .line 39
    iput-wide v2, p0, Lcom/jhlabs/image/SmearFilter;->seed:J

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/jhlabs/image/SmearFilter;->shape:I

    .line 41
    iput v1, p0, Lcom/jhlabs/image/SmearFilter;->mix:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/jhlabs/image/SmearFilter;->fadeout:I

    .line 43
    iput-boolean v0, p0, Lcom/jhlabs/image/SmearFilter;->background:Z

    .line 46
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method private random(FF)F
    .locals 1

    sub-float/2addr p2, p1

    .line 118
    iget-object v0, p0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 122
    new-array v3, v3, [I

    .line 124
    iget-object v4, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    iget-wide v5, v0, Lcom/jhlabs/image/SmearFilter;->seed:J

    invoke-virtual {v4, v5, v6}, Ljava/util/Random;->setSeed(J)V

    .line 125
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 126
    iget v5, v0, Lcom/jhlabs/image/SmearFilter;->angle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    move v10, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_1

    .line 133
    iget-boolean v11, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v11, :cond_0

    const/4 v11, -0x1

    goto :goto_2

    :cond_0
    aget v11, p3, v10

    :goto_2
    aput v11, v3, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move v8, v10

    goto :goto_0

    .line 137
    :cond_2
    iget v7, v0, Lcom/jhlabs/image/SmearFilter;->shape:I

    const/high16 v8, 0x40000000    # 2.0f

    const v10, 0x7fffffff

    const/4 v11, 0x1

    if-eqz v7, :cond_16

    const/4 v12, 0x2

    if-eq v7, v11, :cond_9

    if-eq v7, v12, :cond_3

    const/4 v4, 0x3

    if-eq v7, v4, :cond_3

    goto/16 :goto_1a

    .line 237
    :cond_3
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->distance:I

    add-int/2addr v4, v11

    mul-int v5, v4, v4

    .line 239
    iget v7, v0, Lcom/jhlabs/image/SmearFilter;->density:F

    mul-float v7, v7, v8

    int-to-float v8, v1

    mul-float v7, v7, v8

    int-to-float v8, v2

    mul-float v7, v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    float-to-int v7, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_1d

    .line 241
    iget-object v13, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    and-int/2addr v13, v10

    rem-int/2addr v13, v1

    .line 242
    iget-object v14, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v14

    and-int/2addr v14, v10

    rem-int/2addr v14, v2

    mul-int v15, v14, v1

    add-int/2addr v15, v13

    .line 243
    aget v15, p3, v15

    sub-int v16, v13, v4

    move/from16 v6, v16

    :goto_4
    add-int v16, v13, v4

    add-int/lit8 v9, v16, 0x1

    if-ge v6, v9, :cond_8

    sub-int v9, v14, v4

    :goto_5
    add-int v16, v14, v4

    add-int/lit8 v10, v16, 0x1

    if-ge v9, v10, :cond_7

    .line 247
    iget v10, v0, Lcom/jhlabs/image/SmearFilter;->shape:I

    if-ne v10, v12, :cond_4

    sub-int v10, v6, v13

    mul-int v10, v10, v10

    sub-int v16, v9, v14

    mul-int v16, v16, v16

    add-int v10, v10, v16

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    :goto_6
    if-ltz v6, :cond_6

    if-ge v6, v1, :cond_6

    if-ltz v9, :cond_6

    if-ge v9, v2, :cond_6

    if-gt v10, v5, :cond_6

    .line 252
    iget-boolean v10, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v10, :cond_5

    const/4 v10, -0x1

    goto :goto_7

    :cond_5
    mul-int v10, v9, v1

    add-int/2addr v10, v6

    aget v10, v3, v10

    :goto_7
    mul-int v16, v9, v1

    add-int v16, v16, v6

    .line 253
    iget v11, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v11, v10, v15}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v10

    aput v10, v3, v16

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const v10, 0x7fffffff

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    const v10, 0x7fffffff

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    const v10, 0x7fffffff

    const/4 v11, 0x1

    goto :goto_3

    .line 161
    :cond_9
    iget v6, v0, Lcom/jhlabs/image/SmearFilter;->density:F

    mul-float v6, v6, v8

    int-to-float v7, v1

    mul-float v6, v6, v7

    int-to-float v7, v2

    mul-float v6, v6, v7

    div-float/2addr v6, v8

    float-to-int v6, v6

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_1d

    .line 164
    iget-object v8, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    rem-int/2addr v8, v1

    .line 165
    iget-object v10, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    and-int/2addr v10, v9

    rem-int/2addr v10, v2

    mul-int v11, v10, v1

    add-int/2addr v11, v8

    .line 166
    aget v11, p3, v11

    .line 167
    iget-object v13, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    and-int/2addr v13, v9

    iget v9, v0, Lcom/jhlabs/image/SmearFilter;->distance:I

    rem-int/2addr v13, v9

    int-to-float v9, v13

    mul-float v13, v9, v5

    float-to-int v13, v13

    mul-float v9, v9, v4

    float-to-int v9, v9

    sub-int v14, v8, v13

    sub-int v15, v10, v9

    add-int/2addr v8, v13

    add-int/2addr v10, v9

    if-ge v8, v14, :cond_a

    const/4 v9, -0x1

    goto :goto_9

    :cond_a
    const/4 v9, 0x1

    :goto_9
    if-ge v10, v15, :cond_b

    const/4 v13, -0x1

    goto :goto_a

    :cond_b
    const/4 v13, 0x1

    :goto_a
    sub-int v16, v8, v14

    sub-int v17, v10, v15

    .line 187
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 188
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    if-ge v14, v1, :cond_d

    if-ltz v14, :cond_d

    if-ge v15, v2, :cond_d

    if-ltz v15, :cond_d

    .line 193
    iget-boolean v12, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v12, :cond_c

    const/4 v12, -0x1

    goto :goto_b

    :cond_c
    mul-int v12, v15, v1

    add-int/2addr v12, v14

    aget v12, v3, v12

    :goto_b
    mul-int v18, v15, v1

    add-int v18, v18, v14

    move/from16 v19, v4

    .line 194
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v4, v12, v11}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v18

    goto :goto_c

    :cond_d
    move/from16 v19, v4

    .line 196
    :goto_c
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-le v4, v12, :cond_11

    mul-int/lit8 v4, v17, 0x2

    sub-int v10, v4, v16

    sub-int v17, v17, v16

    const/4 v12, 0x2

    mul-int/lit8 v17, v17, 0x2

    :goto_d
    if-eq v14, v8, :cond_15

    if-gtz v10, :cond_e

    add-int/2addr v10, v4

    goto :goto_e

    :cond_e
    add-int v10, v10, v17

    add-int/2addr v15, v13

    :goto_e
    add-int/2addr v14, v9

    if-ge v14, v1, :cond_10

    if-ltz v14, :cond_10

    if-ge v15, v2, :cond_10

    if-ltz v15, :cond_10

    .line 210
    iget-boolean v12, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v12, :cond_f

    const/4 v12, -0x1

    goto :goto_f

    :cond_f
    mul-int v12, v15, v1

    add-int/2addr v12, v14

    aget v12, v3, v12

    :goto_f
    mul-int v16, v15, v1

    add-int v16, v16, v14

    move/from16 p4, v4

    .line 211
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v4, v12, v11}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v16

    goto :goto_10

    :cond_10
    move/from16 p4, v4

    :goto_10
    move/from16 v4, p4

    goto :goto_d

    :cond_11
    mul-int/lit8 v4, v16, 0x2

    sub-int v8, v4, v17

    sub-int v16, v16, v17

    const/4 v12, 0x2

    mul-int/lit8 v16, v16, 0x2

    :goto_11
    if-eq v15, v10, :cond_15

    if-gtz v8, :cond_12

    add-int/2addr v8, v4

    goto :goto_12

    :cond_12
    add-int v8, v8, v16

    add-int/2addr v14, v9

    :goto_12
    add-int/2addr v15, v13

    if-ge v14, v1, :cond_14

    if-ltz v14, :cond_14

    if-ge v15, v2, :cond_14

    if-ltz v15, :cond_14

    .line 228
    iget-boolean v12, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v12, :cond_13

    const/4 v12, -0x1

    goto :goto_13

    :cond_13
    mul-int v12, v15, v1

    add-int/2addr v12, v14

    aget v12, v3, v12

    :goto_13
    mul-int v17, v15, v1

    add-int v17, v17, v14

    move/from16 p4, v4

    .line 229
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v4, v12, v11}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v17

    goto :goto_14

    :cond_14
    move/from16 p4, v4

    :goto_14
    move/from16 v4, p4

    const/4 v12, 0x2

    goto :goto_11

    :cond_15
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v19

    const/4 v12, 0x2

    goto/16 :goto_8

    .line 140
    :cond_16
    iget v4, v0, Lcom/jhlabs/image/SmearFilter;->density:F

    mul-float v4, v4, v8

    int-to-float v5, v1

    mul-float v4, v4, v5

    int-to-float v5, v2

    mul-float v4, v4, v5

    iget v5, v0, Lcom/jhlabs/image/SmearFilter;->distance:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_1d

    .line 142
    iget-object v6, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int/2addr v6, v1

    .line 143
    iget-object v8, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    and-int/2addr v8, v7

    rem-int/2addr v8, v2

    .line 144
    iget-object v9, v0, Lcom/jhlabs/image/SmearFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    iget v10, v0, Lcom/jhlabs/image/SmearFilter;->distance:I

    rem-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/2addr v9, v10

    mul-int v11, v8, v1

    add-int v12, v11, v6

    .line 145
    aget v12, p3, v12

    sub-int v13, v6, v9

    :goto_16
    add-int v14, v6, v9

    add-int/2addr v14, v10

    if-ge v13, v14, :cond_19

    if-ltz v13, :cond_18

    if-ge v13, v1, :cond_18

    .line 148
    iget-boolean v10, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v10, :cond_17

    const/4 v10, -0x1

    goto :goto_17

    :cond_17
    add-int v10, v11, v13

    aget v10, v3, v10

    :goto_17
    add-int v14, v11, v13

    .line 149
    iget v15, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v15, v10, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v10

    aput v10, v3, v14

    :cond_18
    add-int/lit8 v13, v13, 0x1

    const/4 v10, 0x1

    goto :goto_16

    :cond_19
    sub-int v10, v8, v9

    :goto_18
    add-int v11, v8, v9

    const/4 v13, 0x1

    add-int/2addr v11, v13

    if-ge v10, v11, :cond_1c

    if-ltz v10, :cond_1b

    if-ge v10, v2, :cond_1b

    .line 154
    iget-boolean v11, v0, Lcom/jhlabs/image/SmearFilter;->background:Z

    if-eqz v11, :cond_1a

    const/4 v11, -0x1

    goto :goto_19

    :cond_1a
    mul-int v11, v10, v1

    add-int/2addr v11, v6

    aget v11, v3, v11

    :goto_19
    mul-int v14, v10, v1

    add-int/2addr v14, v6

    .line 155
    iget v15, v0, Lcom/jhlabs/image/SmearFilter;->mix:F

    invoke-static {v15, v11, v12}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v11

    aput v11, v3, v14

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1d
    :goto_1a
    return-object v3
.end method

.method public getAngle()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->angle:F

    return v0
.end method

.method public getBackground()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/jhlabs/image/SmearFilter;->background:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->density:F

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->distance:I

    return v0
.end method

.method public getFadeout()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->fadeout:I

    return v0
.end method

.method public getMix()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->mix:F

    return v0
.end method

.method public getScatter()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->scatter:F

    return v0
.end method

.method public getShape()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/SmearFilter;->shape:I

    return v0
.end method

.method public randomize()V
    .locals 2

    .line 114
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jhlabs/image/SmearFilter;->seed:J

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->angle:F

    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/jhlabs/image/SmearFilter;->background:Z

    return-void
.end method

.method public setDensity(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->density:F

    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->distance:I

    return-void
.end method

.method public setFadeout(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->fadeout:I

    return-void
.end method

.method public setMix(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->mix:F

    return-void
.end method

.method public setScatter(F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->scatter:F

    return-void
.end method

.method public setShape(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jhlabs/image/SmearFilter;->shape:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Smear..."

    return-object v0
.end method
