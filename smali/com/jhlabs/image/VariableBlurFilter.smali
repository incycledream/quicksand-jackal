.class public Lcom/jhlabs/image/VariableBlurFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "VariableBlurFilter.java"


# instance fields
.field private blurMask:Ljava/awt/image/BufferedImage;

.field private hRadius:I

.field private iterations:I

.field private vRadius:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    .line 26
    iput v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    .line 27
    iput v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->iterations:I

    return-void
.end method


# virtual methods
.method public blur([I[IIIII)V
    .locals 25

    move-object/from16 v7, p0

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    add-int/lit8 v11, v8, -0x1

    .line 73
    new-array v12, v8, [I

    .line 74
    new-array v13, v8, [I

    .line 75
    new-array v14, v8, [I

    .line 76
    new-array v15, v8, [I

    .line 77
    new-array v6, v8, [I

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v5, v9, :cond_a

    .line 84
    iget-object v1, v7, Lcom/jhlabs/image/VariableBlurFilter;->blurMask:Ljava/awt/image/BufferedImage;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v10, v4, :cond_0

    const/4 v2, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move v3, v5

    move/from16 v4, p3

    move/from16 p5, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    .line 86
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    goto :goto_1

    :cond_0
    move/from16 p5, v5

    move-object/from16 v18, v6

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v5, p3

    .line 88
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    goto :goto_1

    :cond_1
    move/from16 p5, v5

    move-object/from16 v18, v6

    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    add-int v1, v17, v0

    .line 92
    aget v1, p1, v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 93
    aput v2, v15, v0

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 94
    aput v2, v12, v0

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 95
    aput v2, v13, v0

    and-int/lit16 v1, v1, 0xff

    .line 96
    aput v1, v14, v0

    if-eqz v0, :cond_2

    .line 98
    aget v1, v15, v0

    add-int/lit8 v2, v0, -0x1

    aget v3, v15, v2

    add-int/2addr v1, v3

    aput v1, v15, v0

    .line 99
    aget v1, v12, v0

    aget v3, v12, v2

    add-int/2addr v1, v3

    aput v1, v12, v0

    .line 100
    aget v1, v13, v0

    aget v3, v13, v2

    add-int/2addr v1, v3

    aput v1, v13, v0

    .line 101
    aget v1, v14, v0

    aget v2, v14, v2

    add-int/2addr v1, v2

    aput v1, v14, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move/from16 v1, p5

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_9

    .line 108
    iget-object v2, v7, Lcom/jhlabs/image/VariableBlurFilter;->blurMask:Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_5

    const/high16 v2, 0x437f0000    # 255.0f

    const/4 v3, 0x1

    if-ne v10, v3, :cond_4

    .line 110
    aget v4, v18, v0

    and-int/lit16 v4, v4, 0xff

    iget v5, v7, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    goto :goto_4

    .line 112
    :cond_4
    aget v4, v18, v0

    and-int/lit16 v4, v4, 0xff

    iget v5, v7, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    :goto_4
    mul-int v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v2, v4

    move v4, v2

    move/from16 v2, p5

    goto :goto_6

    :cond_5
    const/4 v3, 0x1

    if-ne v10, v3, :cond_6

    move/from16 v2, p5

    .line 115
    invoke-virtual {v7, v0, v2, v8, v9}, Lcom/jhlabs/image/VariableBlurFilter;->blurRadiusAt(IIII)F

    move-result v4

    iget v5, v7, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    goto :goto_5

    :cond_6
    move/from16 v2, p5

    .line 117
    invoke-virtual {v7, v2, v0, v9, v8}, Lcom/jhlabs/image/VariableBlurFilter;->blurRadiusAt(IIII)F

    move-result v4

    iget v5, v7, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    :goto_5
    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    :goto_6
    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    add-int v6, v0, v4

    if-le v6, v11, :cond_7

    sub-int/2addr v6, v11

    .line 126
    aget v19, v15, v11

    add-int/lit8 v20, v11, -0x1

    aget v21, v15, v20

    sub-int v19, v19, v21

    mul-int v19, v19, v6

    add-int/lit8 v19, v19, 0x0

    .line 127
    aget v21, v12, v11

    aget v22, v12, v20

    sub-int v21, v21, v22

    mul-int v21, v21, v6

    add-int/lit8 v21, v21, 0x0

    .line 128
    aget v22, v13, v11

    aget v23, v13, v20

    sub-int v22, v22, v23

    mul-int v22, v22, v6

    add-int/lit8 v22, v22, 0x0

    .line 129
    aget v23, v14, v11

    aget v20, v14, v20

    sub-int v23, v23, v20

    mul-int v23, v23, v6

    add-int/lit8 v6, v23, 0x0

    move/from16 v20, v11

    goto :goto_7

    :cond_7
    move/from16 v20, v6

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_7
    sub-int v4, v0, v4

    sub-int/2addr v4, v3

    if-gez v4, :cond_8

    .line 134
    aget v23, v15, v16

    mul-int v23, v23, v4

    sub-int v19, v19, v23

    .line 135
    aget v23, v12, v16

    mul-int v23, v23, v4

    sub-int v21, v21, v23

    .line 136
    aget v23, v13, v16

    mul-int v23, v23, v4

    sub-int v22, v22, v23

    .line 137
    aget v23, v14, v16

    mul-int v23, v23, v4

    sub-int v6, v6, v23

    const/4 v4, 0x0

    .line 141
    :cond_8
    aget v23, v15, v20

    aget v24, v15, v4

    sub-int v23, v23, v24

    add-int v19, v19, v23

    .line 142
    aget v23, v12, v20

    aget v24, v12, v4

    sub-int v23, v23, v24

    add-int v21, v21, v23

    .line 143
    aget v23, v13, v20

    aget v24, v13, v4

    sub-int v23, v23, v24

    add-int v22, v22, v23

    .line 144
    aget v20, v14, v20

    aget v4, v14, v4

    sub-int v20, v20, v4

    add-int v6, v6, v20

    .line 146
    div-int v19, v19, v5

    shl-int/lit8 v4, v19, 0x18

    div-int v21, v21, v5

    shl-int/lit8 v19, v21, 0x10

    or-int v4, v4, v19

    div-int v22, v22, v5

    shl-int/lit8 v19, v22, 0x8

    or-int v4, v4, v19

    div-int/2addr v6, v5

    or-int/2addr v4, v6

    aput v4, p2, v1

    add-int/2addr v1, v9

    add-int/lit8 v0, v0, 0x1

    move/from16 p5, v2

    goto/16 :goto_3

    :cond_9
    move/from16 v2, p5

    add-int v17, v17, v8

    add-int/lit8 v5, v2, 0x1

    move-object/from16 v6, v18

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method protected blurRadiusAt(IIII)F
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 53
    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 31
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 32
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-nez p2, :cond_0

    .line 35
    new-instance p2, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {p2, v7, v8, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    :cond_0
    mul-int v0, v7, v8

    .line 37
    new-array v9, v0, [I

    .line 38
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 p1, 0x0

    .line 41
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->iterations:I

    if-ge p1, v0, :cond_1

    .line 42
    iget v5, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v7

    move v4, v8

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->blur([I[IIIII)V

    .line 43
    iget v5, p0, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    const/4 v6, 0x2

    move-object v1, v10

    move-object v2, v9

    move v3, v8

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->blur([I[IIIII)V

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

    .line 46
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/VariableBlurFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getBlurMask()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->blurMask:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 57
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getHRadius()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->iterations:I

    return v0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 4

    if-nez p2, :cond_0

    .line 62
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public getRadius()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    return v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVRadius()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    return v0
.end method

.method public setBlurMask(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->blurMask:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setHRadius(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->iterations:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    iput p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->hRadius:I

    return-void
.end method

.method public setVRadius(I)V
    .locals 0

    .line 168
    iput p1, p0, Lcom/jhlabs/image/VariableBlurFilter;->vRadius:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Variable Blur..."

    return-object v0
.end method
