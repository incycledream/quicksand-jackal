.class public Lcom/jhlabs/image/BoxBlurFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "BoxBlurFilter.java"


# instance fields
.field private hRadius:I

.field private iterations:I

.field private vRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    .line 37
    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    .line 38
    iput p2, p0, Lcom/jhlabs/image/BoxBlurFilter;->vRadius:I

    .line 39
    iput p3, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    return-void
.end method

.method public static blur([I[IIII)V
    .locals 16

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit16 v5, v4, 0x100

    .line 65
    new-array v6, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_0

    .line 68
    div-int v9, v8, v4

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    neg-int v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-gt v8, v2, :cond_1

    .line 77
    invoke-static {v8, v7, v3}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v13

    add-int/2addr v13, v5

    aget v13, p0, v13

    shr-int/lit8 v14, v13, 0x18

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v9, v14

    shr-int/lit8 v14, v13, 0x10

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v10, v14

    shr-int/lit8 v14, v13, 0x8

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v11, v14

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    move v13, v12

    const/4 v8, 0x0

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v4

    :goto_3
    if-ge v8, v0, :cond_4

    .line 85
    aget v14, v6, v10

    shl-int/lit8 v14, v14, 0x18

    aget v15, v6, v11

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    aget v15, v6, v12

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    aget v15, v6, v13

    or-int/2addr v14, v15

    aput v14, p1, v9

    add-int v14, v8, v2

    add-int/lit8 v14, v14, 0x1

    if-le v14, v3, :cond_2

    move v14, v3

    :cond_2
    sub-int v15, v8, v2

    if-gez v15, :cond_3

    const/4 v15, 0x0

    :cond_3
    add-int/2addr v14, v5

    .line 93
    aget v14, p0, v14

    add-int/2addr v15, v5

    .line 94
    aget v15, p0, v15

    shr-int/lit8 v7, v14, 0x18

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v2, v15, 0x18

    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v7, v2

    add-int/2addr v10, v7

    const/high16 v2, 0xff0000

    and-int v7, v14, v2

    and-int/2addr v2, v15

    sub-int/2addr v7, v2

    shr-int/lit8 v2, v7, 0x10

    add-int/2addr v11, v2

    const v2, 0xff00

    and-int v7, v14, v2

    and-int/2addr v2, v15

    sub-int/2addr v7, v2

    shr-int/lit8 v2, v7, 0x8

    add-int/2addr v12, v2

    and-int/lit16 v2, v14, 0xff

    and-int/lit16 v7, v15, 0xff

    sub-int/2addr v2, v7

    add-int/2addr v13, v2

    add-int/2addr v9, v1

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p4

    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p4

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 43
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 44
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/BoxBlurFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_0
    mul-int v0, v7, v8

    .line 49
    new-array v9, v0, [I

    .line 50
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/BoxBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 p1, 0x0

    .line 53
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    if-ge p1, v0, :cond_1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    invoke-static {v9, v10, v7, v8, v0}, Lcom/jhlabs/image/BoxBlurFilter;->blur([I[IIII)V

    .line 55
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->vRadius:I

    invoke-static {v10, v9, v8, v7, v0}, Lcom/jhlabs/image/BoxBlurFilter;->blur([I[IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/BoxBlurFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getHRadius()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    return v0
.end method

.method public getVRadius()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/jhlabs/image/BoxBlurFilter;->vRadius:I

    return v0
.end method

.method public setHRadius(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->iterations:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->vRadius:I

    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->hRadius:I

    return-void
.end method

.method public setVRadius(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/jhlabs/image/BoxBlurFilter;->vRadius:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Box Blur..."

    return-object v0
.end method
