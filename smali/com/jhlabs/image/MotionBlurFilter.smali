.class public Lcom/jhlabs/image/MotionBlurFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "MotionBlurFilter.java"


# static fields
.field public static final LINEAR:I = 0x0

.field public static final RADIAL:I = 0x1

.field public static final ZOOM:I = 0x2


# instance fields
.field private angle:F

.field private distance:F

.field private falloff:F

.field private rotation:F

.field private wrapEdges:Z

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    iput v1, p0, Lcom/jhlabs/image/MotionBlurFilter;->falloff:F

    .line 33
    iput v1, p0, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->zoom:F

    .line 35
    iput v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->rotation:F

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->wrapEdges:Z

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 27

    move-object/from16 v7, p0

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 83
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 86
    invoke-virtual {v7, v1, v0}, Lcom/jhlabs/image/MotionBlurFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    move-object/from16 v10, p2

    :goto_0
    mul-int v0, v8, v9

    .line 88
    new-array v11, v0, [I

    .line 89
    new-array v12, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move v5, v9

    move-object v6, v11

    .line 90
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/MotionBlurFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 92
    iget v0, v7, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 93
    iget v0, v7, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 96
    div-int/lit8 v0, v8, 0x2

    .line 97
    div-int/lit8 v1, v9, 0x2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 101
    iget v3, v7, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    float-to-double v3, v3

    iget v5, v7, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    .line 102
    iget v4, v7, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    float-to-double v4, v4

    iget v6, v7, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    neg-double v13, v13

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v13

    double-to-float v4, v4

    .line 103
    iget v5, v7, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    iget v6, v7, Lcom/jhlabs/image/MotionBlurFilter;->rotation:F

    mul-float v6, v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iget v6, v7, Lcom/jhlabs/image/MotionBlurFilter;->zoom:F

    mul-float v6, v6, v2

    add-float/2addr v5, v6

    float-to-int v2, v5

    .line 105
    new-instance v5, Ljava/awt/geom/AffineTransform;

    invoke-direct {v5}, Ljava/awt/geom/AffineTransform;-><init>()V

    .line 106
    new-instance v6, Ljava/awt/geom/Point2D$Float;

    invoke-direct {v6}, Ljava/awt/geom/Point2D$Float;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v9, :cond_a

    move/from16 v16, v15

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v8, :cond_9

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_3
    if-ge v13, v2, :cond_6

    move-object/from16 p2, v10

    int-to-float v10, v13

    move-object/from16 v22, v12

    int-to-float v12, v2

    div-float/2addr v10, v12

    int-to-float v12, v15

    .line 116
    iput v12, v6, Ljava/awt/geom/Point2D$Float;->x:F

    int-to-float v12, v14

    .line 117
    iput v12, v6, Ljava/awt/geom/Point2D$Float;->y:F

    .line 118
    invoke-virtual {v5}, Ljava/awt/geom/AffineTransform;->setToIdentity()V

    int-to-float v12, v0

    mul-float v23, v10, v3

    add-float v12, v12, v23

    move/from16 v24, v2

    move/from16 v23, v3

    float-to-double v2, v12

    int-to-float v12, v1

    mul-float v25, v10, v4

    add-float v12, v12, v25

    move/from16 v25, v14

    move/from16 v26, v15

    float-to-double v14, v12

    .line 119
    invoke-virtual {v5, v2, v3, v14, v15}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 120
    iget v3, v7, Lcom/jhlabs/image/MotionBlurFilter;->zoom:F

    mul-float v3, v3, v10

    sub-float/2addr v2, v3

    float-to-double v2, v2

    .line 121
    invoke-virtual {v5, v2, v3, v2, v3}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    .line 122
    iget v2, v7, Lcom/jhlabs/image/MotionBlurFilter;->rotation:F

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    neg-float v2, v2

    mul-float v2, v2, v10

    float-to-double v2, v2

    .line 123
    invoke-virtual {v5, v2, v3}, Ljava/awt/geom/AffineTransform;->rotate(D)V

    :cond_1
    neg-int v2, v0

    int-to-double v2, v2

    neg-int v10, v1

    int-to-double v14, v10

    .line 124
    invoke-virtual {v5, v2, v3, v14, v15}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 125
    invoke-virtual {v5, v6, v6}, Ljava/awt/geom/AffineTransform;->transform(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;

    .line 126
    iget v2, v6, Ljava/awt/geom/Point2D$Float;->x:F

    float-to-int v2, v2

    .line 127
    iget v3, v6, Ljava/awt/geom/Point2D$Float;->y:F

    float-to-int v3, v3

    if-ltz v2, :cond_2

    if-lt v2, v8, :cond_3

    .line 130
    :cond_2
    iget-boolean v10, v7, Lcom/jhlabs/image/MotionBlurFilter;->wrapEdges:Z

    if-eqz v10, :cond_7

    .line 131
    invoke-static {v2, v8}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result v2

    :cond_3
    if-ltz v3, :cond_4

    if-lt v3, v9, :cond_5

    .line 136
    :cond_4
    iget-boolean v10, v7, Lcom/jhlabs/image/MotionBlurFilter;->wrapEdges:Z

    if-eqz v10, :cond_7

    .line 137
    invoke-static {v3, v9}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result v3

    :cond_5
    add-int/lit8 v21, v21, 0x1

    mul-int v3, v3, v8

    add-int/2addr v3, v2

    .line 143
    aget v2, v11, v3

    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    add-int v17, v17, v3

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    add-int v18, v18, v3

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    add-int v19, v19, v3

    and-int/lit16 v2, v2, 0xff

    add-int v20, v20, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, p2

    move-object/from16 v12, v22

    move/from16 v3, v23

    move/from16 v2, v24

    move/from16 v14, v25

    move/from16 v15, v26

    goto/16 :goto_3

    :cond_6
    move/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 p2, v10

    move-object/from16 v22, v12

    move/from16 v25, v14

    move/from16 v26, v15

    :cond_7
    if-nez v21, :cond_8

    .line 150
    aget v2, v11, v16

    aput v2, v22, v16

    goto :goto_4

    .line 152
    :cond_8
    div-int v17, v17, v21

    invoke-static/range {v17 .. v17}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    .line 153
    div-int v18, v18, v21

    invoke-static/range {v18 .. v18}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    .line 154
    div-int v19, v19, v21

    invoke-static/range {v19 .. v19}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v10

    .line 155
    div-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v12

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v10, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v12

    .line 156
    aput v2, v22, v16

    :goto_4
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v26, 0x1

    move-object/from16 v10, p2

    move-object/from16 v12, v22

    move/from16 v3, v23

    move/from16 v2, v24

    move/from16 v14, v25

    goto/16 :goto_2

    :cond_9
    move/from16 v24, v2

    move/from16 v23, v3

    move-object/from16 p2, v10

    move-object/from16 v22, v12

    move/from16 v25, v14

    add-int/lit8 v14, v25, 0x1

    move/from16 v15, v16

    goto/16 :goto_1

    :cond_a
    move-object/from16 p2, v10

    move-object/from16 v22, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v4, v8

    move v5, v9

    move-object/from16 v6, v22

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/MotionBlurFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getAngle()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->rotation:F

    return v0
.end method

.method public getWrapEdges()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->wrapEdges:Z

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/jhlabs/image/MotionBlurFilter;->zoom:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/MotionBlurFilter;->angle:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/jhlabs/image/MotionBlurFilter;->distance:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/jhlabs/image/MotionBlurFilter;->rotation:F

    return-void
.end method

.method public setWrapEdges(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/jhlabs/image/MotionBlurFilter;->wrapEdges:Z

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/jhlabs/image/MotionBlurFilter;->zoom:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Motion Blur..."

    return-object v0
.end method
