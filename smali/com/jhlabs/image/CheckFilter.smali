.class public Lcom/jhlabs/image/CheckFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "CheckFilter.java"


# instance fields
.field private angle:F

.field private background:I

.field private foreground:I

.field private fuzziness:I

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field private operation:I

.field private xScale:I

.field private yScale:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/16 v0, 0x8

    .line 27
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->xScale:I

    .line 28
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->yScale:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->foreground:I

    const/high16 v0, -0x1000000

    .line 30
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->background:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->fuzziness:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->angle:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    iput v1, p0, Lcom/jhlabs/image/CheckFilter;->m00:F

    .line 35
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->m01:F

    .line 36
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->m10:F

    .line 37
    iput v1, p0, Lcom/jhlabs/image/CheckFilter;->m11:F

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 4

    .line 105
    iget p3, p0, Lcom/jhlabs/image/CheckFilter;->m00:F

    int-to-float p1, p1

    mul-float p3, p3, p1

    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->m01:F

    int-to-float p2, p2

    mul-float v0, v0, p2

    add-float/2addr p3, v0

    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->xScale:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 106
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->m10:F

    mul-float v0, v0, p1

    iget p1, p0, Lcom/jhlabs/image/CheckFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v0, p1

    iget p1, p0, Lcom/jhlabs/image/CheckFilter;->yScale:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x47c35000    # 100000.0f

    add-float p2, p3, p1

    float-to-int p2, p2

    .line 107
    rem-int/lit8 p2, p2, 0x2

    add-float/2addr p1, v0

    float-to-int p1, p1

    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    iget p2, p0, Lcom/jhlabs/image/CheckFilter;->fuzziness:I

    if-eqz p2, :cond_1

    int-to-float p2, p2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p2, v3

    sub-float v3, v2, p2

    .line 110
    invoke-static {p3, v2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result p3

    invoke-static {v1, p2, v3, v2, p3}, Lcom/jhlabs/image/ImageMath;->smoothPulse(FFFFF)F

    move-result p3

    .line 111
    invoke-static {v0, v2}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v0

    invoke-static {v1, p2, v3, v2, v0}, Lcom/jhlabs/image/ImageMath;->smoothPulse(FFFFF)F

    move-result p2

    mul-float p3, p3, p2

    mul-float p1, p1, p3

    .line 114
    :cond_1
    iget p2, p0, Lcom/jhlabs/image/CheckFilter;->foreground:I

    iget p3, p0, Lcom/jhlabs/image/CheckFilter;->background:I

    invoke-static {p1, p2, p3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public getAngle()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->angle:F

    return v0
.end method

.method public getBackground()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->background:I

    return v0
.end method

.method public getForeground()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->foreground:I

    return v0
.end method

.method public getFuzziness()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->fuzziness:I

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->operation:I

    return v0
.end method

.method public getXScale()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->xScale:I

    return v0
.end method

.method public getYScale()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/CheckFilter;->yScale:I

    return v0
.end method

.method public setAngle(F)V
    .locals 4

    .line 91
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->angle:F

    float-to-double v0, p1

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 94
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->m00:F

    .line 95
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->m01:F

    neg-float v0, v0

    .line 96
    iput v0, p0, Lcom/jhlabs/image/CheckFilter;->m10:F

    .line 97
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->m11:F

    return-void
.end method

.method public setBackground(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->background:I

    return-void
.end method

.method public setForeground(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->foreground:I

    return-void
.end method

.method public setFuzziness(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->fuzziness:I

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->operation:I

    return-void
.end method

.method public setXScale(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->xScale:I

    return-void
.end method

.method public setYScale(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/CheckFilter;->yScale:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Checkerboard..."

    return-object v0
.end method
