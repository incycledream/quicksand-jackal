.class public Lcom/jhlabs/image/KaleidoscopeFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "KaleidoscopeFilter.java"


# instance fields
.field private angle:F

.field private angle2:F

.field private centreX:F

.field private centreY:F

.field private icentreX:F

.field private icentreY:F

.field private radius:F

.field private sides:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle2:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 30
    iput v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    .line 31
    iput v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    const/4 v1, 0x3

    .line 32
    iput v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->sides:I

    .line 33
    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->radius:F

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/KaleidoscopeFilter;->setEdgeAction(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 103
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreX:F

    .line 104
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreY:F

    .line 105
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAngle()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle:F

    return v0
.end method

.method public getAngle2()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle2:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 91
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->radius:F

    return v0
.end method

.method public getSides()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->sides:I

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle:F

    return-void
.end method

.method public setAngle2(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle2:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    .line 87
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->centreY:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->radius:F

    return-void
.end method

.method public setSides(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->sides:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Kaleidoscope..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 8

    int-to-float p1, p1

    .line 109
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreX:F

    sub-float/2addr p1, v0

    float-to-double v0, p1

    int-to-float p1, p2

    .line 110
    iget p2, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreY:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    .line 111
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, p1, p1

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 112
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle2:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    .line 113
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->sides:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    double-to-float p1, p1

    invoke-static {p1}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result p1

    float-to-double p1, p1

    .line 114
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 116
    iget v4, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->radius:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v0

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 117
    invoke-static {v0}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v4, v0

    .line 119
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->angle:F

    float-to-double v0, v0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    const/4 v0, 0x0

    .line 121
    iget v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreX:F

    float-to-double v4, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-float v1, v4

    aput v1, p3, v0

    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lcom/jhlabs/image/KaleidoscopeFilter;->icentreY:F

    float-to-double v4, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v2, v2, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v2

    double-to-float p1, v4

    aput p1, p3, v0

    return-void
.end method
