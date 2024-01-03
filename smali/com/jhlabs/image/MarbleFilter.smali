.class public Lcom/jhlabs/image/MarbleFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "MarbleFilter.java"


# instance fields
.field public amount:F

.field public cosTable:[F

.field public sinTable:[F

.field public turbulence:F

.field public xScale:F

.field public yScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/MarbleFilter;->xScale:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/MarbleFilter;->yScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/MarbleFilter;->amount:F

    .line 32
    iput v0, p0, Lcom/jhlabs/image/MarbleFilter;->turbulence:F

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/MarbleFilter;->setEdgeAction(I)V

    return-void
.end method

.method private displacementMap(II)I
    .locals 1

    int-to-float p1, p1

    .line 81
    iget v0, p0, Lcom/jhlabs/image/MarbleFilter;->xScale:F

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    const/high16 p2, 0x42fe0000    # 127.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    return p1
.end method

.method private initialize()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 71
    iput-object v1, p0, Lcom/jhlabs/image/MarbleFilter;->sinTable:[F

    new-array v1, v0, [F

    .line 72
    iput-object v1, p0, Lcom/jhlabs/image/MarbleFilter;->cosTable:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const v2, 0x40c90fdb

    int-to-float v3, v1

    mul-float v3, v3, v2

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v3, v2

    .line 74
    iget v2, p0, Lcom/jhlabs/image/MarbleFilter;->turbulence:F

    mul-float v3, v3, v2

    .line 75
    iget-object v2, p0, Lcom/jhlabs/image/MarbleFilter;->sinTable:[F

    iget v4, p0, Lcom/jhlabs/image/MarbleFilter;->yScale:F

    neg-float v4, v4

    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-float v3, v4

    aput v3, v2, v1

    .line 76
    iget-object v2, p0, Lcom/jhlabs/image/MarbleFilter;->cosTable:[F

    iget v3, p0, Lcom/jhlabs/image/MarbleFilter;->yScale:F

    float-to-double v3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/jhlabs/image/MarbleFilter;->initialize()V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/jhlabs/image/MarbleFilter;->amount:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/jhlabs/image/MarbleFilter;->turbulence:F

    return v0
.end method

.method public getXScale()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/jhlabs/image/MarbleFilter;->xScale:F

    return v0
.end method

.method public getYScale()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/image/MarbleFilter;->yScale:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/jhlabs/image/MarbleFilter;->amount:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/jhlabs/image/MarbleFilter;->turbulence:F

    return-void
.end method

.method public setXScale(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jhlabs/image/MarbleFilter;->xScale:F

    return-void
.end method

.method public setYScale(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/jhlabs/image/MarbleFilter;->yScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Marble..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 2

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/jhlabs/image/MarbleFilter;->displacementMap(II)I

    move-result v0

    int-to-float p1, p1

    .line 86
    iget-object v1, p0, Lcom/jhlabs/image/MarbleFilter;->sinTable:[F

    aget v1, v1, v0

    add-float/2addr p1, v1

    const/4 v1, 0x0

    aput p1, p3, v1

    int-to-float p1, p2

    .line 87
    iget-object p2, p0, Lcom/jhlabs/image/MarbleFilter;->cosTable:[F

    aget p2, p2, v0

    add-float/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method
