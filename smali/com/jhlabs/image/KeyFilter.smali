.class public Lcom/jhlabs/image/KeyFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "KeyFilter.java"


# instance fields
.field private bTolerance:F

.field private cleanImage:Ljava/awt/image/BufferedImage;

.field private destination:Ljava/awt/image/BufferedImage;

.field private hTolerance:F

.field private sTolerance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/KeyFilter;->hTolerance:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/KeyFilter;->sTolerance:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/KeyFilter;->bTolerance:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 19

    move-object/from16 v7, p0

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    .line 84
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v0, 0x0

    move-object/from16 v10, p1

    if-nez p2, :cond_0

    .line 88
    invoke-virtual {v7, v10, v0}, Lcom/jhlabs/image/KeyFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v1

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    .line 89
    :goto_0
    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    .line 91
    iget-object v1, v7, Lcom/jhlabs/image/KeyFilter;->destination:Ljava/awt/image/BufferedImage;

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/jhlabs/image/KeyFilter;->cleanImage:Ljava/awt/image/BufferedImage;

    if-eqz v1, :cond_3

    move-object v6, v0

    move-object v14, v6

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_3

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move v4, v8

    .line 98
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/KeyFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v18

    .line 99
    iget-object v1, v7, Lcom/jhlabs/image/KeyFilter;->destination:Ljava/awt/image/BufferedImage;

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/KeyFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v14

    .line 100
    iget-object v1, v7, Lcom/jhlabs/image/KeyFilter;->cleanImage:Ljava/awt/image/BufferedImage;

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/KeyFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v15

    move-object/from16 v6, v16

    move-object/from16 v5, v17

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_2

    .line 102
    aget v1, v18, v0

    .line 103
    aget v2, v14, v0

    .line 104
    aget v3, v15, v0

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v12, v1, 0x8

    and-int/lit16 v12, v12, 0xff

    move/from16 v16, v9

    and-int/lit16 v9, v1, 0xff

    shr-int/lit8 v10, v3, 0x10

    and-int/lit16 v10, v10, 0xff

    move-object/from16 v17, v14

    shr-int/lit8 v14, v3, 0x8

    and-int/lit16 v14, v14, 0xff

    and-int/lit16 v3, v3, 0xff

    .line 112
    invoke-static {v4, v9, v12, v6}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    move-result-object v6

    .line 113
    invoke-static {v10, v3, v14, v5}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    move-result-object v5

    const/4 v9, 0x0

    .line 118
    aget v3, v6, v9

    aget v4, v5, v9

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v7, Lcom/jhlabs/image/KeyFilter;->hTolerance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v3, 0x1

    aget v4, v6, v3

    aget v3, v5, v3

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v7, Lcom/jhlabs/image/KeyFilter;->sTolerance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v3, 0x2

    aget v4, v6, v3

    aget v3, v5, v3

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v7, Lcom/jhlabs/image/KeyFilter;->bTolerance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 119
    aput v2, v18, v0

    goto :goto_3

    .line 121
    :cond_1
    aput v1, v18, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p1

    move/from16 v9, v16

    move-object/from16 v14, v17

    goto :goto_2

    :cond_2
    move/from16 v16, v9

    move-object/from16 v17, v14

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v13

    move v4, v8

    move-object v12, v5

    move v5, v10

    move-object v10, v6

    move-object/from16 v6, v18

    .line 123
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/KeyFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v16

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move-object/from16 v10, p1

    goto/16 :goto_1

    :cond_3
    return-object v11
.end method

.method public getBTolerance()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/jhlabs/image/KeyFilter;->bTolerance:F

    return v0
.end method

.method public getCleanImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jhlabs/image/KeyFilter;->cleanImage:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getDestination()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jhlabs/image/KeyFilter;->destination:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getHTolerance()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/jhlabs/image/KeyFilter;->hTolerance:F

    return v0
.end method

.method public getSTolerance()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/KeyFilter;->sTolerance:F

    return v0
.end method

.method public setBTolerance(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/image/KeyFilter;->bTolerance:F

    return-void
.end method

.method public setCleanImage(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/jhlabs/image/KeyFilter;->cleanImage:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setDestination(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/jhlabs/image/KeyFilter;->destination:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setHTolerance(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/KeyFilter;->hTolerance:F

    return-void
.end method

.method public setSTolerance(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jhlabs/image/KeyFilter;->sTolerance:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Keying/Key..."

    return-object v0
.end method
