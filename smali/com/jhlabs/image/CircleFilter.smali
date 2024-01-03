.class public Lcom/jhlabs/image/CircleFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "CircleFilter.java"


# instance fields
.field private angle:F

.field private centreX:F

.field private centreY:F

.field private height:F

.field private iHeight:F

.field private iWidth:F

.field private icentreX:F

.field private icentreY:F

.field private radius:F

.field private spreadAngle:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->radius:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->height:F

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->angle:F

    const v0, 0x40490fdb    # (float)Math.PI

    .line 28
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->spreadAngle:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/CircleFilter;->setEdgeAction(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 99
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->iWidth:F

    .line 100
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->iHeight:F

    .line 101
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->iWidth:F

    iget v1, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/image/CircleFilter;->icentreX:F

    .line 102
    iget v1, p0, Lcom/jhlabs/image/CircleFilter;->iHeight:F

    iget v2, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    mul-float v1, v1, v2

    iput v1, p0, Lcom/jhlabs/image/CircleFilter;->icentreY:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    .line 103
    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->iWidth:F

    .line 104
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAngle()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->angle:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 95
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->height:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->radius:F

    return v0
.end method

.method public getSpreadAngle()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->spreadAngle:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->angle:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    .line 91
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->centreY:F

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->height:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->radius:F

    return-void
.end method

.method public setSpreadAngle(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/image/CircleFilter;->spreadAngle:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Circle..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    int-to-float p1, p1

    .line 108
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->icentreX:F

    sub-float/2addr p1, v0

    int-to-float p2, p2

    .line 109
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->icentreY:F

    sub-float/2addr p2, v0

    neg-float v0, p2

    float-to-double v0, v0

    neg-float v2, p1

    float-to-double v2, v2

    .line 110
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/CircleFilter;->angle:F

    add-float/2addr v0, v1

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x40c90fdb

    .line 118
    invoke-static {v0, p2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result p2

    .line 120
    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->iWidth:F

    mul-float v0, v0, p2

    iget p2, p0, Lcom/jhlabs/image/CircleFilter;->spreadAngle:F

    const v1, 0x3727c5ac    # 1.0E-5f

    add-float/2addr p2, v1

    div-float/2addr v0, p2

    const/4 p2, 0x0

    aput v0, p3, p2

    .line 121
    iget p2, p0, Lcom/jhlabs/image/CircleFilter;->iHeight:F

    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->radius:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/jhlabs/image/CircleFilter;->height:F

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float p2, p2, v0

    const/4 p1, 0x1

    aput p2, p3, p1

    return-void
.end method
