.class public Lcom/jhlabs/image/HSBAdjustFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "HSBAdjustFilter.java"


# instance fields
.field public bFactor:F

.field public hFactor:F

.field private hsb:[F

.field public sFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lcom/jhlabs/image/HSBAdjustFilter;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 25
    iput-object v0, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    .line 32
    iput p1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hFactor:F

    .line 33
    iput p2, p0, Lcom/jhlabs/image/HSBAdjustFilter;->sFactor:F

    .line 34
    iput p3, p0, Lcom/jhlabs/image/HSBAdjustFilter;->bFactor:F

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 8

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 67
    iget-object v1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    invoke-static {p2, v0, p3, v1}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 68
    iget-object p2, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    const/4 p3, 0x0

    aget v0, p2, p3

    iget v1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hFactor:F

    add-float/2addr v0, v1

    aput v0, p2, p3

    .line 69
    :goto_0
    iget-object p2, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    aget v0, p2, p3

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 70
    aget v0, p2, p3

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    aput v0, p2, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 71
    aget v2, p2, v0

    iget v3, p0, Lcom/jhlabs/image/HSBAdjustFilter;->sFactor:F

    add-float/2addr v2, v3

    aput v2, p2, v0

    .line 72
    aget v2, p2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_1

    .line 73
    aput v1, p2, v0

    goto :goto_1

    .line 74
    :cond_1
    aget v2, p2, v0

    float-to-double v6, v2

    cmpl-double v2, v6, v4

    if-lez v2, :cond_2

    .line 75
    aput v3, p2, v0

    .line 76
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    const/4 v2, 0x2

    aget v6, p2, v2

    iget v7, p0, Lcom/jhlabs/image/HSBAdjustFilter;->bFactor:F

    add-float/2addr v6, v7

    aput v6, p2, v2

    .line 77
    aget v6, p2, v2

    cmpg-float v6, v6, v1

    if-gez v6, :cond_3

    .line 78
    aput v1, p2, v2

    goto :goto_2

    .line 79
    :cond_3
    aget v1, p2, v2

    float-to-double v6, v1

    cmpl-double v1, v6, v4

    if-lez v1, :cond_4

    .line 80
    aput v3, p2, v2

    .line 81
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hsb:[F

    aget p3, p2, p3

    aget v0, p2, v0

    aget p2, p2, v2

    invoke-static {p3, v0, p2}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getBFactor()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/jhlabs/image/HSBAdjustFilter;->bFactor:F

    return v0
.end method

.method public getHFactor()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hFactor:F

    return v0
.end method

.method public getSFactor()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/image/HSBAdjustFilter;->sFactor:F

    return v0
.end method

.method public setBFactor(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->bFactor:F

    return-void
.end method

.method public setHFactor(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->hFactor:F

    return-void
.end method

.method public setSFactor(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/jhlabs/image/HSBAdjustFilter;->sFactor:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Adjust HSB..."

    return-object v0
.end method
