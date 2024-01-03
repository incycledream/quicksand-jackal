.class public Lcom/jhlabs/image/FBMFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "FBMFilter.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CELLULAR:I = 0x4

.field public static final NOISE:I = 0x0

.field public static final RIDGED:I = 0x1

.field public static final SCNOISE:I = 0x3

.field public static final VLNOISE:I = 0x2


# instance fields
.field private H:F

.field private amount:F

.field private angle:F

.field private basis:Lcom/jhlabs/math/Function2D;

.field private basisType:I

.field private bias:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private fBm:Lcom/jhlabs/math/FBM;

.field private gain:F

.field private lacunarity:F

.field private m00:F

.field private m01:F

.field private m10:F

.field private m11:F

.field private max:F

.field private min:F

.field private octaves:F

.field private operation:I

.field protected random:Ljava/util/Random;

.field private ridged:Z

.field private scale:F

.field private stretch:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 34
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->stretch:F

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/jhlabs/image/FBMFilter;->angle:F

    .line 37
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->amount:F

    .line 38
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->H:F

    const/high16 v2, 0x40800000    # 4.0f

    .line 39
    iput v2, p0, Lcom/jhlabs/image/FBMFilter;->octaves:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 40
    iput v2, p0, Lcom/jhlabs/image/FBMFilter;->lacunarity:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 41
    iput v2, p0, Lcom/jhlabs/image/FBMFilter;->gain:F

    .line 42
    iput v2, p0, Lcom/jhlabs/image/FBMFilter;->bias:F

    .line 44
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->m00:F

    .line 45
    iput v1, p0, Lcom/jhlabs/image/FBMFilter;->m01:F

    .line 46
    iput v1, p0, Lcom/jhlabs/image/FBMFilter;->m10:F

    .line 47
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->m11:F

    .line 50
    new-instance v0, Lcom/jhlabs/image/Gradient;

    invoke-direct {v0}, Lcom/jhlabs/image/Gradient;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/FBMFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 53
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/FBMFilter;->random:Ljava/util/Random;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->basisType:I

    .line 58
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FBMFilter;->setBasisType(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 198
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->H:F

    iget v1, p0, Lcom/jhlabs/image/FBMFilter;->lacunarity:F

    iget v2, p0, Lcom/jhlabs/image/FBMFilter;->octaves:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/jhlabs/image/FBMFilter;->makeFBM(FFF)Lcom/jhlabs/math/FBM;

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/FBMFilter;->fBm:Lcom/jhlabs/math/FBM;

    .line 199
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public filterRGB(III)I
    .locals 2

    .line 203
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/FBMFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 204
    iget v1, p0, Lcom/jhlabs/image/FBMFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/FBMFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 205
    iget p1, p0, Lcom/jhlabs/image/FBMFilter;->scale:F

    div-float/2addr v0, p1

    .line 206
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v1, p1

    .line 207
    iget-object p1, p0, Lcom/jhlabs/image/FBMFilter;->fBm:Lcom/jhlabs/math/FBM;

    invoke-virtual {p1, v0, v1}, Lcom/jhlabs/math/FBM;->evaluate(FF)F

    move-result p1

    .line 209
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->min:F

    sub-float/2addr p1, p2

    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->max:F

    sub-float/2addr v0, p2

    div-float/2addr p1, v0

    .line 210
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->gain:F

    invoke-static {p1, p2}, Lcom/jhlabs/image/ImageMath;->gain(FF)F

    move-result p1

    .line 211
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->bias:F

    invoke-static {p1, p2}, Lcom/jhlabs/image/ImageMath;->bias(FF)F

    move-result p1

    .line 212
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->amount:F

    mul-float p1, p1, p2

    const/high16 p2, -0x1000000

    and-int/2addr p2, p3

    .line 215
    iget-object v0, p0, Lcom/jhlabs/image/FBMFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0, p1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 218
    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr p2, v0

    or-int/2addr p2, v1

    or-int/2addr p1, p2

    .line 224
    :goto_0
    iget p2, p0, Lcom/jhlabs/image/FBMFilter;->operation:I

    if-eqz p2, :cond_1

    .line 225
    invoke-static {p3, p1, p2}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result p1

    :cond_1
    return p1
.end method

.method public getAmount()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 104
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->angle:F

    return v0
.end method

.method public getBasis()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getBasisType()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->basisType:I

    return v0
.end method

.method public getBias()F
    .locals 1

    .line 144
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->bias:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/jhlabs/image/FBMFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getGain()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->gain:F

    return v0
.end method

.method public getH()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->H:F

    return v0
.end method

.method public getLacunarity()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->lacunarity:F

    return v0
.end method

.method public getOctaves()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->octaves:F

    return v0
.end method

.method public getOperation()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->operation:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 82
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->stretch:F

    return v0
.end method

.method protected makeFBM(FFF)Lcom/jhlabs/math/FBM;
    .locals 2

    .line 190
    new-instance v0, Lcom/jhlabs/math/FBM;

    iget-object v1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/jhlabs/math/FBM;-><init>(FFFLcom/jhlabs/math/Function2D;)V

    const/4 p1, 0x0

    .line 191
    invoke-static {v0, p1}, Lcom/jhlabs/math/Noise;->findRange(Lcom/jhlabs/math/Function2D;[F)[F

    move-result-object p1

    const/4 p2, 0x0

    .line 192
    aget p2, p1, p2

    iput p2, p0, Lcom/jhlabs/image/FBMFilter;->min:F

    const/4 p2, 0x1

    .line 193
    aget p1, p1, p2

    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->max:F

    return-object v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 2

    .line 94
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->angle:F

    .line 95
    iget p1, p0, Lcom/jhlabs/image/FBMFilter;->angle:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 96
    iget v0, p0, Lcom/jhlabs/image/FBMFilter;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 97
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->m00:F

    .line 98
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->m01:F

    neg-float v0, v0

    .line 99
    iput v0, p0, Lcom/jhlabs/image/FBMFilter;->m10:F

    .line 100
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->m11:F

    return-void
.end method

.method public setBasis(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setBasisType(I)V
    .locals 1

    .line 156
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->basisType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 160
    new-instance p1, Lcom/jhlabs/math/Noise;

    invoke-direct {p1}, Lcom/jhlabs/math/Noise;-><init>()V

    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    goto :goto_0

    .line 172
    :cond_0
    new-instance p1, Lcom/jhlabs/math/CellularFunction2D;

    invoke-direct {p1}, Lcom/jhlabs/math/CellularFunction2D;-><init>()V

    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    goto :goto_0

    .line 169
    :cond_1
    new-instance p1, Lcom/jhlabs/math/SCNoise;

    invoke-direct {p1}, Lcom/jhlabs/math/SCNoise;-><init>()V

    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    goto :goto_0

    .line 166
    :cond_2
    new-instance p1, Lcom/jhlabs/math/VLNoise;

    invoke-direct {p1}, Lcom/jhlabs/math/VLNoise;-><init>()V

    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    goto :goto_0

    .line 163
    :cond_3
    new-instance p1, Lcom/jhlabs/math/RidgedFBM;

    invoke-direct {p1}, Lcom/jhlabs/math/RidgedFBM;-><init>()V

    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->basis:Lcom/jhlabs/math/Function2D;

    :goto_0
    return-void
.end method

.method public setBias(F)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->bias:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/jhlabs/image/FBMFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setGain(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->gain:F

    return-void
.end method

.method public setH(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->H:F

    return-void
.end method

.method public setLacunarity(F)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->lacunarity:F

    return-void
.end method

.method public setOctaves(F)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->octaves:F

    return-void
.end method

.method public setOperation(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->operation:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/jhlabs/image/FBMFilter;->stretch:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Fractal Brownian Motion..."

    return-object v0
.end method
