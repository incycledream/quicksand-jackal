.class public Lcom/jhlabs/image/SwimFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "SwimFilter.java"


# instance fields
.field private amount:F

.field private angle:F

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field private scale:F

.field private stretch:F

.field private time:F

.field private turbulence:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->stretch:F

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/jhlabs/image/SwimFilter;->angle:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->turbulence:F

    .line 30
    iput v1, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    .line 31
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->m00:F

    .line 32
    iput v1, p0, Lcom/jhlabs/image/SwimFilter;->m01:F

    .line 33
    iput v1, p0, Lcom/jhlabs/image/SwimFilter;->m10:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->m11:F

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->angle:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->stretch:F

    return v0
.end method

.method public getTime()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->turbulence:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 4

    .line 64
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->angle:F

    float-to-double v0, p1

    .line 65
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->m00:F

    .line 68
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->m01:F

    neg-float v0, v0

    .line 69
    iput v0, p0, Lcom/jhlabs/image/SwimFilter;->m10:F

    .line 70
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->m11:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->stretch:F

    return-void
.end method

.method public setTime(F)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jhlabs/image/SwimFilter;->turbulence:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Swim..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 9

    .line 94
    iget v0, p0, Lcom/jhlabs/image/SwimFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/SwimFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/jhlabs/image/SwimFilter;->m10:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->m11:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 96
    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->scale:F

    div-float/2addr v0, v2

    .line 97
    iget v3, p0, Lcom/jhlabs/image/SwimFilter;->stretch:F

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    .line 99
    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->turbulence:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v2, v6

    if-nez v6, :cond_0

    .line 100
    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    add-float v6, v0, v5

    iget v7, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    invoke-static {v6, v1, v7}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result v6

    mul-float v2, v2, v6

    add-float/2addr p1, v2

    aput p1, p3, v4

    .line 101
    iget p1, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    add-float/2addr v1, v5

    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    invoke-static {v0, v1, v2}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    aput p2, p3, v3

    goto :goto_0

    .line 103
    :cond_0
    iget v6, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    add-float v7, v0, v5

    iget v8, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    invoke-static {v7, v1, v2, v8}, Lcom/jhlabs/math/Noise;->turbulence3(FFFF)F

    move-result v2

    mul-float v6, v6, v2

    add-float/2addr p1, v6

    aput p1, p3, v4

    .line 104
    iget p1, p0, Lcom/jhlabs/image/SwimFilter;->amount:F

    add-float/2addr v1, v5

    iget v2, p0, Lcom/jhlabs/image/SwimFilter;->turbulence:F

    iget v4, p0, Lcom/jhlabs/image/SwimFilter;->time:F

    invoke-static {v0, v1, v2, v4}, Lcom/jhlabs/math/Noise;->turbulence3(FFFF)F

    move-result v0

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    aput p2, p3, v3

    :goto_0
    return-void
.end method
