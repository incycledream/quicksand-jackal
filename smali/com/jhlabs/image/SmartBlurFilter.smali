.class public Lcom/jhlabs/image/SmartBlurFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "SmartBlurFilter.java"


# instance fields
.field private hRadius:I

.field private threshold:I

.field private vRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x5

    .line 25
    iput v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    .line 26
    iput v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->vRadius:I

    const/16 v0, 0xa

    .line 27
    iput v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 30
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 31
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/SmartBlurFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_0
    mul-int v0, v7, v8

    .line 36
    new-array v9, v0, [I

    .line 37
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 38
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/SmartBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 40
    iget p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    int-to-float p1, p1

    invoke-static {p1}, Lcom/jhlabs/image/GaussianFilter;->makeKernel(F)Ljava/awt/image/Kernel;

    move-result-object p1

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, v9

    move-object v3, v10

    .line 41
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/SmartBlurFilter;->thresholdBlur(Ljava/awt/image/Kernel;[I[IIIZ)V

    move-object v2, v10

    move-object v3, v9

    move v4, v8

    move v5, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/SmartBlurFilter;->thresholdBlur(Ljava/awt/image/Kernel;[I[IIIZ)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 44
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/SmartBlurFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getHRadius()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    return v0
.end method

.method public getVRadius()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/jhlabs/image/SmartBlurFilter;->vRadius:I

    return v0
.end method

.method public setHRadius(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->vRadius:I

    iput p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->hRadius:I

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    return-void
.end method

.method public setVRadius(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/jhlabs/image/SmartBlurFilter;->vRadius:I

    return-void
.end method

.method public thresholdBlur(Ljava/awt/image/Kernel;[I[IIIZ)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const/4 v3, 0x0

    move-object/from16 v4, p1

    .line 53
    invoke-virtual {v4, v3}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v3

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v4

    .line 55
    div-int/lit8 v4, v4, 0x2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_e

    mul-int v7, v6, v1

    move v9, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v1, :cond_d

    add-int v10, v7, v8

    .line 64
    aget v10, p2, v10

    shr-int/lit8 v11, v10, 0x18

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v13, v10, 0x10

    and-int/2addr v13, v12

    shr-int/lit8 v14, v10, 0x8

    and-int/2addr v14, v12

    and-int/2addr v10, v12

    neg-int v15, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    :goto_2
    if-gt v15, v4, :cond_7

    add-int v25, v4, v15

    .line 71
    aget v25, v3, v25

    cmpl-float v26, v25, v16

    if-eqz v26, :cond_5

    add-int v5, v8, v15

    if-ltz v5, :cond_0

    if-lt v5, v1, :cond_1

    :cond_0
    move v5, v8

    :cond_1
    add-int/2addr v5, v7

    .line 77
    aget v5, p2, v5

    shr-int/lit8 v1, v5, 0x18

    and-int/2addr v1, v12

    move-object/from16 v26, v3

    shr-int/lit8 v3, v5, 0x10

    and-int/2addr v3, v12

    move/from16 v27, v4

    shr-int/lit8 v4, v5, 0x8

    and-int/2addr v4, v12

    and-int/2addr v5, v12

    sub-int v12, v11, v1

    move/from16 v29, v7

    .line 85
    iget v7, v0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    move/from16 v30, v6

    neg-int v6, v7

    if-lt v12, v6, :cond_2

    if-gt v12, v7, :cond_2

    int-to-float v1, v1

    mul-float v1, v1, v25

    add-float v18, v18, v1

    add-float v17, v17, v25

    :cond_2
    sub-int v1, v13, v3

    .line 90
    iget v6, v0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    neg-int v7, v6

    if-lt v1, v7, :cond_3

    if-gt v1, v6, :cond_3

    int-to-float v1, v3

    mul-float v1, v1, v25

    add-float v20, v20, v1

    add-float v19, v19, v25

    :cond_3
    sub-int v1, v14, v4

    .line 95
    iget v3, v0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    neg-int v6, v3

    if-lt v1, v6, :cond_4

    if-gt v1, v3, :cond_4

    int-to-float v1, v4

    mul-float v1, v1, v25

    add-float v22, v22, v1

    add-float v21, v21, v25

    :cond_4
    sub-int v1, v10, v5

    .line 100
    iget v3, v0, Lcom/jhlabs/image/SmartBlurFilter;->threshold:I

    neg-int v4, v3

    if-lt v1, v4, :cond_6

    if-gt v1, v3, :cond_6

    int-to-float v1, v5

    mul-float v1, v1, v25

    add-float v24, v24, v1

    add-float v23, v23, v25

    goto :goto_3

    :cond_5
    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v30, v6

    move/from16 v29, v7

    :cond_6
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p4

    move-object/from16 v3, v26

    move/from16 v4, v27

    move/from16 v7, v29

    move/from16 v6, v30

    const/16 v12, 0xff

    goto :goto_2

    :cond_7
    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v30, v6

    move/from16 v29, v7

    cmpl-float v1, v17, v16

    if-nez v1, :cond_8

    int-to-float v1, v11

    goto :goto_4

    :cond_8
    div-float v1, v18, v17

    :goto_4
    cmpl-float v3, v19, v16

    if-nez v3, :cond_9

    int-to-float v3, v13

    goto :goto_5

    :cond_9
    div-float v3, v20, v19

    :goto_5
    cmpl-float v4, v21, v16

    if-nez v4, :cond_a

    int-to-float v4, v14

    goto :goto_6

    :cond_a
    div-float v4, v22, v21

    :goto_6
    cmpl-float v5, v23, v16

    if-nez v5, :cond_b

    int-to-float v5, v10

    goto :goto_7

    :cond_b
    div-float v5, v24, v23

    :goto_7
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-eqz p6, :cond_c

    float-to-double v10, v1

    .line 110
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v6

    double-to-int v1, v10

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v12

    move/from16 v28, v12

    goto :goto_8

    :cond_c
    const/16 v28, 0xff

    :goto_8
    float-to-double v10, v3

    .line 111
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v6

    double-to-int v1, v10

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    float-to-double v3, v4

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v6

    double-to-int v3, v3

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    float-to-double v4, v5

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    shl-int/lit8 v5, v28, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    or-int/2addr v1, v4

    .line 114
    aput v1, p3, v9

    add-int/2addr v9, v2

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p4

    move-object/from16 v3, v26

    move/from16 v4, v27

    move/from16 v7, v29

    move/from16 v6, v30

    goto/16 :goto_1

    :cond_d
    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v30, v6

    add-int/lit8 v6, v30, 0x1

    move/from16 v1, p4

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Smart Blur..."

    return-object v0
.end method
