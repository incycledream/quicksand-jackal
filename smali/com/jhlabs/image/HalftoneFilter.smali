.class public Lcom/jhlabs/image/HalftoneFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "HalftoneFilter.java"


# instance fields
.field private density:F

.field private invert:Z

.field private mask:Ljava/awt/image/BufferedImage;

.field private softness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/jhlabs/image/HalftoneFilter;->density:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/HalftoneFilter;->softness:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 20

    move-object/from16 v7, p0

    .line 72
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object/from16 v10, p1

    .line 76
    invoke-virtual {v7, v10, v0}, Lcom/jhlabs/image/HalftoneFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 77
    :goto_0
    iget-object v0, v7, Lcom/jhlabs/image/HalftoneFilter;->mask:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_1

    return-object v11

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    .line 81
    iget-object v0, v7, Lcom/jhlabs/image/HalftoneFilter;->mask:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    .line 83
    iget v0, v7, Lcom/jhlabs/image/HalftoneFilter;->density:F

    iget v0, v7, Lcom/jhlabs/image/HalftoneFilter;->softness:F

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v15, v0, v14

    .line 88
    new-array v6, v8, [I

    .line 89
    new-array v5, v12, [I

    const/16 v16, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_4

    const/4 v2, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v4

    move/from16 v18, v4

    move v4, v8

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/HalftoneFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 93
    iget-object v1, v7, Lcom/jhlabs/image/HalftoneFilter;->mask:Ljava/awt/image/BufferedImage;

    rem-int v3, v18, v13

    const/4 v5, 0x1

    move v4, v12

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/HalftoneFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    .line 96
    rem-int v1, v0, v12

    aget v1, v19, v1

    .line 97
    aget v2, v17, v0

    .line 98
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v1

    .line 99
    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v3, v15

    add-float/2addr v3, v15

    int-to-float v1, v1

    .line 100
    invoke-static {v4, v3, v1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    .line 103
    iget-boolean v3, v7, Lcom/jhlabs/image/HalftoneFilter;->invert:Z

    if-eqz v3, :cond_2

    rsub-int v1, v1, 0xff

    :cond_2
    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 106
    aput v1, v17, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v3, v18

    move v4, v8

    move-object/from16 v6, v17

    .line 109
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/HalftoneFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v4, v18, 0x1

    move-object/from16 v5, v19

    goto :goto_1

    :cond_4
    return-object v11
.end method

.method public getDensity()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/HalftoneFilter;->density:F

    return v0
.end method

.method public getInvert()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/jhlabs/image/HalftoneFilter;->invert:Z

    return v0
.end method

.method public getMask()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/jhlabs/image/HalftoneFilter;->mask:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getSoftness()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/HalftoneFilter;->softness:F

    return v0
.end method

.method public setDensity(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/HalftoneFilter;->density:F

    return-void
.end method

.method public setInvert(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/jhlabs/image/HalftoneFilter;->invert:Z

    return-void
.end method

.method public setMask(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jhlabs/image/HalftoneFilter;->mask:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/HalftoneFilter;->softness:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Halftone..."

    return-object v0
.end method
