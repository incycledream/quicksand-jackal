.class public Lcom/jhlabs/image/TextureFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "TextureFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x689d88e391c16b80L


# instance fields
.field public amount:F

.field private angle:F

.field public bias:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private function:Lcom/jhlabs/math/Function2D;

.field public gain:F

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field public operation:I

.field private scale:F

.field private stretch:F

.field public turbulence:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->stretch:F

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/jhlabs/image/TextureFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->amount:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->turbulence:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 31
    iput v2, p0, Lcom/jhlabs/image/TextureFilter;->gain:F

    .line 32
    iput v2, p0, Lcom/jhlabs/image/TextureFilter;->bias:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->m00:F

    .line 35
    iput v1, p0, Lcom/jhlabs/image/TextureFilter;->m01:F

    .line 36
    iput v1, p0, Lcom/jhlabs/image/TextureFilter;->m10:F

    .line 37
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->m11:F

    .line 38
    new-instance v0, Lcom/jhlabs/image/Gradient;

    invoke-direct {v0}, Lcom/jhlabs/image/Gradient;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/TextureFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 39
    new-instance v0, Lcom/jhlabs/math/Noise;

    invoke-direct {v0}, Lcom/jhlabs/math/Noise;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/TextureFilter;->function:Lcom/jhlabs/math/Function2D;

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 6

    .line 115
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/TextureFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 116
    iget v1, p0, Lcom/jhlabs/image/TextureFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/TextureFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 117
    iget p1, p0, Lcom/jhlabs/image/TextureFilter;->scale:F

    div-float/2addr v0, p1

    .line 118
    iget p2, p0, Lcom/jhlabs/image/TextureFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v1, p1

    .line 119
    iget p1, p0, Lcom/jhlabs/image/TextureFilter;->turbulence:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v2, v4

    if-nez p2, :cond_0

    invoke-static {v0, v1}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1, p1}, Lcom/jhlabs/math/Noise;->turbulence2(FFF)F

    move-result p1

    :goto_0
    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    add-float/2addr p1, p2

    .line 121
    iget p2, p0, Lcom/jhlabs/image/TextureFilter;->gain:F

    invoke-static {p1, p2}, Lcom/jhlabs/image/ImageMath;->gain(FF)F

    move-result p1

    .line 122
    iget p2, p0, Lcom/jhlabs/image/TextureFilter;->bias:F

    invoke-static {p1, p2}, Lcom/jhlabs/image/ImageMath;->bias(FF)F

    move-result p1

    .line 123
    iget p2, p0, Lcom/jhlabs/image/TextureFilter;->amount:F

    mul-float p1, p1, p2

    const/high16 p2, -0x1000000

    and-int/2addr p2, p3

    .line 126
    iget-object v0, p0, Lcom/jhlabs/image/TextureFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0, p1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 129
    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr p2, v0

    or-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 135
    :goto_1
    iget p2, p0, Lcom/jhlabs/image/TextureFilter;->operation:I

    if-eqz p2, :cond_2

    .line 136
    invoke-static {p3, p1, p2}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result p1

    :cond_2
    return p1
.end method

.method public getAmount()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->angle:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/jhlabs/image/TextureFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/jhlabs/image/TextureFilter;->function:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getOperation()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->operation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->stretch:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 103
    iget v0, p0, Lcom/jhlabs/image/TextureFilter;->turbulence:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 4

    .line 85
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->angle:F

    float-to-double v0, p1

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 88
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->m00:F

    .line 89
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->m01:F

    neg-float v0, v0

    .line 90
    iput v0, p0, Lcom/jhlabs/image/TextureFilter;->m10:F

    .line 91
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->m11:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/jhlabs/image/TextureFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/jhlabs/image/TextureFilter;->function:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->operation:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->stretch:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/jhlabs/image/TextureFilter;->turbulence:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Noise..."

    return-object v0
.end method
