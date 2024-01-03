.class public Lcom/jhlabs/image/FadeFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "FadeFilter.java"


# instance fields
.field private angle:F

.field private fadeStart:F

.field private fadeWidth:F

.field private height:I

.field private invert:Z

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field private sides:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jhlabs/image/FadeFilter;->angle:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    iput v1, p0, Lcom/jhlabs/image/FadeFilter;->fadeStart:F

    const/high16 v2, 0x41200000    # 10.0f

    .line 28
    iput v2, p0, Lcom/jhlabs/image/FadeFilter;->fadeWidth:F

    .line 31
    iput v1, p0, Lcom/jhlabs/image/FadeFilter;->m00:F

    .line 32
    iput v0, p0, Lcom/jhlabs/image/FadeFilter;->m01:F

    .line 33
    iput v0, p0, Lcom/jhlabs/image/FadeFilter;->m10:F

    .line 34
    iput v1, p0, Lcom/jhlabs/image/FadeFilter;->m11:F

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2

    .line 89
    iget v0, p0, Lcom/jhlabs/image/FadeFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/FadeFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 90
    iget v1, p0, Lcom/jhlabs/image/FadeFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/FadeFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 91
    iget p1, p0, Lcom/jhlabs/image/FadeFilter;->sides:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double p1, v0

    .line 92
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float v0, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    const/high16 v1, 0x41800000    # 16.0f

    if-ne p1, p2, :cond_1

    .line 94
    invoke-static {v0, v1}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/jhlabs/image/FadeFilter;->symmetry(FF)F

    move-result v0

    .line 97
    :cond_2
    :goto_0
    iget p1, p0, Lcom/jhlabs/image/FadeFilter;->fadeStart:F

    iget p2, p0, Lcom/jhlabs/image/FadeFilter;->fadeWidth:F

    add-float/2addr p2, p1

    invoke-static {p1, p2, v0}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p1

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 98
    iget-boolean p2, p0, Lcom/jhlabs/image/FadeFilter;->invert:Z

    if-eqz p2, :cond_3

    rsub-int p1, p1, 0xff

    :cond_3
    shl-int/lit8 p1, p1, 0x18

    const p2, 0xffffff

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getAngle()F
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/FadeFilter;->angle:F

    return v0
.end method

.method public getFadeStart()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/FadeFilter;->fadeStart:F

    return v0
.end method

.method public getFadeWidth()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/FadeFilter;->fadeWidth:F

    return v0
.end method

.method public getInvert()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/jhlabs/image/FadeFilter;->invert:Z

    return v0
.end method

.method public getSides()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/FadeFilter;->sides:I

    return v0
.end method

.method public setAngle(F)V
    .locals 4

    .line 37
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->angle:F

    float-to-double v0, p1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->m00:F

    .line 41
    iput v0, p0, Lcom/jhlabs/image/FadeFilter;->m01:F

    neg-float v0, v0

    .line 42
    iput v0, p0, Lcom/jhlabs/image/FadeFilter;->m10:F

    .line 43
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->m11:F

    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->width:I

    .line 84
    iput p2, p0, Lcom/jhlabs/image/FadeFilter;->height:I

    .line 85
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->setDimensions(II)V

    return-void
.end method

.method public setFadeStart(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->fadeStart:F

    return-void
.end method

.method public setFadeWidth(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->fadeWidth:F

    return-void
.end method

.method public setInvert(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/jhlabs/image/FadeFilter;->invert:Z

    return-void
.end method

.method public setSides(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/FadeFilter;->sides:I

    return-void
.end method

.method public symmetry(FF)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v0, v0, p2

    .line 111
    invoke-static {p1, v0}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result p1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    sub-float/2addr v0, p1

    return v0

    :cond_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Fade..."

    return-object v0
.end method
