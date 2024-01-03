.class public Lcom/jhlabs/image/GammaFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "GammaFilter.java"


# instance fields
.field private bGamma:F

.field private gGamma:F

.field private rGamma:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    invoke-direct {p0, v0}, Lcom/jhlabs/image/GammaFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p1, p1}, Lcom/jhlabs/image/GammaFilter;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/jhlabs/image/GammaFilter;->setGamma(FFF)V

    return-void
.end method


# virtual methods
.method public getGamma()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/GammaFilter;->rGamma:F

    return v0
.end method

.method protected initialize()V
    .locals 2

    .line 57
    iget v0, p0, Lcom/jhlabs/image/GammaFilter;->rGamma:F

    invoke-virtual {p0, v0}, Lcom/jhlabs/image/GammaFilter;->makeTable(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->rTable:[I

    .line 59
    iget v0, p0, Lcom/jhlabs/image/GammaFilter;->gGamma:F

    iget v1, p0, Lcom/jhlabs/image/GammaFilter;->rGamma:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/jhlabs/image/GammaFilter;->rTable:[I

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->gTable:[I

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/GammaFilter;->makeTable(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->gTable:[I

    .line 64
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/GammaFilter;->bGamma:F

    iget v1, p0, Lcom/jhlabs/image/GammaFilter;->rGamma:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/jhlabs/image/GammaFilter;->rTable:[I

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->bTable:[I

    goto :goto_1

    .line 66
    :cond_1
    iget v1, p0, Lcom/jhlabs/image/GammaFilter;->gGamma:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 67
    iget-object v0, p0, Lcom/jhlabs/image/GammaFilter;->gTable:[I

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->bTable:[I

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/GammaFilter;->makeTable(F)[I

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/GammaFilter;->bTable:[I

    :goto_1
    return-void
.end method

.method protected makeTable(F)[I
    .locals 11

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-double v3, v2

    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    float-to-double v9, p1

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v3, v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v3, v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_0

    const/16 v3, 0xff

    .line 78
    :cond_0
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public setGamma(F)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p1, p1}, Lcom/jhlabs/image/GammaFilter;->setGamma(FFF)V

    return-void
.end method

.method public setGamma(FFF)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/GammaFilter;->rGamma:F

    .line 43
    iput p2, p0, Lcom/jhlabs/image/GammaFilter;->gGamma:F

    .line 44
    iput p3, p0, Lcom/jhlabs/image/GammaFilter;->bGamma:F

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/jhlabs/image/GammaFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Gamma..."

    return-object v0
.end method
