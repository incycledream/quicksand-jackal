.class public Lcom/jhlabs/image/NoiseFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "NoiseFilter.java"


# static fields
.field public static final GAUSSIAN:I = 0x0

.field public static final UNIFORM:I = 0x1


# instance fields
.field private amount:I

.field private density:F

.field private distribution:I

.field private monochrome:Z

.field private randomNumbers:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/16 v0, 0x19

    .line 30
    iput v0, p0, Lcom/jhlabs/image/NoiseFilter;->amount:I

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/jhlabs/image/NoiseFilter;->distribution:I

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/jhlabs/image/NoiseFilter;->monochrome:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 33
    iput v0, p0, Lcom/jhlabs/image/NoiseFilter;->density:F

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    return-void
.end method

.method private random(I)I
    .locals 4

    .line 72
    iget v0, p0, Lcom/jhlabs/image/NoiseFilter;->distribution:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float v1, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    float-to-double v0, v1

    :goto_0
    iget v2, p0, Lcom/jhlabs/image/NoiseFilter;->amount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-le p1, v0, :cond_2

    const/16 p1, 0xff

    :cond_2
    :goto_1
    return p1
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 5

    .line 81
    iget-object p1, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget p2, p0, Lcom/jhlabs/image/NoiseFilter;->density:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 86
    iget-boolean v1, p0, Lcom/jhlabs/image/NoiseFilter;->monochrome:Z

    if-eqz v1, :cond_1

    .line 87
    iget v1, p0, Lcom/jhlabs/image/NoiseFilter;->distribution:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/jhlabs/image/NoiseFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float v2, v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    float-to-double v1, v2

    :goto_0
    iget v3, p0, Lcom/jhlabs/image/NoiseFilter;->amount:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    add-int/2addr p2, v1

    .line 88
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    add-int/2addr v0, v1

    .line 89
    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    add-int/2addr p3, v1

    .line 90
    invoke-static {p3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p3

    goto :goto_1

    .line 92
    :cond_1
    invoke-direct {p0, p2}, Lcom/jhlabs/image/NoiseFilter;->random(I)I

    move-result p2

    .line 93
    invoke-direct {p0, v0}, Lcom/jhlabs/image/NoiseFilter;->random(I)I

    move-result v0

    .line 94
    invoke-direct {p0, p3}, Lcom/jhlabs/image/NoiseFilter;->random(I)I

    move-result p3

    :goto_1
    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1

    :cond_2
    return p3
.end method

.method public getAmount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/NoiseFilter;->amount:I

    return v0
.end method

.method public getDensity()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/jhlabs/image/NoiseFilter;->density:F

    return v0
.end method

.method public getDistribution()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/NoiseFilter;->distribution:I

    return v0
.end method

.method public getMonochrome()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/jhlabs/image/NoiseFilter;->monochrome:Z

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/NoiseFilter;->amount:I

    return-void
.end method

.method public setDensity(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/jhlabs/image/NoiseFilter;->density:F

    return-void
.end method

.method public setDistribution(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/NoiseFilter;->distribution:I

    return-void
.end method

.method public setMonochrome(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/jhlabs/image/NoiseFilter;->monochrome:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Add Noise..."

    return-object v0
.end method
