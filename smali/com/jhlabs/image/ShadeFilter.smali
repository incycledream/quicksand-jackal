.class public Lcom/jhlabs/image/ShadeFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "ShadeFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BUMPS_FROM_BEVEL:I = 0x3

.field public static final BUMPS_FROM_IMAGE:I = 0x0

.field public static final BUMPS_FROM_IMAGE_ALPHA:I = 0x1

.field public static final BUMPS_FROM_MAP:I = 0x2

.field public static final COLORS_CONSTANT:I = 0x1

.field public static final COLORS_FROM_IMAGE:I = 0x0

.field protected static final r255:F = 0.003921569f


# instance fields
.field private bumpFunction:Lcom/jhlabs/math/Function2D;

.field private bumpHeight:F

.field private bumpSoftness:F

.field private bumpSource:I

.field private colorSource:I

.field private diffuse_color:Lcom/jhlabs/vecmath/Color4f;

.field private envHeight:I

.field private envPixels:[I

.field private envWidth:I

.field private environmentMap:Ljava/awt/image/BufferedImage;

.field private l:Lcom/jhlabs/vecmath/Vector3f;

.field private n:Lcom/jhlabs/vecmath/Vector3f;

.field private shadedColor:Lcom/jhlabs/vecmath/Color4f;

.field private specular_color:Lcom/jhlabs/vecmath/Color4f;

.field private tmpv:Lcom/jhlabs/vecmath/Vector3f;

.field private tmpv2:Lcom/jhlabs/vecmath/Vector3f;

.field private v:Lcom/jhlabs/vecmath/Vector3f;

.field private viewDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const v0, 0x461c4000    # 10000.0f

    .line 38
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->viewDistance:F

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->colorSource:I

    .line 40
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpHeight:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 55
    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSoftness:F

    .line 56
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    .line 57
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    .line 58
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    .line 59
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    .line 60
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    .line 61
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    .line 62
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    .line 63
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    return-void
.end method

.method private getEnvironmentMapP(Lcom/jhlabs/vecmath/Vector3f;[III)I
    .locals 9

    .line 279
    iget-object p2, p0, Lcom/jhlabs/image/ShadeFilter;->environmentMap:Ljava/awt/image/BufferedImage;

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 280
    iget p2, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/high16 p4, 0x3f800000    # 1.0f

    add-float/2addr p2, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    .line 281
    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    add-float/2addr p1, p4

    mul-float p1, p1, v0

    .line 282
    iget p4, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    int-to-float v0, p4

    mul-float p2, p2, v0

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    int-to-float p4, p4

    const/4 v1, 0x0

    invoke-static {p2, v1, p4}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p2

    .line 283
    iget p4, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    int-to-float v2, p4

    mul-float p1, p1, v2

    sub-int/2addr p4, v0

    int-to-float p4, p4

    invoke-static {p1, v1, p4}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    float-to-int p4, p2

    float-to-int v1, p1

    int-to-float v2, p4

    sub-float v3, p2, v2

    int-to-float p2, v1

    sub-float v4, p1, p2

    .line 289
    iget p1, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    mul-int p2, p1, v1

    add-int/2addr p2, p4

    sub-int/2addr p1, v0

    if-ne p4, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 291
    :goto_0
    iget p4, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    sub-int/2addr p4, v0

    if-ne v1, p4, :cond_1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    .line 292
    :goto_1
    iget-object p4, p0, Lcom/jhlabs/image/ShadeFilter;->envPixels:[I

    aget v5, p4, p2

    add-int/2addr p1, p2

    aget v6, p4, p1

    add-int/2addr p2, p3

    aget v7, p4, p2

    add-int/2addr p1, p3

    aget v8, p4, p1

    invoke-static/range {v3 .. v8}, Lcom/jhlabs/image/ImageMath;->bilinearInterpolate(FFIIII)I

    move-result p1

    return p1

    :cond_2
    return p3
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 30

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    mul-int v1, v7, v8

    .line 122
    new-array v10, v1, [I

    .line 123
    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpHeight:F

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 124
    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpHeight:F

    const/4 v13, 0x0

    const/4 v14, 0x1

    cmpg-float v1, v1, v13

    if-gez v1, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 125
    :goto_0
    new-instance v6, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v6, v13, v13, v13}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    .line 126
    new-instance v5, Lcom/jhlabs/vecmath/Vector3f;

    int-to-float v1, v7

    const/high16 v16, 0x40000000    # 2.0f

    div-float v1, v1, v16

    int-to-float v2, v8

    div-float v2, v2, v16

    iget v3, v0, Lcom/jhlabs/image/ShadeFilter;->viewDistance:F

    invoke-direct {v5, v1, v2, v3}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    .line 127
    new-instance v4, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v4}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 128
    new-instance v3, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v3}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    .line 129
    iget-object v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    .line 131
    iget v2, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    const/4 v12, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v14, :cond_2

    if-eq v2, v12, :cond_2

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    move-object v14, v3

    move-object v12, v4

    move-object v13, v6

    move-object/from16 v19, v10

    :goto_1
    move-object v10, v5

    goto/16 :goto_6

    .line 132
    :cond_2
    :goto_2
    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSoftness:F

    cmpl-float v1, v1, v13

    if-eqz v1, :cond_5

    .line 136
    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    if-ne v1, v12, :cond_3

    iget-object v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    instance-of v2, v1, Lcom/jhlabs/math/ImageFunction2D;

    if-eqz v2, :cond_3

    .line 137
    check-cast v1, Lcom/jhlabs/math/ImageFunction2D;

    .line 138
    invoke-virtual {v1}, Lcom/jhlabs/math/ImageFunction2D;->getWidth()I

    move-result v2

    .line 139
    invoke-virtual {v1}, Lcom/jhlabs/math/ImageFunction2D;->getHeight()I

    move-result v12

    .line 140
    invoke-virtual {v1}, Lcom/jhlabs/math/ImageFunction2D;->getPixels()[I

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_3

    :cond_3
    move v2, v7

    move v12, v8

    move-object/from16 v18, v9

    .line 142
    :goto_3
    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSoftness:F

    invoke-static {v1}, Lcom/jhlabs/image/GaussianFilter;->makeKernel(F)Ljava/awt/image/Kernel;

    move-result-object v1

    mul-int v13, v2, v12

    .line 143
    new-array v14, v13, [I

    .line 144
    new-array v13, v13, [I

    const/16 v22, 0x1

    .line 145
    sget v23, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    move-object/from16 v17, v1

    move-object/from16 v19, v14

    move/from16 v20, v2

    move/from16 v21, v12

    invoke-static/range {v17 .. v23}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 146
    sget v23, Lcom/jhlabs/image/ConvolveFilter;->CLAMP_EDGES:I

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move/from16 v20, v12

    move/from16 v21, v2

    invoke-static/range {v17 .. v23}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 147
    new-instance v1, Lcom/jhlabs/math/ImageFunction2D;

    const/16 v21, 0x1

    iget v14, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    move-object/from16 v23, v3

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    const/16 v22, 0x1

    goto :goto_4

    :cond_4
    const/16 v22, 0x0

    :goto_4
    move-object/from16 v17, v1

    move-object/from16 v18, v13

    move/from16 v19, v2

    move/from16 v20, v12

    invoke-direct/range {v17 .. v22}, Lcom/jhlabs/math/ImageFunction2D;-><init>([IIIIZ)V

    move-object v12, v4

    move-object v13, v6

    move-object/from16 v19, v10

    move-object/from16 v14, v23

    goto :goto_1

    :cond_5
    move-object/from16 v23, v3

    .line 149
    new-instance v12, Lcom/jhlabs/math/ImageFunction2D;

    const/4 v13, 0x1

    iget v1, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    const/4 v14, 0x1

    if-ne v1, v14, :cond_6

    const/16 v17, 0x1

    goto :goto_5

    :cond_6
    const/16 v17, 0x0

    :goto_5
    move-object v1, v12

    move-object/from16 v2, p3

    move-object/from16 v14, v23

    move/from16 v3, p1

    move-object/from16 v18, v12

    move-object v12, v4

    move/from16 v4, p2

    move-object/from16 v19, v10

    move-object v10, v5

    move v5, v13

    move-object v13, v6

    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/jhlabs/math/ImageFunction2D;-><init>([IIIIZ)V

    move-object/from16 v1, v18

    .line 152
    :goto_6
    new-instance v2, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v2}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 153
    new-instance v3, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v3}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 154
    new-instance v4, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v4}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    if-ge v5, v8, :cond_18

    move/from16 v17, v6

    int-to-float v6, v5

    .line 159
    iput v6, v13, Lcom/jhlabs/vecmath/Vector3f;->y:F

    move-object/from16 v23, v14

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v7, :cond_17

    int-to-float v9, v14

    move-object/from16 v18, v10

    .line 164
    iget v10, v0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    const/4 v0, 0x3

    if-eq v10, v0, :cond_13

    const/4 v0, 0x0

    .line 168
    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 169
    invoke-interface {v1, v9, v6}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v0

    mul-float v0, v0, v11

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v20, -0x40000000    # -2.0f

    move-object/from16 v21, v13

    if-lez v14, :cond_7

    sub-float v13, v9, v10

    .line 170
    invoke-interface {v1, v13, v6}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v13

    mul-float v13, v13, v11

    sub-float/2addr v13, v0

    goto :goto_9

    :cond_7
    const/high16 v13, -0x40000000    # -2.0f

    :goto_9
    move/from16 v22, v15

    if-lez v5, :cond_8

    sub-float v15, v6, v10

    .line 171
    invoke-interface {v1, v9, v15}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v15

    mul-float v15, v15, v11

    sub-float/2addr v15, v0

    goto :goto_a

    :cond_8
    const/high16 v15, -0x40000000    # -2.0f

    :goto_a
    move/from16 v24, v15

    add-int/lit8 v15, v7, -0x1

    if-ge v14, v15, :cond_9

    add-float v15, v9, v10

    .line 172
    invoke-interface {v1, v15, v6}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v15

    mul-float v15, v15, v11

    sub-float/2addr v15, v0

    goto :goto_b

    :cond_9
    const/high16 v15, -0x40000000    # -2.0f

    :goto_b
    move/from16 v25, v14

    add-int/lit8 v14, v8, -0x1

    if-ge v5, v14, :cond_a

    add-float v14, v6, v10

    .line 173
    invoke-interface {v1, v9, v14}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v14

    mul-float v14, v14, v11

    sub-float v0, v14, v0

    goto :goto_c

    :cond_a
    const/high16 v0, -0x40000000    # -2.0f

    :goto_c
    const-wide/16 v26, 0x0

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v28, v13, v20

    if-eqz v28, :cond_c

    cmpl-float v28, v0, v20

    if-eqz v28, :cond_c

    .line 176
    iput v14, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v14, 0x0

    iput v14, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v13, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 177
    iput v14, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v10, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 178
    invoke-virtual {v4, v2, v3}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 179
    invoke-virtual {v4}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 180
    iget v14, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    move/from16 v29, v11

    float-to-double v10, v14

    cmpg-double v14, v10, v26

    if-gez v14, :cond_b

    .line 181
    iget v10, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v10, v10

    iput v10, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 182
    :cond_b
    invoke-virtual {v12, v4}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    const/4 v10, 0x1

    goto :goto_d

    :cond_c
    move/from16 v29, v11

    const/4 v10, 0x0

    :goto_d
    cmpl-float v11, v13, v20

    if-eqz v11, :cond_e

    cmpl-float v11, v24, v20

    if-eqz v11, :cond_e

    const/high16 v11, -0x40800000    # -1.0f

    .line 187
    iput v11, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v14, 0x0

    iput v14, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v13, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 188
    iput v14, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v11, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    move/from16 v11, v24

    iput v11, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 189
    invoke-virtual {v4, v2, v3}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 190
    invoke-virtual {v4}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 191
    iget v13, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v13, v13

    cmpg-double v24, v13, v26

    if-gez v24, :cond_d

    .line 192
    iget v13, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v13, v13

    iput v13, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 193
    :cond_d
    invoke-virtual {v12, v4}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_e
    move/from16 v11, v24

    :goto_e
    cmpl-float v13, v11, v20

    if-eqz v13, :cond_10

    cmpl-float v13, v15, v20

    if-eqz v13, :cond_10

    const/4 v13, 0x0

    .line 198
    iput v13, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/high16 v14, -0x40800000    # -1.0f

    iput v14, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v11, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    const/high16 v11, 0x3f800000    # 1.0f

    .line 199
    iput v11, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v13, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v15, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 200
    invoke-virtual {v4, v2, v3}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 201
    invoke-virtual {v4}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 202
    iget v11, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v13, v11

    cmpg-double v11, v13, v26

    if-gez v11, :cond_f

    .line 203
    iget v11, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v11, v11

    iput v11, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 204
    :cond_f
    invoke-virtual {v12, v4}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    :cond_10
    cmpl-float v11, v15, v20

    if-eqz v11, :cond_12

    cmpl-float v11, v0, v20

    if-eqz v11, :cond_12

    const/high16 v11, 0x3f800000    # 1.0f

    .line 209
    iput v11, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v13, 0x0

    iput v13, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v15, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 210
    iput v13, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v11, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 211
    invoke-virtual {v4, v2, v3}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 212
    invoke-virtual {v4}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 213
    iget v0, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v13, v0

    cmpg-double v0, v13, v26

    if-gez v0, :cond_11

    .line 214
    iget v0, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v0, v0

    iput v0, v4, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 215
    :cond_11
    invoke-virtual {v12, v4}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    .line 220
    :cond_12
    iget v0, v12, Lcom/jhlabs/vecmath/Vector3f;->x:F

    int-to-float v10, v10

    div-float/2addr v0, v10

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 221
    iget v0, v12, Lcom/jhlabs/vecmath/Vector3f;->y:F

    div-float/2addr v0, v10

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 222
    iget v0, v12, Lcom/jhlabs/vecmath/Vector3f;->z:F

    div-float/2addr v0, v10

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->z:F

    goto :goto_f

    :cond_13
    move/from16 v29, v11

    move-object/from16 v21, v13

    move/from16 v25, v14

    move/from16 v22, v15

    :goto_f
    if-eqz v22, :cond_14

    .line 245
    iget v0, v12, Lcom/jhlabs/vecmath/Vector3f;->x:F

    neg-float v0, v0

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 246
    iget v0, v12, Lcom/jhlabs/vecmath/Vector3f;->y:F

    neg-float v0, v0

    iput v0, v12, Lcom/jhlabs/vecmath/Vector3f;->y:F

    :cond_14
    move-object/from16 v0, v21

    .line 248
    iput v9, v0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 250
    iget v9, v12, Lcom/jhlabs/vecmath/Vector3f;->z:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_16

    move-object/from16 v9, p0

    .line 252
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->environmentMap:Ljava/awt/image/BufferedImage;

    if-eqz v11, :cond_15

    .line 254
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    move-object/from16 v13, v18

    invoke-virtual {v11, v13}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 255
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v0}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 256
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 257
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v12}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 258
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 261
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v14, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v14}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v14

    mul-float v14, v14, v16

    invoke-virtual {v11, v14}, Lcom/jhlabs/vecmath/Vector3f;->scale(F)V

    .line 262
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v14, v9, Lcom/jhlabs/image/ShadeFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v14}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 264
    iget-object v11, v9, Lcom/jhlabs/image/ShadeFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    move-object/from16 v11, p3

    .line 265
    invoke-direct {v9, v12, v11, v7, v8}, Lcom/jhlabs/image/ShadeFilter;->getEnvironmentMapP(Lcom/jhlabs/vecmath/Vector3f;[III)I

    move-result v14

    move-object/from16 v15, v23

    invoke-virtual {v9, v15, v14}, Lcom/jhlabs/image/ShadeFilter;->setFromRGB(Lcom/jhlabs/vecmath/Color4f;I)V

    .line 266
    aget v14, v11, v17

    const/high16 v18, -0x1000000

    and-int v14, v14, v18

    .line 267
    iget v10, v15, Lcom/jhlabs/vecmath/Color4f;->x:F

    const/high16 v18, 0x437f0000    # 255.0f

    mul-float v10, v10, v18

    float-to-int v10, v10

    shl-int/lit8 v10, v10, 0x10

    move-object/from16 v21, v0

    iget v0, v15, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v0, v0, v18

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v10

    iget v10, v15, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v10, v10, v18

    float-to-int v10, v10

    or-int/2addr v0, v10

    add-int/lit8 v10, v17, 0x1

    or-int/2addr v0, v14

    .line 268
    aput v0, v19, v17

    move/from16 v17, v10

    const/4 v10, 0x0

    goto :goto_11

    :cond_15
    move-object/from16 v11, p3

    move-object/from16 v21, v0

    move-object/from16 v13, v18

    move-object/from16 v15, v23

    add-int/lit8 v0, v17, 0x1

    const/4 v10, 0x0

    .line 270
    aput v10, v19, v17

    goto :goto_10

    :cond_16
    move-object/from16 v9, p0

    move-object/from16 v11, p3

    move-object/from16 v21, v0

    move-object/from16 v13, v18

    move-object/from16 v15, v23

    const/4 v10, 0x0

    add-int/lit8 v0, v17, 0x1

    .line 272
    aput v10, v19, v17

    :goto_10
    move/from16 v17, v0

    :goto_11
    add-int/lit8 v14, v25, 0x1

    move-object v0, v9

    move-object v9, v11

    move-object v10, v13

    move-object/from16 v23, v15

    move-object/from16 v13, v21

    move/from16 v15, v22

    move/from16 v11, v29

    goto/16 :goto_8

    :cond_17
    move/from16 v29, v11

    move-object/from16 v21, v13

    move/from16 v22, v15

    move-object/from16 v15, v23

    move-object v11, v9

    move-object v13, v10

    const/4 v10, 0x0

    move-object v9, v0

    add-int/lit8 v5, v5, 0x1

    move-object v9, v11

    move-object v10, v13

    move-object v14, v15

    move/from16 v6, v17

    move-object/from16 v13, v21

    move/from16 v15, v22

    move/from16 v11, v29

    goto/16 :goto_7

    :cond_18
    move-object v9, v0

    return-object v19
.end method

.method public getBumpFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getBumpHeight()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpHeight:F

    return v0
.end method

.method public getBumpSoftness()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSoftness:F

    return v0
.end method

.method public getBumpSource()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    return v0
.end method

.method public getEnvironmentMap()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/jhlabs/image/ShadeFilter;->environmentMap:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public setBumpFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/jhlabs/image/ShadeFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setBumpHeight(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/ShadeFilter;->bumpHeight:F

    return-void
.end method

.method public setBumpSoftness(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSoftness:F

    return-void
.end method

.method public setBumpSource(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/jhlabs/image/ShadeFilter;->bumpSource:I

    return-void
.end method

.method public setEnvironmentMap(Ljava/awt/image/BufferedImage;)V
    .locals 8

    .line 91
    iput-object p1, p0, Lcom/jhlabs/image/ShadeFilter;->environmentMap:Ljava/awt/image/BufferedImage;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    .line 94
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 95
    iget v5, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    iget v6, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/jhlabs/image/ShadeFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/image/ShadeFilter;->envPixels:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 97
    iput p1, p0, Lcom/jhlabs/image/ShadeFilter;->envHeight:I

    iput p1, p0, Lcom/jhlabs/image/ShadeFilter;->envWidth:I

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/jhlabs/image/ShadeFilter;->envPixels:[I

    :goto_0
    return-void
.end method

.method protected setFromRGB(Lcom/jhlabs/vecmath/Color4f;I)V
    .locals 4

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const v1, 0x3b808081

    mul-float v0, v0, v1

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float v2, v2, v1

    and-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v1

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-float p2, p2

    mul-float p2, p2, v1

    .line 117
    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/jhlabs/vecmath/Color4f;->set(FFFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Shade..."

    return-object v0
.end method
