.class Lcom/jhlabs/image/CurlFilter$Sampler;
.super Ljava/lang/Object;
.source "CurlFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/CurlFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sampler"
.end annotation


# instance fields
.field private edgeAction:I

.field private height:I

.field private inPixels:[I

.field private width:I


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    .line 82
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/jhlabs/image/ImageUtils;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    return-void
.end method

.method private final getPixel([IIIII)I
    .locals 3

    if-ltz p2, :cond_1

    if-ge p2, p4, :cond_1

    if-ltz p3, :cond_1

    if-lt p3, p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p3, p3, p4

    add-int/2addr p3, p2

    .line 122
    aget p1, p1, p3

    return p1

    .line 112
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/CurlFilter$Sampler;->edgeAction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return v1

    .line 117
    :cond_2
    invoke-static {p3, p5}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p3

    mul-int p3, p3, p4

    invoke-static {p2, p4}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p2

    add-int/2addr p3, p2

    aget p1, p1, p3

    return p1

    :cond_3
    sub-int/2addr p5, v2

    .line 119
    invoke-static {p3, v1, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p3

    mul-int p3, p3, p4

    sub-int/2addr p4, v2

    invoke-static {p2, v1, p4}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p2

    add-int/2addr p3, p2

    aget p1, p1, p3

    return p1
.end method


# virtual methods
.method public sample(FF)I
    .locals 15

    move-object v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    float-to-double v2, v0

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v7, v2

    float-to-double v2, v1

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v8, v2

    int-to-float v2, v7

    sub-float v9, v0, v2

    int-to-float v0, v8

    sub-float v10, v1, v0

    if-ltz v7, :cond_0

    .line 93
    iget v0, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->width:I

    add-int/lit8 v1, v0, -0x1

    if-ge v7, v1, :cond_0

    if-ltz v8, :cond_0

    iget v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->height:I

    add-int/lit8 v1, v1, -0x1

    if-ge v8, v1, :cond_0

    mul-int v8, v8, v0

    add-int/2addr v8, v7

    .line 96
    iget-object v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    aget v2, v1, v8

    add-int/lit8 v3, v8, 0x1

    .line 97
    aget v3, v1, v3

    add-int v4, v8, v0

    .line 98
    aget v4, v1, v4

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x1

    .line 99
    aget v0, v1, v8

    move v14, v0

    move v11, v2

    move v12, v3

    move v13, v4

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    iget v4, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->width:I

    iget v5, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->height:I

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter$Sampler;->getPixel([IIIII)I

    move-result v11

    .line 103
    iget-object v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    add-int/lit8 v12, v7, 0x1

    iget v4, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->width:I

    iget v5, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->height:I

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter$Sampler;->getPixel([IIIII)I

    move-result v13

    .line 104
    iget-object v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    add-int/lit8 v8, v8, 0x1

    iget v4, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->width:I

    iget v5, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->height:I

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter$Sampler;->getPixel([IIIII)I

    move-result v7

    .line 105
    iget-object v1, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->inPixels:[I

    iget v4, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->width:I

    iget v5, v6, Lcom/jhlabs/image/CurlFilter$Sampler;->height:I

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CurlFilter$Sampler;->getPixel([IIIII)I

    move-result v0

    move v14, v0

    move v12, v13

    move v13, v7

    .line 107
    :goto_0
    invoke-static/range {v9 .. v14}, Lcom/jhlabs/image/ImageMath;->bilinearInterpolate(FFIIII)I

    move-result v0

    return v0
.end method
