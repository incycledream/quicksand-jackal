.class public Lcom/jhlabs/image/PlasmaFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "PlasmaFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x5a17c2f6cc44dce8L


# instance fields
.field private colormap:Lcom/jhlabs/image/Colormap;

.field private randomGenerator:Ljava/util/Random;

.field private scaling:F

.field private seed:J

.field public turbulence:F

.field private useColormap:Z

.field private useImageColors:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/jhlabs/image/PlasmaFilter;->turbulence:F

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jhlabs/image/PlasmaFilter;->scaling:F

    .line 30
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    invoke-direct {v0}, Lcom/jhlabs/image/LinearColormap;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const-wide/16 v0, 0x237

    .line 32
    iput-wide v0, p0, Lcom/jhlabs/image/PlasmaFilter;->seed:J

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/image/PlasmaFilter;->useColormap:Z

    .line 34
    iput-boolean v0, p0, Lcom/jhlabs/image/PlasmaFilter;->useImageColors:Z

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method private average(II)I
    .locals 1

    const/16 v0, 0xd

    .line 114
    invoke-static {p1, p2, v0}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result p1

    return p1
.end method

.method private displace(IF)I
    .locals 8

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    float-to-double v2, p2

    .line 107
    iget-object p2, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    float-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int p2, v4

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    .line 108
    iget-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    double-to-int v0, v4

    add-int/2addr v1, v0

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v1, v2

    add-int/2addr p1, v1

    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    shl-int/lit8 p2, p2, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr p2, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private doPixel(IIII[IIII)Z
    .locals 20

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    move/from16 v0, p8

    const/4 v6, 0x1

    if-nez p7, :cond_c

    .line 131
    invoke-direct {v9, v10, v11, v14, v15}, Lcom/jhlabs/image/PlasmaFilter;->getPixel(II[II)I

    move-result v7

    .line 132
    invoke-direct {v9, v10, v13, v14, v15}, Lcom/jhlabs/image/PlasmaFilter;->getPixel(II[II)I

    move-result v8

    .line 133
    invoke-direct {v9, v12, v11, v14, v15}, Lcom/jhlabs/image/PlasmaFilter;->getPixel(II[II)I

    move-result v5

    .line 134
    invoke-direct {v9, v12, v13, v14, v15}, Lcom/jhlabs/image/PlasmaFilter;->getPixel(II[II)I

    move-result v4

    const/high16 v1, 0x43800000    # 256.0f

    const/high16 v2, 0x40000000    # 2.0f

    int-to-float v0, v0

    mul-float v0, v0, v2

    div-float/2addr v1, v0

    .line 136
    iget v0, v9, Lcom/jhlabs/image/PlasmaFilter;->turbulence:F

    mul-float v3, v1, v0

    add-int v0, v10, v12

    .line 138
    div-int/lit8 v2, v0, 0x2

    add-int v0, v11, v13

    .line 139
    div-int/lit8 v1, v0, 0x2

    if-ne v2, v10, :cond_0

    if-ne v2, v12, :cond_0

    if-ne v1, v11, :cond_0

    if-ne v1, v13, :cond_0

    return v6

    :cond_0
    if-ne v2, v10, :cond_2

    if-eq v2, v12, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v7

    move v7, v5

    move v5, v1

    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    invoke-direct {v9, v7, v8}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 146
    invoke-direct {v9, v0, v3}, Lcom/jhlabs/image/PlasmaFilter;->displace(IF)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 p7, v1

    move/from16 v1, p1

    move v6, v2

    move/from16 v2, p7

    move v14, v3

    move/from16 v3, v16

    move v15, v4

    move-object/from16 v4, p5

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, p6

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    if-eq v10, v12, :cond_3

    .line 150
    invoke-direct {v9, v7, v15}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 151
    invoke-direct {v9, v0, v14}, Lcom/jhlabs/image/PlasmaFilter;->displace(IF)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p7

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    :cond_3
    move/from16 v5, p7

    :goto_1
    if-ne v5, v11, :cond_6

    if-eq v5, v13, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v18, v5

    :cond_5
    move/from16 v19, v16

    move/from16 v16, v6

    move/from16 v6, v19

    goto :goto_5

    :cond_6
    :goto_2
    if-ne v10, v6, :cond_8

    if-eq v5, v13, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v18, v5

    goto :goto_4

    .line 158
    :cond_8
    :goto_3
    invoke-direct {v9, v8, v15}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 159
    invoke-direct {v9, v0, v14}, Lcom/jhlabs/image/PlasmaFilter;->displace(IF)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p4

    move-object/from16 v4, p5

    move/from16 v18, v5

    move/from16 v5, p6

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    :goto_4
    if-eq v11, v13, :cond_5

    move/from16 v5, v16

    .line 164
    invoke-direct {v9, v5, v7}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 165
    invoke-direct {v9, v0, v14}, Lcom/jhlabs/image/PlasmaFilter;->displace(IF)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p2

    move-object/from16 v4, p5

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, p6

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    :goto_5
    if-ne v11, v13, :cond_9

    if-eq v10, v12, :cond_a

    .line 171
    :cond_9
    invoke-direct {v9, v6, v15}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 172
    invoke-direct {v9, v8, v7}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v1

    .line 173
    invoke-direct {v9, v0, v1}, Lcom/jhlabs/image/PlasmaFilter;->average(II)I

    move-result v0

    .line 174
    invoke-direct {v9, v0, v14}, Lcom/jhlabs/image/PlasmaFilter;->displace(IF)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    :cond_a
    sub-int v0, v12, v10

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    sub-int v0, v13, v11

    if-ge v0, v1, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    const/4 v1, 0x1

    return v1

    :cond_c
    const/4 v1, 0x1

    add-int v2, v10, v12

    .line 183
    div-int/lit8 v14, v2, 0x2

    add-int v2, v11, v13

    .line 184
    div-int/lit8 v15, v2, 0x2

    add-int/lit8 v16, p7, -0x1

    add-int/lit8 v17, v0, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v14

    move v4, v15

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, v17

    .line 186
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PlasmaFilter;->doPixel(IIII[IIII)Z

    move v2, v15

    move/from16 v4, p4

    .line 187
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PlasmaFilter;->doPixel(IIII[IIII)Z

    move v1, v14

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v15

    .line 188
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PlasmaFilter;->doPixel(IIII[IIII)Z

    move v2, v15

    move/from16 v4, p4

    .line 189
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PlasmaFilter;->doPixel(IIII[IIII)Z

    move-result v0

    return v0
.end method

.method private getPixel(II[II)I
    .locals 0

    mul-int p2, p2, p4

    add-int/2addr p2, p1

    .line 118
    aget p1, p3, p2

    return p1
.end method

.method private putPixel(III[II)V
    .locals 0

    mul-int p2, p2, p5

    add-int/2addr p2, p1

    .line 122
    aput p3, p4, p2

    return-void
.end method

.method private randomRGB([III)I
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/jhlabs/image/PlasmaFilter;->useImageColors:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->originalSpace:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    mul-int p3, p3, v0

    add-int/2addr p3, p2

    aget p1, p1, p3

    return p1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 97
    iget-object p3, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    mul-float p3, p3, p2

    float-to-int p3, p3

    .line 98
    iget-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float v0, v0, p2

    float-to-int p2, v0

    const/high16 v0, -0x1000000

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p3, p3, 0x8

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 17

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v6, p3

    mul-int v0, v10, v11

    .line 193
    new-array v12, v0, [I

    .line 195
    iget-object v0, v9, Lcom/jhlabs/image/PlasmaFilter;->randomGenerator:Ljava/util/Random;

    iget-wide v1, v9, Lcom/jhlabs/image/PlasmaFilter;->seed:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    add-int/lit8 v13, v10, -0x1

    add-int/lit8 v14, v11, -0x1

    const/4 v15, 0x0

    .line 199
    invoke-direct {v9, v6, v15, v15}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v4, v12

    move/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 200
    invoke-direct {v9, v6, v13, v15}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    move v1, v13

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 201
    invoke-direct {v9, v6, v15, v14}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    const/4 v1, 0x0

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 202
    invoke-direct {v9, v6, v13, v14}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    move v1, v13

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 203
    div-int/lit8 v7, v13, 0x2

    div-int/lit8 v8, v14, 0x2

    invoke-direct {v9, v6, v7, v8}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    move v1, v7

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 204
    invoke-direct {v9, v6, v15, v8}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 205
    invoke-direct {v9, v6, v13, v8}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    move v1, v13

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 206
    invoke-direct {v9, v6, v7, v15}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    const/4 v2, 0x0

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    .line 207
    invoke-direct {v9, v6, v7, v14}, Lcom/jhlabs/image/PlasmaFilter;->randomRGB([III)I

    move-result v3

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/PlasmaFilter;->putPixel(III[II)V

    const/4 v0, 0x1

    const/16 v16, 0x1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v3, v13

    move v4, v14

    move-object v5, v12

    move/from16 v6, p1

    move/from16 v7, v16

    .line 210
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PlasmaFilter;->doPixel(IIII[IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-boolean v0, v9, Lcom/jhlabs/image/PlasmaFilter;->useColormap:Z

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcom/jhlabs/image/PlasmaFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v0, v11, :cond_2

    move v2, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v10, :cond_1

    .line 217
    iget-object v3, v9, Lcom/jhlabs/image/PlasmaFilter;->colormap:Lcom/jhlabs/image/Colormap;

    aget v4, v12, v2

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v3

    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_2
    return-object v12
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/jhlabs/image/PlasmaFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getScaling()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/PlasmaFilter;->scaling:F

    return v0
.end method

.method public getSeed()I
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/jhlabs/image/PlasmaFilter;->seed:J

    long-to-int v1, v0

    return v1
.end method

.method public getTurbulence()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/PlasmaFilter;->turbulence:F

    return v0
.end method

.method public getUseColormap()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/jhlabs/image/PlasmaFilter;->useColormap:Z

    return v0
.end method

.method public getUseImageColors()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/jhlabs/image/PlasmaFilter;->useImageColors:Z

    return v0
.end method

.method public randomize()V
    .locals 2

    .line 89
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jhlabs/image/PlasmaFilter;->seed:J

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/jhlabs/image/PlasmaFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setScaling(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jhlabs/image/PlasmaFilter;->scaling:F

    return-void
.end method

.method public setSeed(I)V
    .locals 2

    int-to-long v0, p1

    .line 81
    iput-wide v0, p0, Lcom/jhlabs/image/PlasmaFilter;->seed:J

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/PlasmaFilter;->turbulence:F

    return-void
.end method

.method public setUseColormap(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/jhlabs/image/PlasmaFilter;->useColormap:Z

    return-void
.end method

.method public setUseImageColors(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/jhlabs/image/PlasmaFilter;->useImageColors:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Plasma..."

    return-object v0
.end method
