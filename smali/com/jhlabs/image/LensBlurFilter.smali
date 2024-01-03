.class public Lcom/jhlabs/image/LensBlurFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "LensBlurFilter.java"


# instance fields
.field private angle:F

.field private bloom:F

.field private bloomThreshold:F

.field private radius:F

.field private sides:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    const/high16 v0, 0x43400000    # 192.0f

    .line 32
    iput v0, p0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/jhlabs/image/LensBlurFilter;->angle:F

    const/4 v0, 0x5

    .line 34
    iput v0, p0, Lcom/jhlabs/image/LensBlurFilter;->sides:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 42

    move-object/from16 v0, p0

    .line 78
    const-class v1, F

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    .line 79
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    .line 82
    iget v4, v0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v5, v4, 0x2

    add-int v6, v2, v5

    add-int v7, v3, v5

    const/16 v8, 0x80

    const/16 v9, 0x100

    const/16 v10, 0x20

    if-ge v4, v10, :cond_0

    .line 89
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_0
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    if-ge v4, v10, :cond_1

    .line 90
    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_1
    const/4 v8, 0x2

    if-nez p2, :cond_2

    .line 93
    new-instance v11, Ljava/awt/image/BufferedImage;

    invoke-direct {v11, v2, v3, v8}, Ljava/awt/image/BufferedImage;-><init>(III)V

    move-object/from16 v21, v11

    goto :goto_2

    :cond_2
    move-object/from16 v21, p2

    :goto_2
    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_3
    if-ge v11, v7, :cond_3

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x1

    const/4 v13, 0x0

    :goto_4
    if-ge v7, v6, :cond_4

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 109
    :cond_4
    new-instance v6, Lcom/jhlabs/math/FFT;

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-direct {v6, v12}, Lcom/jhlabs/math/FFT;-><init>(I)V

    mul-int v12, v7, v11

    .line 111
    new-array v15, v12, [I

    .line 112
    filled-new-array {v8, v12}, [I

    move-result-object v13

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v22, v13

    check-cast v22, [[F

    .line 113
    filled-new-array {v8, v12}, [I

    move-result-object v13

    invoke-static {v1, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v23, v13

    check-cast v23, [[F

    .line 114
    filled-new-array {v8, v12}, [I

    move-result-object v8

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    .line 117
    iget v8, v0, Lcom/jhlabs/image/LensBlurFilter;->sides:I

    int-to-double v9, v8

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v9

    .line 118
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v8, v16, v8

    .line 119
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    mul-float v10, v10, v10

    move-object/from16 v18, v15

    float-to-double v14, v10

    .line 120
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->angle:F

    move-object/from16 p2, v1

    move/from16 v26, v2

    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v27, 0x0

    :goto_5
    if-ge v10, v11, :cond_a

    move/from16 v28, v5

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_9

    move/from16 v29, v3

    int-to-float v3, v5

    move/from16 v30, v4

    int-to-float v4, v7

    const/high16 v31, 0x40000000    # 2.0f

    div-float v4, v4, v31

    sub-float/2addr v3, v4

    float-to-double v3, v3

    move-object/from16 v32, v6

    int-to-float v6, v10

    move/from16 v33, v7

    int-to-float v7, v11

    div-float v7, v7, v31

    sub-float/2addr v6, v7

    float-to-double v6, v6

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v34, v3, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v36, v6, v6

    add-double v34, v34, v36

    const-wide/16 v36, 0x0

    cmpg-double v31, v34, v14

    if-gez v31, :cond_5

    move-wide/from16 v38, v16

    goto :goto_7

    :cond_5
    move-wide/from16 v38, v36

    :goto_7
    cmpl-double v31, v38, v36

    if-eqz v31, :cond_8

    .line 130
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v34

    move-wide/from16 v40, v14

    .line 131
    iget v14, v0, Lcom/jhlabs/image/LensBlurFilter;->sides:I

    if-eqz v14, :cond_6

    .line 132
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    add-double/2addr v3, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v12

    .line 133
    invoke-static {v3, v4, v6, v7}, Lcom/jhlabs/image/ImageMath;->mod(DD)D

    move-result-wide v3

    sub-double/2addr v3, v12

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v8

    goto :goto_8

    :cond_6
    move-wide/from16 v3, v16

    :goto_8
    mul-double v3, v3, v34

    .line 137
    iget v6, v0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    float-to-double v6, v6

    cmpg-double v14, v3, v6

    if-gez v14, :cond_7

    move-wide/from16 v38, v16

    goto :goto_9

    :cond_7
    move-wide/from16 v38, v36

    goto :goto_9

    :cond_8
    move-wide/from16 v40, v14

    :goto_9
    move-wide/from16 v3, v38

    double-to-float v3, v3

    add-float v20, v20, v3

    const/4 v4, 0x0

    .line 141
    aget-object v6, v22, v4

    aput v3, v6, v27

    const/4 v3, 0x1

    .line 142
    aget-object v4, v22, v3

    const/4 v3, 0x0

    aput v3, v4, v27

    add-int/lit8 v27, v27, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v29

    move/from16 v4, v30

    move-object/from16 v6, v32

    move/from16 v7, v33

    move-wide/from16 v14, v40

    goto/16 :goto_6

    :cond_9
    move/from16 v29, v3

    move/from16 v30, v4

    move-object/from16 v32, v6

    move/from16 v33, v7

    move-wide/from16 v40, v14

    const/4 v3, 0x0

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v28

    move/from16 v3, v29

    goto/16 :goto_5

    :cond_a
    move/from16 v29, v3

    move/from16 v30, v4

    move/from16 v28, v5

    move-object/from16 v32, v6

    move/from16 v33, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v1, v11, :cond_c

    move v3, v2

    move/from16 v7, v33

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v7, :cond_b

    const/4 v4, 0x0

    .line 151
    aget-object v5, v22, v4

    aget v4, v5, v3

    div-float v4, v4, v20

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move/from16 v33, v7

    goto :goto_a

    :cond_c
    move/from16 v7, v33

    const/4 v1, 0x0

    .line 156
    aget-object v13, v22, v1

    const/4 v1, 0x1

    aget-object v14, v22, v1

    const/16 v17, 0x1

    move-object/from16 v12, v32

    move-object/from16 v1, v18

    move v15, v7

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/jhlabs/math/FFT;->transform2D([F[FIIZ)V

    move/from16 v2, v30

    neg-int v3, v2

    move v9, v3

    move/from16 v4, v29

    :goto_c
    if-ge v9, v4, :cond_24

    move v6, v3

    move/from16 v5, v26

    :goto_d
    if-ge v6, v5, :cond_23

    if-gez v6, :cond_d

    add-int v8, v7, v6

    const/16 v24, 0x0

    rsub-int/lit8 v10, v6, 0x0

    const/4 v14, 0x0

    goto :goto_e

    :cond_d
    const/16 v24, 0x0

    move v14, v6

    move v8, v7

    const/4 v10, 0x0

    :goto_e
    if-gez v9, :cond_e

    add-int v12, v11, v9

    rsub-int/lit8 v13, v9, 0x0

    move/from16 v26, v13

    const/4 v15, 0x0

    goto :goto_f

    :cond_e
    move v15, v9

    move v12, v11

    const/16 v26, 0x0

    :goto_f
    add-int v13, v14, v8

    if-le v13, v5, :cond_f

    sub-int v8, v5, v14

    :cond_f
    add-int v13, v15, v12

    if-le v13, v4, :cond_10

    sub-int v12, v4, v15

    :cond_10
    mul-int v13, v26, v7

    add-int v19, v13, v10

    move-object/from16 v13, p1

    move/from16 v16, v8

    move/from16 v17, v12

    move-object/from16 v18, v1

    move/from16 v20, v7

    .line 179
    invoke-virtual/range {v13 .. v20}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_10
    if-ge v13, v11, :cond_19

    add-int v15, v13, v9

    if-gez v15, :cond_11

    move/from16 v15, v26

    const/16 v17, 0x1

    goto :goto_11

    :cond_11
    if-le v15, v4, :cond_12

    add-int v15, v26, v12

    const/16 v17, 0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_11

    :cond_12
    const/16 v17, 0x1

    move v15, v13

    :goto_11
    mul-int v15, v15, v7

    move/from16 v18, v14

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v7, :cond_18

    move/from16 v27, v3

    add-int v3, v14, v6

    if-gez v3, :cond_13

    move v3, v10

    goto :goto_13

    :cond_13
    if-le v3, v5, :cond_14

    add-int v3, v10, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    :cond_14
    move v3, v14

    :goto_13
    add-int/2addr v3, v15

    const/16 v17, 0x0

    .line 204
    aget-object v19, p2, v17

    aget v17, v1, v3

    move/from16 v20, v8

    shr-int/lit8 v8, v17, 0x18

    move/from16 v17, v10

    const/16 v10, 0xff

    and-int/2addr v8, v10

    int-to-float v8, v8

    aput v8, v19, v18

    .line 205
    aget v8, v1, v3

    shr-int/lit8 v8, v8, 0x10

    and-int/2addr v8, v10

    int-to-float v8, v8

    .line 206
    aget v16, v1, v3

    move/from16 v19, v12

    shr-int/lit8 v12, v16, 0x8

    and-int/2addr v12, v10

    int-to-float v12, v12

    .line 207
    aget v3, v1, v3

    and-int/2addr v3, v10

    int-to-float v3, v3

    .line 210
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    cmpl-float v10, v8, v10

    if-lez v10, :cond_15

    .line 211
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    mul-float v8, v8, v10

    .line 213
    :cond_15
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    cmpl-float v10, v12, v10

    if-lez v10, :cond_16

    .line 214
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    mul-float v12, v12, v10

    .line 216
    :cond_16
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    cmpl-float v10, v3, v10

    if-lez v10, :cond_17

    .line 217
    iget v10, v0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    mul-float v3, v3, v10

    :cond_17
    const/4 v10, 0x1

    .line 220
    aget-object v25, p2, v10

    aput v8, v25, v18

    const/4 v8, 0x0

    .line 221
    aget-object v25, v23, v8

    aput v12, v25, v18

    .line 222
    aget-object v8, v23, v10

    aput v3, v8, v18

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    move/from16 v12, v19

    move/from16 v8, v20

    move/from16 v3, v27

    const/16 v17, 0x1

    goto :goto_12

    :cond_18
    move/from16 v27, v3

    move/from16 v20, v8

    move/from16 v17, v10

    move/from16 v19, v12

    const/4 v10, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v17

    move/from16 v14, v18

    goto/16 :goto_10

    :cond_19
    move/from16 v27, v3

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 230
    aget-object v13, p2, v3

    aget-object v14, p2, v10

    const/16 v17, 0x1

    move-object/from16 v12, v32

    const/16 v8, 0xff

    move v15, v7

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/jhlabs/math/FFT;->transform2D([F[FIIZ)V

    .line 231
    aget-object v13, v23, v3

    aget-object v14, v23, v10

    invoke-virtual/range {v12 .. v17}, Lcom/jhlabs/math/FFT;->transform2D([F[FIIZ)V

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_14
    if-ge v3, v11, :cond_1b

    move v12, v10

    const/4 v10, 0x0

    :goto_15
    if-ge v10, v7, :cond_1a

    const/4 v13, 0x0

    .line 237
    aget-object v14, p2, v13

    aget v14, v14, v12

    const/4 v15, 0x1

    .line 238
    aget-object v16, p2, v15

    aget v16, v16, v12

    .line 239
    aget-object v17, v22, v13

    aget v17, v17, v12

    .line 240
    aget-object v18, v22, v15

    aget v18, v18, v12

    .line 241
    aget-object v19, p2, v13

    mul-float v20, v14, v17

    mul-float v24, v16, v18

    sub-float v20, v20, v24

    aput v20, v19, v12

    .line 242
    aget-object v19, p2, v15

    mul-float v14, v14, v18

    mul-float v16, v16, v17

    add-float v14, v14, v16

    aput v14, v19, v12

    .line 244
    aget-object v14, v23, v13

    aget v14, v14, v12

    .line 245
    aget-object v16, v23, v15

    aget v16, v16, v12

    .line 246
    aget-object v19, v23, v13

    mul-float v13, v14, v17

    mul-float v20, v16, v18

    sub-float v13, v13, v20

    aput v13, v19, v12

    .line 247
    aget-object v13, v23, v15

    mul-float v14, v14, v18

    mul-float v16, v16, v17

    add-float v14, v14, v16

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    move v10, v12

    goto :goto_14

    :cond_1b
    const/4 v3, 0x0

    .line 253
    aget-object v13, p2, v3

    const/4 v10, 0x1

    aget-object v14, p2, v10

    const/16 v17, 0x0

    move-object/from16 v12, v32

    move v15, v7

    move/from16 v16, v11

    invoke-virtual/range {v12 .. v17}, Lcom/jhlabs/math/FFT;->transform2D([F[FIIZ)V

    .line 254
    aget-object v13, v23, v3

    aget-object v14, v23, v10

    invoke-virtual/range {v12 .. v17}, Lcom/jhlabs/math/FFT;->transform2D([F[FIIZ)V

    shr-int/lit8 v3, v7, 0x1

    shr-int/lit8 v10, v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_16
    if-ge v12, v7, :cond_20

    xor-int v14, v12, v3

    mul-int v14, v14, v7

    move v15, v13

    const/4 v13, 0x0

    :goto_17
    if-ge v13, v7, :cond_1f

    xor-int v16, v13, v10

    add-int v16, v14, v16

    const/16 v24, 0x0

    .line 267
    aget-object v17, p2, v24

    aget v8, v17, v16

    float-to-int v8, v8

    const/16 v25, 0x1

    .line 268
    aget-object v17, p2, v25

    aget v0, v17, v16

    float-to-int v0, v0

    .line 269
    aget-object v17, v23, v24

    move/from16 v19, v3

    aget v3, v17, v16

    float-to-int v3, v3

    .line 270
    aget-object v17, v23, v25

    move/from16 v20, v10

    aget v10, v17, v16

    float-to-int v10, v10

    move/from16 v16, v14

    const/16 v14, 0xff

    if-le v0, v14, :cond_1c

    const/16 v0, 0xff

    :cond_1c
    if-le v3, v14, :cond_1d

    const/16 v3, 0xff

    :cond_1d
    if-le v10, v14, :cond_1e

    const/16 v10, 0xff

    :cond_1e
    shl-int/lit8 v8, v8, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    or-int/2addr v0, v10

    add-int/lit8 v3, v15, 0x1

    .line 280
    aput v0, v1, v15

    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0xff

    move-object/from16 v0, p0

    move v15, v3

    move/from16 v14, v16

    move/from16 v3, v19

    move/from16 v10, v20

    goto :goto_17

    :cond_1f
    move/from16 v19, v3

    move/from16 v20, v10

    const/16 v14, 0xff

    const/16 v24, 0x0

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    const/16 v8, 0xff

    move-object/from16 v0, p0

    move v13, v15

    goto :goto_16

    :cond_20
    const/16 v24, 0x0

    const/16 v25, 0x1

    add-int v14, v6, v2

    add-int v15, v9, v2

    sub-int v0, v7, v28

    sub-int v3, v11, v28

    add-int v8, v14, v0

    if-le v8, v5, :cond_21

    sub-int v8, v5, v14

    move/from16 v16, v8

    goto :goto_18

    :cond_21
    move/from16 v16, v0

    :goto_18
    add-int v8, v15, v3

    if-le v8, v4, :cond_22

    sub-int v3, v4, v15

    :cond_22
    move/from16 v17, v3

    mul-int v3, v2, v7

    add-int v19, v3, v2

    move-object/from16 v13, v21

    move-object/from16 v18, v1

    move/from16 v20, v7

    .line 293
    invoke-virtual/range {v13 .. v20}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    add-int/2addr v6, v0

    move-object/from16 v0, p0

    move/from16 v3, v27

    goto/16 :goto_d

    :cond_23
    move/from16 v27, v3

    const/16 v24, 0x0

    const/16 v25, 0x1

    sub-int v0, v11, v28

    add-int/2addr v9, v0

    move-object/from16 v0, p0

    move/from16 v26, v5

    goto/16 :goto_c

    :cond_24
    return-object v21
.end method

.method public getBloom()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    return v0
.end method

.method public getBloomThreshold()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    return v0
.end method

.method public getSides()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/LensBlurFilter;->sides:I

    return v0
.end method

.method public setBloom(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/LensBlurFilter;->bloom:F

    return-void
.end method

.method public setBloomThreshold(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/LensBlurFilter;->bloomThreshold:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/LensBlurFilter;->radius:F

    return-void
.end method

.method public setSides(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/LensBlurFilter;->sides:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Lens Blur..."

    return-object v0
.end method
