.class public Lcom/jhlabs/composite/MiscCompositeContext;
.super Ljava/lang/Object;
.source "MiscCompositeContext.java"

# interfaces
.implements Ljava/awt/CompositeContext;


# instance fields
.field private alpha:F

.field private dstColorModel:Ljava/awt/image/ColorModel;

.field private dstColorSpace:Ljava/awt/color/ColorSpace;

.field private dstNeedsConverting:Z

.field private rule:I

.field private srcColorModel:Ljava/awt/image/ColorModel;

.field private srcColorSpace:Ljava/awt/color/ColorSpace;

.field private srcNeedsConverting:Z


# direct methods
.method public constructor <init>(IFLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/jhlabs/composite/MiscCompositeContext;->rule:I

    .line 42
    iput p2, p0, Lcom/jhlabs/composite/MiscCompositeContext;->alpha:F

    .line 43
    iput-object p3, p0, Lcom/jhlabs/composite/MiscCompositeContext;->srcColorModel:Ljava/awt/image/ColorModel;

    .line 44
    iput-object p4, p0, Lcom/jhlabs/composite/MiscCompositeContext;->dstColorModel:Ljava/awt/image/ColorModel;

    .line 45
    invoke-virtual {p3}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/composite/MiscCompositeContext;->srcColorSpace:Ljava/awt/color/ColorSpace;

    .line 46
    invoke-virtual {p4}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/composite/MiscCompositeContext;->dstColorSpace:Ljava/awt/color/ColorSpace;

    .line 47
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    return-void
.end method

.method static clamp(I)I
    .locals 1

    const/16 v0, 0xff

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const/16 p0, 0xff

    :cond_1
    :goto_0
    return p0
.end method

.method static multiply255(II)I
    .locals 0

    mul-int p0, p0, p1

    add-int/lit16 p0, p0, 0x80

    shr-int/lit8 p1, p0, 0x8

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x8

    return p0
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 29

    move-object/from16 v0, p0

    .line 67
    iget v1, v0, Lcom/jhlabs/composite/MiscCompositeContext;->alpha:F

    .line 71
    iget v2, v0, Lcom/jhlabs/composite/MiscCompositeContext;->rule:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    move-object v2, v3

    move-object v4, v2

    move-object v5, v4

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x3

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v2, v2, [F

    .line 85
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getMinX()I

    move-result v12

    .line 86
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getWidth()I

    move-result v13

    .line 88
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getMinY()I

    move-result v6

    .line 89
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getHeight()I

    move-result v7

    add-int v14, v6, v7

    move-object v11, v3

    move-object v15, v11

    move v3, v6

    :goto_1
    if-ge v3, v14, :cond_1d

    const/4 v10, 0x1

    move-object/from16 v6, p1

    move v7, v12

    move v8, v3

    move v9, v13

    .line 92
    invoke-virtual/range {v6 .. v11}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v16

    move-object/from16 v6, p2

    move-object v11, v15

    .line 93
    invoke-virtual/range {v6 .. v11}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v15

    mul-int/lit8 v6, v13, 0x4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_1c

    .line 98
    aget v9, v16, v8

    .line 99
    aget v10, v15, v8

    add-int/lit8 v11, v8, 0x1

    .line 100
    aget v7, v16, v11

    move/from16 v17, v6

    .line 101
    aget v6, v15, v11

    add-int/lit8 v18, v8, 0x2

    move/from16 v19, v14

    .line 102
    aget v14, v16, v18

    move/from16 v20, v13

    .line 103
    aget v13, v15, v18

    add-int/lit8 v21, v8, 0x3

    move/from16 v22, v3

    .line 104
    aget v3, v16, v21

    move/from16 v23, v12

    .line 105
    aget v12, v15, v21

    move/from16 v24, v12

    .line 108
    iget v12, v0, Lcom/jhlabs/composite/MiscCompositeContext;->rule:I

    move/from16 v25, v11

    const/16 v27, 0x2

    const/16 v11, 0xff

    packed-switch v12, :pswitch_data_1

    move/from16 v26, v8

    const/4 v12, 0x0

    add-int v8, v10, v9

    if-le v8, v11, :cond_19

    const/16 v9, 0xff

    goto/16 :goto_11

    :pswitch_1
    add-int/2addr v9, v10

    .line 201
    div-int/lit8 v9, v9, 0x2

    add-int/2addr v7, v6

    .line 202
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v14, v13

    .line 203
    div-int/lit8 v11, v14, 0x2

    goto :goto_4

    :pswitch_2
    rsub-int v9, v9, 0xff

    sub-int/2addr v9, v10

    .line 331
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    rsub-int v7, v7, 0xff

    sub-int/2addr v7, v6

    .line 332
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rsub-int v7, v7, 0xff

    rsub-int v12, v14, 0xff

    sub-int/2addr v12, v13

    .line 333
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    :goto_3
    sub-int/2addr v11, v12

    goto :goto_4

    :pswitch_3
    rsub-int v12, v10, 0xff

    sub-int/2addr v12, v10

    .line 325
    invoke-static {v9, v12}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v9

    add-int/2addr v9, v10

    rsub-int v12, v6, 0xff

    sub-int/2addr v12, v6

    .line 326
    invoke-static {v7, v12}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v7

    add-int/2addr v7, v6

    sub-int/2addr v11, v13

    sub-int/2addr v11, v13

    .line 327
    invoke-static {v14, v11}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v11

    add-int/2addr v11, v13

    :goto_4
    move/from16 v26, v8

    move v8, v11

    goto/16 :goto_d

    :pswitch_4
    const/16 v12, 0x7f

    if-le v9, v12, :cond_0

    .line 319
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_5

    :cond_0
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_5
    if-le v7, v12, :cond_1

    .line 320
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_6

    :cond_1
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_6
    if-le v14, v12, :cond_2

    .line 321
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_4

    :cond_2
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_4

    :pswitch_5
    const/16 v12, 0x7f

    if-le v9, v12, :cond_3

    rsub-int v9, v9, 0xff

    rsub-int v12, v10, 0xff

    .line 305
    invoke-static {v9, v12}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    rsub-int v9, v9, 0xff

    goto :goto_7

    .line 307
    :cond_3
    invoke-static {v9, v10}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    :goto_7
    const/16 v12, 0x7f

    if-le v7, v12, :cond_4

    rsub-int v7, v7, 0xff

    rsub-int v12, v6, 0xff

    .line 309
    invoke-static {v7, v12}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    rsub-int v7, v7, 0xff

    goto :goto_8

    .line 311
    :cond_4
    invoke-static {v7, v6}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    :goto_8
    const/16 v12, 0x7f

    if-le v14, v12, :cond_5

    rsub-int v12, v14, 0xff

    rsub-int v14, v13, 0xff

    .line 313
    invoke-static {v12, v14}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v12

    mul-int/lit8 v12, v12, 0x2

    goto :goto_3

    .line 315
    :cond_5
    invoke-static {v14, v13}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    goto :goto_4

    .line 295
    :pswitch_6
    invoke-static {v9, v10}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v12

    move/from16 v26, v8

    rsub-int v8, v10, 0xff

    rsub-int v9, v9, 0xff

    .line 296
    invoke-static {v8, v9}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v8

    rsub-int v8, v8, 0xff

    sub-int/2addr v8, v12

    invoke-static {v10, v8}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v8

    add-int v9, v12, v8

    .line 297
    invoke-static {v7, v6}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v8

    rsub-int v12, v6, 0xff

    rsub-int v7, v7, 0xff

    .line 298
    invoke-static {v12, v7}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v7

    rsub-int v7, v7, 0xff

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v7

    add-int/2addr v7, v8

    .line 299
    invoke-static {v14, v13}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v8

    rsub-int v12, v13, 0xff

    rsub-int v14, v14, 0xff

    .line 300
    invoke-static {v12, v14}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v11, v8

    invoke-static {v13, v11}, Lcom/jhlabs/composite/MiscCompositeContext;->multiply255(II)I

    move-result v11

    add-int/2addr v8, v11

    goto/16 :goto_d

    :pswitch_7
    move/from16 v26, v8

    const/16 v8, 0x80

    if-ge v10, v8, :cond_6

    mul-int v9, v9, v10

    add-int/2addr v9, v8

    shr-int/lit8 v12, v9, 0x8

    add-int/2addr v12, v9

    shr-int/lit8 v9, v12, 0x8

    goto :goto_9

    :cond_6
    rsub-int v12, v10, 0xff

    rsub-int v9, v9, 0xff

    mul-int v12, v12, v9

    add-int/2addr v12, v8

    shr-int/lit8 v9, v12, 0x8

    add-int/2addr v9, v12

    shr-int/lit8 v9, v9, 0x8

    rsub-int v9, v9, 0xff

    :goto_9
    mul-int/lit8 v9, v9, 0x2

    if-ge v6, v8, :cond_7

    mul-int v7, v7, v6

    add-int/2addr v7, v8

    shr-int/lit8 v12, v7, 0x8

    add-int/2addr v12, v7

    shr-int/lit8 v7, v12, 0x8

    goto :goto_a

    :cond_7
    rsub-int v12, v6, 0xff

    rsub-int v7, v7, 0xff

    mul-int v12, v12, v7

    add-int/2addr v12, v8

    shr-int/lit8 v7, v12, 0x8

    add-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    rsub-int v7, v7, 0xff

    :goto_a
    mul-int/lit8 v7, v7, 0x2

    if-ge v13, v8, :cond_8

    mul-int v14, v14, v13

    add-int/2addr v14, v8

    shr-int/lit8 v8, v14, 0x8

    add-int/2addr v8, v14

    shr-int/lit8 v8, v8, 0x8

    mul-int/lit8 v8, v8, 0x2

    goto/16 :goto_d

    :cond_8
    rsub-int v12, v13, 0xff

    rsub-int v14, v14, 0xff

    mul-int v12, v12, v14

    add-int/2addr v12, v8

    shr-int/lit8 v8, v12, 0x8

    add-int/2addr v8, v12

    shr-int/lit8 v8, v8, 0x8

    sub-int/2addr v11, v8

    mul-int/lit8 v8, v11, 0x2

    goto/16 :goto_d

    :pswitch_8
    move/from16 v26, v8

    .line 210
    invoke-static {v9, v7, v14, v4}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 211
    invoke-static {v10, v6, v13, v5}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 213
    iget v7, v0, Lcom/jhlabs/composite/MiscCompositeContext;->rule:I

    const/4 v8, 0x1

    packed-switch v7, :pswitch_data_2

    const/4 v7, 0x0

    goto :goto_b

    :pswitch_9
    const/4 v7, 0x0

    .line 230
    aget v9, v4, v7

    aput v9, v2, v7

    .line 231
    aget v9, v4, v8

    aput v9, v2, v8

    .line 232
    aget v9, v5, v27

    aput v9, v2, v27

    goto :goto_b

    :pswitch_a
    const/4 v7, 0x0

    .line 225
    aget v9, v5, v7

    aput v9, v2, v7

    .line 226
    aget v9, v5, v8

    aput v9, v2, v8

    .line 227
    aget v9, v4, v27

    aput v9, v2, v27

    goto :goto_b

    :pswitch_b
    const/4 v7, 0x0

    .line 220
    aget v9, v5, v7

    aput v9, v2, v7

    .line 221
    aget v9, v4, v8

    aput v9, v2, v8

    .line 222
    aget v9, v5, v27

    aput v9, v2, v27

    goto :goto_b

    :pswitch_c
    const/4 v7, 0x0

    .line 215
    aget v9, v4, v7

    aput v9, v2, v7

    .line 216
    aget v9, v5, v8

    aput v9, v2, v8

    .line 217
    aget v9, v5, v27

    aput v9, v2, v27

    .line 236
    :goto_b
    aget v9, v2, v7

    aget v7, v2, v8

    aget v8, v2, v27

    invoke-static {v9, v7, v8}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result v7

    const/high16 v8, 0xff0000

    and-int/2addr v8, v7

    shr-int/lit8 v9, v8, 0x10

    const v8, 0xff00

    and-int/2addr v8, v7

    shr-int/lit8 v8, v8, 0x8

    and-int/2addr v7, v11

    const/4 v12, 0x0

    move/from16 v28, v8

    move v8, v7

    move/from16 v7, v28

    goto/16 :goto_12

    :pswitch_d
    move/from16 v26, v8

    if-eq v9, v11, :cond_9

    shl-int/lit8 v8, v10, 0x8

    rsub-int v9, v9, 0xff

    .line 280
    div-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_9
    if-eq v7, v11, :cond_a

    shl-int/lit8 v8, v6, 0x8

    rsub-int v7, v7, 0xff

    .line 284
    div-int/2addr v8, v7

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    :cond_a
    if-eq v14, v11, :cond_b

    shl-int/lit8 v8, v13, 0x8

    rsub-int v12, v14, 0xff

    .line 288
    div-int/2addr v8, v12

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_d

    :cond_b
    :goto_c
    move v8, v14

    goto :goto_d

    :pswitch_e
    move/from16 v26, v8

    shl-int/lit8 v8, v9, 0x8

    rsub-int v9, v10, 0x100

    .line 273
    div-int/2addr v8, v9

    invoke-static {v8}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v9

    shl-int/lit8 v7, v7, 0x8

    rsub-int v8, v6, 0x100

    .line 274
    div-int/2addr v7, v8

    invoke-static {v7}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v7

    shl-int/lit8 v8, v14, 0x8

    rsub-int v11, v13, 0x100

    .line 275
    div-int/2addr v8, v11

    invoke-static {v8}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v8

    :goto_d
    const/4 v12, 0x0

    goto/16 :goto_12

    :pswitch_f
    move/from16 v26, v8

    if-le v10, v9, :cond_c

    move v9, v10

    :cond_c
    if-le v6, v7, :cond_d

    move v7, v6

    :cond_d
    if-le v13, v14, :cond_b

    move v14, v13

    goto :goto_c

    :pswitch_10
    move/from16 v26, v8

    rsub-int v8, v10, 0xff

    rsub-int v9, v9, 0xff

    mul-int v8, v8, v9

    const/16 v9, 0x80

    add-int/2addr v8, v9

    shr-int/lit8 v12, v8, 0x8

    add-int/2addr v12, v8

    shr-int/lit8 v8, v12, 0x8

    rsub-int v8, v8, 0xff

    rsub-int v12, v6, 0xff

    rsub-int v7, v7, 0xff

    mul-int v12, v12, v7

    add-int/2addr v12, v9

    shr-int/lit8 v7, v12, 0x8

    add-int/2addr v7, v12

    shr-int/lit8 v7, v7, 0x8

    rsub-int v7, v7, 0xff

    rsub-int v12, v13, 0xff

    rsub-int v14, v14, 0xff

    mul-int v12, v12, v14

    add-int/2addr v12, v9

    shr-int/lit8 v9, v12, 0x8

    add-int/2addr v9, v12

    shr-int/lit8 v9, v9, 0x8

    rsub-int v9, v9, 0xff

    const/4 v12, 0x0

    move/from16 v28, v9

    move v9, v8

    move/from16 v8, v28

    goto/16 :goto_12

    :pswitch_11
    move/from16 v26, v8

    if-eqz v9, :cond_e

    rsub-int v8, v10, 0xff

    shl-int/lit8 v8, v8, 0x8

    .line 259
    div-int/2addr v8, v9

    rsub-int v8, v8, 0xff

    const/4 v12, 0x0

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_e

    :cond_e
    const/4 v12, 0x0

    :goto_e
    if-eqz v7, :cond_f

    rsub-int v8, v6, 0xff

    shl-int/lit8 v8, v8, 0x8

    .line 263
    div-int/2addr v8, v7

    rsub-int v7, v8, 0xff

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_f
    if-eqz v14, :cond_12

    rsub-int v8, v13, 0xff

    shl-int/lit8 v8, v8, 0x8

    .line 267
    div-int/2addr v8, v14

    sub-int/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_12

    :pswitch_12
    move/from16 v26, v8

    const/4 v12, 0x0

    if-eq v10, v11, :cond_10

    rsub-int v8, v9, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v9, v10, 0x1

    .line 244
    div-int/2addr v8, v9

    rsub-int v8, v8, 0xff

    invoke-static {v8}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v9

    :cond_10
    if-eq v6, v11, :cond_11

    rsub-int v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v6, 0x1

    .line 248
    div-int/2addr v7, v8

    rsub-int v7, v7, 0xff

    invoke-static {v7}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v7

    :cond_11
    if-eq v13, v11, :cond_12

    rsub-int v8, v14, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v14, v13, 0x1

    .line 252
    div-int/2addr v8, v14

    sub-int/2addr v11, v8

    invoke-static {v11}, Lcom/jhlabs/composite/MiscCompositeContext;->clamp(I)I

    move-result v8

    goto/16 :goto_12

    :cond_12
    :goto_f
    move v8, v14

    goto/16 :goto_12

    :pswitch_13
    move/from16 v26, v8

    const/4 v12, 0x0

    if-ge v10, v9, :cond_13

    move v9, v10

    :cond_13
    if-ge v6, v7, :cond_14

    move v7, v6

    :cond_14
    if-ge v13, v14, :cond_12

    move v14, v13

    goto :goto_f

    :pswitch_14
    move/from16 v26, v8

    const/4 v12, 0x0

    mul-int v9, v9, v10

    const/16 v8, 0x80

    add-int/2addr v9, v8

    shr-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v9

    shr-int/lit8 v9, v11, 0x8

    mul-int v7, v7, v6

    add-int/2addr v7, v8

    shr-int/lit8 v11, v7, 0x8

    add-int/2addr v11, v7

    shr-int/lit8 v7, v11, 0x8

    mul-int v14, v14, v13

    add-int/2addr v14, v8

    shr-int/lit8 v8, v14, 0x8

    add-int/2addr v8, v14

    shr-int/lit8 v8, v8, 0x8

    goto :goto_12

    :pswitch_15
    move/from16 v26, v8

    const/4 v12, 0x0

    sub-int v8, v10, v9

    if-gez v8, :cond_15

    neg-int v8, v8

    :cond_15
    move v9, v8

    sub-int v7, v6, v7

    if-gez v7, :cond_16

    neg-int v7, v7

    :cond_16
    sub-int v8, v13, v14

    if-gez v8, :cond_1b

    neg-int v8, v8

    goto :goto_12

    :pswitch_16
    move/from16 v26, v8

    const/4 v12, 0x0

    sub-int v8, v10, v9

    if-gez v8, :cond_17

    const/4 v9, 0x0

    goto :goto_10

    :cond_17
    move v9, v8

    :goto_10
    sub-int v7, v6, v7

    if-gez v7, :cond_18

    const/4 v7, 0x0

    :cond_18
    sub-int v8, v13, v14

    if-gez v8, :cond_1b

    const/4 v8, 0x0

    goto :goto_12

    :cond_19
    move v9, v8

    :goto_11
    add-int/2addr v7, v6

    if-le v7, v11, :cond_1a

    const/16 v7, 0xff

    :cond_1a
    add-int v8, v13, v14

    if-le v8, v11, :cond_1b

    const/16 v8, 0xff

    :cond_1b
    :goto_12
    int-to-float v3, v3

    mul-float v3, v3, v1

    const/high16 v11, 0x437f0000    # 255.0f

    div-float v11, v3, v11

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v11

    int-to-float v9, v9

    mul-float v9, v9, v11

    int-to-float v10, v10

    mul-float v10, v10, v14

    add-float/2addr v9, v10

    float-to-int v9, v9

    .line 340
    aput v9, v15, v26

    int-to-float v7, v7

    mul-float v7, v7, v11

    int-to-float v6, v6

    mul-float v6, v6, v14

    add-float/2addr v7, v6

    float-to-int v6, v7

    .line 341
    aput v6, v15, v25

    int-to-float v6, v8

    mul-float v11, v11, v6

    int-to-float v6, v13

    mul-float v6, v6, v14

    add-float/2addr v11, v6

    float-to-int v6, v11

    .line 342
    aput v6, v15, v18

    move/from16 v6, v24

    int-to-float v6, v6

    mul-float v6, v6, v14

    add-float/2addr v3, v6

    float-to-int v3, v3

    .line 343
    aput v3, v15, v21

    add-int/lit8 v8, v26, 0x4

    move/from16 v6, v17

    move/from16 v14, v19

    move/from16 v13, v20

    move/from16 v3, v22

    move/from16 v12, v23

    goto/16 :goto_2

    :cond_1c
    move/from16 v22, v3

    move/from16 v23, v12

    move/from16 v20, v13

    move/from16 v19, v14

    const/4 v10, 0x1

    move-object/from16 v6, p3

    move/from16 v7, v23

    move/from16 v8, v22

    move/from16 v9, v20

    move-object v11, v15

    .line 346
    invoke-virtual/range {v6 .. v11}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v3, v22, 0x1

    move-object/from16 v11, v16

    goto/16 :goto_1

    :cond_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public dispose()V
    .locals 0

    return-void
.end method
