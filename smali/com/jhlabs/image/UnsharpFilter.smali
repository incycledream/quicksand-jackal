.class public Lcom/jhlabs/image/UnsharpFilter;
.super Lcom/jhlabs/image/GaussianFilter;
.source "UnsharpFilter.java"


# static fields
.field static final serialVersionUID:J = 0x4a9f4205db2e6b44L


# instance fields
.field private amount:F

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/GaussianFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/UnsharpFilter;->amount:F

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 33
    iput v0, p0, Lcom/jhlabs/image/UnsharpFilter;->radius:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 20

    move-object/from16 v0, p0

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    if-nez p2, :cond_0

    const/4 v1, 0x0

    move-object/from16 v11, p1

    .line 57
    invoke-virtual {v0, v11, v1}, Lcom/jhlabs/image/UnsharpFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p1

    move-object/from16 v12, p2

    :goto_0
    mul-int v1, v9, v10

    .line 59
    new-array v13, v1, [I

    .line 60
    new-array v14, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    move-object v6, v13

    move v8, v9

    .line 61
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    .line 63
    iget v1, v0, Lcom/jhlabs/image/UnsharpFilter;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 64
    iget-object v1, v0, Lcom/jhlabs/image/UnsharpFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v6, v0, Lcom/jhlabs/image/UnsharpFilter;->alpha:Z

    sget v7, Lcom/jhlabs/image/UnsharpFilter;->CLAMP_EDGES:I

    move-object v2, v13

    move-object v3, v14

    move v4, v9

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/jhlabs/image/UnsharpFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 65
    iget-object v1, v0, Lcom/jhlabs/image/UnsharpFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v6, v0, Lcom/jhlabs/image/UnsharpFilter;->alpha:Z

    sget v7, Lcom/jhlabs/image/UnsharpFilter;->CLAMP_EDGES:I

    move-object v2, v14

    move-object v3, v13

    move v4, v10

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/jhlabs/image/UnsharpFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move v4, v9

    move v5, v10

    move-object v6, v14

    move v8, v9

    .line 68
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/high16 v1, 0x40800000    # 4.0f

    .line 70
    iget v2, v0, Lcom/jhlabs/image/UnsharpFilter;->amount:F

    mul-float v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v10, :cond_6

    move v5, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_5

    .line 75
    aget v6, v14, v5

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v8, v6, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v11, v6, 0xff

    .line 80
    aget v15, v13, v5

    shr-int/lit8 v1, v15, 0x10

    and-int/lit16 v1, v1, 0xff

    move-object/from16 p2, v14

    shr-int/lit8 v14, v15, 0x8

    and-int/lit16 v14, v14, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v10

    sub-int v10, v7, v1

    move/from16 v17, v7

    .line 85
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move/from16 v18, v9

    iget v9, v0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    const/high16 v19, 0x3f800000    # 1.0f

    if-lt v7, v9, :cond_2

    add-float v7, v2, v19

    int-to-float v9, v10

    mul-float v7, v7, v9

    int-to-float v1, v1

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 86
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v7

    move/from16 v17, v7

    :cond_2
    sub-int v1, v8, v14

    .line 87
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, v0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    if-lt v7, v9, :cond_3

    add-float v7, v2, v19

    int-to-float v1, v1

    mul-float v7, v7, v1

    int-to-float v1, v14

    add-float/2addr v7, v1

    float-to-int v1, v7

    .line 88
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v8

    :cond_3
    sub-int v1, v11, v15

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v9, v0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    if-lt v7, v9, :cond_4

    add-float v19, v2, v19

    int-to-float v1, v1

    mul-float v19, v19, v1

    int-to-float v1, v15

    add-float v1, v19, v1

    float-to-int v1, v1

    .line 90
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v11

    :cond_4
    const/high16 v1, -0x1000000

    and-int/2addr v1, v6

    shl-int/lit8 v6, v17, 0x10

    or-int/2addr v1, v6

    shl-int/lit8 v6, v8, 0x8

    or-int/2addr v1, v6

    or-int/2addr v1, v11

    .line 92
    aput v1, v13, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v14, p2

    move/from16 v10, v16

    move/from16 v9, v18

    goto :goto_2

    :cond_5
    move/from16 v18, v9

    move/from16 v16, v10

    move-object/from16 p2, v14

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_1

    :cond_6
    move/from16 v18, v9

    move/from16 v16, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v12

    move/from16 v4, v18

    move/from16 v5, v16

    move-object v6, v13

    move/from16 v8, v18

    .line 97
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    return-object v12
.end method

.method public getAmount()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/UnsharpFilter;->amount:F

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/UnsharpFilter;->amount:F

    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/UnsharpFilter;->threshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Unsharp Mask..."

    return-object v0
.end method
