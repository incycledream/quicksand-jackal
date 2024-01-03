.class public Lcom/jhlabs/image/DissolveFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "DissolveFilter.java"


# instance fields
.field private density:F

.field private maxDensity:F

.field private minDensity:F

.field private randomNumbers:Ljava/util/Random;

.field private softness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/DissolveFilter;->density:F

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/DissolveFilter;->softness:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 60
    iget v0, p0, Lcom/jhlabs/image/DissolveFilter;->density:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/jhlabs/image/DissolveFilter;->softness:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    sub-float v1, v0, v2

    .line 61
    iput v1, p0, Lcom/jhlabs/image/DissolveFilter;->minDensity:F

    .line 62
    iput v0, p0, Lcom/jhlabs/image/DissolveFilter;->maxDensity:F

    .line 63
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/jhlabs/image/DissolveFilter;->randomNumbers:Ljava/util/Random;

    .line 64
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public filterRGB(III)I
    .locals 2

    shr-int/lit8 p1, p3, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 69
    iget-object p2, p0, Lcom/jhlabs/image/DissolveFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextFloat()F

    move-result p2

    .line 70
    iget v0, p0, Lcom/jhlabs/image/DissolveFilter;->minDensity:F

    iget v1, p0, Lcom/jhlabs/image/DissolveFilter;->maxDensity:F

    invoke-static {v0, v1, p2}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p2

    int-to-float p1, p1

    mul-float p1, p1, p2

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    const p2, 0xffffff

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getDensity()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/DissolveFilter;->density:F

    return v0
.end method

.method public getSoftness()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/DissolveFilter;->softness:F

    return v0
.end method

.method public setDensity(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/DissolveFilter;->density:F

    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/DissolveFilter;->softness:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Dissolve..."

    return-object v0
.end method
