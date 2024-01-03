.class public Lcom/jhlabs/image/WoodFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "WoodFilter.java"


# instance fields
.field private angle:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field public fibres:F

.field private function:Lcom/jhlabs/math/Function2D;

.field public gain:F

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field public rings:F

.field private scale:F

.field private stretch:F

.field public turbulence:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x43480000    # 200.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->scale:F

    const/high16 v0, 0x41200000    # 10.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->stretch:F

    const v0, 0x3fc90fdb

    .line 26
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->angle:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->rings:F

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/jhlabs/image/WoodFilter;->turbulence:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->fibres:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->gain:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->m00:F

    .line 32
    iput v1, p0, Lcom/jhlabs/image/WoodFilter;->m01:F

    .line 33
    iput v1, p0, Lcom/jhlabs/image/WoodFilter;->m10:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->m11:F

    .line 35
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    const v1, -0x1a3b6c

    const v2, -0x6784af

    invoke-direct {v0, v1, v2}, Lcom/jhlabs/image/LinearColormap;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/WoodFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 36
    new-instance v0, Lcom/jhlabs/math/Noise;

    invoke-direct {v0}, Lcom/jhlabs/math/Noise;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/WoodFilter;->function:Lcom/jhlabs/math/Function2D;

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 4

    .line 120
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/WoodFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 121
    iget v1, p0, Lcom/jhlabs/image/WoodFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/WoodFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 122
    iget p1, p0, Lcom/jhlabs/image/WoodFilter;->scale:F

    div-float/2addr v0, p1

    .line 123
    iget p2, p0, Lcom/jhlabs/image/WoodFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v1, p1

    .line 124
    invoke-static {v0, v1}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    .line 125
    iget p2, p0, Lcom/jhlabs/image/WoodFilter;->turbulence:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float p2, p2, v2

    const v2, 0x3d4ccccd    # 0.05f

    mul-float v2, v2, v0

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v3, v3, v1

    invoke-static {v2, v3}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v2

    mul-float p2, p2, v2

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    add-float/2addr p1, p2

    .line 128
    iget p2, p0, Lcom/jhlabs/image/WoodFilter;->rings:F

    const/high16 v2, 0x42480000    # 50.0f

    mul-float p2, p2, v2

    mul-float p1, p1, p2

    float-to-int p2, p1

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 130
    iget p2, p0, Lcom/jhlabs/image/WoodFilter;->gain:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v3, p1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p2

    sub-float/2addr v3, p2

    mul-float p1, p1, v3

    .line 132
    iget p2, p0, Lcom/jhlabs/image/WoodFilter;->fibres:F

    iget v3, p0, Lcom/jhlabs/image/WoodFilter;->scale:F

    mul-float v0, v0, v3

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p1, p2

    const/high16 p2, -0x1000000

    and-int/2addr p2, p3

    .line 136
    iget-object p3, p0, Lcom/jhlabs/image/WoodFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz p3, :cond_0

    .line 137
    invoke-interface {p3, p1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p3, 0x437f0000    # 255.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 139
    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    shl-int/lit8 p3, p1, 0x10

    shl-int/lit8 v0, p1, 0x8

    or-int/2addr p2, p3

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public getAngle()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->angle:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/jhlabs/image/WoodFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getFibres()F
    .locals 1

    .line 100
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->fibres:F

    return v0
.end method

.method public getFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jhlabs/image/WoodFilter;->function:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getGain()F
    .locals 1

    .line 108
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->gain:F

    return v0
.end method

.method public getRings()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->rings:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->stretch:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/jhlabs/image/WoodFilter;->turbulence:F

    return v0
.end method

.method public setAngle(F)V
    .locals 4

    .line 74
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->angle:F

    float-to-double v0, p1

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 77
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->m00:F

    .line 78
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->m01:F

    neg-float v0, v0

    .line 79
    iput v0, p0, Lcom/jhlabs/image/WoodFilter;->m10:F

    .line 80
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->m11:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/jhlabs/image/WoodFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setFibres(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->fibres:F

    return-void
.end method

.method public setFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jhlabs/image/WoodFilter;->function:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setRings(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->rings:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->stretch:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->turbulence:F

    return-void
.end method

.method public setgain(F)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/jhlabs/image/WoodFilter;->gain:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Wood..."

    return-object v0
.end method
