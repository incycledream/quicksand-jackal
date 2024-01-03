.class public Lcom/jhlabs/image/PinchFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "PinchFilter.java"


# instance fields
.field private amount:F

.field private angle:F

.field private centreX:F

.field private centreY:F

.field private height:F

.field private icentreX:F

.field private icentreY:F

.field private radius:F

.field private radius2:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 26
    iput v1, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    .line 27
    iput v1, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 28
    iput v2, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    .line 29
    iput v1, p0, Lcom/jhlabs/image/PinchFilter;->amount:F

    .line 31
    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->radius2:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 98
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->width:F

    .line 99
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->height:F

    .line 100
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->width:F

    iget v1, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->icentreX:F

    .line 101
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->height:F

    iget v1, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->icentreY:F

    .line 102
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 103
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->icentreX:F

    iget v1, p0, Lcom/jhlabs/image/PinchFilter;->icentreY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    .line 104
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->radius2:F

    .line 105
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->angle:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 78
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->angle:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 73
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    .line 74
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->centreY:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/jhlabs/image/PinchFilter;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Pinch..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    int-to-float p1, p1

    .line 109
    iget v0, p0, Lcom/jhlabs/image/PinchFilter;->icentreX:F

    sub-float v0, p1, v0

    int-to-float p2, p2

    .line 110
    iget v1, p0, Lcom/jhlabs/image/PinchFilter;->icentreY:F

    sub-float v1, p2, v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 113
    iget v3, p0, Lcom/jhlabs/image/PinchFilter;->radius2:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v6, v2, v3

    if-gtz v6, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v2, v3

    float-to-double p1, v2

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v6, p1

    .line 118
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget p2, p0, Lcom/jhlabs/image/PinchFilter;->amount:F

    neg-float p2, p2

    float-to-double v6, p2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float v0, v0, p2

    mul-float v1, v1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 124
    iget p1, p0, Lcom/jhlabs/image/PinchFilter;->angle:F

    mul-float p1, p1, p2

    mul-float p1, p1, p2

    float-to-double p1, p1

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 129
    iget p2, p0, Lcom/jhlabs/image/PinchFilter;->icentreX:F

    mul-float v3, p1, v0

    add-float/2addr p2, v3

    mul-float v3, v2, v1

    sub-float/2addr p2, v3

    aput p2, p3, v5

    .line 130
    iget p2, p0, Lcom/jhlabs/image/PinchFilter;->icentreY:F

    mul-float v2, v2, v0

    add-float/2addr p2, v2

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    aput p2, p3, v4

    goto :goto_1

    .line 114
    :cond_1
    :goto_0
    aput p1, p3, v5

    .line 115
    aput p2, p3, v4

    :goto_1
    return-void
.end method
