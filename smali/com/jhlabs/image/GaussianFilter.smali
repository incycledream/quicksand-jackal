.class public Lcom/jhlabs/image/GaussianFilter;
.super Lcom/jhlabs/image/ConvolveFilter;
.source "GaussianFilter.java"


# instance fields
.field protected kernel:Ljava/awt/image/Kernel;

.field protected radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    .line 35
    invoke-direct {p0, v0}, Lcom/jhlabs/image/GaussianFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/image/ConvolveFilter;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/GaussianFilter;->setRadius(F)V

    return-void
.end method

.method public static convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V
    .locals 18

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 84
    invoke-virtual {v4, v3}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v3

    .line 85
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v4

    .line 86
    div-int/lit8 v4, v4, 0x2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_8

    mul-int v7, v6, v0

    move v9, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_7

    neg-int v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-gt v10, v4, :cond_5

    add-int v16, v4, v10

    .line 95
    aget v16, v3, v16

    cmpl-float v17, v16, v11

    if-eqz v17, :cond_4

    add-int v11, v8, v10

    if-gez v11, :cond_1

    .line 100
    sget v5, Lcom/jhlabs/image/GaussianFilter;->CLAMP_EDGES:I

    if-ne v2, v5, :cond_0

    const/4 v5, 0x0

    goto :goto_3

    .line 102
    :cond_0
    sget v5, Lcom/jhlabs/image/GaussianFilter;->WRAP_EDGES:I

    if-ne v2, v5, :cond_3

    add-int v5, v8, v0

    .line 103
    rem-int/2addr v5, v0

    goto :goto_3

    :cond_1
    if-lt v11, v0, :cond_3

    .line 105
    sget v5, Lcom/jhlabs/image/GaussianFilter;->CLAMP_EDGES:I

    if-ne v2, v5, :cond_2

    add-int/lit8 v5, v0, -0x1

    goto :goto_3

    .line 107
    :cond_2
    sget v5, Lcom/jhlabs/image/GaussianFilter;->WRAP_EDGES:I

    if-ne v2, v5, :cond_3

    add-int v5, v8, v0

    .line 108
    rem-int/2addr v5, v0

    goto :goto_3

    :cond_3
    move v5, v11

    :goto_3
    add-int/2addr v5, v7

    .line 110
    aget v5, p1, v5

    shr-int/lit8 v11, v5, 0x18

    const/16 v0, 0xff

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v12, v11

    shr-int/lit8 v11, v5, 0x10

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v13, v11

    shr-int/lit8 v11, v5, 0x8

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v14, v11

    and-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v16, v16, v0

    add-float v15, v15, v16

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p3

    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0xff

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    move-object v5, v3

    if-eqz p5, :cond_6

    float-to-double v2, v12

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v10

    double-to-int v0, v2

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    :cond_6
    float-to-double v2, v13

    .line 118
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v10

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    float-to-double v12, v14

    .line 119
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v3, v12

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    float-to-double v12, v15

    .line 120
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v10, v12

    invoke-static {v10}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v10

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v10

    .line 121
    aput v0, p2, v9

    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move/from16 v2, p6

    move-object v3, v5

    goto/16 :goto_1

    :cond_7
    move-object v5, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v2, p6

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static makeKernel(F)Ljava/awt/image/Kernel;
    .locals 13

    float-to-double v0, p0

    .line 131
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 133
    new-array v3, v1, [F

    const/high16 v4, 0x40400000    # 3.0f

    div-float v4, p0, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v4

    mul-float v5, v5, v4

    const v6, 0x40c90fdb

    mul-float v4, v4, v6

    float-to-double v6, v4

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float p0, p0, p0

    neg-int v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-gt v6, v0, :cond_1

    mul-int v11, v6, v6

    int-to-float v11, v11

    cmpl-float v12, v11, p0

    if-lez v12, :cond_0

    .line 144
    aput v8, v3, v9

    goto :goto_1

    :cond_0
    neg-float v11, v11

    div-float/2addr v11, v5

    float-to-double v11, v11

    .line 146
    invoke-static {v11, v12}, Ljava/lang/Math;->exp(D)D

    move-result-wide v11

    double-to-float v11, v11

    div-float/2addr v11, v4

    aput v11, v3, v9

    .line 147
    :goto_1
    aget v11, v3, v9

    add-float/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v7, v1, :cond_2

    .line 151
    aget p0, v3, v7

    div-float/2addr p0, v10

    aput p0, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 153
    :cond_2
    new-instance p0, Ljava/awt/image/Kernel;

    invoke-direct {p0, v1, v2, v3}, Ljava/awt/image/Kernel;-><init>(II[F)V

    return-object p0
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 12

    .line 64
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 65
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/GaussianFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_0
    mul-int v0, v8, v9

    .line 70
    new-array v10, v0, [I

    .line 71
    new-array v11, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move v3, v8

    move v4, v9

    move-object v5, v10

    move v7, v8

    .line 72
    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 74
    iget p1, p0, Lcom/jhlabs/image/GaussianFilter;->radius:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/jhlabs/image/GaussianFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v5, p0, Lcom/jhlabs/image/GaussianFilter;->alpha:Z

    sget v6, Lcom/jhlabs/image/GaussianFilter;->CLAMP_EDGES:I

    move-object v1, v10

    move-object v2, v11

    move v3, v8

    move v4, v9

    invoke-static/range {v0 .. v6}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 76
    iget-object v0, p0, Lcom/jhlabs/image/GaussianFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v5, p0, Lcom/jhlabs/image/GaussianFilter;->alpha:Z

    sget v6, Lcom/jhlabs/image/GaussianFilter;->CLAMP_EDGES:I

    move-object v1, v11

    move-object v2, v10

    move v3, v9

    move v4, v8

    invoke-static/range {v0 .. v6}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v3, v8

    move v4, v9

    move-object v5, v10

    move v7, v8

    .line 79
    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    return-object p2
.end method

.method public getRadius()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/jhlabs/image/GaussianFilter;->radius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/GaussianFilter;->radius:F

    .line 52
    invoke-static {p1}, Lcom/jhlabs/image/GaussianFilter;->makeKernel(F)Ljava/awt/image/Kernel;

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/image/GaussianFilter;->kernel:Ljava/awt/image/Kernel;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Gaussian Blur..."

    return-object v0
.end method
