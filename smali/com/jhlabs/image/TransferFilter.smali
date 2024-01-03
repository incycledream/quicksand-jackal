.class public abstract Lcom/jhlabs/image/TransferFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "TransferFilter.java"


# instance fields
.field protected bTable:[I

.field protected gTable:[I

.field protected initialized:Z

.field protected rTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/jhlabs/image/TransferFilter;->initialized:Z

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jhlabs/image/TransferFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/jhlabs/image/TransferFilter;->initialized:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/jhlabs/image/TransferFilter;->initialize()V

    .line 45
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public filterRGB(III)I
    .locals 2

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 36
    iget-object v1, p0, Lcom/jhlabs/image/TransferFilter;->rTable:[I

    aget p2, v1, p2

    .line 37
    iget-object v1, p0, Lcom/jhlabs/image/TransferFilter;->gTable:[I

    aget v0, v1, v0

    .line 38
    iget-object v1, p0, Lcom/jhlabs/image/TransferFilter;->bTable:[I

    aget p3, v1, p3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method public getLUT()[I
    .locals 6

    .line 65
    iget-boolean v0, p0, Lcom/jhlabs/image/TransferFilter;->initialized:Z

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/jhlabs/image/TransferFilter;->initialize()V

    :cond_0
    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 69
    invoke-virtual {p0, v2, v2, v4}, Lcom/jhlabs/image/TransferFilter;->filterRGB(III)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/jhlabs/image/TransferFilter;->initialized:Z

    .line 50
    invoke-virtual {p0}, Lcom/jhlabs/image/TransferFilter;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jhlabs/image/TransferFilter;->bTable:[I

    iput-object v0, p0, Lcom/jhlabs/image/TransferFilter;->gTable:[I

    iput-object v0, p0, Lcom/jhlabs/image/TransferFilter;->rTable:[I

    return-void
.end method

.method protected makeTable()[I
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    int-to-float v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    .line 56
    invoke-virtual {p0, v3}, Lcom/jhlabs/image/TransferFilter;->transferFunction(F)F

    move-result v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected transferFunction(F)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
