.class public Lcom/jhlabs/image/FlareFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "FlareFilter.java"


# instance fields
.field private baseAmount:F

.field private centreX:F

.field private centreY:F

.field private color:I

.field private falloff:F

.field private gauss:F

.field private height:I

.field private icentreX:F

.field private icentreY:F

.field private linear:F

.field private mix:F

.field private radius:F

.field private rayAmount:F

.field private rays:I

.field private ringAmount:F

.field private ringWidth:F

.field private sigma:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/16 v0, 0x32

    .line 29
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->rays:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->baseAmount:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 32
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->ringAmount:F

    const v0, 0x3dcccccd    # 0.1f

    .line 33
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->rayAmount:F

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->color:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 36
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->centreY:F

    const v1, 0x3fcccccd    # 1.6f

    .line 37
    iput v1, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    const v1, 0x3cf5c28f    # 0.03f

    .line 39
    iput v1, p0, Lcom/jhlabs/image/FlareFilter;->linear:F

    const v1, 0x3bc49ba6    # 0.006f

    .line 40
    iput v1, p0, Lcom/jhlabs/image/FlareFilter;->gauss:F

    .line 41
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->mix:F

    const/high16 v0, 0x40c00000    # 6.0f

    .line 42
    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->falloff:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 48
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FlareFilter;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 10

    int-to-float p1, p1

    .line 118
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->icentreX:F

    sub-float/2addr p1, v0

    int-to-float p2, p2

    .line 119
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->icentreY:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v1, v0

    mul-float v2, v1, v0

    .line 121
    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->gauss:F

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->mix:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->linear:F

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float v1, v3

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->mix:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    .line 124
    iget v1, p0, Lcom/jhlabs/image/FlareFilter;->baseAmount:F

    mul-float v2, v2, v1

    .line 126
    iget v1, p0, Lcom/jhlabs/image/FlareFilter;->radius:F

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    add-float v5, v1, v3

    const/4 v6, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    add-float/2addr v1, v3

    sub-float v1, v0, v1

    .line 127
    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->falloff:F

    div-float/2addr v1, v3

    invoke-static {v1, v2, v6}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v2

    .line 129
    :cond_0
    iget v1, p0, Lcom/jhlabs/image/FlareFilter;->radius:F

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    sub-float v5, v1, v3

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v5, v0, v5

    if-ltz v5, :cond_2

    add-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-float v1, v0, v1

    .line 132
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    div-float/2addr v1, v3

    mul-float v3, v1, v1

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v1, v1, v7

    sub-float/2addr v5, v1

    mul-float v3, v3, v5

    sub-float v1, v4, v3

    .line 134
    iget v3, p0, Lcom/jhlabs/image/FlareFilter;->ringAmount:F

    mul-float v1, v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    add-float/2addr v2, v1

    float-to-double v8, p1

    float-to-double p1, p2

    .line 139
    invoke-static {v8, v9, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, p2

    div-float p2, p1, p2

    const/high16 v1, 0x41880000    # 17.0f

    mul-float p2, p2, v1

    add-float/2addr p2, v4

    const/high16 v1, 0x41200000    # 10.0f

    mul-float p1, p1, v1

    .line 140
    invoke-static {p1}, Lcom/jhlabs/math/Noise;->noise1(F)F

    move-result p1

    add-float/2addr p2, p1

    invoke-static {p2, v4}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    mul-float p1, p1, v7

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    .line 142
    invoke-static {p1, p2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 144
    iget p2, p0, Lcom/jhlabs/image/FlareFilter;->rayAmount:F

    mul-float p2, p2, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, p1

    add-float/2addr v0, v4

    div-float/2addr p2, v0

    add-float/2addr v2, p2

    .line 147
    invoke-static {v2, v6, v4}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    .line 148
    iget p2, p0, Lcom/jhlabs/image/FlareFilter;->color:I

    invoke-static {p1, p3, p2}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public getBaseAmount()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->baseAmount:F

    return v0
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 97
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/FlareFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/FlareFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->color:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->radius:F

    return v0
.end method

.method public getRayAmount()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->rayAmount:F

    return v0
.end method

.method public getRingAmount()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->ringAmount:F

    return v0
.end method

.method public getRingWidth()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    return v0
.end method

.method public setBaseAmount(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->baseAmount:F

    return-void
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 92
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->centreX:F

    .line 93
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->centreY:F

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->color:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 2

    .line 110
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->width:I

    .line 111
    iput p2, p0, Lcom/jhlabs/image/FlareFilter;->height:I

    .line 112
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->centreX:F

    int-to-float v1, p1

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->icentreX:F

    .line 113
    iget v0, p0, Lcom/jhlabs/image/FlareFilter;->centreY:F

    int-to-float v1, p2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/image/FlareFilter;->icentreY:F

    .line 114
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->setDimensions(II)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 101
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->radius:F

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 102
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->sigma:F

    return-void
.end method

.method public setRayAmount(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->rayAmount:F

    return-void
.end method

.method public setRingAmount(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->ringAmount:F

    return-void
.end method

.method public setRingWidth(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/FlareFilter;->ringWidth:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Flare..."

    return-object v0
.end method
