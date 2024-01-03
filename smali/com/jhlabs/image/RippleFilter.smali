.class public Lcom/jhlabs/image/RippleFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "RippleFilter.java"


# static fields
.field public static final NOISE:I = 0x3

.field public static final SAWTOOTH:I = 0x1

.field public static final SINE:I = 0x0

.field public static final TRIANGLE:I = 0x2

.field static final serialVersionUID:J = 0x46ccc3aee5fb00d8L


# instance fields
.field private waveType:I

.field public xAmplitude:F

.field public xWavelength:F

.field public yAmplitude:F

.field public yWavelength:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 45
    iput v0, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    const/high16 v0, 0x41800000    # 16.0f

    .line 47
    iput v0, p0, Lcom/jhlabs/image/RippleFilter;->yWavelength:F

    iput v0, p0, Lcom/jhlabs/image/RippleFilter;->xWavelength:F

    return-void
.end method


# virtual methods
.method public getWaveType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->waveType:I

    return v0
.end method

.method public getXAmplitude()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    return v0
.end method

.method public getXWavelength()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->xWavelength:F

    return v0
.end method

.method public getYAmplitude()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    return v0
.end method

.method public getYWavelength()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->yWavelength:F

    return v0
.end method

.method public setWaveType(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/jhlabs/image/RippleFilter;->waveType:I

    return-void
.end method

.method public setXAmplitude(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    return-void
.end method

.method public setXWavelength(F)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/jhlabs/image/RippleFilter;->xWavelength:F

    return-void
.end method

.method public setYAmplitude(F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    return-void
.end method

.method public setYWavelength(F)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/jhlabs/image/RippleFilter;->yWavelength:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Ripple..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 6

    int-to-float p2, p2

    .line 133
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->xWavelength:F

    div-float v0, p2, v0

    int-to-float p1, p1

    .line 134
    iget v1, p0, Lcom/jhlabs/image/RippleFilter;->yWavelength:F

    div-float v1, p1, v1

    .line 136
    iget v2, p0, Lcom/jhlabs/image/RippleFilter;->waveType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    float-to-double v4, v0

    .line 139
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    float-to-double v1, v1

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {v0}, Lcom/jhlabs/math/Noise;->noise1(F)F

    move-result v0

    .line 152
    invoke-static {v1}, Lcom/jhlabs/math/Noise;->noise1(F)F

    move-result v1

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {v0}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v0

    .line 148
    invoke-static {v1}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 143
    invoke-static {v0, v2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v0

    .line 144
    invoke-static {v1, v2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 155
    iget v4, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    mul-float v4, v4, v0

    add-float/2addr p1, v4

    aput p1, p3, v2

    .line 156
    iget p1, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    aput p2, p3, v3

    return-void
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 3

    .line 124
    iget v0, p0, Lcom/jhlabs/image/RippleFilter;->edgeAction:I

    if-nez v0, :cond_0

    .line 125
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->x:I

    .line 126
    iget v0, p1, Ljava/awt/Rectangle;->width:I

    iget v1, p0, Lcom/jhlabs/image/RippleFilter;->xAmplitude:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->width:I

    .line 127
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    iget v1, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->y:I

    .line 128
    iget v0, p1, Ljava/awt/Rectangle;->height:I

    iget v1, p0, Lcom/jhlabs/image/RippleFilter;->yAmplitude:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->height:I

    :cond_0
    return-void
.end method
