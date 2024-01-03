.class public Lcom/jhlabs/image/ShadowFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "ShadowFilter.java"


# static fields
.field static final serialVersionUID:J = 0x5792f07675364a9bL


# instance fields
.field private addMargins:Z

.field private angle:F

.field private distance:F

.field private opacity:F

.field private radius:F

.field private shadowColor:I

.field private shadowOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    const v1, 0x4096cbe4

    .line 28
    iput v1, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    .line 32
    iput-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowOnly:Z

    const/high16 v0, -0x1000000

    .line 33
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowColor:I

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    const v1, 0x4096cbe4

    .line 28
    iput v1, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    .line 32
    iput-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowOnly:Z

    const/high16 v0, -0x1000000

    .line 33
    iput v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowColor:I

    .line 39
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    float-to-double v0, p3

    float-to-double v2, p2

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    float-to-double p1, p2

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    .line 42
    iput p4, p0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 119
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 120
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    if-nez p2, :cond_1

    .line 123
    iget-boolean v5, v0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    if-eqz v5, :cond_0

    .line 124
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v5

    .line 125
    new-instance v6, Ljava/awt/image/BufferedImage;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v7

    invoke-virtual {v5}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v8

    invoke-direct {v6, v5, v7, v8, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v5, v6

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0, v1, v4}, Lcom/jhlabs/image/ShadowFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object/from16 v5, p2

    .line 130
    :goto_0
    iget v6, v0, Lcom/jhlabs/image/ShadowFilter;->shadowColor:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-float v9, v9

    div-float/2addr v9, v8

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/4 v8, 0x4

    new-array v10, v8, [[F

    new-array v11, v8, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    const/4 v14, 0x1

    aput v13, v11, v14

    const/4 v15, 0x2

    aput v13, v11, v15

    const/4 v4, 0x3

    aput v7, v11, v4

    aput-object v11, v10, v12

    new-array v7, v8, [F

    aput v13, v7, v12

    aput v13, v7, v14

    aput v13, v7, v15

    aput v9, v7, v4

    aput-object v7, v10, v14

    new-array v7, v8, [F

    aput v13, v7, v12

    aput v13, v7, v14

    aput v13, v7, v15

    aput v6, v7, v4

    aput-object v7, v10, v15

    new-array v6, v8, [F

    aput v13, v6, v12

    aput v13, v6, v14

    aput v13, v6, v15

    .line 135
    iget v7, v0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    aput v7, v6, v4

    aput-object v6, v10, v4

    .line 141
    new-instance v6, Ljava/awt/image/BufferedImage;

    invoke-direct {v6, v2, v3, v15}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 142
    new-instance v2, Ljava/awt/image/BandCombineOp;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Ljava/awt/image/BandCombineOp;-><init>([[FLjava/awt/RenderingHints;)V

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v7

    invoke-virtual {v6}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/awt/image/BandCombineOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    .line 143
    new-instance v2, Lcom/jhlabs/image/GaussianFilter;

    iget v7, v0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    invoke-direct {v2, v7}, Lcom/jhlabs/image/GaussianFilter;-><init>(F)V

    invoke-virtual {v2, v6, v3}, Lcom/jhlabs/image/GaussianFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 145
    iget v3, v0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    iget v6, v0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v3, v3, v6

    .line 146
    iget v6, v0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    neg-float v6, v6

    iget v7, v0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float v6, v6, v7

    .line 148
    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    .line 149
    iget v8, v0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    invoke-static {v4, v8}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 150
    iget-boolean v4, v0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    if-eqz v4, :cond_2

    .line 151
    iget v4, v0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    sub-float/2addr v4, v6

    .line 152
    invoke-static {v13, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 153
    iget v8, v0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    sub-float/2addr v8, v3

    invoke-static {v13, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    float-to-double v9, v4

    float-to-double v11, v8

    .line 154
    invoke-virtual {v7, v9, v10, v11, v12}, Ljava/awt/Graphics2D;->translate(DD)V

    :cond_2
    float-to-double v3, v3

    float-to-double v8, v6

    .line 156
    invoke-static {v3, v4, v8, v9}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 157
    iget-boolean v2, v0, Lcom/jhlabs/image/ShadowFilter;->shadowOnly:Z

    if-nez v2, :cond_3

    .line 158
    sget-object v2, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    invoke-virtual {v7, v2}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v7, v1, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 161
    :cond_3
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->dispose()V

    return-object v5
.end method

.method public getAddMargins()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowColor:I

    return v0
.end method

.method public getShadowOnly()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->shadowOnly:Z

    return v0
.end method

.method public setAddMargins(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->opacity:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    return-void
.end method

.method public setShadowColor(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/jhlabs/image/ShadowFilter;->shadowColor:I

    return-void
.end method

.method public setShadowOnly(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/jhlabs/image/ShadowFilter;->shadowOnly:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Drop Shadow..."

    return-object v0
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 5

    .line 110
    iget-boolean v0, p0, Lcom/jhlabs/image/ShadowFilter;->addMargins:Z

    if-eqz v0, :cond_0

    .line 111
    iget v0, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    iget v1, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    .line 112
    iget v1, p0, Lcom/jhlabs/image/ShadowFilter;->distance:F

    neg-float v1, v1

    iget v2, p0, Lcom/jhlabs/image/ShadowFilter;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    .line 113
    iget v2, p1, Ljava/awt/Rectangle;->width:I

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p1, Ljava/awt/Rectangle;->width:I

    .line 114
    iget v0, p1, Ljava/awt/Rectangle;->height:I

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/jhlabs/image/ShadowFilter;->radius:F

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->height:I

    :cond_0
    return-void
.end method
