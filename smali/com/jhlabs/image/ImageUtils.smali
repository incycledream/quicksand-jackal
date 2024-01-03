.class public abstract Lcom/jhlabs/image/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field public static final SELECTED:I = -0x1000000

.field public static final UNSELECTED:I

.field public static backgroundImage:Ljava/awt/image/BufferedImage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneImage(Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 71
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 72
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v1, p0, v2}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 74
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public static composeThroughMask(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;Ljava/awt/image/Raster;)V
    .locals 23

    .line 174
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getMinX()I

    move-result v6

    .line 175
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    .line 176
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 177
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

    .line 184
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v14

    move-object/from16 v0, p2

    move-object v5, v12

    .line 185
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v12

    move-object/from16 v0, p1

    move-object v5, v13

    .line 186
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->getPixels(IIII[I)[I

    move-result-object v13

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_0

    .line 190
    aget v2, v14, v1

    .line 191
    aget v3, v13, v1

    add-int/lit8 v4, v1, 0x1

    .line 192
    aget v5, v14, v4

    .line 193
    aget v15, v13, v4

    add-int/lit8 v16, v1, 0x2

    .line 194
    aget v9, v14, v16

    move/from16 v17, v8

    .line 195
    aget v8, v13, v16

    add-int/lit8 v18, v1, 0x3

    move/from16 v19, v10

    .line 196
    aget v10, v14, v18

    move-object/from16 v20, v14

    .line 197
    aget v14, v13, v18

    move/from16 v21, v7

    .line 199
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

    .line 202
    aput v2, v13, v1

    int-to-float v2, v5

    mul-float v2, v2, v7

    int-to-float v3, v15

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 203
    aput v2, v13, v4

    int-to-float v2, v9

    mul-float v2, v2, v7

    int-to-float v3, v8

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 204
    aput v2, v13, v16

    int-to-float v2, v10

    mul-float v7, v7, v2

    int-to-float v2, v14

    mul-float v22, v22, v2

    add-float v7, v7, v22

    float-to-int v2, v7

    .line 205
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

    .line 209
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v5, v20

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static convertImageToARGB(Ljava/awt/Image;)Ljava/awt/image/BufferedImage;
    .locals 5

    .line 52
    instance-of v0, p0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v2

    if-ne v2, v1, :cond_0

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v3

    invoke-virtual {p0, v2}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v4

    invoke-direct {v0, v3, v4, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 55
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v1

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, p0, v3, v3, v2}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 57
    invoke-virtual {v1}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public static createImage(Ljava/awt/image/ImageProducer;)Ljava/awt/image/BufferedImage;
    .locals 10

    .line 33
    new-instance v9, Ljava/awt/image/PixelGrabber;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/image/ImageProducer;IIII[III)V

    .line 35
    :try_start_0
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->status()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-nez p0, :cond_1

    .line 41
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->status()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_0

    .line 43
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v0

    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v4

    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getPixels()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v5, v0

    check-cast v5, [I

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    return-object p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Image fetch error"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Image fetch aborted"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Image fetch interrupted"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I
    .locals 10

    .line 219
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v9, p3

    .line 222
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    return-object p0
.end method

.method public static getSelectedBounds(Ljava/awt/image/BufferedImage;)Ljava/awt/Rectangle;
    .locals 18

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    const/4 v8, 0x0

    move v10, v0

    move v11, v6

    move-object v5, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/high16 v15, -0x1000000

    const/16 v16, 0x1

    if-ltz v10, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v2, v10

    move v3, v6

    .line 122
    invoke-static/range {v0 .. v5}, Lcom/jhlabs/image/ImageUtils;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_1

    .line 124
    aget v1, v5, v0

    and-int/2addr v1, v15

    if-eqz v1, :cond_0

    move v11, v0

    move v14, v10

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v6, -0x1

    :goto_3
    if-lt v0, v12, :cond_3

    .line 132
    aget v1, v5, v0

    and-int/2addr v1, v15

    if-eqz v1, :cond_2

    move v12, v0

    move v14, v10

    const/4 v13, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    if-eqz v13, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_5
    :goto_5
    move-object v5, v8

    move v4, v12

    move v12, v7

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v10, :cond_c

    const/4 v1, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move v2, v7

    move v3, v6

    move v9, v4

    move/from16 v4, v17

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/jhlabs/image/ImageUtils;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v5

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v11, :cond_8

    .line 146
    aget v1, v5, v0

    and-int/2addr v1, v15

    if-eqz v1, :cond_7

    if-ge v7, v12, :cond_6

    move v12, v7

    :cond_6
    move v11, v0

    const/4 v13, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    add-int/lit8 v0, v6, -0x1

    :goto_9
    if-lt v0, v9, :cond_b

    .line 155
    aget v1, v5, v0

    and-int/2addr v1, v15

    if-eqz v1, :cond_a

    if-ge v7, v12, :cond_9

    move v12, v7

    :cond_9
    move v4, v0

    const/4 v13, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_b
    move v4, v9

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    move v9, v4

    if-eqz v13, :cond_d

    .line 165
    new-instance v0, Ljava/awt/Rectangle;

    sub-int v4, v9, v11

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v14, v12

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v0, v11, v12, v4, v14}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0

    :cond_d
    return-object v8
.end method

.method public static getSubimage(Ljava/awt/image/BufferedImage;IIII)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 63
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p4, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 64
    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p3

    neg-int p1, p1

    int-to-double v1, p1

    neg-int p1, p2

    int-to-double p1, p1

    .line 65
    invoke-static {v1, v2, p1, p2}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 66
    invoke-virtual {p3}, Ljava/awt/Graphics2D;->dispose()V

    return-object v0
.end method

.method public static paintCheckedBackground(Ljava/awt/Component;Ljava/awt/Graphics;IIII)V
    .locals 7

    .line 79
    sget-object v0, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_3

    .line 80
    new-instance v0, Ljava/awt/image/BufferedImage;

    const/4 v1, 0x2

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    sput-object v0, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    .line 81
    sget-object v0, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    xor-int v5, v4, v3

    const/16 v6, 0x8

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 84
    sget-object v5, Ljava/awt/Color;->lightGray:Ljava/awt/Color;

    goto :goto_2

    :cond_0
    sget-object v5, Ljava/awt/Color;->white:Ljava/awt/Color;

    :goto_2
    invoke-virtual {v0, v5}, Ljava/awt/Graphics;->setColor(Ljava/awt/Color;)V

    .line 85
    invoke-virtual {v0, v4, v3, v6, v6}, Ljava/awt/Graphics;->fillRect(IIII)V

    add-int/lit8 v4, v4, 0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x8

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/awt/Graphics;->dispose()V

    .line 91
    :cond_3
    sget-object v0, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    if-eqz v0, :cond_7

    .line 92
    invoke-virtual {p1}, Ljava/awt/Graphics;->getClip()Ljava/awt/Shape;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Ljava/awt/Graphics;->getClipBounds()Ljava/awt/Rectangle;

    move-result-object v1

    if-nez v1, :cond_4

    .line 95
    new-instance v1, Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/awt/Rectangle;-><init>(Ljava/awt/Dimension;)V

    .line 96
    :cond_4
    new-instance v2, Ljava/awt/Rectangle;

    invoke-direct {v2, p2, p3, p4, p5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/awt/Graphics;->setClip(Ljava/awt/Shape;)V

    .line 98
    sget-object p3, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p3

    .line 99
    sget-object p4, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p4}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p4

    const/4 p5, -0x1

    if-eq p3, p5, :cond_6

    if-eq p4, p5, :cond_6

    .line 101
    iget p5, p2, Ljava/awt/Rectangle;->x:I

    div-int/2addr p5, p3

    mul-int p5, p5, p3

    .line 102
    iget v1, p2, Ljava/awt/Rectangle;->y:I

    div-int/2addr v1, p4

    mul-int v1, v1, p4

    .line 103
    iget v2, p2, Ljava/awt/Rectangle;->x:I

    iget v3, p2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, p3

    mul-int v2, v2, p3

    .line 104
    iget v3, p2, Ljava/awt/Rectangle;->y:I

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, p2

    add-int/2addr v3, p4

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, p4

    mul-int v3, v3, p4

    :goto_3
    if-ge v1, v3, :cond_6

    move p2, p5

    :goto_4
    if-ge p2, v2, :cond_5

    .line 107
    sget-object v4, Lcom/jhlabs/image/ImageUtils;->backgroundImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p1, v4, p2, v1, p0}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    add-int/2addr p2, p3

    goto :goto_4

    :cond_5
    add-int/2addr v1, p4

    goto :goto_3

    .line 109
    :cond_6
    invoke-virtual {p1, v0}, Ljava/awt/Graphics;->setClip(Ljava/awt/Shape;)V

    :cond_7
    return-void
.end method

.method public static setRGB(Ljava/awt/image/BufferedImage;IIII[I)V
    .locals 10

    .line 230
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v9, p3

    .line 234
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    goto :goto_1

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    :goto_1
    return-void
.end method
