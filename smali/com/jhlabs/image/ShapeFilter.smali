.class public Lcom/jhlabs/image/ShapeFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "ShapeFilter.java"


# static fields
.field public static final CIRCLE_DOWN:I = 0x2

.field public static final CIRCLE_UP:I = 0x1

.field public static final LINEAR:I = 0x0

.field public static final SMOOTH:I = 0x3

.field private static final one:I = 0x29

.field private static final sqrt2:I

.field private static final sqrt5:I


# instance fields
.field protected colormap:Lcom/jhlabs/image/Colormap;

.field private factor:F

.field private invert:Z

.field private merge:Z

.field private type:I

.field private useAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v2, 0x4044800000000000L    # 41.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lcom/jhlabs/image/ShapeFilter;->factor:F

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->useAlpha:Z

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->invert:Z

    .line 40
    iput-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->merge:Z

    .line 48
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    invoke-direct {v0}, Lcom/jhlabs/image/LinearColormap;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShapeFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method private applyMap([I[IIII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    if-nez p5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v3, p5

    :goto_0
    const/4 v4, 0x0

    move/from16 v5, p4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_10

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v1, :cond_f

    mul-int v8, v6, v1

    add-int/2addr v8, v7

    .line 160
    aget v9, p1, v8

    const/16 v10, 0xff

    if-nez v9, :cond_1

    .line 167
    aget v9, p2, v8

    shr-int/lit8 v9, v9, 0x18

    and-int/2addr v9, v10

    move v13, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_6

    .line 170
    :cond_1
    iget v11, v0, Lcom/jhlabs/image/ShapeFilter;->factor:F

    int-to-float v9, v9

    mul-float v11, v11, v9

    int-to-float v9, v3

    div-float/2addr v11, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result v11

    .line 171
    iget v13, v0, Lcom/jhlabs/image/ShapeFilter;->type:I

    if-eq v13, v2, :cond_4

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    const/4 v14, 0x3

    if-eq v13, v14, :cond_2

    goto :goto_3

    .line 179
    :cond_2
    invoke-static {v12, v9, v11}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v11

    goto :goto_3

    .line 176
    :cond_3
    invoke-static {v11}, Lcom/jhlabs/image/ImageMath;->circleDown(F)F

    move-result v11

    goto :goto_3

    .line 173
    :cond_4
    invoke-static {v11}, Lcom/jhlabs/image/ImageMath;->circleUp(F)F

    move-result v11

    .line 183
    :goto_3
    iget-object v9, v0, Lcom/jhlabs/image/ShapeFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-nez v9, :cond_5

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v11, v11, v9

    float-to-int v9, v11

    move v11, v9

    move v12, v11

    goto :goto_4

    .line 186
    :cond_5
    invoke-interface {v9, v11}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v9

    shr-int/lit8 v11, v9, 0x10

    and-int/2addr v11, v10

    shr-int/lit8 v12, v9, 0x8

    and-int/2addr v12, v10

    and-int/2addr v9, v10

    .line 193
    :goto_4
    iget-boolean v13, v0, Lcom/jhlabs/image/ShapeFilter;->useAlpha:Z

    if-eqz v13, :cond_6

    aget v13, p2, v8

    shr-int/lit8 v13, v13, 0x18

    and-int/2addr v13, v10

    goto :goto_5

    :cond_6
    aget v13, p2, v8

    invoke-static {v13}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v13

    .line 196
    :goto_5
    iget-boolean v14, v0, Lcom/jhlabs/image/ShapeFilter;->invert:Z

    if-eqz v14, :cond_7

    rsub-int v11, v11, 0xff

    rsub-int v12, v12, 0xff

    rsub-int v9, v9, 0xff

    .line 204
    :cond_7
    :goto_6
    iget-boolean v14, v0, Lcom/jhlabs/image/ShapeFilter;->merge:Z

    if-eqz v14, :cond_e

    .line 207
    aget v13, p2, v8

    const/high16 v14, -0x1000000

    and-int/2addr v14, v13

    shr-int/lit8 v14, v14, 0x18

    const/high16 v15, 0xff0000

    and-int/2addr v15, v13

    shr-int/lit8 v15, v15, 0x10

    const v16, 0xff00

    and-int v16, v13, v16

    shr-int/lit8 v16, v16, 0x8

    and-int/2addr v13, v10

    mul-int v11, v11, v15

    .line 214
    div-int/2addr v11, v10

    mul-int v12, v12, v16

    .line 215
    div-int/2addr v12, v10

    mul-int v9, v9, v13

    .line 216
    div-int/2addr v9, v10

    if-gez v11, :cond_8

    const/4 v11, 0x0

    :cond_8
    if-le v11, v10, :cond_9

    const/16 v11, 0xff

    :cond_9
    if-gez v12, :cond_a

    const/4 v12, 0x0

    :cond_a
    if-le v12, v10, :cond_b

    const/16 v12, 0xff

    :cond_b
    if-gez v9, :cond_c

    const/4 v9, 0x0

    :cond_c
    if-le v9, v10, :cond_d

    goto :goto_7

    :cond_d
    move v10, v9

    :goto_7
    shl-int/lit8 v9, v14, 0x18

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v9, v11

    shl-int/lit8 v11, v12, 0x8

    or-int/2addr v9, v11

    or-int/2addr v9, v10

    .line 232
    aput v9, p2, v8

    goto :goto_8

    :cond_e
    shl-int/lit8 v10, v13, 0x18

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v12, 0x8

    or-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 235
    aput v9, p2, v8

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_10
    return-void
.end method

.method private makeMap([I[III)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p4, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_1

    mul-int v3, v1, p3

    add-int/2addr v3, v2

    .line 147
    iget-boolean v4, p0, Lcom/jhlabs/image/ShapeFilter;->useAlpha:Z

    if-eqz v4, :cond_0

    aget v4, p1, v3

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    goto :goto_2

    :cond_0
    aget v4, p1, v3

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v4

    :goto_2
    mul-int/lit8 v4, v4, 0x29

    .line 149
    div-int/lit8 v4, v4, 0xa

    aput v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setEdgeValue(II[IIIII)I
    .locals 7

    sub-int v0, p5, p4

    sub-int/2addr v0, p4

    add-int/lit8 v0, v0, -0x2

    add-int v1, v0, p4

    add-int v2, v1, p4

    add-int v3, v2, p4

    add-int/2addr p4, v3

    const/16 v4, 0x29

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    add-int/lit8 v5, p7, 0x2

    if-eq p2, v5, :cond_12

    add-int/lit8 v5, p6, 0x2

    if-ne p1, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v5, v1, 0x2

    .line 254
    aget v5, p3, v5

    add-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x1

    .line 257
    aget v6, p3, v6

    add-int/2addr v6, v4

    if-ge v6, v5, :cond_1

    move v5, v6

    :cond_1
    add-int/lit8 v2, v2, 0x3

    .line 261
    aget v2, p3, v2

    add-int/2addr v2, v4

    if-ge v2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_0
    add-int/lit8 v5, v3, 0x2

    .line 265
    aget v5, p3, v5

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_3

    move v2, v4

    :cond_3
    add-int/lit8 v4, v1, 0x1

    .line 269
    aget v4, p3, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_4

    move v2, v4

    :cond_4
    add-int/lit8 v4, v1, 0x3

    .line 273
    aget v4, p3, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_5

    move v2, v4

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 277
    aget v4, p3, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_6

    move v2, v4

    :cond_6
    add-int/lit8 v4, v3, 0x3

    .line 281
    aget v4, p3, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_7

    move v2, v4

    :cond_7
    const/4 v4, 0x1

    if-eq p2, v4, :cond_11

    if-eq p1, v4, :cond_11

    add-int/2addr p7, v4

    if-eq p2, p7, :cond_11

    add-int/2addr p6, v4

    if-ne p1, p6, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 p1, v0, 0x1

    .line 288
    aget p1, p3, p1

    sget p2, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p1, p2

    if-ge p1, v2, :cond_9

    goto :goto_1

    :cond_9
    move p1, v2

    :goto_1
    add-int/lit8 v0, v0, 0x3

    .line 292
    aget p2, p3, v0

    sget p6, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p6

    if-ge p2, p1, :cond_a

    move p1, p2

    :cond_a
    add-int/lit8 p2, v1, 0x4

    .line 296
    aget p2, p3, p2

    sget p6, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p6

    if-ge p2, p1, :cond_b

    move p1, p2

    :cond_b
    add-int/lit8 p2, v3, 0x4

    .line 300
    aget p2, p3, p2

    sget p6, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p6

    if-ge p2, p1, :cond_c

    move p1, p2

    :cond_c
    add-int/lit8 p2, p4, 0x3

    .line 304
    aget p2, p3, p2

    sget p6, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p6

    if-ge p2, p1, :cond_d

    move p1, p2

    :cond_d
    add-int/2addr p4, v4

    .line 308
    aget p2, p3, p4

    sget p4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p4

    if-ge p2, p1, :cond_e

    move p1, p2

    .line 312
    :cond_e
    aget p2, p3, v3

    sget p4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p4

    if-ge p2, p1, :cond_f

    move p1, p2

    .line 316
    :cond_f
    aget p2, p3, v1

    sget p4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, p4

    if-ge p2, p1, :cond_10

    move p1, p2

    .line 320
    :cond_10
    aput p1, p3, p5

    return p1

    .line 286
    :cond_11
    :goto_2
    aput v2, p3, p5

    return v2

    .line 252
    :cond_12
    :goto_3
    aput v4, p3, p5

    return v4
.end method

.method private setValue([III)I
    .locals 6

    sub-int v0, p3, p2

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2

    add-int v1, v0, p2

    add-int v2, v1, p2

    add-int v3, v2, p2

    add-int/2addr p2, v3

    add-int/lit8 v4, v1, 0x2

    .line 333
    aget v4, p1, v4

    add-int/lit8 v4, v4, 0x29

    add-int/lit8 v5, v2, 0x1

    .line 335
    aget v5, p1, v5

    add-int/lit8 v5, v5, 0x29

    if-ge v5, v4, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 338
    aget v2, p1, v2

    add-int/lit8 v2, v2, 0x29

    if-ge v2, v4, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/lit8 v4, v3, 0x2

    .line 341
    aget v4, p1, v4

    add-int/lit8 v4, v4, 0x29

    if-ge v4, v2, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 345
    aget v4, p1, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_3

    move v2, v4

    :cond_3
    add-int/lit8 v4, v1, 0x3

    .line 348
    aget v4, p1, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_4

    move v2, v4

    :cond_4
    add-int/lit8 v4, v3, 0x1

    .line 351
    aget v4, p1, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_5

    move v2, v4

    :cond_5
    add-int/lit8 v4, v3, 0x3

    .line 354
    aget v4, p1, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt2:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_6

    move v2, v4

    :cond_6
    add-int/lit8 v4, v0, 0x1

    .line 358
    aget v4, p1, v4

    sget v5, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v4, v5

    if-ge v4, v2, :cond_7

    move v2, v4

    :cond_7
    add-int/lit8 v0, v0, 0x3

    .line 361
    aget v0, p1, v0

    sget v4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v0, v4

    if-ge v0, v2, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    add-int/lit8 v2, v1, 0x4

    .line 364
    aget v2, p1, v2

    sget v4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v2, v4

    if-ge v2, v0, :cond_9

    move v0, v2

    :cond_9
    add-int/lit8 v2, v3, 0x4

    .line 367
    aget v2, p1, v2

    sget v4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v2, v4

    if-ge v2, v0, :cond_a

    move v0, v2

    :cond_a
    add-int/lit8 v2, p2, 0x3

    .line 370
    aget v2, p1, v2

    sget v4, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v2, v4

    if-ge v2, v0, :cond_b

    move v0, v2

    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 373
    aget p2, p1, p2

    sget v2, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr p2, v2

    if-ge p2, v0, :cond_c

    goto :goto_2

    :cond_c
    move p2, v0

    .line 376
    :goto_2
    aget v0, p1, v3

    sget v2, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v0, v2

    if-ge v0, p2, :cond_d

    move p2, v0

    .line 379
    :cond_d
    aget v0, p1, v1

    sget v1, Lcom/jhlabs/image/ShapeFilter;->sqrt5:I

    add-int/2addr v0, v1

    if-ge v0, p2, :cond_e

    move p2, v0

    .line 383
    :cond_e
    aput p2, p1, p3

    return p2
.end method


# virtual methods
.method public distanceMap([III)I
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    add-int/lit8 v12, v10, -0x3

    add-int/lit8 v13, v11, -0x3

    const/4 v0, 0x0

    const/4 v15, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v15, v11, :cond_5

    move v5, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_4

    mul-int v0, v15, v10

    add-int v4, v6, v0

    .line 117
    aget v0, v9, v4

    if-lez v0, :cond_2

    if-lt v6, v7, :cond_1

    if-gt v6, v12, :cond_1

    if-lt v15, v7, :cond_1

    if-le v15, v13, :cond_0

    goto :goto_2

    .line 121
    :cond_0
    invoke-direct {v8, v9, v10, v4}, Lcom/jhlabs/image/ShapeFilter;->setValue([III)I

    move-result v0

    move v14, v5

    move/from16 v16, v6

    const/4 v8, 0x2

    goto :goto_3

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    move v1, v6

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v16, v4

    move/from16 v4, p2

    move v14, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move v6, v12

    const/4 v8, 0x2

    move v7, v13

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/jhlabs/image/ShapeFilter;->setEdgeValue(II[IIIII)I

    move-result v0

    :goto_3
    move v5, v0

    if-le v5, v14, :cond_3

    goto :goto_4

    :cond_2
    move v14, v5

    move/from16 v16, v6

    const/4 v8, 0x2

    :cond_3
    move v5, v14

    :goto_4
    add-int/lit8 v6, v16, 0x1

    const/4 v7, 0x2

    move-object/from16 v8, p0

    goto :goto_1

    :cond_4
    move v14, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p0

    move v0, v14

    goto :goto_0

    :cond_5
    const/4 v8, 0x2

    add-int/lit8 v1, v11, -0x1

    move v11, v1

    :goto_5
    if-ltz v11, :cond_b

    add-int/lit8 v1, v10, -0x1

    move v15, v0

    move v14, v1

    :goto_6
    if-ltz v14, :cond_a

    mul-int v0, v11, v10

    add-int v5, v14, v0

    .line 130
    aget v0, v9, v5

    if-lez v0, :cond_8

    if-lt v14, v8, :cond_7

    if-gt v14, v12, :cond_7

    if-lt v11, v8, :cond_7

    if-le v11, v13, :cond_6

    goto :goto_7

    :cond_6
    const/16 v16, 0x2

    move-object/from16 v8, p0

    .line 134
    invoke-direct {v8, v9, v10, v5}, Lcom/jhlabs/image/ShapeFilter;->setValue([III)I

    move-result v0

    goto :goto_8

    :cond_7
    :goto_7
    const/16 v16, 0x2

    move-object/from16 v8, p0

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move v6, v12

    move v7, v13

    .line 132
    invoke-direct/range {v0 .. v7}, Lcom/jhlabs/image/ShapeFilter;->setEdgeValue(II[IIIII)I

    move-result v0

    :goto_8
    if-le v0, v15, :cond_9

    move v15, v0

    goto :goto_9

    :cond_8
    const/16 v16, 0x2

    move-object/from16 v8, p0

    :cond_9
    :goto_9
    add-int/lit8 v14, v14, -0x1

    const/4 v8, 0x2

    goto :goto_6

    :cond_a
    const/16 v16, 0x2

    move-object/from16 v8, p0

    add-int/lit8 v11, v11, -0x1

    move v0, v15

    const/4 v8, 0x2

    goto :goto_5

    :cond_b
    move-object/from16 v8, p0

    return v0
.end method

.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 6

    mul-int p4, p1, p2

    .line 100
    new-array v1, p4, [I

    .line 101
    invoke-direct {p0, p3, v1, p1, p2}, Lcom/jhlabs/image/ShapeFilter;->makeMap([I[III)V

    .line 102
    invoke-virtual {p0, v1, p1, p2}, Lcom/jhlabs/image/ShapeFilter;->distanceMap([III)I

    move-result v5

    move-object v0, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    .line 103
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/image/ShapeFilter;->applyMap([I[IIII)V

    return-object p3
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/jhlabs/image/ShapeFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getFactor()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/ShapeFilter;->factor:F

    return v0
.end method

.method public getInvert()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->invert:Z

    return v0
.end method

.method public getMerge()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->merge:Z

    return v0
.end method

.method public getType()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/jhlabs/image/ShapeFilter;->type:I

    return v0
.end method

.method public getUseAlpha()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/jhlabs/image/ShapeFilter;->useAlpha:Z

    return v0
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/jhlabs/image/ShapeFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setFactor(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/ShapeFilter;->factor:F

    return-void
.end method

.method public setInvert(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/jhlabs/image/ShapeFilter;->invert:Z

    return-void
.end method

.method public setMerge(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/jhlabs/image/ShapeFilter;->merge:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/jhlabs/image/ShapeFilter;->type:I

    return-void
.end method

.method public setUseAlpha(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/jhlabs/image/ShapeFilter;->useAlpha:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Shapeburst..."

    return-object v0
.end method
