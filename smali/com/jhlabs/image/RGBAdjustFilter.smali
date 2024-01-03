.class public Lcom/jhlabs/image/RGBAdjustFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "RGBAdjustFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bFactor:F

.field public gFactor:F

.field public rFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0, v0}, Lcom/jhlabs/image/RGBAdjustFilter;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 31
    iput p1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->rFactor:F

    add-float/2addr p2, v0

    .line 32
    iput p2, p0, Lcom/jhlabs/image/RGBAdjustFilter;->gFactor:F

    add-float/2addr p3, v0

    .line 33
    iput p3, p0, Lcom/jhlabs/image/RGBAdjustFilter;->bFactor:F

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    int-to-float p2, p2

    .line 74
    iget v1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->rFactor:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    int-to-float v0, v0

    .line 75
    iget v1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->gFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    int-to-float p3, p3

    .line 76
    iget v1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->bFactor:F

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method public getBFactor()F
    .locals 2

    .line 58
    iget v0, p0, Lcom/jhlabs/image/RGBAdjustFilter;->bFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getGFactor()F
    .locals 2

    .line 50
    iget v0, p0, Lcom/jhlabs/image/RGBAdjustFilter;->gFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLUT()[I
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 64
    invoke-virtual {p0, v2, v2, v4}, Lcom/jhlabs/image/RGBAdjustFilter;->filterRGB(III)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRFactor()F
    .locals 2

    .line 42
    iget v0, p0, Lcom/jhlabs/image/RGBAdjustFilter;->rFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public setBFactor(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 54
    iput p1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->bFactor:F

    return-void
.end method

.method public setGFactor(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 46
    iput p1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->gFactor:F

    return-void
.end method

.method public setRFactor(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 38
    iput p1, p0, Lcom/jhlabs/image/RGBAdjustFilter;->rFactor:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Adjust RGB..."

    return-object v0
.end method
