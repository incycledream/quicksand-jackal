.class public Lcom/jhlabs/image/SparkleFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "SparkleFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x177ca8b39f6baf52L


# instance fields
.field private amount:I

.field private centreX:I

.field private centreY:I

.field private color:I

.field private height:I

.field private radius:I

.field private randomNumbers:Ljava/util/Random;

.field private randomness:I

.field private rayLengths:[F

.field private rays:I

.field private seed:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/16 v0, 0x32

    .line 26
    iput v0, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    const/16 v1, 0x19

    .line 27
    iput v1, p0, Lcom/jhlabs/image/SparkleFilter;->radius:I

    .line 28
    iput v0, p0, Lcom/jhlabs/image/SparkleFilter;->amount:I

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/jhlabs/image/SparkleFilter;->color:I

    .line 30
    iput v1, p0, Lcom/jhlabs/image/SparkleFilter;->randomness:I

    const-wide/16 v0, 0x173

    .line 33
    iput-wide v0, p0, Lcom/jhlabs/image/SparkleFilter;->seed:J

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/SparkleFilter;->randomNumbers:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 8

    .line 93
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->centreX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 94
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->centreY:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v1, p2

    float-to-double p1, p1

    .line 96
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x40490fdb    # (float)Math.PI

    add-float/2addr p1, p2

    const p2, 0x40c90fdb

    div-float/2addr p1, p2

    .line 97
    iget p2, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    int-to-float v1, p2

    mul-float p1, p1, v1

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    .line 101
    iget v2, p0, Lcom/jhlabs/image/SparkleFilter;->radius:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/jhlabs/image/SparkleFilter;->rayLengths:[F

    rem-int v4, v1, p2

    aget v4, v2, v4

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, p2

    aget p2, v2, v1

    invoke-static {p1, v4, p2}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result p2

    mul-float p2, p2, p2

    const v1, 0x38d1b717    # 1.0E-4f

    add-float/2addr v0, v1

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 104
    iget p2, p0, Lcom/jhlabs/image/SparkleFilter;->amount:I

    rsub-int/lit8 p2, p2, 0x64

    int-to-double v4, p2

    const-wide/high16 v6, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    mul-float p1, p1, p1

    sub-float p1, v3, p1

    mul-float p1, p1, p2

    :cond_0
    const/4 p2, 0x0

    .line 110
    invoke-static {p1, p2, v3}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    .line 111
    iget p2, p0, Lcom/jhlabs/image/SparkleFilter;->color:I

    invoke-static {p1, p3, p2}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public getAmount()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->amount:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->color:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->radius:I

    return v0
.end method

.method public getRandomness()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->randomness:I

    return v0
.end method

.method public getRays()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->amount:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->color:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 5

    .line 81
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->width:I

    .line 82
    iput p2, p0, Lcom/jhlabs/image/SparkleFilter;->height:I

    .line 83
    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/jhlabs/image/SparkleFilter;->centreX:I

    .line 84
    div-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/jhlabs/image/SparkleFilter;->centreY:I

    .line 85
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->setDimensions(II)V

    .line 86
    iget-object p1, p0, Lcom/jhlabs/image/SparkleFilter;->randomNumbers:Ljava/util/Random;

    iget-wide v0, p0, Lcom/jhlabs/image/SparkleFilter;->seed:J

    invoke-virtual {p1, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 87
    iget p1, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/jhlabs/image/SparkleFilter;->rayLengths:[F

    const/4 p1, 0x0

    .line 88
    :goto_0
    iget p2, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    if-ge p1, p2, :cond_0

    .line 89
    iget-object p2, p0, Lcom/jhlabs/image/SparkleFilter;->rayLengths:[F

    iget v0, p0, Lcom/jhlabs/image/SparkleFilter;->radius:I

    int-to-float v1, v0

    iget v2, p0, Lcom/jhlabs/image/SparkleFilter;->randomness:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float v2, v2, v0

    iget-object v0, p0, Lcom/jhlabs/image/SparkleFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v3

    double-to-float v0, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->radius:I

    return-void
.end method

.method public setRandomness(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->randomness:I

    return-void
.end method

.method public setRays(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/jhlabs/image/SparkleFilter;->rays:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Sparkle..."

    return-object v0
.end method
