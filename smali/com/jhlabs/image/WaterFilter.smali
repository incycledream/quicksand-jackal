.class public Lcom/jhlabs/image/WaterFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "WaterFilter.java"


# static fields
.field static final serialVersionUID:J = 0x79f9a3e3012ef15dL


# instance fields
.field private amplitude:F

.field private centreX:F

.field private centreY:F

.field private icentreX:F

.field private icentreY:F

.field private phase:F

.field private radius:F

.field private radius2:F

.field private wavelength:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    .line 28
    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->wavelength:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->amplitude:F

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->phase:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 31
    iput v1, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    .line 32
    iput v1, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    const/high16 v1, 0x42480000    # 50.0f

    .line 33
    iput v1, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    .line 35
    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->radius2:F

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/WaterFilter;->setEdgeAction(I)V

    return-void
.end method

.method private inside(III)Z
    .locals 0

    if-gt p2, p1, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 105
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->icentreX:F

    .line 106
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->icentreY:F

    .line 107
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 108
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->icentreX:F

    iget v1, p0, Lcom/jhlabs/image/WaterFilter;->icentreY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    .line 109
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->radius2:F

    .line 110
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAmplitude()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->amplitude:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 89
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    return v0
.end method

.method public getPhase()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->phase:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    return v0
.end method

.method public getWavelength()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->wavelength:F

    return v0
.end method

.method public setAmplitude(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->amplitude:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 84
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    .line 85
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->centreY:F

    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->phase:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    return-void
.end method

.method public setWavelength(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/WaterFilter;->wavelength:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Water Ripples..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    int-to-float p1, p1

    .line 114
    iget v0, p0, Lcom/jhlabs/image/WaterFilter;->icentreX:F

    sub-float v0, p1, v0

    int-to-float p2, p2

    .line 115
    iget v1, p0, Lcom/jhlabs/image/WaterFilter;->icentreY:F

    sub-float v1, p2, v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    .line 117
    iget v3, p0, Lcom/jhlabs/image/WaterFilter;->radius2:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 118
    aput p1, p3, v5

    .line 119
    aput p2, p3, v4

    goto :goto_0

    :cond_0
    float-to-double v2, v2

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 122
    iget v3, p0, Lcom/jhlabs/image/WaterFilter;->amplitude:F

    iget v6, p0, Lcom/jhlabs/image/WaterFilter;->wavelength:F

    div-float v6, v2, v6

    const v7, 0x40c90fdb

    mul-float v6, v6, v7

    iget v7, p0, Lcom/jhlabs/image/WaterFilter;->phase:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v3, v3, v6

    .line 123
    iget v6, p0, Lcom/jhlabs/image/WaterFilter;->radius:F

    sub-float v7, v6, v2

    div-float/2addr v7, v6

    mul-float v3, v3, v7

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_1

    .line 125
    iget v6, p0, Lcom/jhlabs/image/WaterFilter;->wavelength:F

    div-float/2addr v6, v2

    mul-float v3, v3, v6

    :cond_1
    mul-float v0, v0, v3

    add-float/2addr p1, v0

    .line 126
    aput p1, p3, v5

    mul-float v1, v1, v3

    add-float/2addr p2, v1

    .line 127
    aput p2, p3, v4

    :goto_0
    return-void
.end method
