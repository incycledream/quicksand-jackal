.class public Lcom/jhlabs/image/FeedbackFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "FeedbackFilter.java"


# instance fields
.field private angle:F

.field private centreX:F

.field private centreY:F

.field private distance:F

.field private endAlpha:F

.field private iterations:I

.field private rotation:F

.field private startAlpha:F

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->startAlpha:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->endAlpha:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->startAlpha:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->endAlpha:F

    .line 37
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->distance:F

    .line 38
    iput p2, p0, Lcom/jhlabs/image/FeedbackFilter;->angle:F

    .line 39
    iput p3, p0, Lcom/jhlabs/image/FeedbackFilter;->rotation:F

    .line 40
    iput p4, p0, Lcom/jhlabs/image/FeedbackFilter;->zoom:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 13

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 126
    invoke-virtual {p0, p1, v0}, Lcom/jhlabs/image/FeedbackFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    mul-float v1, v1, v2

    .line 128
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    mul-float v2, v2, v3

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 129
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 130
    iget v3, p0, Lcom/jhlabs/image/FeedbackFilter;->distance:F

    float-to-double v3, v3

    iget v5, p0, Lcom/jhlabs/image/FeedbackFilter;->angle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 131
    iget v4, p0, Lcom/jhlabs/image/FeedbackFilter;->distance:F

    float-to-double v4, v4

    iget v6, p0, Lcom/jhlabs/image/FeedbackFilter;->angle:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    double-to-float v4, v4

    .line 132
    iget v5, p0, Lcom/jhlabs/image/FeedbackFilter;->zoom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 133
    iget v6, p0, Lcom/jhlabs/image/FeedbackFilter;->rotation:F

    .line 135
    iget v7, p0, Lcom/jhlabs/image/FeedbackFilter;->iterations:I

    if-nez v7, :cond_1

    .line 136
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    .line 137
    invoke-virtual {v1, p1, v0}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 138
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2

    .line 142
    :cond_1
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    .line 143
    invoke-virtual {v7, p1, v0, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    const/4 v8, 0x0

    .line 144
    :goto_0
    iget v9, p0, Lcom/jhlabs/image/FeedbackFilter;->iterations:I

    if-ge v8, v9, :cond_3

    .line 145
    sget-object v9, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v10, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 146
    sget-object v9, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v10, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 v9, 0x3

    int-to-float v10, v8

    .line 147
    iget v11, p0, Lcom/jhlabs/image/FeedbackFilter;->iterations:I

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/jhlabs/image/FeedbackFilter;->startAlpha:F

    iget v12, p0, Lcom/jhlabs/image/FeedbackFilter;->endAlpha:F

    invoke-static {v10, v11, v12}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    add-float v9, v1, v3

    float-to-double v9, v9

    add-float v11, v2, v4

    float-to-double v11, v11

    .line 149
    invoke-virtual {v7, v9, v10, v11, v12}, Ljava/awt/Graphics2D;->translate(DD)V

    float-to-double v9, v5

    .line 150
    invoke-virtual {v7, v9, v10, v9, v10}, Ljava/awt/Graphics2D;->scale(DD)V

    .line 151
    iget v9, p0, Lcom/jhlabs/image/FeedbackFilter;->rotation:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_2

    float-to-double v9, v6

    .line 152
    invoke-virtual {v7, v9, v10}, Ljava/awt/Graphics2D;->rotate(D)V

    :cond_2
    neg-float v9, v1

    float-to-double v9, v9

    neg-float v11, v2

    float-to-double v11, v11

    .line 153
    invoke-virtual {v7, v9, v10, v11, v12}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 155
    invoke-virtual {v7, p1, v0, v0}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getAngle()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->angle:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 113
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->distance:F

    return v0
.end method

.method public getEndAlpha()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->endAlpha:F

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->iterations:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->rotation:F

    return v0
.end method

.method public getStartAlpha()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->startAlpha:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/image/FeedbackFilter;->zoom:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->angle:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    .line 109
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->centreY:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->distance:F

    return-void
.end method

.method public setEndAlpha(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->endAlpha:F

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->iterations:I

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->rotation:F

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->startAlpha:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jhlabs/image/FeedbackFilter;->zoom:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Feedback..."

    return-object v0
.end method
