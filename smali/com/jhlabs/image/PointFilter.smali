.class public abstract Lcom/jhlabs/image/PointFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "PointFilter.java"


# instance fields
.field protected canFilterIndexColorModel:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/jhlabs/image/PointFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 19

    move-object/from16 v0, p0

    .line 29
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v9

    .line 30
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v10

    .line 31
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v11

    .line 32
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v12

    if-nez p2, :cond_0

    const/4 v1, 0x0

    move-object/from16 v13, p1

    .line 35
    invoke-virtual {v0, v13, v1}, Lcom/jhlabs/image/PointFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    .line 36
    :goto_0
    invoke-virtual {v14}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v15

    .line 38
    invoke-virtual {v0, v9, v10}, Lcom/jhlabs/image/PointFilter;->setDimensions(II)V

    .line 40
    new-array v8, v9, [I

    const/16 v16, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_4

    const/4 v1, 0x2

    if-ne v11, v1, :cond_2

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, v12

    move v3, v7

    move v4, v9

    move-object v6, v8

    .line 44
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_1

    .line 46
    aget v2, v8, v1

    invoke-virtual {v0, v1, v7, v2}, Lcom/jhlabs/image/PointFilter;->filterRGB(III)I

    move-result v2

    aput v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, v15

    move v3, v7

    move v4, v9

    move-object v6, v8

    .line 47
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    move/from16 v18, v7

    move-object/from16 v17, v8

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v17, 0x0

    move-object/from16 v1, p1

    move v3, v7

    move v4, v9

    move-object v6, v8

    move/from16 v18, v7

    move/from16 v7, v17

    move-object/from16 v17, v8

    move v8, v9

    .line 49
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v9, :cond_3

    .line 51
    aget v2, v17, v1

    move/from16 v8, v18

    invoke-virtual {v0, v1, v8, v2}, Lcom/jhlabs/image/PointFilter;->filterRGB(III)I

    move-result v2

    aput v2, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move/from16 v8, v18

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v1, v14

    move v3, v8

    move v4, v9

    move-object/from16 v6, v17

    move v8, v9

    .line 52
    invoke-virtual/range {v1 .. v8}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    :goto_4
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v8, v17

    goto :goto_1

    :cond_4
    return-object v14
.end method

.method public abstract filterRGB(III)I
.end method

.method public setDimensions(II)V
    .locals 0

    return-void
.end method
