.class public Lcom/jhlabs/image/InterpolateFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "InterpolateFilter.java"


# instance fields
.field private destination:Ljava/awt/image/BufferedImage;

.field private interpolation:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 16

    move-object/from16 v7, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 50
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    move-object/from16 v8, p1

    if-nez p2, :cond_0

    .line 54
    invoke-virtual {v7, v8, v2}, Lcom/jhlabs/image/InterpolateFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 55
    :goto_0
    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    .line 57
    iget-object v3, v7, Lcom/jhlabs/image/InterpolateFilter;->destination:Ljava/awt/image/BufferedImage;

    if-eqz v3, :cond_2

    .line 58
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 59
    iget-object v0, v7, Lcom/jhlabs/image/InterpolateFilter;->destination:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    move-object v6, v2

    move-object v14, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move v4, v10

    .line 64
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/InterpolateFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v15

    .line 65
    iget-object v1, v7, Lcom/jhlabs/image/InterpolateFilter;->destination:Ljava/awt/image/BufferedImage;

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/InterpolateFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v14

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    .line 67
    aget v1, v15, v0

    .line 68
    aget v2, v14, v0

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v6, v2, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v12, v2, 0x8

    and-int/lit16 v12, v12, 0xff

    and-int/lit16 v2, v2, 0xff

    .line 77
    iget v8, v7, Lcom/jhlabs/image/InterpolateFilter;->interpolation:F

    invoke-static {v8, v4, v6}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v4

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    .line 78
    iget v6, v7, Lcom/jhlabs/image/InterpolateFilter;->interpolation:F

    invoke-static {v6, v5, v12}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v5

    invoke-static {v5}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v5

    .line 79
    iget v6, v7, Lcom/jhlabs/image/InterpolateFilter;->interpolation:F

    invoke-static {v6, v1, v2}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v1

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    shl-int/lit8 v2, v3, 0x18

    shl-int/lit8 v3, v4, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v5, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 80
    aput v1, v15, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v3, v13

    move v4, v10

    move-object v6, v15

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/InterpolateFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v8, p1

    goto :goto_1

    :cond_2
    return-object v9
.end method

.method public getDestination()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jhlabs/image/InterpolateFilter;->destination:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getInterpolation()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/InterpolateFilter;->interpolation:F

    return v0
.end method

.method public setDestination(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jhlabs/image/InterpolateFilter;->destination:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setInterpolation(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/InterpolateFilter;->interpolation:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Interpolate..."

    return-object v0
.end method
