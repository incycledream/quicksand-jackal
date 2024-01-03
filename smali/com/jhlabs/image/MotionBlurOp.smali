.class public Lcom/jhlabs/image/MotionBlurOp;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "MotionBlurOp.java"


# instance fields
.field private angle:F

.field private centreX:F

.field private centreY:F

.field private distance:F

.field private rotation:F

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    .line 34
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    .line 35
    iput p2, p0, Lcom/jhlabs/image/MotionBlurOp;->angle:F

    .line 36
    iput p3, p0, Lcom/jhlabs/image/MotionBlurOp;->rotation:F

    .line 37
    iput p4, p0, Lcom/jhlabs/image/MotionBlurOp;->zoom:F

    return-void
.end method

.method private log2(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/jhlabs/image/MotionBlurOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 112
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, v0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    mul-float v4, v4, v5

    .line 113
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    mul-float v5, v5, v6

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    .line 114
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 115
    iget v7, v0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    float-to-double v7, v7

    iget v9, v0, Lcom/jhlabs/image/MotionBlurOp;->angle:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    double-to-float v7, v7

    .line 116
    iget v8, v0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    float-to-double v8, v8

    iget v10, v0, Lcom/jhlabs/image/MotionBlurOp;->angle:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    double-to-float v8, v8

    .line 117
    iget v9, v0, Lcom/jhlabs/image/MotionBlurOp;->zoom:F

    .line 118
    iget v10, v0, Lcom/jhlabs/image/MotionBlurOp;->rotation:F

    .line 119
    iget v11, v0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    mul-float v12, v10, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    add-float/2addr v11, v12

    iget v12, v0, Lcom/jhlabs/image/MotionBlurOp;->zoom:F

    mul-float v12, v12, v6

    add-float/2addr v11, v12

    float-to-int v6, v11

    .line 120
    invoke-direct {v0, v6}, Lcom/jhlabs/image/MotionBlurOp;->log2(I)I

    move-result v6

    div-float/2addr v7, v11

    div-float/2addr v8, v11

    div-float/2addr v9, v11

    div-float/2addr v10, v11

    if-nez v6, :cond_1

    .line 128
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v1, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 130
    invoke-virtual {v4}, Ljava/awt/Graphics2D;->dispose()V

    return-object v3

    .line 134
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/jhlabs/image/MotionBlurOp;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v6, :cond_3

    .line 136
    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v13

    .line 137
    invoke-virtual {v13, v1, v2, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 138
    sget-object v1, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v14, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v13, v1, v14}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 139
    sget-object v1, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v14, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v13, v1, v14}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 v1, 0x3

    const/high16 v14, 0x3f000000    # 0.5f

    .line 140
    invoke-static {v1, v14}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    add-float v1, v4, v7

    float-to-double v14, v1

    add-float v1, v5, v8

    move-object/from16 p1, v3

    float-to-double v2, v1

    .line 142
    invoke-virtual {v13, v14, v15, v2, v3}, Ljava/awt/Graphics2D;->translate(DD)V

    const-wide v1, 0x3ff00068db8bac71L    # 1.0001

    float-to-double v14, v9

    .line 143
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v14, v1

    invoke-virtual {v13, v14, v15, v14, v15}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 144
    iget v1, v0, Lcom/jhlabs/image/MotionBlurOp;->rotation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    float-to-double v1, v10

    .line 145
    invoke-virtual {v13, v1, v2}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_2
    neg-float v1, v4

    float-to-double v1, v1

    neg-float v3, v5

    float-to-double v14, v3

    .line 146
    invoke-virtual {v13, v1, v2, v14, v15}, Ljava/awt/Graphics2D;->translate(DD)V

    move-object/from16 v3, p1

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v13, v3, v1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 149
    invoke-virtual {v13}, Ljava/awt/Graphics2D;->dispose()V

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v7, v7, v2

    mul-float v8, v8, v2

    mul-float v9, v9, v2

    mul-float v10, v10, v2

    add-int/lit8 v12, v12, 0x1

    move-object v2, v1

    move-object v1, v11

    move-object v11, v3

    move-object v3, v1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public getAngle()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->angle:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 94
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->rotation:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/jhlabs/image/MotionBlurOp;->zoom:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->angle:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 89
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    .line 90
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->centreY:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->distance:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->rotation:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jhlabs/image/MotionBlurOp;->zoom:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Motion Blur..."

    return-object v0
.end method
