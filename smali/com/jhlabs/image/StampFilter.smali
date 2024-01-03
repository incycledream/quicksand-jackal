.class public Lcom/jhlabs/image/StampFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "StampFilter.java"


# instance fields
.field private black:I

.field private lowerThreshold3:F

.field protected radius:F

.field private softness:F

.field private threshold:F

.field private upperThreshold3:F

.field private white:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 32
    invoke-direct {p0, v0}, Lcom/jhlabs/image/StampFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/jhlabs/image/StampFilter;->softness:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/StampFilter;->radius:F

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/jhlabs/image/StampFilter;->white:I

    const/high16 v0, -0x1000000

    .line 29
    iput v0, p0, Lcom/jhlabs/image/StampFilter;->black:I

    .line 36
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/StampFilter;->setThreshold(F)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 80
    new-instance p2, Lcom/jhlabs/image/GaussianFilter;

    iget v0, p0, Lcom/jhlabs/image/StampFilter;->radius:F

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {p2, v0}, Lcom/jhlabs/image/GaussianFilter;-><init>(F)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/jhlabs/image/GaussianFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 81
    iget p2, p0, Lcom/jhlabs/image/StampFilter;->threshold:F

    iget v0, p0, Lcom/jhlabs/image/StampFilter;->softness:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v0, v1

    sub-float v2, p2, v2

    const v3, 0x443f4000    # 765.0f

    mul-float v2, v2, v3

    iput v2, p0, Lcom/jhlabs/image/StampFilter;->lowerThreshold3:F

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    mul-float p2, p2, v3

    .line 82
    iput p2, p0, Lcom/jhlabs/image/StampFilter;->upperThreshold3:F

    .line 83
    invoke-super {p0, p1, p1}, Lcom/jhlabs/image/PointFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public filterRGB(III)I
    .locals 0

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 92
    iget p2, p0, Lcom/jhlabs/image/StampFilter;->lowerThreshold3:F

    iget p3, p0, Lcom/jhlabs/image/StampFilter;->upperThreshold3:F

    int-to-float p1, p1

    invoke-static {p2, p3, p1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p1

    .line 93
    iget p2, p0, Lcom/jhlabs/image/StampFilter;->black:I

    iget p3, p0, Lcom/jhlabs/image/StampFilter;->white:I

    invoke-static {p1, p2, p3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public getBlack()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/jhlabs/image/StampFilter;->black:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/StampFilter;->radius:F

    return v0
.end method

.method public getSoftness()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/jhlabs/image/StampFilter;->softness:F

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/StampFilter;->threshold:F

    return v0
.end method

.method public getWhite()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/jhlabs/image/StampFilter;->white:I

    return v0
.end method

.method public setBlack(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/jhlabs/image/StampFilter;->black:I

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/StampFilter;->radius:F

    return-void
.end method

.method public setSoftness(F)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/jhlabs/image/StampFilter;->softness:F

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/StampFilter;->threshold:F

    return-void
.end method

.method public setWhite(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/jhlabs/image/StampFilter;->white:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Stamp..."

    return-object v0
.end method
