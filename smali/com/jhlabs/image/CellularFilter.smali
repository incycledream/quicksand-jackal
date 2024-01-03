.class public Lcom/jhlabs/image/CellularFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "CellularFilter.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;
.implements Lcom/jhlabs/image/MutatableFilter;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/CellularFilter$Point;
    }
.end annotation


# static fields
.field public static final HEXAGONAL:I = 0x2

.field public static final OCTAGONAL:I = 0x3

.field public static final RANDOM:I = 0x0

.field public static final SQUARE:I = 0x1

.field public static final TRIANGULAR:I = 0x4

.field private static probabilities:[B


# instance fields
.field public amount:F

.field protected angle:F

.field protected angleCoefficient:F

.field public bias:F

.field protected coefficients:[F

.field protected colormap:Lcom/jhlabs/image/Colormap;

.field public distancePower:F

.field public gain:F

.field private gradientCoefficient:F

.field protected gridType:I

.field protected m00:F

.field protected m01:F

.field protected m10:F

.field protected m11:F

.field private max:F

.field private min:F

.field protected random:Ljava/util/Random;

.field protected randomness:F

.field protected results:[Lcom/jhlabs/image/CellularFilter$Point;

.field protected scale:F

.field protected stretch:F

.field public turbulence:F

.field public useColor:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 57
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->stretch:F

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/jhlabs/image/CellularFilter;->angle:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 31
    iput v2, p0, Lcom/jhlabs/image/CellularFilter;->gain:F

    .line 32
    iput v2, p0, Lcom/jhlabs/image/CellularFilter;->bias:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 33
    iput v2, p0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    const/4 v2, 0x0

    .line 34
    iput-boolean v2, p0, Lcom/jhlabs/image/CellularFilter;->useColor:Z

    .line 35
    new-instance v3, Lcom/jhlabs/image/Gradient;

    invoke-direct {v3}, Lcom/jhlabs/image/Gradient;-><init>()V

    iput-object v3, p0, Lcom/jhlabs/image/CellularFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/4 v3, 0x4

    new-array v3, v3, [F

    .line 36
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    .line 38
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    .line 39
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->m00:F

    .line 40
    iput v1, p0, Lcom/jhlabs/image/CellularFilter;->m01:F

    .line 41
    iput v1, p0, Lcom/jhlabs/image/CellularFilter;->m10:F

    .line 42
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->m11:F

    const/4 v3, 0x0

    .line 43
    iput-object v3, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    .line 44
    iput v1, p0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    const/4 v3, 0x2

    .line 45
    iput v3, p0, Lcom/jhlabs/image/CellularFilter;->gridType:I

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/jhlabs/image/CellularFilter$Point;

    .line 58
    iput-object v3, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    const/4 v3, 0x0

    .line 59
    :goto_0
    iget-object v4, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 60
    new-instance v5, Lcom/jhlabs/image/CellularFilter$Point;

    invoke-direct {v5, p0}, Lcom/jhlabs/image/CellularFilter$Point;-><init>(Lcom/jhlabs/image/CellularFilter;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    sget-object v3, Lcom/jhlabs/image/CellularFilter;->probabilities:[B

    if-nez v3, :cond_3

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 62
    sput-object v3, Lcom/jhlabs/image/CellularFilter;->probabilities:[B

    const/high16 v3, 0x40200000    # 2.5f

    :goto_1
    const/16 v4, 0xa

    if-ge v2, v4, :cond_3

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    int-to-float v4, v2

    mul-float v0, v0, v4

    :cond_1
    float-to-double v4, v3

    int-to-double v6, v2

    .line 69
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    const/high16 v5, -0x3fe00000    # -2.5f

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v4, v4, v5

    div-float/2addr v4, v0

    const/high16 v5, 0x46000000    # 8192.0f

    mul-float v6, v1, v5

    float-to-int v6, v6

    add-float/2addr v1, v4

    mul-float v5, v5, v1

    float-to-int v4, v5

    :goto_2
    if-ge v6, v4, :cond_2

    .line 74
    sget-object v5, Lcom/jhlabs/image/CellularFilter;->probabilities:[B

    int-to-byte v7, v2

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 250
    iget-object v3, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    mul-int/lit16 v4, v1, 0x23b

    mul-int/lit8 v5, v2, 0x17

    add-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 251
    iget v3, v0, Lcom/jhlabs/image/CellularFilter;->gridType:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    .line 255
    sget-object v3, Lcom/jhlabs/image/CellularFilter;->probabilities:[B

    iget-object v8, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    and-int/lit16 v8, v8, 0x1fff

    aget-byte v3, v3, v8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_16

    .line 274
    iget v10, v0, Lcom/jhlabs/image/CellularFilter;->gridType:I

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f400000    # 0.75f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    if-eqz v10, :cond_f

    if-eq v10, v7, :cond_d

    const/high16 v15, 0x43090000    # 137.0f

    const/high16 v16, 0x42b20000    # 89.0f

    const v17, 0x43878000    # 271.0f

    if-eq v10, v6, :cond_a

    if-eq v10, v5, :cond_7

    if-eq v10, v4, :cond_2

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto/16 :goto_8

    :cond_2
    and-int/lit8 v10, v2, 0x1

    if-nez v10, :cond_4

    if-nez v9, :cond_3

    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3eb33333    # 0.35f

    const v10, 0x3eb33333    # 0.35f

    goto :goto_3

    :cond_3
    const v10, 0x3f266666    # 0.65f

    goto :goto_2

    :cond_4
    if-nez v9, :cond_5

    const v10, 0x3eb33333    # 0.35f

    :goto_2
    const/high16 v11, 0x3f400000    # 0.75f

    goto :goto_4

    :cond_5
    const/high16 v10, 0x3e800000    # 0.25f

    const v11, 0x3f266666    # 0.65f

    const v10, 0x3f266666    # 0.65f

    :goto_3
    const/high16 v11, 0x3e800000    # 0.25f

    .line 321
    :goto_4
    iget v12, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_6

    int-to-float v14, v1

    add-float v18, v14, v11

    mul-float v4, v18, v17

    int-to-float v5, v2

    add-float/2addr v5, v10

    mul-float v5, v5, v17

    .line 322
    invoke-static {v4, v5}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v4

    mul-float v12, v12, v4

    add-float/2addr v11, v12

    .line 323
    iget v4, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    add-float/2addr v14, v11

    mul-float v14, v14, v17

    add-float v14, v14, v16

    add-float/2addr v5, v15

    invoke-static {v14, v5}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v4, v10

    goto/16 :goto_7

    :cond_6
    move v4, v10

    goto/16 :goto_7

    :cond_7
    const v4, 0x3f34fdf4    # 0.707f

    const v5, 0x3e53f7cf    # 0.207f

    if-eqz v9, :cond_9

    if-eq v9, v7, :cond_8

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    goto :goto_5

    :cond_8
    const v5, 0x3fcccccd    # 1.6f

    const v11, 0x3f34fdf4    # 0.707f

    goto :goto_5

    :cond_9
    const v4, 0x3e53f7cf    # 0.207f

    const/high16 v5, 0x3f800000    # 1.0f

    const v11, 0x3e53f7cf    # 0.207f

    .line 302
    :goto_5
    iget v10, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    cmpl-float v12, v10, v14

    if-eqz v12, :cond_10

    int-to-float v12, v1

    add-float v14, v12, v11

    mul-float v14, v14, v17

    int-to-float v7, v2

    add-float/2addr v7, v4

    mul-float v7, v7, v17

    .line 303
    invoke-static {v14, v7}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v14

    mul-float v10, v10, v14

    add-float/2addr v11, v10

    .line 304
    iget v10, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    add-float/2addr v12, v11

    mul-float v12, v12, v17

    add-float v12, v12, v16

    add-float/2addr v7, v15

    invoke-static {v12, v7}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v7

    mul-float v10, v10, v7

    add-float/2addr v4, v10

    goto/16 :goto_8

    :cond_a
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_b

    const/4 v11, 0x0

    .line 292
    :cond_b
    iget v4, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_c

    int-to-float v5, v1

    add-float v7, v5, v12

    mul-float v7, v7, v17

    int-to-float v10, v2

    add-float/2addr v10, v11

    mul-float v10, v10, v17

    .line 293
    invoke-static {v7, v10}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v7

    mul-float v4, v4, v7

    add-float/2addr v4, v12

    .line 294
    iget v7, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    add-float/2addr v5, v4

    mul-float v5, v5, v17

    add-float v5, v5, v16

    add-float/2addr v10, v15

    invoke-static {v5, v10}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v5

    mul-float v7, v7, v5

    add-float/2addr v11, v7

    goto :goto_6

    :cond_c
    move v4, v11

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f400000    # 0.75f

    goto :goto_8

    .line 281
    :cond_d
    iget v4, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_e

    float-to-double v10, v11

    float-to-double v4, v4

    .line 282
    iget-object v7, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    float-to-double v14, v7

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v14, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v14

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v10

    double-to-float v4, v4

    .line 283
    iget v5, v0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    float-to-double v14, v5

    iget-object v5, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v6, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v14

    double-to-float v11, v10

    :goto_6
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v19, v11

    move v11, v4

    move/from16 v4, v19

    goto :goto_8

    :cond_e
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_7

    .line 276
    :cond_f
    iget-object v4, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v11

    .line 277
    iget-object v4, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    :goto_7
    const/high16 v5, 0x3f800000    # 1.0f

    :cond_10
    :goto_8
    sub-float v6, p1, v11

    .line 327
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v7, p2, v4

    .line 328
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v6, v6, v5

    mul-float v7, v7, v5

    .line 332
    iget v5, v0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    cmpl-float v10, v5, v13

    if-nez v10, :cond_11

    add-float v5, v6, v7

    :goto_9
    move/from16 v16, v9

    :goto_a
    const/4 v8, 0x0

    goto :goto_b

    :cond_11
    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v10, v5, v10

    if-nez v10, :cond_12

    mul-float v5, v6, v6

    mul-float v10, v7, v7

    add-float/2addr v5, v10

    float-to-double v13, v5

    .line 335
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v5, v13

    goto :goto_9

    :cond_12
    float-to-double v14, v6

    move/from16 v16, v9

    float-to-double v8, v5

    .line 337
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    float-to-double v8, v7

    iget v14, v0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    float-to-double v14, v14

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v5, v8

    float-to-double v8, v5

    iget v5, v0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    div-float/2addr v13, v5

    float-to-double v13, v13

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    goto :goto_a

    .line 340
    :goto_b
    aget-object v9, p5, v8

    iget v9, v9, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_13

    const/4 v9, 0x2

    .line 341
    aget-object v10, p5, v9

    const/4 v13, 0x1

    .line 342
    aget-object v12, p5, v13

    aput-object v12, p5, v9

    .line 343
    aget-object v9, p5, v8

    aput-object v9, p5, v13

    .line 344
    aput-object v10, p5, v8

    .line 345
    iput v5, v10, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 346
    iput v6, v10, Lcom/jhlabs/image/CellularFilter$Point;->dx:F

    .line 347
    iput v7, v10, Lcom/jhlabs/image/CellularFilter$Point;->dy:F

    int-to-float v5, v1

    add-float/2addr v5, v11

    .line 348
    iput v5, v10, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    int-to-float v5, v2

    add-float/2addr v5, v4

    .line 349
    iput v5, v10, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    const/4 v9, 0x1

    goto :goto_c

    :cond_13
    const/4 v9, 0x1

    .line 350
    aget-object v10, p5, v9

    iget v10, v10, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    cmpg-float v10, v5, v10

    if-gez v10, :cond_14

    const/4 v10, 0x2

    .line 351
    aget-object v13, p5, v10

    .line 352
    aget-object v12, p5, v9

    aput-object v12, p5, v10

    .line 353
    aput-object v13, p5, v9

    .line 354
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 355
    iput v6, v13, Lcom/jhlabs/image/CellularFilter$Point;->dx:F

    .line 356
    iput v7, v13, Lcom/jhlabs/image/CellularFilter$Point;->dy:F

    int-to-float v5, v1

    add-float/2addr v5, v11

    .line 357
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    int-to-float v5, v2

    add-float/2addr v5, v4

    .line 358
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    goto :goto_c

    :cond_14
    const/4 v10, 0x2

    .line 359
    aget-object v12, p5, v10

    iget v12, v12, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    cmpg-float v12, v5, v12

    if-gez v12, :cond_15

    .line 360
    aget-object v13, p5, v10

    .line 361
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 362
    iput v6, v13, Lcom/jhlabs/image/CellularFilter$Point;->dx:F

    .line 363
    iput v7, v13, Lcom/jhlabs/image/CellularFilter$Point;->dy:F

    int-to-float v5, v1

    add-float/2addr v5, v11

    .line 364
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    int-to-float v5, v2

    add-float/2addr v5, v4

    .line 365
    iput v5, v13, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    :cond_15
    :goto_c
    add-int/lit8 v4, v16, 0x1

    move v9, v4

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_16
    const/4 v4, 0x2

    .line 368
    aget-object v1, p5, v4

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    return v1
.end method

.method private mutate(FFFF)F
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float p3, p3, p2

    cmpg-float p3, v0, p3

    if-gtz p3, :cond_0

    return p1

    :cond_0
    mul-float p2, p2, p4

    .line 530
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide p3

    double-to-float p3, p3

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    return p1
.end method

.method private mutate(FFFFFF)F
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float p3, p3, p2

    cmpg-float p3, v0, p3

    if-gtz p3, :cond_0

    return p1

    :cond_0
    mul-float p2, p2, p4

    .line 524
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide p3

    double-to-float p3, p3

    mul-float p2, p2, p3

    add-float/2addr p1, p2

    invoke-static {p1, p5, p6}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    return p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 534
    invoke-super {p0}, Lcom/jhlabs/image/WholeImageFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jhlabs/image/CellularFilter;

    .line 535
    iget-object v1, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    check-cast v1, [F

    iput-object v1, v0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    .line 536
    iget-object v1, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    invoke-virtual {v1}, [Lcom/jhlabs/image/CellularFilter$Point;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/jhlabs/image/CellularFilter$Point;

    check-cast v1, [Lcom/jhlabs/image/CellularFilter$Point;

    iput-object v1, v0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    .line 537
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, v0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    return-object v0
.end method

.method public evaluate(FF)F
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 372
    :goto_0
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    array-length v1, v5

    if-ge v0, v1, :cond_0

    .line 373
    aget-object v1, v5, v0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v2, v1, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-int v10, v7

    float-to-int v11, v8

    int-to-float v0, v10

    sub-float v12, v7, v0

    int-to-float v0, v11

    sub-float v13, v8, v0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    .line 380
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v0

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v13

    if-lez v1, :cond_1

    add-float v2, v13, v14

    add-int/lit8 v4, v11, -0x1

    .line 382
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move v1, v12

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v0

    :cond_1
    sub-float v15, v14, v13

    cmpl-float v1, v0, v15

    if-lez v1, :cond_2

    sub-float v2, v13, v14

    add-int/lit8 v4, v11, 0x1

    .line 384
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move v1, v12

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v0

    :cond_2
    move/from16 v16, v0

    cmpl-float v0, v16, v12

    if-lez v0, :cond_4

    add-float v17, v12, v14

    add-int/lit8 v18, v10, -0x1

    .line 386
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v13

    move/from16 v3, v18

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    cmpl-float v0, v16, v13

    if-lez v0, :cond_3

    add-float v2, v13, v14

    add-int/lit8 v4, v11, -0x1

    .line 388
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v16

    :cond_3
    cmpl-float v0, v16, v15

    if-lez v0, :cond_4

    sub-float v2, v13, v14

    add-int/lit8 v4, v11, 0x1

    .line 390
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v3, v18

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v16

    :cond_4
    sub-float v0, v14, v12

    cmpl-float v0, v16, v0

    if-lez v0, :cond_6

    sub-float/2addr v12, v14

    add-int/lit8 v10, v10, 0x1

    .line 393
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v0

    cmpl-float v1, v0, v13

    if-lez v1, :cond_5

    add-float v2, v13, v14

    add-int/lit8 v4, v11, -0x1

    .line 395
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move v1, v12

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    move-result v0

    :cond_5
    cmpl-float v0, v0, v15

    if-lez v0, :cond_6

    sub-float v2, v13, v14

    add-int/lit8 v4, v11, 0x1

    .line 397
    iget-object v5, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    move-object/from16 v0, p0

    move v1, v12

    move v3, v10

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/CellularFilter;->checkCube(FFII[Lcom/jhlabs/image/CellularFilter$Point;)F

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_7

    .line 402
    iget-object v3, v6, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aget v3, v3, v1

    iget-object v4, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 403
    :cond_7
    iget v1, v6, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_9

    .line 404
    iget-object v1, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float v1, v8, v1

    float-to-double v3, v1

    iget-object v1, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float v1, v7, v1

    float-to-double v7, v1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v1, v3

    cmpg-float v3, v1, v0

    if-gez v3, :cond_8

    const v3, 0x40c90fdb

    add-float/2addr v1, v3

    :cond_8
    const v3, 0x41490fdb

    div-float/2addr v1, v3

    .line 408
    iget v3, v6, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 410
    :cond_9
    iget v1, v6, Lcom/jhlabs/image/CellularFilter;->gradientCoefficient:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_a

    .line 411
    iget-object v0, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v0, v0, v9

    iget v0, v0, Lcom/jhlabs/image/CellularFilter$Point;->dy:F

    iget-object v1, v6, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v9

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->dx:F

    add-float/2addr v0, v1

    div-float/2addr v14, v0

    .line 412
    iget v0, v6, Lcom/jhlabs/image/CellularFilter;->gradientCoefficient:F

    mul-float v0, v0, v14

    add-float/2addr v2, v0

    :cond_a
    return v2
.end method

.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 11

    mul-int p4, p1, p2

    .line 471
    new-array p4, p4, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p2, :cond_1

    move v9, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, p1, :cond_0

    add-int/lit8 v10, v9, 0x1

    move-object v1, p0

    move v2, v8

    move v3, v7

    move-object v4, p3

    move v5, p1

    move v6, p2

    .line 475
    invoke-virtual/range {v1 .. v6}, Lcom/jhlabs/image/CellularFilter;->getPixel(II[III)I

    move-result v1

    aput v1, p4, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v1, v9

    goto :goto_0

    :cond_1
    return-object p4
.end method

.method public getAmount()F
    .locals 1

    .line 210
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->angle:F

    return v0
.end method

.method public getAngleCoefficient()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    return v0
.end method

.method public getCoefficient(I)F
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aget p1, v0, p1

    return p1
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getDistancePower()F
    .locals 1

    .line 194
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    return v0
.end method

.method public getF1()F
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getF2()F
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getF3()F
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getF4()F
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getGradientCoefficient()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->gradientCoefficient:F

    return v0
.end method

.method public getGridType()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->gridType:I

    return v0
.end method

.method public getPixel(II[III)I
    .locals 4

    const/4 v0, 0x0

    .line 427
    :try_start_0
    iget v1, p0, Lcom/jhlabs/image/CellularFilter;->m00:F

    int-to-float p1, p1

    mul-float v1, v1, p1

    iget v2, p0, Lcom/jhlabs/image/CellularFilter;->m01:F

    int-to-float p2, p2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 428
    iget v2, p0, Lcom/jhlabs/image/CellularFilter;->m10:F

    mul-float v2, v2, p1

    iget p1, p0, Lcom/jhlabs/image/CellularFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v2, p1

    .line 429
    iget p1, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    div-float/2addr v1, p1

    .line 430
    iget p1, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    iget p2, p0, Lcom/jhlabs/image/CellularFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v2, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    .line 433
    iget p2, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v3

    if-nez p2, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/jhlabs/image/CellularFilter;->evaluate(FF)F

    move-result p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    invoke-virtual {p0, v1, v2, p2}, Lcom/jhlabs/image/CellularFilter;->turbulence2(FFF)F

    move-result p2

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float p2, p2, v1

    .line 437
    iget v1, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    mul-float p2, p2, v1

    .line 440
    iget-object v1, p0, Lcom/jhlabs/image/CellularFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/jhlabs/image/CellularFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-interface {v1, p2}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p2

    .line 442
    iget-boolean v1, p0, Lcom/jhlabs/image/CellularFilter;->useColor:Z

    if-eqz v1, :cond_1

    .line 443
    iget-object p2, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object p2, p2, v0

    iget p2, p2, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float/2addr p2, p1

    iget v1, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    mul-float p2, p2, v1

    float-to-int p2, p2

    add-int/lit8 v1, p4, -0x1

    invoke-static {p2, v0, v1}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p2

    .line 444
    iget-object v1, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v1, 0x1

    sub-int/2addr p5, v1

    invoke-static {p1, v0, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p1

    mul-int p1, p1, p4

    add-int/2addr p1, p2

    .line 445
    aget p1, p3, p1

    .line 446
    iget-object p2, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object p2, p2, v1

    iget p2, p2, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object p3, p3, v0

    iget p3, p3, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object p3, p3, v1

    iget p3, p3, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    iget-object p4, p0, Lcom/jhlabs/image/CellularFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object p4, p4, v0

    iget p4, p4, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    add-float/2addr p3, p4

    div-float/2addr p2, p3

    .line 447
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aget p3, p3, v1

    iget-object p4, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aget p4, p4, v0

    invoke-static {p3, p4, p2}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p2

    .line 448
    invoke-static {p2, v2, p1}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p2

    :cond_1
    return p2

    :cond_2
    const/high16 p1, 0x437f0000    # 255.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 452
    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int/lit8 p2, p1, 0x10

    shl-int/lit8 p3, p1, 0x8

    or-int/2addr p2, v2

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getRandomness()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .line 92
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->stretch:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 202
    iget v0, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    return v0
.end method

.method public mutate(FLjava/awt/image/BufferedImageOp;ZZ)V
    .locals 10

    .line 482
    check-cast p2, Lcom/jhlabs/image/CellularFilter;

    .line 483
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_3

    .line 484
    iget p3, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 498
    :cond_0
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x43480000    # 200.0f

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->scale:F

    .line 499
    iget p3, p0, Lcom/jhlabs/image/CellularFilter;->angle:F

    const v2, 0x3e99999a    # 0.3f

    const v3, 0x3fc90fdb

    invoke-direct {p0, p3, p1, v2, v3}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFF)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setAngle(F)V

    .line 500
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->stretch:F

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->stretch:F

    .line 501
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->amount:F

    .line 502
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41000000    # 8.0f

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    .line 503
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v8, 0x40400000    # 3.0f

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    .line 504
    iget v3, p0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->randomness:F

    .line 505
    :goto_0
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 506
    iget-object v2, p2, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aget v4, p3, v1

    const v6, 0x3e99999a    # 0.3f

    const v7, 0x3e4ccccd    # 0.2f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    aput p3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 507
    :cond_1
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    float-to-double v1, p3

    float-to-double v3, p1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    cmpg-double p3, v1, v3

    if-gtz p3, :cond_2

    .line 508
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    rem-int/lit8 p3, p3, 0x5

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->gridType:I

    .line 509
    :cond_2
    iget v2, p0, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/jhlabs/image/CellularFilter;->mutate(FFFFFF)F

    move-result p3

    iput p3, p2, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    goto :goto_3

    .line 485
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getGridType()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setGridType(I)V

    .line 486
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getRandomness()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setRandomness(F)V

    .line 487
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getScale()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setScale(F)V

    .line 488
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getAngle()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setAngle(F)V

    .line 489
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getStretch()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setStretch(F)V

    .line 490
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getAmount()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setAmount(F)V

    .line 491
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getTurbulence()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setTurbulence(F)V

    .line 492
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getColormap()Lcom/jhlabs/image/Colormap;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setColormap(Lcom/jhlabs/image/Colormap;)V

    .line 493
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getDistancePower()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setDistancePower(F)V

    .line 494
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getAngleCoefficient()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/jhlabs/image/CellularFilter;->setAngleCoefficient(F)V

    :goto_2
    const/4 p3, 0x4

    if-ge v1, p3, :cond_4

    .line 496
    invoke-virtual {p0, v1}, Lcom/jhlabs/image/CellularFilter;->getCoefficient(I)F

    move-result p3

    invoke-virtual {p2, v1, p3}, Lcom/jhlabs/image/CellularFilter;->setCoefficient(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez p4, :cond_7

    cmpl-float p3, p1, v0

    if-nez p3, :cond_5

    goto :goto_4

    .line 513
    :cond_5
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    cmpg-float p3, p3, p1

    if-gtz p3, :cond_8

    .line 514
    iget-object p3, p0, Lcom/jhlabs/image/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    cmpg-float p3, p3, p1

    if-gtz p3, :cond_6

    .line 515
    invoke-static {}, Lcom/jhlabs/image/Gradient;->randomGradient()Lcom/jhlabs/image/Gradient;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jhlabs/image/CellularFilter;->setColormap(Lcom/jhlabs/image/Colormap;)V

    goto :goto_5

    .line 517
    :cond_6
    invoke-virtual {p2}, Lcom/jhlabs/image/CellularFilter;->getColormap()Lcom/jhlabs/image/Colormap;

    move-result-object p2

    check-cast p2, Lcom/jhlabs/image/Gradient;

    invoke-virtual {p2, p1}, Lcom/jhlabs/image/Gradient;->mutate(F)V

    goto :goto_5

    .line 512
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/jhlabs/image/CellularFilter;->getColormap()Lcom/jhlabs/image/Colormap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jhlabs/image/CellularFilter;->setColormap(Lcom/jhlabs/image/Colormap;)V

    :cond_8
    :goto_5
    return-void
.end method

.method public setAmount(F)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->amount:F

    return-void
.end method

.method public setAngle(F)V
    .locals 4

    .line 96
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->angle:F

    float-to-double v0, p1

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 99
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->m00:F

    .line 100
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->m01:F

    neg-float v0, v0

    .line 101
    iput v0, p0, Lcom/jhlabs/image/CellularFilter;->m10:F

    .line 102
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->m11:F

    return-void
.end method

.method public setAngleCoefficient(F)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->angleCoefficient:F

    return-void
.end method

.method public setCoefficient(IF)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    aput p2, v0, p1

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/jhlabs/image/CellularFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setDistancePower(F)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->distancePower:F

    return-void
.end method

.method public setF1(F)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setF2(F)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setF3(F)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public setF4(F)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/jhlabs/image/CellularFilter;->coefficients:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    return-void
.end method

.method public setGradientCoefficient(F)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->gradientCoefficient:F

    return-void
.end method

.method public setGridType(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->gridType:I

    return-void
.end method

.method public setRandomness(F)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->randomness:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->scale:F

    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->stretch:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/jhlabs/image/CellularFilter;->turbulence:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Cellular..."

    return-object v0
.end method

.method public turbulence2(FFF)F
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v1, p3

    if-gtz v2, :cond_0

    mul-float v2, v1, p1

    mul-float v3, v1, p2

    .line 421
    invoke-virtual {p0, v2, v3}, Lcom/jhlabs/image/CellularFilter;->evaluate(FF)F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method
