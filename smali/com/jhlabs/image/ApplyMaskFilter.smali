.class public Lcom/jhlabs/image/ApplyMaskFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "ApplyMaskFilter.java"


# instance fields
.field private destination:Ljava/awt/image/BufferedImage;

.field private maskImage:Ljava/awt/image/BufferedImage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method

.method public static composeThroughMask(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/Raster;)V
    .locals 23

    .line 51
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v6

    .line 52
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    const/4 v1, 0x0

    move v11, v0

    move-object v5, v1

    move-object v12, v5

    move-object v13, v12

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move v2, v11

    move v3, v7

    .line 61
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v14

    move-object/from16 v0, p2

    move-object v5, v12

    .line 62
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v12

    move-object/from16 v0, p1

    move-object v5, v13

    .line 63
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->getPixels(IIII[I)[I

    move-result-object v13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_0

    .line 67
    aget v2, v14, v1

    .line 68
    aget v3, v13, v1

    add-int/lit8 v4, v1, 0x1

    .line 69
    aget v5, v14, v4

    .line 70
    aget v15, v13, v4

    add-int/lit8 v16, v1, 0x2

    .line 71
    aget v9, v14, v16

    move/from16 v17, v8

    .line 72
    aget v8, v13, v16

    add-int/lit8 v18, v1, 0x3

    move/from16 v19, v10

    .line 73
    aget v10, v14, v18

    move-object/from16 v20, v14

    .line 74
    aget v14, v13, v18

    move/from16 v21, v7

    .line 76
    aget v7, v12, v18

    int-to-float v7, v7

    const/high16 v22, 0x437f0000    # 255.0f

    div-float v7, v7, v22

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v7

    int-to-float v2, v2

    mul-float v2, v2, v7

    int-to-float v3, v3

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 79
    aput v2, v13, v1

    int-to-float v2, v5

    mul-float v2, v2, v7

    int-to-float v3, v15

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 80
    aput v2, v13, v4

    int-to-float v2, v9

    mul-float v2, v2, v7

    int-to-float v3, v8

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 81
    aput v2, v13, v16

    int-to-float v2, v10

    mul-float v7, v7, v2

    int-to-float v2, v14

    mul-float v22, v22, v2

    add-float v7, v7, v22

    float-to-int v2, v7

    .line 82
    aput v2, v13, v18

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v17

    move/from16 v10, v19

    move-object/from16 v14, v20

    move/from16 v7, v21

    goto :goto_1

    :cond_0
    move/from16 v21, v7

    move/from16 v17, v8

    move/from16 v19, v10

    move-object/from16 v20, v14

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v11

    move/from16 v3, v21

    move-object v5, v13

    .line 86
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v5, v20

    goto/16 :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 92
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    .line 93
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    .line 94
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 95
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/ApplyMaskFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 99
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    .line 101
    iget-object v0, p0, Lcom/jhlabs/image/ApplyMaskFilter;->destination:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jhlabs/image/ApplyMaskFilter;->maskImage:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    iget-object v1, p0, Lcom/jhlabs/image/ApplyMaskFilter;->maskImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/jhlabs/image/ApplyMaskFilter;->composeThroughMask(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/Raster;)V

    :cond_1
    return-object p2
.end method

.method public getDestination()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/jhlabs/image/ApplyMaskFilter;->destination:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getMaskImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/jhlabs/image/ApplyMaskFilter;->maskImage:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public setDestination(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/jhlabs/image/ApplyMaskFilter;->destination:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setMaskImage(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/jhlabs/image/ApplyMaskFilter;->maskImage:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Keying/Key..."

    return-object v0
.end method
