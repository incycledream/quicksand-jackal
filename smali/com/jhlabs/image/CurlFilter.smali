.class public Lcom/jhlabs/image/CurlFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "CurlFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/CurlFilter$Sampler;
    }
.end annotation


# instance fields
.field private angle:F

.field private height:F

.field private radius:F

.field private transition:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/CurlFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/CurlFilter;->transition:F

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/CurlFilter;->setEdgeAction(I)V

    return-void
.end method

.method private final getPixel([IIIII)I
    .locals 3

    if-ltz p2, :cond_1

    if-ge p2, p4, :cond_1

    if-ltz p3, :cond_1

    if-lt p3, p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p3, p3, p4

    add-int/2addr p3, p2

    .line 216
    aget p1, p1, p3

    return p1

    .line 206
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/CurlFilter;->edgeAction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return v1

    .line 211
    :cond_2
    invoke-static {p3, p5}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p3

    mul-int p3, p3, p4

    invoke-static {p2, p4}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p2

    add-int/2addr p3, p2

    aget p1, p1, p3

    return p1

    :cond_3
    sub-int/2addr p5, v2

    .line 213
    invoke-static {p3, v1, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p3

    mul-int p3, p3, p4

    sub-int/2addr p4, v2

    invoke-static {p2, v1, p4}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p2

    add-int/2addr p3, p2

    aget p1, p1, p3

    return p1
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 29

    move-object/from16 v7, p0

    .line 127
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 128
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    .line 129
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Lcom/jhlabs/image/CurlFilter;->width:F

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, v7, Lcom/jhlabs/image/CurlFilter;->height:F

    .line 131
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 133
    new-instance v0, Ljava/awt/Rectangle;

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, v7, Lcom/jhlabs/image/CurlFilter;->originalSpace:Ljava/awt/Rectangle;

    .line 134
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, v10, v10, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    .line 135
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    invoke-virtual {v7, v0}, Lcom/jhlabs/image/CurlFilter;->transformSpace(Ljava/awt/Rectangle;)V

    if-nez p2, :cond_0

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->width:I

    iget-object v3, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    .line 141
    :goto_0
    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move v5, v9

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/CurlFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v12

    .line 145
    iget v0, v7, Lcom/jhlabs/image/CurlFilter;->interpolation:I

    if-nez v0, :cond_1

    .line 146
    iget-object v5, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v8

    move v3, v9

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter;->filterPixelsNN(Ljava/awt/image/BufferedImage;II[ILjava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v13, v8, -0x1

    add-int/lit8 v14, v9, -0x1

    .line 152
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v15, v0, Ljava/awt/Rectangle;->width:I

    .line 153
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v6, v0, Ljava/awt/Rectangle;->height:I

    .line 156
    new-array v5, v15, [I

    .line 158
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    .line 159
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    const/4 v0, 0x4

    new-array v2, v0, [F

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v15, :cond_4

    add-int v10, v4, v0

    move/from16 p1, v0

    add-int v0, v3, v1

    .line 164
    invoke-virtual {v7, v10, v0, v2}, Lcom/jhlabs/image/CurlFilter;->transformInverse(II[F)V

    const/4 v10, 0x0

    .line 165
    aget v0, v2, v10

    move-object/from16 p2, v11

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/4 v11, 0x1

    .line 166
    aget v0, v2, v11

    move-object/from16 v16, v12

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-int v11, v11

    const/4 v12, 0x0

    .line 167
    aget v0, v2, v12

    int-to-float v12, v10

    sub-float v18, v0, v12

    const/4 v0, 0x1

    .line 168
    aget v12, v2, v0

    int-to-float v0, v11

    sub-float v19, v12, v0

    if-ltz v10, :cond_2

    if-ge v10, v13, :cond_2

    if-ltz v11, :cond_2

    if-ge v11, v14, :cond_2

    mul-int v11, v11, v8

    add-int/2addr v11, v10

    .line 174
    aget v0, v16, v11

    add-int/lit8 v10, v11, 0x1

    .line 175
    aget v10, v16, v10

    add-int/2addr v11, v8

    .line 176
    aget v12, v16, v11

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 177
    aget v11, v16, v11

    move/from16 v20, v0

    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v21, v10

    move/from16 v23, v11

    move/from16 v22, v12

    move/from16 v12, p1

    goto :goto_3

    :cond_2
    move/from16 v12, p1

    move-object/from16 v0, p0

    move/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v25, v2

    move v2, v10

    move/from16 v26, v3

    move v3, v11

    move/from16 v27, v4

    move v4, v8

    move-object/from16 v28, v5

    move v5, v9

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter;->getPixel([IIIII)I

    move-result v20

    add-int/lit8 v21, v10, 0x1

    move/from16 v2, v21

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter;->getPixel([IIIII)I

    move-result v22

    add-int/lit8 v11, v11, 0x1

    move v2, v10

    move v3, v11

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter;->getPixel([IIIII)I

    move-result v10

    move/from16 v2, v21

    .line 183
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter;->getPixel([IIIII)I

    move-result v0

    move/from16 v23, v0

    move/from16 v21, v22

    move/from16 v22, v10

    .line 185
    :goto_3
    invoke-static/range {v18 .. v23}, Lcom/jhlabs/image/ImageMath;->bilinearInterpolate(FFIIII)I

    move-result v0

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, v0, 0xff

    const/4 v4, 0x2

    .line 189
    aget v4, v25, v4

    int-to-float v1, v1

    mul-float v1, v1, v4

    float-to-int v1, v1

    int-to-float v2, v2

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/high16 v4, -0x1000000

    and-int/2addr v0, v4

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    const/4 v1, 0x3

    .line 194
    aget v1, v25, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    mul-int v1, v8, v24

    add-int/2addr v1, v12

    .line 195
    aget v1, v16, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v0

    aput v0, v28, v12

    goto :goto_4

    .line 197
    :cond_3
    aput v0, v28, v12

    :goto_4
    add-int/lit8 v0, v12, 0x1

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, v28

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_4
    move/from16 v24, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 p2, v11

    move-object/from16 v16, v12

    const/4 v2, 0x0

    .line 199
    iget-object v0, v7, Lcom/jhlabs/image/CurlFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, v24

    move v10, v6

    move-object/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/CurlFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v1, v24, 0x1

    move v6, v10

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, v28

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    move-object/from16 p2, v11

    return-object p2
.end method

.method public getAngle()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/CurlFilter;->angle:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/CurlFilter;->radius:F

    return v0
.end method

.method public getTransition()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/CurlFilter;->transition:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/CurlFilter;->angle:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/CurlFilter;->radius:F

    return-void
.end method

.method public setTransition(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/CurlFilter;->transition:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Curl..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 17

    move-object/from16 v0, p0

    .line 235
    iget v1, v0, Lcom/jhlabs/image/CurlFilter;->transition:F

    move/from16 v2, p1

    int-to-float v2, v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 237
    iget v4, v0, Lcom/jhlabs/image/CurlFilter;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 238
    iget v5, v0, Lcom/jhlabs/image/CurlFilter;->angle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 239
    iget v6, v0, Lcom/jhlabs/image/CurlFilter;->width:F

    mul-float v6, v6, v6

    .line 240
    iget v7, v0, Lcom/jhlabs/image/CurlFilter;->height:F

    mul-float v7, v7, v7

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v1, v1, v6

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-gez v7, :cond_0

    .line 243
    iget v7, v0, Lcom/jhlabs/image/CurlFilter;->width:F

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    cmpg-float v8, v4, v6

    if-gez v8, :cond_1

    .line 244
    iget v8, v0, Lcom/jhlabs/image/CurlFilter;->height:F

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    sub-float v9, v2, v7

    sub-float v10, v3, v8

    mul-float v11, v9, v5

    mul-float v12, v10, v4

    add-float/2addr v11, v12

    neg-float v9, v9

    mul-float v9, v9, v4

    mul-float v10, v10, v5

    add-float/2addr v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    cmpg-float v13, v11, v1

    if-gez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    const/high16 v14, 0x40000000    # 2.0f

    mul-float v14, v14, v1

    cmpl-float v15, v11, v14

    if-lez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-nez v13, :cond_4

    if-nez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    :goto_4
    cmpl-float v16, v11, v14

    if-lez v16, :cond_5

    goto :goto_5

    :cond_5
    sub-float v11, v14, v11

    :goto_5
    mul-float v14, v11, v5

    mul-float v16, v9, v4

    sub-float v14, v14, v16

    mul-float v4, v4, v11

    mul-float v9, v9, v5

    add-float/2addr v4, v9

    add-float v5, v14, v7

    add-float/2addr v4, v8

    cmpg-float v7, v5, v6

    if-ltz v7, :cond_7

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_7

    .line 266
    iget v7, v0, Lcom/jhlabs/image/CurlFilter;->width:F

    cmpl-float v7, v5, v7

    if-gez v7, :cond_7

    iget v7, v0, Lcom/jhlabs/image/CurlFilter;->height:F

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_6

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v7, 0x1

    :goto_7
    if-eqz v7, :cond_8

    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    move v3, v4

    move v2, v5

    :goto_8
    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v7, :cond_9

    if-eqz v15, :cond_9

    const v5, 0x3ff33333    # 1.9f

    sub-float/2addr v11, v1

    .line 275
    iget v1, v0, Lcom/jhlabs/image/CurlFilter;->radius:F

    div-float/2addr v11, v1

    float-to-double v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v1, v8

    sub-float v1, v4, v1

    mul-float v1, v1, v5

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    const/4 v5, 0x2

    sub-float v1, v4, v1

    .line 276
    aput v1, p3, v5

    if-eqz v13, :cond_a

    const/high16 v1, -0x40800000    # -1.0f

    .line 279
    aput v1, p3, v10

    aput v1, p3, v12

    goto :goto_a

    .line 281
    :cond_a
    aput v2, p3, v12

    .line 282
    aput v3, p3, v10

    :goto_a
    const/4 v1, 0x3

    if-nez v7, :cond_b

    if-eqz v15, :cond_b

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    .line 285
    :goto_b
    aput v4, p3, v1

    return-void
.end method
