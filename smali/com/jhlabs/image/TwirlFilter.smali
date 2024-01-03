.class public Lcom/jhlabs/image/TwirlFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "TwirlFilter.java"


# static fields
.field static final serialVersionUID:J = 0x15844991ed4fb78eL


# instance fields
.field private angle:F

.field private centreX:F

.field private centreY:F

.field private icentreX:F

.field private icentreY:F

.field private radius:F

.field private radius2:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 33
    iput v1, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    .line 34
    iput v1, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 35
    iput v1, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    .line 37
    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius2:F

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/TwirlFilter;->setEdgeAction(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 98
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->icentreX:F

    .line 99
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->icentreY:F

    .line 100
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 101
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->icentreX:F

    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->icentreY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    .line 102
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius2:F

    .line 103
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAngle()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->angle:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 86
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 77
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/TwirlFilter;->angle:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    .line 82
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jhlabs/image/TwirlFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/jhlabs/image/TwirlFilter;->centreY:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Twirl..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    int-to-float p1, p1

    .line 107
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->icentreX:F

    sub-float v0, p1, v0

    int-to-float p2, p2

    .line 108
    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->icentreY:F

    sub-float v1, p2, v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 110
    iget v3, p0, Lcom/jhlabs/image/TwirlFilter;->radius2:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 111
    aput p1, p3, v5

    .line 112
    aput p2, p3, v4

    goto :goto_0

    :cond_0
    float-to-double p1, v2

    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-double v1, v1

    float-to-double v6, v0

    .line 115
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p2, v0

    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->angle:F

    iget v1, p0, Lcom/jhlabs/image/TwirlFilter;->radius:F

    sub-float v2, v1, p1

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 116
    iget v0, p0, Lcom/jhlabs/image/TwirlFilter;->icentreX:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p2, v6

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    aput v0, p3, v5

    .line 117
    iget p2, p0, Lcom/jhlabs/image/TwirlFilter;->icentreY:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    aput p2, p3, v4

    :goto_0
    return-void
.end method
