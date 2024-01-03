.class public Lcom/jhlabs/image/EqualizeFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "EqualizeFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected lut:[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 10

    .line 33
    new-instance p4, Lcom/jhlabs/image/Histogram;

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p1

    move v3, p2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/Histogram;-><init>([IIIII)V

    .line 37
    invoke-virtual {p4}, Lcom/jhlabs/image/Histogram;->getNumSamples()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/high16 v0, 0x437f0000    # 255.0f

    .line 38
    invoke-virtual {p4}, Lcom/jhlabs/image/Histogram;->getNumSamples()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x3

    const/16 v4, 0x100

    .line 39
    filled-new-array {v3, v4}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    .line 41
    iget-object v6, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    aget-object v6, v6, v5

    invoke-virtual {p4, v5, v2}, Lcom/jhlabs/image/Histogram;->getFrequency(II)I

    move-result v7

    aput v7, v6, v2

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v4, :cond_0

    .line 43
    iget-object v7, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    aget-object v8, v7, v5

    aget-object v7, v7, v5

    add-int/lit8 v9, v6, -0x1

    aget v7, v7, v9

    invoke-virtual {p4, v5, v6}, Lcom/jhlabs/image/Histogram;->getFrequency(II)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_1

    .line 45
    iget-object v7, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    aget-object v8, v7, v5

    aget-object v7, v7, v5

    aget v7, v7, v6

    int-to-float v7, v7

    mul-float v7, v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_2
    move-object p4, v1

    check-cast p4, [[I

    iput-object p4, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    :cond_3
    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge p4, p2, :cond_5

    move v3, v0

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_4

    .line 53
    aget v4, p3, v3

    invoke-virtual {p0, v0, p4, v4}, Lcom/jhlabs/image/EqualizeFilter;->filterRGB(III)I

    move-result v4

    aput v4, p3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 p4, p4, 0x1

    move v0, v3

    goto :goto_3

    .line 56
    :cond_5
    check-cast v1, [[I

    iput-object v1, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    return-object p3
.end method

.method public filterRGB(III)I
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/jhlabs/image/EqualizeFilter;->lut:[[I

    if-eqz p1, :cond_0

    const/high16 p2, -0x1000000

    and-int/2addr p2, p3

    const/4 v0, 0x0

    .line 64
    aget-object v0, p1, v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    const/4 v1, 0x1

    .line 65
    aget-object v1, p1, v1

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    const/4 v2, 0x2

    .line 66
    aget-object p1, p1, v2

    and-int/lit16 p3, p3, 0xff

    aget p1, p1, p3

    shl-int/lit8 p3, v0, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v1, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1

    :cond_0
    return p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Equalize"

    return-object v0
.end method
