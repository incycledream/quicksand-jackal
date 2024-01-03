.class public Lcom/jhlabs/image/MarbleTexFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "MarbleTexFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private angle:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field private scale:F

.field private stretch:F

.field private turbulence:F

.field private turbulenceFactor:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->stretch:F

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/jhlabs/image/MarbleTexFilter;->angle:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulence:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    iput v2, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    .line 31
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->m00:F

    .line 32
    iput v1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m01:F

    .line 33
    iput v1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m10:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->m11:F

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 11

    .line 94
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 96
    iget p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->scale:F

    iget p2, p0, Lcom/jhlabs/image/MarbleTexFilter;->stretch:F

    mul-float p2, p2, p1

    div-float/2addr v0, p2

    div-float/2addr v1, p1

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    .line 100
    iget-object p2, p0, Lcom/jhlabs/image/MarbleTexFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    if-eqz p2, :cond_0

    .line 104
    iget p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    iget p2, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulence:F

    invoke-static {v0, v1, p2}, Lcom/jhlabs/math/Noise;->turbulence2(FFF)F

    move-result p2

    mul-float p1, p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    .line 106
    iget p3, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    mul-float p3, p3, p2

    mul-float p3, p3, p1

    add-float/2addr p3, v1

    float-to-double p2, p3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 107
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    float-to-double v0, p1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double p2, p2

    const-wide v0, 0x3fc999999999999aL    # 0.2

    float-to-double v2, p1

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p2, v2

    double-to-float p1, p2

    .line 110
    iget-object p2, p0, Lcom/jhlabs/image/MarbleTexFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-interface {p2, p1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p1

    return p1

    .line 117
    :cond_0
    iget p2, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    iget v4, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulence:F

    invoke-static {v0, v1, v4}, Lcom/jhlabs/math/Noise;->turbulence2(FFF)F

    move-result v4

    mul-float p2, p2, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    float-to-double v6, p2

    .line 118
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    const/high16 p2, 0x40e00000    # 7.0f

    mul-float v0, v0, p2

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v8

    add-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 120
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 122
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 123
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float v1, v1, v0

    const v2, 0x3e99999a    # 0.3f

    add-float/2addr v1, v2

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v0

    const v3, 0x3f4ccccd    # 0.8f

    add-float/2addr v2, v3

    const v3, 0x3e19999a    # 0.15f

    mul-float v0, v0, v3

    const v3, 0x3f59999a    # 0.85f

    add-float/2addr v0, v3

    .line 128
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L    # 0.3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    float-to-double v7, p2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 129
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v7, v9

    mul-double v7, v7, v5

    const-wide v5, 0x3fe3333333333333L    # 0.6

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float p2, v9

    mul-float p2, p2, v1

    .line 130
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float v1, v1, v2

    mul-float v4, v4, p2

    const v2, 0x3eb33333    # 0.35f

    mul-float v2, v2, v1

    add-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    mul-float v4, v4, v3

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float v6, v6, p2

    add-float/2addr v6, v2

    mul-float v6, v6, v5

    mul-float v6, v6, v3

    .line 134
    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    mul-float p2, p2, v0

    mul-float v3, v3, p2

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    int-to-float p2, p2

    mul-float p2, p2, v4

    float-to-int p2, p2

    .line 138
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 139
    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    int-to-float p3, p3

    mul-float p3, p3, v6

    float-to-int p3, p3

    .line 140
    invoke-static {p3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method public getAngle()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->angle:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->stretch:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 74
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulence:F

    return v0
.end method

.method public getTurbulenceFactor()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    return v0
.end method

.method public setAngle(F)V
    .locals 4

    .line 56
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->angle:F

    float-to-double v0, p1

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m00:F

    .line 60
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->m01:F

    neg-float v0, v0

    .line 61
    iput v0, p0, Lcom/jhlabs/image/MarbleTexFilter;->m10:F

    .line 62
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->m11:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->stretch:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulence:F

    return-void
.end method

.method public setTurbulenceFactor(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jhlabs/image/MarbleTexFilter;->turbulenceFactor:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Marble Texture..."

    return-object v0
.end method
