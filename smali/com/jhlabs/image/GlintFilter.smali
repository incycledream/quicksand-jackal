.class public Lcom/jhlabs/image/GlintFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "GlintFilter.java"


# instance fields
.field private amount:F

.field private blur:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private glintOnly:Z

.field private length:I

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/GlintFilter;->threshold:F

    const/4 v0, 0x5

    .line 27
    iput v0, p0, Lcom/jhlabs/image/GlintFilter;->length:I

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/GlintFilter;->blur:F

    const v0, 0x3dcccccd    # 0.1f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/GlintFilter;->amount:F

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/jhlabs/image/GlintFilter;->glintOnly:Z

    .line 31
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-direct {v0, v1, v2}, Lcom/jhlabs/image/LinearColormap;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 28

    move-object/from16 v7, p0

    .line 85
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 86
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    .line 87
    new-array v10, v8, [I

    .line 88
    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    int-to-float v1, v0

    const v2, 0x3fb4fdf4    # 1.414f

    div-float/2addr v1, v2

    float-to-int v11, v1

    const/4 v12, 0x1

    add-int/2addr v0, v12

    .line 89
    new-array v13, v0, [I

    add-int/lit8 v0, v11, 0x1

    .line 90
    new-array v14, v0, [I

    .line 92
    iget-object v0, v7, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/high16 v15, -0x1000000

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 93
    :goto_0
    iget v1, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    if-gt v0, v1, :cond_0

    .line 94
    iget-object v2, v7, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float v3, v0

    int-to-float v1, v1

    div-float/2addr v3, v1

    invoke-interface {v2, v3}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v1, 0xff

    and-int/2addr v1, v15

    .line 98
    iget v5, v7, Lcom/jhlabs/image/GlintFilter;->amount:F

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-float v2, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-float v2, v4

    mul-float v5, v5, v2

    float-to-int v2, v5

    or-int/2addr v1, v2

    .line 99
    aput v1, v13, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v11, :cond_1

    .line 102
    iget-object v1, v7, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float v2, v0

    int-to-float v3, v11

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v1

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v1, 0xff

    and-int/2addr v1, v15

    .line 106
    iget v5, v7, Lcom/jhlabs/image/GlintFilter;->amount:F

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    int-to-float v2, v3

    mul-float v2, v2, v5

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-float v2, v4

    mul-float v5, v5, v2

    float-to-int v2, v5

    or-int/2addr v1, v2

    .line 107
    aput v1, v14, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_1
    new-instance v5, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x2

    invoke-direct {v5, v8, v9, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 113
    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->threshold:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v0, v0, v16

    float-to-int v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v9, :cond_4

    const/4 v2, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v3

    move v12, v4

    move v4, v8

    move-object/from16 v19, v5

    move/from16 v5, v17

    move-object v6, v10

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GlintFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_3

    .line 117
    aget v1, v10, v0

    and-int v2, v1, v15

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    if-ge v3, v12, :cond_2

    .line 124
    aput v15, v10, v0

    goto :goto_4

    .line 126
    :cond_2
    div-int/lit8 v3, v3, 0x3

    shl-int/lit8 v1, v3, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 127
    aput v1, v10, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v3, v18

    move v4, v8

    move-object v6, v10

    .line 130
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GlintFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v3, v18, 0x1

    move v4, v12

    move-object/from16 v5, v19

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v19, v5

    .line 133
    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->blur:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    .line 134
    new-instance v1, Lcom/jhlabs/image/GaussianFilter;

    invoke-direct {v1, v0}, Lcom/jhlabs/image/GaussianFilter;-><init>(F)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0, v2}, Lcom/jhlabs/image/GaussianFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_5

    :cond_5
    move-object/from16 v0, v19

    :goto_5
    move-object v12, v0

    move-object/from16 v1, p1

    if-nez p2, :cond_6

    .line 137
    invoke-virtual {v7, v1, v2}, Lcom/jhlabs/image/GlintFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v15, v0

    goto :goto_6

    :cond_6
    move-object/from16 v15, p2

    .line 139
    :goto_6
    iget-boolean v0, v7, Lcom/jhlabs/image/GlintFilter;->glintOnly:Z

    if-eqz v0, :cond_7

    mul-int v0, v8, v9

    .line 140
    new-array v0, v0, [I

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    move v5, v9

    .line 142
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GlintFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v0

    :goto_7
    move-object/from16 v17, v0

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v9, :cond_12

    mul-int v18, v6, v8

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v12

    move v3, v6

    move v4, v8

    move/from16 v19, v6

    move-object v6, v10

    .line 146
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GlintFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 147
    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    sub-int v6, v19, v0

    const/4 v0, 0x0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v1, v1, v19

    .line 148
    iget v2, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    add-int v6, v19, v2

    add-int/lit8 v2, v9, -0x1

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v3, v3, v19

    sub-int v6, v19, v11

    .line 149
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v4, v19

    add-int v6, v19, v11

    .line 150
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v2, v2, v19

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v8, :cond_11

    .line 152
    aget v6, v10, v5

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->threshold:F

    mul-float v0, v0, v16

    cmpl-float v0, v6, v0

    if-lez v0, :cond_f

    .line 153
    iget v0, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    sub-int v0, v5, v0

    const/4 v6, 0x0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v5

    .line 154
    iget v6, v7, Lcom/jhlabs/image/GlintFilter;->length:I

    add-int/2addr v6, v5

    add-int/lit8 v7, v8, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v5

    move-object/from16 v20, v10

    sub-int v10, v5, v11

    move-object/from16 v21, v12

    const/4 v12, 0x0

    .line 155
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v10, v5

    add-int v12, v5, v11

    .line 156
    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int/2addr v12, v5

    move/from16 v24, v9

    move/from16 v22, v11

    const/4 v11, 0x0

    const/16 v23, 0x0

    :goto_a
    const/4 v9, 0x4

    if-gt v11, v6, :cond_8

    add-int v25, v18, v11

    move/from16 p1, v6

    .line 160
    aget v6, v17, v25

    move-object/from16 p2, v15

    aget v15, v13, v23

    invoke-static {v6, v15, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v6

    aput v6, v17, v25

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v6, p1

    move-object/from16 v15, p2

    goto :goto_a

    :cond_8
    move-object/from16 p2, v15

    const/4 v11, -0x1

    const/4 v15, 0x1

    :goto_b
    if-lt v11, v0, :cond_9

    add-int v23, v18, v11

    .line 162
    aget v6, v17, v23

    move/from16 v25, v0

    aget v0, v13, v15

    invoke-static {v6, v0, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v0

    aput v0, v17, v23

    add-int/lit8 v11, v11, -0x1

    const/4 v0, 0x1

    add-int/2addr v15, v0

    move/from16 v0, v25

    goto :goto_b

    :cond_9
    add-int v0, v18, v8

    move v11, v0

    const/4 v6, 0x1

    const/4 v15, 0x0

    :goto_c
    if-gt v6, v3, :cond_a

    move/from16 v23, v3

    .line 165
    aget v3, v17, v11

    move/from16 v25, v5

    aget v5, v13, v15

    invoke-static {v3, v5, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v3

    aput v3, v17, v11

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v11, v8

    const/4 v3, 0x1

    add-int/2addr v15, v3

    move/from16 v3, v23

    move/from16 v5, v25

    goto :goto_c

    :cond_a
    move/from16 v23, v3

    move/from16 v25, v5

    sub-int v3, v18, v8

    move v6, v3

    const/4 v5, -0x1

    const/4 v11, 0x0

    :goto_d
    if-lt v5, v1, :cond_b

    .line 167
    aget v15, v17, v6

    move/from16 p1, v1

    aget v1, v13, v11

    invoke-static {v15, v1, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v1

    aput v1, v17, v6

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v6, v8

    const/4 v1, 0x1

    add-int/2addr v11, v1

    move/from16 v1, p1

    goto :goto_d

    :cond_b
    move/from16 p1, v1

    .line 170
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 171
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 173
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    move v6, v5

    const/4 v5, 0x1

    const/4 v11, 0x0

    :goto_e
    if-gt v5, v1, :cond_c

    .line 175
    aget v15, v17, v6

    move/from16 v26, v1

    aget v1, v14, v11

    invoke-static {v15, v1, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v1

    aput v1, v17, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v8, 0x1

    add-int/2addr v6, v1

    const/4 v1, 0x1

    add-int/2addr v11, v1

    move/from16 v1, v26

    goto :goto_e

    :cond_c
    neg-int v1, v10

    neg-int v5, v4

    .line 177
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v10, v3, -0x1

    move v11, v10

    const/4 v10, 0x1

    const/4 v15, 0x0

    :goto_f
    if-gt v10, v6, :cond_d

    move/from16 v26, v4

    .line 179
    aget v4, v17, v11

    move/from16 v27, v6

    aget v6, v14, v15

    invoke-static {v4, v6, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v4

    aput v4, v17, v11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v8, 0x1

    sub-int/2addr v11, v4

    const/4 v4, 0x1

    add-int/2addr v15, v4

    move/from16 v4, v26

    move/from16 v6, v27

    goto :goto_f

    :cond_d
    move/from16 v26, v4

    .line 181
    invoke-static {v12, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_10
    if-gt v3, v4, :cond_e

    .line 183
    aget v10, v17, v5

    aget v11, v14, v6

    invoke-static {v10, v11, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v10

    aput v10, v17, v5

    add-int/lit8 v3, v3, 0x1

    neg-int v10, v8

    const/4 v11, 0x1

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    add-int/2addr v6, v11

    goto :goto_10

    .line 185
    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    const/4 v0, 0x1

    const/4 v4, 0x0

    :goto_11
    if-gt v0, v1, :cond_10

    .line 187
    aget v5, v17, v3

    aget v6, v14, v4

    invoke-static {v5, v6, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v5

    aput v5, v17, v3

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v7

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_11

    :cond_f
    move/from16 p1, v1

    move/from16 v23, v3

    move/from16 v26, v4

    move/from16 v25, v5

    move/from16 v24, v9

    move-object/from16 v20, v10

    move/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 p2, v15

    :cond_10
    const/4 v5, 0x1

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v0, v25, 0x1

    move-object/from16 v7, p0

    move/from16 v1, p1

    move-object/from16 v15, p2

    move v5, v0

    move-object/from16 v10, v20

    move-object/from16 v12, v21

    move/from16 v11, v22

    move/from16 v3, v23

    move/from16 v9, v24

    move/from16 v4, v26

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_11
    move/from16 v24, v9

    move-object/from16 v20, v10

    move/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 p2, v15

    const/4 v5, 0x1

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v7, p0

    goto/16 :goto_8

    :cond_12
    move/from16 v24, v9

    move-object/from16 p2, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v4, v8

    move/from16 v5, v24

    move-object/from16 v6, v17

    .line 192
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GlintFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getAmount()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/GlintFilter;->amount:F

    return v0
.end method

.method public getBlur()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/GlintFilter;->blur:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getGlintOnly()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/jhlabs/image/GlintFilter;->glintOnly:Z

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/GlintFilter;->length:I

    return v0
.end method

.method public getThreshold()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/image/GlintFilter;->threshold:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/GlintFilter;->amount:F

    return-void
.end method

.method public setBlur(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/GlintFilter;->blur:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/jhlabs/image/GlintFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setGlintOnly(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/jhlabs/image/GlintFilter;->glintOnly:Z

    return-void
.end method

.method public setLength(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/GlintFilter;->length:I

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/GlintFilter;->threshold:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Glint..."

    return-object v0
.end method
