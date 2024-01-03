.class public Lcom/jhlabs/image/ConvolveFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "ConvolveFilter.java"


# static fields
.field public static CLAMP_EDGES:I = 0x1

.field public static WRAP_EDGES:I = 0x2

.field public static ZERO_EDGES:I = 0x0

.field static final serialVersionUID:J = 0x1f136b88411a97e2L


# instance fields
.field protected alpha:Z

.field private edgeAction:I

.field protected kernel:Ljava/awt/image/Kernel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 43
    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>([F)V

    return-void
.end method

.method public constructor <init>(II[F)V
    .locals 1

    .line 61
    new-instance v0, Ljava/awt/image/Kernel;

    invoke-direct {v0, p2, p1, p3}, Ljava/awt/image/Kernel;-><init>(II[F)V

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>(Ljava/awt/image/Kernel;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/Kernel;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/jhlabs/image/ConvolveFilter;->kernel:Ljava/awt/image/Kernel;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/jhlabs/image/ConvolveFilter;->alpha:Z

    .line 37
    sget v0, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    iput v0, p0, Lcom/jhlabs/image/ConvolveFilter;->edgeAction:I

    .line 69
    iput-object p1, p0, Lcom/jhlabs/image/ConvolveFilter;->kernel:Ljava/awt/image/Kernel;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 51
    new-instance v0, Ljava/awt/image/Kernel;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1, p1}, Ljava/awt/image/Kernel;-><init>(II[F)V

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>(Ljava/awt/image/Kernel;)V

    return-void
.end method

.method public static convolve(Ljava/awt/image/Kernel;[I[IIII)V
    .locals 7

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    .line 135
    invoke-static/range {v0 .. v6}, Lcom/jhlabs/image/ConvolveFilter;->convolve(Ljava/awt/image/Kernel;[I[IIIZI)V

    return-void
.end method

.method public static convolve(Ljava/awt/image/Kernel;[I[IIIZI)V
    .locals 2

    .line 139
    invoke-virtual {p0}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    invoke-static/range {p0 .. p6}, Lcom/jhlabs/image/ConvolveFilter;->convolveH(Ljava/awt/image/Kernel;[I[IIIZI)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 142
    invoke-static/range {p0 .. p6}, Lcom/jhlabs/image/ConvolveFilter;->convolveV(Ljava/awt/image/Kernel;[I[IIIZI)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/jhlabs/image/ConvolveFilter;->convolveHV(Ljava/awt/image/Kernel;[I[IIIZI)V

    :goto_0
    return-void
.end method

.method public static convolveH(Ljava/awt/image/Kernel;[I[IIIZI)V
    .locals 18

    move/from16 v0, p3

    move/from16 v1, p6

    const/4 v2, 0x0

    move-object/from16 v3, p0

    .line 209
    invoke-virtual {v3, v2}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v2

    .line 210
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v3

    .line 211
    div-int/lit8 v3, v3, 0x2

    move/from16 v5, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    mul-int v8, v6, v0

    move v9, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    neg-int v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-gt v10, v3, :cond_5

    add-int v16, v3, v10

    .line 219
    aget v16, v2, v16

    cmpl-float v17, v16, v11

    if-eqz v17, :cond_4

    add-int v11, v7, v10

    if-gez v11, :cond_1

    .line 224
    sget v4, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_3

    .line 226
    :cond_0
    sget v4, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v1, v4, :cond_3

    add-int v4, v7, v0

    .line 227
    rem-int/2addr v4, v0

    goto :goto_3

    :cond_1
    if-lt v11, v0, :cond_3

    .line 229
    sget v4, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v1, v4, :cond_2

    add-int/lit8 v4, v0, -0x1

    goto :goto_3

    .line 231
    :cond_2
    sget v4, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v1, v4, :cond_3

    add-int v4, v7, v0

    .line 232
    rem-int/2addr v4, v0

    goto :goto_3

    :cond_3
    move v4, v11

    :goto_3
    add-int/2addr v4, v8

    .line 234
    aget v4, p1, v4

    shr-int/lit8 v11, v4, 0x18

    const/16 v0, 0xff

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v12, v11

    shr-int/lit8 v11, v4, 0x10

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v13, v11

    shr-int/lit8 v11, v4, 0x8

    and-int/2addr v11, v0

    int-to-float v11, v11

    mul-float v11, v11, v16

    add-float/2addr v14, v11

    and-int/2addr v0, v4

    int-to-float v0, v0

    mul-float v16, v16, v0

    add-float v15, v15, v16

    :cond_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, p3

    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0xff

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-eqz p5, :cond_6

    float-to-double v0, v12

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v10

    double-to-int v0, v0

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    move v0, v4

    :cond_6
    float-to-double v12, v13

    .line 242
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v1, v12

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    float-to-double v12, v14

    .line 243
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v4, v12

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    float-to-double v12, v15

    .line 244
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-int v10, v12

    invoke-static {v10}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v10

    add-int/lit8 v11, v9, 0x1

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v4, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v10

    .line 245
    aput v0, p2, v9

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p3

    move/from16 v1, p6

    move v9, v11

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p6

    move v7, v9

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static convolveHV(Ljava/awt/image/Kernel;[I[IIIZI)V
    .locals 20

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 152
    invoke-virtual {v4, v3}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v3

    .line 153
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v5

    .line 154
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Kernel;->getWidth()I

    move-result v4

    .line 155
    div-int/lit8 v5, v5, 0x2

    .line 156
    div-int/lit8 v6, v4, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v8, v1, :cond_b

    move v10, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_a

    neg-int v11, v5

    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-gt v11, v5, :cond_8

    add-int v12, v8, v11

    if-ltz v12, :cond_0

    if-ge v12, v1, :cond_0

    mul-int v12, v12, v0

    move/from16 v17, v10

    goto :goto_3

    :cond_0
    move/from16 v17, v10

    .line 167
    sget v10, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v2, v10, :cond_1

    mul-int v12, v8, v0

    goto :goto_3

    .line 169
    :cond_1
    sget v10, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v2, v10, :cond_7

    add-int/2addr v12, v1

    .line 170
    rem-int/2addr v12, v1

    mul-int v12, v12, v0

    :goto_3
    add-int v10, v11, v5

    mul-int v10, v10, v4

    add-int/2addr v10, v6

    neg-int v1, v6

    :goto_4
    if-gt v1, v6, :cond_7

    add-int v18, v10, v1

    .line 175
    aget v18, v3, v18

    const/16 v16, 0x0

    cmpl-float v19, v18, v16

    if-eqz v19, :cond_5

    move-object/from16 v19, v3

    add-int v3, v9, v1

    if-ltz v3, :cond_2

    if-lt v3, v0, :cond_4

    .line 180
    :cond_2
    sget v3, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v2, v3, :cond_3

    move v3, v9

    goto :goto_5

    .line 182
    :cond_3
    sget v3, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v2, v3, :cond_6

    add-int v3, v9, v0

    .line 183
    rem-int/2addr v3, v0

    :cond_4
    :goto_5
    add-int/2addr v3, v12

    .line 187
    aget v3, p1, v3

    shr-int/lit8 v0, v3, 0x18

    const/16 v2, 0xff

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v18

    add-float/2addr v13, v0

    shr-int/lit8 v0, v3, 0x10

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v18

    add-float/2addr v14, v0

    shr-int/lit8 v0, v3, 0x8

    and-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v18

    add-float/2addr v15, v0

    and-int/lit16 v0, v3, 0xff

    int-to-float v0, v0

    mul-float v18, v18, v0

    add-float v7, v7, v18

    goto :goto_6

    :cond_5
    move-object/from16 v19, v3

    :cond_6
    const/16 v2, 0xff

    :goto_6
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, p3

    move/from16 v2, p6

    move-object/from16 v3, v19

    goto :goto_4

    :cond_7
    move-object/from16 v19, v3

    const/16 v16, 0x0

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v10, v17

    move-object/from16 v3, v19

    goto/16 :goto_2

    :cond_8
    move-object/from16 v19, v3

    move/from16 v17, v10

    const/16 v2, 0xff

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-eqz p5, :cond_9

    float-to-double v2, v13

    .line 195
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v12

    goto :goto_7

    :cond_9
    const/16 v12, 0xff

    :goto_7
    float-to-double v2, v14

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v0

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    float-to-double v10, v15

    .line 197
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v0

    double-to-int v3, v10

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    float-to-double v10, v7

    .line 198
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v0

    double-to-int v0, v10

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    add-int/lit8 v10, v17, 0x1

    shl-int/lit8 v1, v12, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 199
    aput v0, p2, v17

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    move-object/from16 v3, v19

    goto/16 :goto_1

    :cond_a
    move-object/from16 v19, v3

    move/from16 v17, v10

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    move/from16 v9, v17

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static convolveV(Ljava/awt/image/Kernel;[I[IIIZI)V
    .locals 17

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p6

    const/4 v3, 0x0

    move-object/from16 v4, p0

    .line 255
    invoke-virtual {v4, v3}, Ljava/awt/image/Kernel;->getKernelData([F)[F

    move-result-object v3

    .line 256
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/Kernel;->getHeight()I

    move-result v4

    .line 257
    div-int/lit8 v4, v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_8

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    neg-int v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-gt v9, v4, :cond_5

    add-int v5, v6, v9

    if-gez v5, :cond_1

    .line 267
    sget v15, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v2, v15, :cond_0

    const/4 v5, 0x0

    goto :goto_4

    .line 269
    :cond_0
    sget v15, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v2, v15, :cond_3

    add-int v5, v6, v1

    .line 270
    rem-int/2addr v5, v1

    goto :goto_3

    :cond_1
    if-lt v5, v1, :cond_3

    .line 274
    sget v15, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    if-ne v2, v15, :cond_2

    add-int/lit8 v5, v1, -0x1

    goto :goto_3

    .line 276
    :cond_2
    sget v15, Lcom/jhlabs/image/ConvolveFilter;->WRAP_EDGES:I

    if-ne v2, v15, :cond_3

    add-int v5, v6, v1

    .line 277
    rem-int/2addr v5, v1

    :cond_3
    :goto_3
    mul-int v5, v5, v0

    :goto_4
    add-int v15, v9, v4

    .line 283
    aget v15, v3, v15

    cmpl-float v16, v15, v10

    if-eqz v16, :cond_4

    add-int/2addr v5, v7

    .line 286
    aget v5, p1, v5

    shr-int/lit8 v10, v5, 0x18

    const/16 v0, 0xff

    and-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v10, v10, v15

    add-float/2addr v11, v10

    shr-int/lit8 v10, v5, 0x10

    and-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v10, v10, v15

    add-float/2addr v12, v10

    shr-int/lit8 v10, v5, 0x8

    and-int/2addr v10, v0

    int-to-float v10, v10

    mul-float v10, v10, v15

    add-float/2addr v13, v10

    and-int/2addr v0, v5

    int-to-float v0, v0

    mul-float v15, v15, v0

    add-float/2addr v14, v15

    :cond_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v0, p3

    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0xff

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-eqz p5, :cond_6

    float-to-double v0, v11

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v9

    double-to-int v0, v0

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v15

    goto :goto_5

    :cond_6
    const/16 v15, 0xff

    :goto_5
    float-to-double v0, v12

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v9

    double-to-int v0, v0

    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    float-to-double v11, v13

    .line 295
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-int v1, v11

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    float-to-double v11, v14

    .line 296
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v9

    double-to-int v5, v11

    invoke-static {v5}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v5

    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v10, v15, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v5

    .line 297
    aput v0, p2, v8

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move v8, v9

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    move v7, v8

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 116
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

    .line 97
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 98
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/ConvolveFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_0
    mul-int v0, v7, v8

    .line 103
    new-array v9, v0, [I

    .line 104
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    .line 105
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/ConvolveFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 107
    iget-object v0, p0, Lcom/jhlabs/image/ConvolveFilter;->kernel:Ljava/awt/image/Kernel;

    iget-boolean v5, p0, Lcom/jhlabs/image/ConvolveFilter;->alpha:Z

    iget v6, p0, Lcom/jhlabs/image/ConvolveFilter;->edgeAction:I

    move-object v1, v9

    move-object v2, v10

    move v3, v7

    move v4, v8

    invoke-static/range {v0 .. v6}, Lcom/jhlabs/image/ConvolveFilter;->convolve(Ljava/awt/image/Kernel;[I[IIIZI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v4, v7

    move v5, v8

    move-object v6, v10

    .line 109
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/ConvolveFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object p2
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 120
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getEdgeAction()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/jhlabs/image/ConvolveFilter;->edgeAction:I

    return v0
.end method

.method public getKernel()Ljava/awt/image/Kernel;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/jhlabs/image/ConvolveFilter;->kernel:Ljava/awt/image/Kernel;

    return-object v0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 4

    if-nez p2, :cond_0

    .line 125
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUseAlpha()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/jhlabs/image/ConvolveFilter;->alpha:Z

    return v0
.end method

.method public setEdgeAction(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/jhlabs/image/ConvolveFilter;->edgeAction:I

    return-void
.end method

.method public setKernel(Ljava/awt/image/Kernel;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/jhlabs/image/ConvolveFilter;->kernel:Ljava/awt/image/Kernel;

    return-void
.end method

.method public setUseAlpha(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/jhlabs/image/ConvolveFilter;->alpha:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Convolve..."

    return-object v0
.end method
