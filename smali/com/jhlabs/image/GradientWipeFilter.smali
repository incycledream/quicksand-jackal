.class public Lcom/jhlabs/image/GradientWipeFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "GradientWipeFilter.java"


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
    iput v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->density:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->softness:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 21

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
    invoke-virtual {v7, v10, v0}, Lcom/jhlabs/image/GradientWipeFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 77
    :goto_0
    iget-object v0, v7, Lcom/jhlabs/image/GradientWipeFilter;->mask:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_1

    return-object v11

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    .line 81
    iget-object v0, v7, Lcom/jhlabs/image/GradientWipeFilter;->mask:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v13

    .line 83
    iget v0, v7, Lcom/jhlabs/image/GradientWipeFilter;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, v7, Lcom/jhlabs/image/GradientWipeFilter;->softness:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sub-float v1, v0, v2

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v15, v1, v14

    mul-float v6, v0, v14

    .line 87
    new-array v5, v8, [I

    .line 88
    new-array v4, v12, [I

    const/16 v16, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_4

    const/4 v2, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v3

    move-object/from16 v19, v4

    move v4, v8

    move-object/from16 v20, v5

    move/from16 v5, v17

    move v14, v6

    move-object/from16 v6, v20

    .line 91
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GradientWipeFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 92
    iget-object v1, v7, Lcom/jhlabs/image/GradientWipeFilter;->mask:Ljava/awt/image/BufferedImage;

    rem-int v3, v18, v13

    const/4 v5, 0x1

    move v4, v12

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GradientWipeFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    .line 95
    rem-int v1, v0, v12

    aget v1, v19, v1

    .line 96
    aget v2, v20, v0

    .line 97
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v1

    int-to-float v1, v1

    .line 98
    invoke-static {v15, v14, v1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v1

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v1, v1, v17

    float-to-int v1, v1

    .line 101
    iget-boolean v3, v7, Lcom/jhlabs/image/GradientWipeFilter;->invert:Z

    if-eqz v3, :cond_2

    rsub-int v1, v1, 0xff

    :cond_2
    shl-int/lit8 v1, v1, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 103
    aput v1, v20, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/high16 v17, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v3, v18

    move v4, v8

    move-object/from16 v6, v20

    .line 106
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GradientWipeFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v3, v18, 0x1

    move v6, v14

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    const/high16 v14, 0x437f0000    # 255.0f

    goto :goto_1

    :cond_4
    return-object v11
.end method

.method public getDensity()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->density:F

    return v0
.end method

.method public getInvert()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->invert:Z

    return v0
.end method

.method public getMask()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->mask:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getSoftness()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/GradientWipeFilter;->softness:F

    return v0
.end method

.method public setDensity(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/GradientWipeFilter;->density:F

    return-void
.end method

.method public setInvert(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/jhlabs/image/GradientWipeFilter;->invert:Z

    return-void
.end method

.method public setMask(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/jhlabs/image/GradientWipeFilter;->mask:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/GradientWipeFilter;->softness:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Transitions/Gradient Wipe..."

    return-object v0
.end method
