.class public Lcom/jhlabs/image/MirrorFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "MirrorFilter.java"


# instance fields
.field private angle:F

.field private centreY:F

.field private distance:F

.field private gap:F

.field private opacity:F

.field private rotation:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/MirrorFilter;->opacity:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/MirrorFilter;->centreY:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/jhlabs/image/MirrorFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 87
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    .line 89
    iget v6, v0, Lcom/jhlabs/image/MirrorFilter;->centreY:F

    int-to-float v7, v5

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 90
    iget v8, v0, Lcom/jhlabs/image/MirrorFilter;->gap:F

    mul-float v8, v8, v7

    float-to-int v7, v8

    .line 92
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v8

    .line 93
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v9

    const/4 v10, 0x0

    .line 94
    invoke-virtual {v8, v10, v10, v4, v6}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    .line 95
    invoke-virtual {v8, v1, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 96
    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    add-int v11, v6, v7

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    .line 97
    invoke-virtual {v8, v10, v11, v4, v5}, Ljava/awt/Graphics2D;->clipRect(IIII)V

    mul-int/lit8 v5, v6, 0x2

    add-int/2addr v5, v7

    .line 98
    invoke-virtual {v8, v10, v5}, Ljava/awt/Graphics2D;->translate(II)V

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    .line 99
    invoke-virtual {v8, v11, v12, v13, v14}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 100
    invoke-virtual {v8, v1, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 101
    new-instance v1, Ljava/awt/GradientPaint;

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v2, Ljava/awt/Color;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v2, v5, v7, v7, v7}, Ljava/awt/Color;-><init>(FFFF)V

    const/16 v19, 0x0

    int-to-float v11, v6

    new-instance v12, Ljava/awt/Color;

    iget v13, v0, Lcom/jhlabs/image/MirrorFilter;->opacity:F

    invoke-direct {v12, v7, v5, v7, v13}, Ljava/awt/Color;-><init>(FFFF)V

    move-object v15, v1

    move-object/from16 v18, v2

    move/from16 v20, v11

    move-object/from16 v21, v12

    invoke-direct/range {v15 .. v21}, Ljava/awt/GradientPaint;-><init>(FFLjava/awt/Color;FFLjava/awt/Color;)V

    invoke-virtual {v8, v1}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    const/4 v1, 0x6

    .line 102
    invoke-static {v1}, Ljava/awt/AlphaComposite;->getInstance(I)Ljava/awt/AlphaComposite;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 103
    invoke-virtual {v8, v10, v10, v4, v6}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 104
    invoke-virtual {v8, v9}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 105
    invoke-virtual {v8}, Ljava/awt/Graphics2D;->dispose()V

    return-object v3
.end method

.method public getAngle()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->angle:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->centreY:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->distance:F

    return v0
.end method

.method public getGap()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->gap:F

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->opacity:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/MirrorFilter;->rotation:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->angle:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->centreY:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->distance:F

    return-void
.end method

.method public setGap(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->gap:F

    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->opacity:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/MirrorFilter;->rotation:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Mirror..."

    return-object v0
.end method
