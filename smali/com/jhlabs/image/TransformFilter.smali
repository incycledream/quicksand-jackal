.class public abstract Lcom/jhlabs/image/TransformFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "TransformFilter.java"


# static fields
.field public static final BILINEAR:I = 0x1

.field public static final CLAMP:I = 0x1

.field public static final NEAREST_NEIGHBOUR:I = 0x0

.field public static final WRAP:I = 0x2

.field public static final ZERO:I


# instance fields
.field protected edgeAction:I

.field protected interpolation:I

.field protected originalSpace:Ljava/awt/Rectangle;

.field protected transformedSpace:Ljava/awt/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/jhlabs/image/TransformFilter;->edgeAction:I

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/jhlabs/image/TransformFilter;->interpolation:I

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

    .line 139
    aget p1, p1, p3

    return p1

    .line 129
    :cond_1
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/TransformFilter;->edgeAction:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    return v1

    .line 134
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

    .line 136
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
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 29

    move-object/from16 v7, p0

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    .line 68
    new-instance v0, Ljava/awt/Rectangle;

    const/4 v10, 0x0

    invoke-direct {v0, v10, v10, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, v7, Lcom/jhlabs/image/TransformFilter;->originalSpace:Ljava/awt/Rectangle;

    .line 69
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, v10, v10, v8, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    .line 70
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    invoke-virtual {v7, v0}, Lcom/jhlabs/image/TransformFilter;->transformSpace(Ljava/awt/Rectangle;)V

    if-nez p2, :cond_0

    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->width:I

    iget-object v3, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    .line 76
    :goto_0
    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move v5, v9

    .line 78
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/TransformFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v12

    .line 80
    iget v0, v7, Lcom/jhlabs/image/TransformFilter;->interpolation:I

    if-nez v0, :cond_1

    .line 81
    iget-object v5, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v8

    move v3, v9

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/image/TransformFilter;->filterPixelsNN(Ljava/awt/image/BufferedImage;II[ILjava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v13, v8, -0x1

    add-int/lit8 v14, v9, -0x1

    .line 87
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v15, v0, Ljava/awt/Rectangle;->width:I

    .line 88
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v6, v0, Ljava/awt/Rectangle;->height:I

    .line 91
    new-array v5, v15, [I

    .line 93
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->x:I

    .line 94
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v15, :cond_3

    add-int v10, v4, v0

    move/from16 p1, v0

    add-int v0, v3, v1

    .line 99
    invoke-virtual {v7, v10, v0, v2}, Lcom/jhlabs/image/TransformFilter;->transformInverse(II[F)V

    const/4 v10, 0x0

    .line 100
    aget v0, v2, v10

    move-object/from16 p2, v11

    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/4 v0, 0x1

    .line 101
    aget v11, v2, v0

    move/from16 v17, v1

    float-to-double v0, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v11, v0

    const/16 v16, 0x0

    .line 102
    aget v0, v2, v16

    int-to-float v1, v10

    sub-float v19, v0, v1

    const/4 v0, 0x1

    .line 103
    aget v1, v2, v0

    int-to-float v0, v11

    sub-float v20, v1, v0

    if-ltz v10, :cond_2

    if-ge v10, v13, :cond_2

    if-ltz v11, :cond_2

    if-ge v11, v14, :cond_2

    mul-int v11, v11, v8

    add-int/2addr v11, v10

    .line 109
    aget v0, v12, v11

    add-int/lit8 v1, v11, 0x1

    .line 110
    aget v1, v12, v1

    add-int/2addr v11, v8

    .line 111
    aget v10, v12, v11

    const/16 v18, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 112
    aget v11, v12, v11

    move/from16 v18, p1

    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move/from16 v23, v10

    move/from16 v24, v11

    goto :goto_3

    :cond_2
    move/from16 v18, p1

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v25, v2

    move v2, v10

    move/from16 v26, v3

    move v3, v11

    move/from16 v27, v4

    move v4, v8

    move-object/from16 v28, v5

    move v5, v9

    .line 115
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/TransformFilter;->getPixel([IIIII)I

    move-result v21

    add-int/lit8 v22, v10, 0x1

    move/from16 v2, v22

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/TransformFilter;->getPixel([IIIII)I

    move-result v23

    add-int/lit8 v11, v11, 0x1

    move v2, v10

    move v3, v11

    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/TransformFilter;->getPixel([IIIII)I

    move-result v10

    move/from16 v2, v22

    .line 118
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/TransformFilter;->getPixel([IIIII)I

    move-result v0

    move/from16 v24, v0

    move/from16 v22, v23

    move/from16 v23, v10

    .line 120
    :goto_3
    invoke-static/range {v19 .. v24}, Lcom/jhlabs/image/ImageMath;->bilinearInterpolate(FFIIII)I

    move-result v0

    aput v0, v28, v18

    add-int/lit8 v0, v18, 0x1

    move-object/from16 v11, p2

    move/from16 v1, v17

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, v28

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_3
    move/from16 v17, v1

    move-object/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 p2, v11

    const/16 v16, 0x0

    const/4 v2, 0x0

    .line 122
    iget-object v0, v7, Lcom/jhlabs/image/TransformFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, v17

    move v10, v6

    move-object/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/TransformFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v1, v17, 0x1

    move v6, v10

    move-object/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, v28

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 p2, v11

    return-object p2
.end method

.method protected filterPixelsNN(Ljava/awt/image/BufferedImage;II[ILjava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 21

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    .line 145
    iget v11, v10, Ljava/awt/Rectangle;->width:I

    .line 146
    iget v12, v10, Ljava/awt/Rectangle;->height:I

    .line 148
    new-array v13, v11, [I

    .line 150
    iget v14, v10, Ljava/awt/Rectangle;->x:I

    .line 151
    iget v15, v10, Ljava/awt/Rectangle;->y:I

    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v5, 0x2

    new-array v4, v5, [F

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v11, :cond_4

    add-int v1, v14, v0

    add-int v5, v15, v2

    .line 157
    invoke-virtual {v7, v1, v5, v4}, Lcom/jhlabs/image/TransformFilter;->transformInverse(II[F)V

    .line 158
    aget v1, v4, v3

    float-to-int v1, v1

    const/4 v5, 0x1

    move/from16 v17, v2

    .line 159
    aget v2, v4, v5

    float-to-int v2, v2

    .line 161
    aget v18, v4, v3

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_1

    if-ge v1, v8, :cond_1

    aget v18, v4, v5

    cmpg-float v18, v18, v19

    if-ltz v18, :cond_1

    if-lt v2, v9, :cond_0

    goto :goto_2

    :cond_0
    mul-int v2, v2, v8

    add-int/2addr v2, v1

    .line 178
    aget v1, p4, v2

    aput v1, v6, v3

    .line 179
    aget v1, p4, v2

    aput v1, v13, v0

    const/4 v5, 0x0

    goto :goto_5

    .line 163
    :cond_1
    :goto_2
    iget v3, v7, Lcom/jhlabs/image/TransformFilter;->edgeAction:I

    if-eq v3, v5, :cond_3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    goto :goto_4

    .line 169
    :cond_2
    invoke-static {v2, v9}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result v2

    mul-int v2, v2, v8

    invoke-static {v1, v8}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result v1

    add-int/2addr v2, v1

    aget v3, p4, v2

    goto :goto_3

    :cond_3
    const/4 v5, 0x2

    add-int/lit8 v3, v9, -0x1

    const/4 v5, 0x0

    .line 172
    invoke-static {v2, v5, v3}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v2

    mul-int v2, v2, v8

    add-int/lit8 v3, v8, -0x1

    invoke-static {v1, v5, v3}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v1

    add-int/2addr v2, v1

    aget v3, p4, v2

    .line 175
    :goto_4
    aput v3, v13, v0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v17

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    move/from16 v17, v2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 182
    iget v3, v10, Ljava/awt/Rectangle;->width:I

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v5, v3

    const/16 v19, 0x0

    move/from16 v3, v17

    move-object/from16 v20, v4

    move v4, v5

    const/16 v16, 0x2

    move/from16 v5, v18

    move-object/from16 v18, v6

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/TransformFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v6, v18

    move-object/from16 v4, v20

    const/4 v3, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_5
    return-object p1
.end method

.method public getEdgeAction()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/jhlabs/image/TransformFilter;->edgeAction:I

    return v0
.end method

.method public getInterpolation()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/TransformFilter;->interpolation:I

    return v0
.end method

.method public setEdgeAction(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/TransformFilter;->edgeAction:I

    return-void
.end method

.method public setInterpolation(I)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jhlabs/image/TransformFilter;->interpolation:I

    return-void
.end method

.method protected abstract transformInverse(II[F)V
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 0

    return-void
.end method
