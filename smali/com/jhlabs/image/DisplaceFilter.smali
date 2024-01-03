.class public Lcom/jhlabs/image/DisplaceFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "DisplaceFilter.java"


# instance fields
.field private amount:F

.field private dh:I

.field private displacementMap:Ljava/awt/image/BufferedImage;

.field private dw:I

.field private xmap:[I

.field private ymap:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/DisplaceFilter;->amount:F

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/jhlabs/image/DisplaceFilter;->displacementMap:Ljava/awt/image/BufferedImage;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 17

    move-object/from16 v7, p0

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    .line 55
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    .line 57
    iget-object v0, v7, Lcom/jhlabs/image/DisplaceFilter;->displacementMap:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 59
    :goto_0
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    .line 60
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    .line 62
    iget v4, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    iget v5, v7, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    mul-int v0, v4, v5

    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v6, v8

    .line 63
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/DisplaceFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 64
    iget v0, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    iget v1, v7, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    mul-int v2, v0, v1

    new-array v2, v2, [I

    iput-object v2, v7, Lcom/jhlabs/image/DisplaceFilter;->xmap:[I

    mul-int v0, v0, v1

    .line 65
    new-array v0, v0, [I

    iput-object v0, v7, Lcom/jhlabs/image/DisplaceFilter;->ymap:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    :goto_1
    iget v3, v7, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    if-ge v1, v3, :cond_2

    move v3, v2

    const/4 v2, 0x0

    .line 69
    :goto_2
    iget v4, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    if-ge v2, v4, :cond_1

    .line 70
    aget v4, v8, v3

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    .line 74
    div-int/lit8 v5, v5, 0x8

    aput v5, v8, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    :goto_3
    iget v3, v7, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    if-ge v1, v3, :cond_4

    add-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    .line 81
    rem-int/2addr v4, v3

    iget v5, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    mul-int v4, v4, v5

    mul-int v6, v1, v5

    add-int/lit8 v1, v1, 0x1

    .line 83
    rem-int v3, v1, v3

    mul-int v3, v3, v5

    move v5, v2

    const/4 v2, 0x0

    .line 84
    :goto_4
    iget v9, v7, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    if-ge v2, v9, :cond_3

    add-int v10, v2, v9

    add-int/lit8 v10, v10, -0x1

    .line 85
    rem-int/2addr v10, v9

    add-int/lit8 v11, v2, 0x1

    .line 87
    rem-int v9, v11, v9

    .line 88
    iget-object v12, v7, Lcom/jhlabs/image/DisplaceFilter;->xmap:[I

    add-int v13, v10, v4

    aget v14, v8, v13

    add-int v15, v10, v6

    aget v15, v8, v15

    add-int/2addr v14, v15

    add-int/2addr v10, v3

    aget v15, v8, v10

    add-int/2addr v14, v15

    add-int v15, v9, v4

    aget v16, v8, v15

    sub-int v14, v14, v16

    add-int v16, v9, v6

    aget v16, v8, v16

    sub-int v14, v14, v16

    add-int/2addr v9, v3

    aget v16, v8, v9

    sub-int v14, v14, v16

    aput v14, v12, v5

    .line 89
    iget-object v12, v7, Lcom/jhlabs/image/DisplaceFilter;->ymap:[I

    aget v10, v8, v10

    add-int v14, v2, v3

    aget v14, v8, v14

    add-int/2addr v10, v14

    aget v9, v8, v9

    add-int/2addr v10, v9

    aget v9, v8, v13

    sub-int/2addr v10, v9

    add-int/2addr v2, v4

    aget v2, v8, v2

    sub-int/2addr v10, v2

    aget v2, v8, v15

    sub-int/2addr v10, v2

    aput v10, v12, v5

    add-int/lit8 v5, v5, 0x1

    move v2, v11

    goto :goto_4

    :cond_3
    move v2, v5

    goto :goto_3

    .line 94
    :cond_4
    invoke-super/range {p0 .. p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    const/4 v1, 0x0

    .line 95
    iput-object v1, v7, Lcom/jhlabs/image/DisplaceFilter;->ymap:[I

    iput-object v1, v7, Lcom/jhlabs/image/DisplaceFilter;->xmap:[I

    return-object v0
.end method

.method public getAmount()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/jhlabs/image/DisplaceFilter;->amount:F

    return v0
.end method

.method public getDisplacementMap()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jhlabs/image/DisplaceFilter;->displacementMap:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jhlabs/image/DisplaceFilter;->amount:F

    return-void
.end method

.method public setDisplacementMap(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jhlabs/image/DisplaceFilter;->displacementMap:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Displace..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 3

    int-to-float v0, p1

    int-to-float v1, p2

    .line 103
    iget v2, p0, Lcom/jhlabs/image/DisplaceFilter;->dh:I

    rem-int/2addr p2, v2

    iget v2, p0, Lcom/jhlabs/image/DisplaceFilter;->dw:I

    mul-int p2, p2, v2

    rem-int/2addr p1, v2

    add-int/2addr p2, p1

    .line 104
    iget p1, p0, Lcom/jhlabs/image/DisplaceFilter;->amount:F

    iget-object v2, p0, Lcom/jhlabs/image/DisplaceFilter;->xmap:[I

    aget v2, v2, p2

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p3, v2

    .line 105
    iget-object v0, p0, Lcom/jhlabs/image/DisplaceFilter;->ymap:[I

    aget p2, v0, p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    const/4 p1, 0x1

    aput v1, p3, p1

    return-void
.end method
