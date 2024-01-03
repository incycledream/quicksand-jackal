.class public Lcom/jhlabs/image/GlowFilter;
.super Lcom/jhlabs/image/GaussianFilter;
.source "GlowFilter.java"


# static fields
.field static final serialVersionUID:J = 0x4a9f4205db2e6b44L


# instance fields
.field private amount:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/GaussianFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/GlowFilter;->amount:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 32
    iput v0, p0, Lcom/jhlabs/image/GlowFilter;->radius:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 16

    move-object/from16 v0, p0

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    if-nez p2, :cond_0

    const/4 v1, 0x0

    move-object/from16 v11, p1

    .line 48
    invoke-virtual {v0, v11, v1}, Lcom/jhlabs/image/GlowFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    :goto_0
    mul-int v1, v9, v10

    .line 50
    new-array v13, v1, [I

    .line 51
    new-array v14, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    move-object v6, v13

    move v8, v9

    .line 52
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 54
    iget v1, v0, Lcom/jhlabs/image/GlowFilter;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 55
    iget-object v1, v0, Lcom/jhlabs/image/GlowFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v6, v0, Lcom/jhlabs/image/GlowFilter;->alpha:Z

    sget v7, Lcom/jhlabs/image/GlowFilter;->CLAMP_EDGES:I

    move-object v2, v13

    move-object v3, v14

    move v4, v9

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/jhlabs/image/GlowFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 56
    iget-object v1, v0, Lcom/jhlabs/image/GlowFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v6, v0, Lcom/jhlabs/image/GlowFilter;->alpha:Z

    sget v7, Lcom/jhlabs/image/GlowFilter;->CLAMP_EDGES:I

    move-object v2, v14

    move-object v3, v13

    move v4, v10

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/jhlabs/image/GlowFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    move-object v6, v14

    move v8, v9

    .line 59
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/high16 v1, 0x40800000    # 4.0f

    .line 61
    iget v2, v0, Lcom/jhlabs/image/GlowFilter;->amount:F

    mul-float v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v10, :cond_3

    move v5, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_2

    .line 66
    aget v6, v14, v5

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v6, 0xff

    .line 71
    aget v15, v13, v5

    shr-int/lit8 v1, v15, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v0, v15, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v15, v15, 0xff

    int-to-float v7, v7

    int-to-float v1, v1

    mul-float v1, v1, v2

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 76
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    int-to-float v7, v8

    int-to-float v0, v0

    mul-float v0, v0, v2

    add-float/2addr v7, v0

    float-to-int v0, v7

    .line 77
    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    int-to-float v7, v11

    int-to-float v8, v15

    mul-float v8, v8, v2

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 78
    invoke-static {v7}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v7

    const/high16 v8, -0x1000000

    and-int/2addr v6, v8

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v6

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v7

    .line 80
    aput v0, v13, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v12

    move v4, v9

    move v5, v10

    move-object v6, v13

    move v8, v9

    .line 85
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    return-object v12
.end method

.method public getAmount()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/jhlabs/image/GlowFilter;->amount:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jhlabs/image/GlowFilter;->amount:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Glow..."

    return-object v0
.end method
