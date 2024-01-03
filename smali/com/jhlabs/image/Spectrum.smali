.class public Lcom/jhlabs/image/Spectrum;
.super Ljava/lang/Object;
.source "Spectrum.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(FFF)I
    .locals 5

    float-to-double v0, p0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-float p0, p0, p1

    float-to-double p0, p0

    float-to-double v2, p2

    .line 24
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static wavelengthToRGB(F)I
    .locals 10

    float-to-int v0, p0

    const/16 v1, 0x30c

    const/16 v2, 0x17c

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x0

    goto :goto_3

    :cond_1
    const/16 v5, 0x1b8

    const/high16 v6, 0x43dc0000    # 440.0f

    if-ge v0, v5, :cond_2

    sub-float v5, p0, v6

    neg-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    :goto_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_2
    const/16 v5, 0x1ea

    if-ge v0, v5, :cond_3

    sub-float v5, p0, v6

    const/high16 v6, 0x42480000    # 50.0f

    div-float/2addr v5, v6

    move v6, v5

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    const/16 v5, 0x1fe

    const/high16 v6, 0x43ff0000    # 510.0f

    if-ge v0, v5, :cond_4

    sub-float v5, p0, v6

    neg-float v5, v5

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    move v7, v5

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/16 v5, 0x244

    if-ge v0, v5, :cond_5

    sub-float v5, p0, v6

    const/high16 v6, 0x428c0000    # 70.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/16 v5, 0x285

    if-ge v0, v5, :cond_6

    const v5, 0x44214000    # 645.0f

    sub-float v5, p0, v5

    neg-float v5, v5

    const/high16 v6, 0x42820000    # 65.0f

    div-float/2addr v5, v6

    move v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_6
    if-gt v0, v1, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :goto_3
    const v8, 0x3f333333    # 0.7f

    const v9, 0x3e99999a    # 0.3f

    if-gt v2, v0, :cond_7

    const/16 v2, 0x1a3

    if-gt v0, v2, :cond_7

    const/high16 v0, 0x43be0000    # 380.0f

    sub-float/2addr p0, v0

    mul-float p0, p0, v8

    const/high16 v0, 0x42200000    # 40.0f

    div-float/2addr p0, v0

    add-float v3, p0, v9

    goto :goto_4

    :cond_7
    const/16 v2, 0x1a4

    if-gt v2, v0, :cond_8

    const/16 v2, 0x2bc

    if-gt v0, v2, :cond_8

    goto :goto_4

    :cond_8
    const/16 v2, 0x2bd

    if-gt v2, v0, :cond_9

    if-gt v0, v1, :cond_9

    const/high16 v0, 0x44430000    # 780.0f

    sub-float/2addr v0, p0

    mul-float v0, v0, v8

    const/high16 p0, 0x42a00000    # 80.0f

    div-float/2addr v0, p0

    add-float v3, v0, v9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    const p0, 0x3f4ccccd    # 0.8f

    .line 79
    invoke-static {v5, v3, p0}, Lcom/jhlabs/image/Spectrum;->adjust(FFF)I

    move-result v0

    .line 80
    invoke-static {v6, v3, p0}, Lcom/jhlabs/image/Spectrum;->adjust(FFF)I

    move-result v1

    .line 81
    invoke-static {v7, v3, p0}, Lcom/jhlabs/image/Spectrum;->adjust(FFF)I

    move-result p0

    const/high16 v2, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method
