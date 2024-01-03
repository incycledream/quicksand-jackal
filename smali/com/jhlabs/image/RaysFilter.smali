.class public Lcom/jhlabs/image/RaysFilter;
.super Lcom/jhlabs/image/MotionBlurOp;
.source "RaysFilter.java"


# instance fields
.field private colormap:Lcom/jhlabs/image/Colormap;

.field private opacity:F

.field private raysOnly:Z

.field private strength:F

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/MotionBlurOp;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/RaysFilter;->opacity:F

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/jhlabs/image/RaysFilter;->threshold:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/jhlabs/image/RaysFilter;->strength:F

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/jhlabs/image/RaysFilter;->raysOnly:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 77
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    .line 78
    new-array v11, v9, [I

    .line 79
    new-array v12, v9, [I

    .line 81
    new-instance v13, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {v13, v9, v10, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 83
    iget v0, v7, Lcom/jhlabs/image/RaysFilter;->threshold:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v14, v0

    const/4 v15, 0x0

    const/4 v6, 0x0

    :goto_0
    const/high16 v16, -0x1000000

    if-ge v6, v10, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v6

    move v4, v9

    move/from16 v17, v6

    move-object v6, v11

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/RaysFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    .line 87
    aget v1, v11, v0

    and-int v2, v1, v16

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    if-ge v3, v14, :cond_0

    .line 94
    aput v16, v11, v0

    goto :goto_2

    .line 96
    :cond_0
    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 97
    aput v1, v11, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v3, v17

    move v4, v9

    move-object v6, v11

    .line 100
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/RaysFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_0

    :cond_2
    const/4 v14, 0x0

    .line 103
    invoke-super {v7, v13, v14}, Lcom/jhlabs/image/MotionBlurOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v13

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v10, :cond_5

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v6

    move v4, v9

    move/from16 v17, v6

    move-object v6, v11

    .line 106
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/RaysFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object v6, v12

    .line 107
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/RaysFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v9, :cond_4

    .line 109
    aget v1, v11, v0

    and-int v2, v1, v16

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 115
    iget-object v5, v7, Lcom/jhlabs/image/RaysFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v5, :cond_3

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v1, v3

    .line 117
    iget v2, v7, Lcom/jhlabs/image/RaysFilter;->strength:F

    mul-float v1, v1, v2

    const v2, 0x3eaaaaab

    mul-float v1, v1, v2

    invoke-interface {v5, v1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v1

    goto :goto_5

    :cond_3
    int-to-float v3, v3

    .line 119
    iget v5, v7, Lcom/jhlabs/image/RaysFilter;->strength:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    int-to-float v4, v4

    .line 120
    iget v5, v7, Lcom/jhlabs/image/RaysFilter;->strength:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    int-to-float v1, v1

    .line 121
    iget v5, v7, Lcom/jhlabs/image/RaysFilter;->strength:F

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 125
    :goto_5
    aput v1, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v3, v17

    move v4, v9

    move-object v6, v11

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/RaysFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v6, v17, 0x1

    goto :goto_3

    :cond_5
    if-nez p2, :cond_6

    .line 131
    invoke-virtual {v7, v8, v14}, Lcom/jhlabs/image/RaysFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p2

    .line 133
    :goto_6
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    .line 134
    iget-boolean v2, v7, Lcom/jhlabs/image/RaysFilter;->raysOnly:Z

    if-nez v2, :cond_7

    .line 135
    sget-object v2, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 136
    invoke-virtual {v1, v8, v14}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 138
    :cond_7
    iget v2, v7, Lcom/jhlabs/image/RaysFilter;->opacity:F

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/jhlabs/composite/MiscComposite;->getInstance(IF)Ljava/awt/Composite;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 139
    invoke-virtual {v1, v13, v14}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 140
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/jhlabs/image/RaysFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/jhlabs/image/RaysFilter;->opacity:F

    return v0
.end method

.method public getRaysOnly()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/jhlabs/image/RaysFilter;->raysOnly:Z

    return v0
.end method

.method public getStrength()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/RaysFilter;->strength:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/RaysFilter;->threshold:F

    return v0
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/jhlabs/image/RaysFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jhlabs/image/RaysFilter;->opacity:F

    return-void
.end method

.method public setRaysOnly(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/jhlabs/image/RaysFilter;->raysOnly:Z

    return-void
.end method

.method public setStrength(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/RaysFilter;->strength:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/RaysFilter;->threshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Rays..."

    return-object v0
.end method
