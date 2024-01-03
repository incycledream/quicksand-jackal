.class public Lcom/jhlabs/image/LightFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "LightFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/LightFilter$SpotLight;,
        Lcom/jhlabs/image/LightFilter$DistantLight;,
        Lcom/jhlabs/image/LightFilter$PointLight;,
        Lcom/jhlabs/image/LightFilter$AmbientLight;,
        Lcom/jhlabs/image/LightFilter$Light;,
        Lcom/jhlabs/image/LightFilter$Material;
    }
.end annotation


# static fields
.field public static final AMBIENT:I = 0x0

.field public static final BUMPS_FROM_BEVEL:I = 0x3

.field public static final BUMPS_FROM_IMAGE:I = 0x0

.field public static final BUMPS_FROM_IMAGE_ALPHA:I = 0x1

.field public static final BUMPS_FROM_MAP:I = 0x2

.field public static final COLORS_CONSTANT:I = 0x1

.field public static final COLORS_FROM_IMAGE:I = 0x0

.field public static final DISTANT:I = 0x1

.field public static final POINT:I = 0x2

.field public static final SPOT:I = 0x3

.field protected static final r255:F = 0.003921569f


# instance fields
.field private bumpFunction:Lcom/jhlabs/math/Function2D;

.field private bumpHeight:F

.field private bumpShape:I

.field private bumpSoftness:F

.field private bumpSource:I

.field private colorSource:I

.field private diffuse_color:Lcom/jhlabs/vecmath/Color4f;

.field private envHeight:I

.field private envPixels:[I

.field private envWidth:I

.field private environmentMap:Ljava/awt/Image;

.field private l:Lcom/jhlabs/vecmath/Vector3f;

.field private lights:Ljava/util/Vector;

.field material:Lcom/jhlabs/image/LightFilter$Material;

.field private n:Lcom/jhlabs/vecmath/Vector3f;

.field private shadedColor:Lcom/jhlabs/vecmath/Color4f;

.field private specular_color:Lcom/jhlabs/vecmath/Color4f;

.field private tmpv:Lcom/jhlabs/vecmath/Vector3f;

.field private tmpv2:Lcom/jhlabs/vecmath/Vector3f;

.field private v:Lcom/jhlabs/vecmath/Vector3f;

.field private viewDistance:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const v0, 0x461c4000    # 10000.0f

    .line 39
    iput v0, p0, Lcom/jhlabs/image/LightFilter;->viewDistance:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/jhlabs/image/LightFilter;->colorSource:I

    .line 43
    iput v0, p0, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    iput v1, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    .line 59
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    .line 60
    new-instance v1, Lcom/jhlabs/image/LightFilter$DistantLight;

    invoke-direct {v1, p0}, Lcom/jhlabs/image/LightFilter$DistantLight;-><init>(Lcom/jhlabs/image/LightFilter;)V

    invoke-virtual {p0, v1}, Lcom/jhlabs/image/LightFilter;->addLight(Lcom/jhlabs/image/LightFilter$Light;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    iput v1, p0, Lcom/jhlabs/image/LightFilter;->bumpHeight:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 62
    iput v1, p0, Lcom/jhlabs/image/LightFilter;->bumpSoftness:F

    .line 63
    iput v0, p0, Lcom/jhlabs/image/LightFilter;->bumpShape:I

    .line 64
    new-instance v0, Lcom/jhlabs/image/LightFilter$Material;

    invoke-direct {v0}, Lcom/jhlabs/image/LightFilter$Material;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    .line 65
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    .line 66
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    .line 67
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    .line 68
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    .line 69
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    .line 70
    new-instance v0, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    .line 71
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    .line 72
    new-instance v0, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LightFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    return-void
.end method

.method static synthetic access$000(Lcom/jhlabs/image/LightFilter;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/jhlabs/image/LightFilter;->bumpShape:I

    return p0
.end method

.method private getEnvironmentMap(Lcom/jhlabs/vecmath/Vector3f;[III)I
    .locals 9

    .line 444
    iget-object p2, p0, Lcom/jhlabs/image/LightFilter;->environmentMap:Ljava/awt/Image;

    const/4 p3, 0x0

    if-eqz p2, :cond_6

    .line 445
    iget p2, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    neg-float p2, p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p2, v0

    const p4, 0x40490fdb    # (float)Math.PI

    div-float v0, p2, p4

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 453
    :cond_0
    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p2, v3

    div-float/2addr p1, p2

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    cmpg-float v2, p1, p2

    if-gez v2, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    :cond_2
    :goto_0
    float-to-double p1, p1

    .line 460
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    double-to-float p1, p1

    div-float/2addr p1, p4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 463
    :goto_2
    iget p2, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    int-to-float p4, p2

    mul-float p1, p1, p4

    const/4 p4, 0x1

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-static {p1, v1, p2}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    .line 464
    iget p2, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    int-to-float v2, p2

    mul-float v0, v0, v2

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-static {v0, v1, p2}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p2

    float-to-int v0, p1

    float-to-int v1, p2

    int-to-float v2, v0

    sub-float v3, p1, v2

    int-to-float p1, v1

    sub-float v4, p2, p1

    .line 470
    iget p1, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    mul-int p2, p1, v1

    add-int/2addr p2, v0

    sub-int/2addr p1, p4

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    .line 472
    :goto_3
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    sub-int/2addr v0, p4

    if-ne v1, v0, :cond_5

    goto :goto_4

    :cond_5
    iget p3, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    .line 473
    :goto_4
    iget-object p4, p0, Lcom/jhlabs/image/LightFilter;->envPixels:[I

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

    :cond_6
    return p3
.end method


# virtual methods
.method public addLight(Lcom/jhlabs/image/LightFilter$Light;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 41

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    mul-int v0, v9, v10

    .line 175
    new-array v12, v0, [I

    .line 176
    iget v0, v8, Lcom/jhlabs/image/LightFilter;->bumpHeight:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 177
    iget v0, v8, Lcom/jhlabs/image/LightFilter;->bumpHeight:F

    const/4 v15, 0x0

    const/4 v7, 0x1

    cmpg-float v0, v0, v15

    if-gez v0, :cond_0

    const/16 v16, 0x1

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    .line 178
    :goto_0
    new-instance v6, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v6, v15, v15, v15}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    .line 179
    new-instance v5, Lcom/jhlabs/vecmath/Vector3f;

    int-to-float v0, v9

    const/high16 v17, 0x40000000    # 2.0f

    div-float v0, v0, v17

    int-to-float v1, v10

    div-float v1, v1, v17

    iget v2, v8, Lcom/jhlabs/image/LightFilter;->viewDistance:F

    invoke-direct {v5, v0, v1, v2}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    .line 180
    new-instance v4, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v4}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 181
    new-instance v3, Lcom/jhlabs/vecmath/Color4f;

    invoke-direct {v3}, Lcom/jhlabs/vecmath/Color4f;-><init>()V

    .line 182
    new-instance v2, Lcom/jhlabs/vecmath/Color4f;

    new-instance v0, Ljava/awt/Color;

    iget-object v1, v8, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iget v1, v1, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    invoke-direct {v2, v0}, Lcom/jhlabs/vecmath/Color4f;-><init>(Ljava/awt/Color;)V

    .line 183
    new-instance v1, Lcom/jhlabs/vecmath/Color4f;

    new-instance v0, Ljava/awt/Color;

    iget-object v14, v8, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iget v14, v14, Lcom/jhlabs/image/LightFilter$Material;->specularColor:I

    invoke-direct {v0, v14}, Ljava/awt/Color;-><init>(I)V

    invoke-direct {v1, v0}, Lcom/jhlabs/vecmath/Color4f;-><init>(Ljava/awt/Color;)V

    .line 184
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    .line 187
    iget v14, v8, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    move-object/from16 v18, v4

    const/4 v4, 0x2

    if-eqz v14, :cond_1

    if-eq v14, v7, :cond_1

    if-eq v14, v4, :cond_1

    if-nez v0, :cond_7

    .line 188
    :cond_1
    iget v14, v8, Lcom/jhlabs/image/LightFilter;->bumpSoftness:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_5

    .line 192
    iget v0, v8, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    if-ne v0, v4, :cond_2

    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    instance-of v14, v0, Lcom/jhlabs/math/ImageFunction2D;

    if-eqz v14, :cond_2

    .line 193
    check-cast v0, Lcom/jhlabs/math/ImageFunction2D;

    .line 194
    invoke-virtual {v0}, Lcom/jhlabs/math/ImageFunction2D;->getWidth()I

    move-result v14

    .line 195
    invoke-virtual {v0}, Lcom/jhlabs/math/ImageFunction2D;->getHeight()I

    move-result v19

    .line 196
    invoke-virtual {v0}, Lcom/jhlabs/math/ImageFunction2D;->getPixels()[I

    move-result-object v0

    move-object/from16 v21, v0

    goto :goto_1

    :cond_2
    move v14, v9

    move/from16 v19, v10

    move-object/from16 v21, v11

    :goto_1
    mul-int v0, v14, v19

    .line 198
    new-array v15, v0, [I

    .line 199
    new-array v0, v0, [I

    .line 206
    iget v4, v8, Lcom/jhlabs/image/LightFilter;->bumpSoftness:F

    invoke-static {v4}, Lcom/jhlabs/image/GaussianFilter;->makeKernel(F)Ljava/awt/image/Kernel;

    move-result-object v4

    const/16 v25, 0x1

    .line 207
    sget v26, Lcom/jhlabs/image/GaussianFilter;->WRAP_EDGES:I

    move-object/from16 v20, v4

    move-object/from16 v22, v15

    move/from16 v23, v14

    move/from16 v24, v19

    invoke-static/range {v20 .. v26}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 208
    sget v26, Lcom/jhlabs/image/GaussianFilter;->WRAP_EDGES:I

    move-object/from16 v21, v15

    move-object/from16 v22, v0

    move/from16 v23, v19

    move/from16 v24, v14

    invoke-static/range {v20 .. v26}, Lcom/jhlabs/image/GaussianFilter;->convolveAndTranspose(Ljava/awt/image/Kernel;[I[IIIZI)V

    .line 209
    new-instance v4, Lcom/jhlabs/math/ImageFunction2D;

    const/16 v24, 0x1

    iget v15, v8, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    if-ne v15, v7, :cond_3

    const/16 v25, 0x1

    goto :goto_2

    :cond_3
    const/16 v25, 0x0

    :goto_2
    move-object/from16 v20, v4

    move-object/from16 v21, v0

    move/from16 v22, v14

    move/from16 v23, v19

    invoke-direct/range {v20 .. v25}, Lcom/jhlabs/math/ImageFunction2D;-><init>([IIIIZ)V

    .line 211
    iget v0, v8, Lcom/jhlabs/image/LightFilter;->bumpShape:I

    if-eqz v0, :cond_4

    .line 212
    new-instance v0, Lcom/jhlabs/image/LightFilter$1;

    invoke-direct {v0, v8, v4}, Lcom/jhlabs/image/LightFilter$1;-><init>(Lcom/jhlabs/image/LightFilter;Lcom/jhlabs/math/Function2D;)V

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_3
    move-object v15, v0

    move-object/from16 v21, v1

    move-object/from16 v29, v2

    move-object v14, v3

    move-object/from16 v30, v5

    move-object/from16 v28, v18

    const/16 v18, 0x2

    goto :goto_5

    .line 239
    :cond_5
    iget v4, v8, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    const/4 v14, 0x2

    if-eq v4, v14, :cond_7

    .line 240
    new-instance v15, Lcom/jhlabs/math/ImageFunction2D;

    const/16 v19, 0x1

    if-ne v4, v7, :cond_6

    const/16 v20, 0x1

    goto :goto_4

    :cond_6
    const/16 v20, 0x0

    :goto_4
    move-object v0, v15

    move-object/from16 v21, v1

    move-object/from16 v1, p3

    move-object v4, v2

    move/from16 v2, p1

    move-object v14, v3

    move/from16 v3, p2

    move-object/from16 v29, v4

    move-object/from16 v28, v18

    const/16 v18, 0x2

    move/from16 v4, v19

    move-object/from16 v30, v5

    move/from16 v5, v20

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/ImageFunction2D;-><init>([IIIIZ)V

    goto :goto_5

    :cond_7
    move-object/from16 v21, v1

    move-object/from16 v29, v2

    move-object v14, v3

    move-object/from16 v30, v5

    move-object/from16 v28, v18

    const/16 v18, 0x2

    move-object v15, v0

    .line 243
    :goto_5
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iget v5, v0, Lcom/jhlabs/image/LightFilter$Material;->reflectivity:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v19, v4, v5

    .line 245
    new-instance v3, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v3}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 246
    new-instance v2, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v2}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 247
    new-instance v1, Lcom/jhlabs/vecmath/Vector3f;

    invoke-direct {v1}, Lcom/jhlabs/vecmath/Vector3f;-><init>()V

    .line 248
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/jhlabs/image/LightFilter$Light;

    .line 249
    iget-object v4, v8, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 250
    :goto_6
    array-length v7, v0

    if-ge v4, v7, :cond_8

    .line 251
    aget-object v7, v0, v4

    invoke-virtual {v7, v9, v10}, Lcom/jhlabs/image/LightFilter$Light;->prepare(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v7, 0x3

    .line 253
    filled-new-array {v7, v9}, [I

    move-result-object v4

    const-class v7, F

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v4

    check-cast v24, [[F

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v9, :cond_9

    const/4 v7, 0x1

    .line 255
    aget-object v25, v24, v7

    int-to-float v7, v4

    move-object/from16 v26, v0

    const/4 v0, 0x0

    invoke-interface {v15, v7, v0}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v7

    mul-float v7, v7, v13

    aput v7, v25, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v26

    goto :goto_7

    :cond_9
    move-object/from16 v26, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v10, :cond_21

    if-lez v7, :cond_a

    const/16 v25, 0x1

    goto :goto_9

    :cond_a
    const/16 v25, 0x0

    :goto_9
    add-int/lit8 v4, v10, -0x1

    if-ge v7, v4, :cond_b

    const/16 v27, 0x1

    goto :goto_a

    :cond_b
    const/16 v27, 0x0

    :goto_a
    int-to-float v4, v7

    .line 261
    iput v4, v6, Lcom/jhlabs/vecmath/Vector3f;->y:F

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v9, :cond_c

    .line 263
    aget-object v31, v24, v18

    move/from16 v32, v0

    int-to-float v0, v4

    move-object/from16 v33, v12

    add-int/lit8 v12, v7, 0x1

    int-to-float v12, v12

    invoke-interface {v15, v0, v12}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v0

    mul-float v0, v0, v13

    aput v0, v31, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v32

    move-object/from16 v12, v33

    goto :goto_b

    :cond_c
    move/from16 v32, v0

    move-object/from16 v33, v12

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v9, :cond_20

    if-lez v12, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    add-int/lit8 v4, v9, -0x1

    move/from16 v31, v7

    if-ge v12, v4, :cond_e

    const/4 v4, 0x1

    goto :goto_e

    :cond_e
    const/4 v4, 0x0

    .line 269
    :goto_e
    iget v7, v8, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    move/from16 v34, v13

    const/4 v13, 0x3

    if-eq v7, v13, :cond_1b

    move-object/from16 v7, v28

    const/4 v13, 0x0

    .line 273
    iput v13, v7, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iput v13, v7, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v13, v7, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v13, 0x1

    .line 274
    aget-object v22, v24, v13

    aget v28, v22, v12

    if-eqz v0, :cond_f

    .line 275
    aget-object v35, v24, v13

    add-int/lit8 v13, v12, -0x1

    aget v13, v35, v13

    sub-float v13, v13, v28

    goto :goto_f

    :cond_f
    const/4 v13, 0x0

    :goto_f
    if-eqz v25, :cond_10

    const/16 v35, 0x0

    .line 276
    aget-object v36, v24, v35

    aget v35, v36, v12

    sub-float v35, v35, v28

    move/from16 v40, v35

    move-object/from16 v35, v15

    move/from16 v15, v40

    goto :goto_10

    :cond_10
    move-object/from16 v35, v15

    const/4 v15, 0x0

    :goto_10
    const/16 v22, 0x1

    if-eqz v4, :cond_11

    .line 277
    aget-object v36, v24, v22

    add-int/lit8 v37, v12, 0x1

    aget v36, v36, v37

    sub-float v36, v36, v28

    move/from16 v40, v36

    move-object/from16 v36, v14

    move/from16 v14, v40

    goto :goto_11

    :cond_11
    move-object/from16 v36, v14

    const/4 v14, 0x0

    :goto_11
    if-eqz v27, :cond_12

    .line 278
    aget-object v37, v24, v18

    aget v37, v37, v12

    sub-float v28, v37, v28

    move/from16 v9, v28

    goto :goto_12

    :cond_12
    const/4 v9, 0x0

    :goto_12
    const-wide/16 v37, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v0, :cond_14

    if-eqz v27, :cond_14

    .line 281
    iput v10, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v10, 0x0

    iput v10, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v13, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 282
    iput v10, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v9, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 283
    invoke-virtual {v1, v3, v2}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 284
    invoke-virtual {v1}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 285
    iget v10, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v10, v10

    cmpg-double v39, v10, v37

    if-gez v39, :cond_13

    .line 286
    iget v10, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v10, v10

    iput v10, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 287
    :cond_13
    invoke-virtual {v7, v1}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    const/4 v10, 0x1

    goto :goto_13

    :cond_14
    const/4 v10, 0x0

    :goto_13
    if-eqz v0, :cond_16

    if-eqz v25, :cond_16

    const/high16 v0, -0x40800000    # -1.0f

    .line 292
    iput v0, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v11, 0x0

    iput v11, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v13, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 293
    iput v11, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v0, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v15, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 294
    invoke-virtual {v1, v3, v2}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 295
    invoke-virtual {v1}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 296
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    move v13, v5

    move-object v11, v6

    float-to-double v5, v0

    cmpg-double v0, v5, v37

    if-gez v0, :cond_15

    .line 297
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v0, v0

    iput v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 298
    :cond_15
    invoke-virtual {v7, v1}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_14

    :cond_16
    move v13, v5

    move-object v11, v6

    :goto_14
    if-eqz v25, :cond_18

    if-eqz v4, :cond_18

    const/4 v0, 0x0

    .line 303
    iput v0, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v15, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    const/high16 v5, 0x3f800000    # 1.0f

    .line 304
    iput v5, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v0, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v14, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 305
    invoke-virtual {v1, v3, v2}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 306
    invoke-virtual {v1}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 307
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v5, v0

    cmpg-double v0, v5, v37

    if-gez v0, :cond_17

    .line 308
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v0, v0

    iput v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 309
    :cond_17
    invoke-virtual {v7, v1}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    :cond_18
    if-eqz v4, :cond_1a

    if-eqz v27, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    .line 314
    iput v4, v3, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v0, 0x0

    iput v0, v3, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v14, v3, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 315
    iput v0, v2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v4, v2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v9, v2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 316
    invoke-virtual {v1, v3, v2}, Lcom/jhlabs/vecmath/Vector3f;->cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V

    .line 317
    invoke-virtual {v1}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 318
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    float-to-double v5, v0

    cmpg-double v0, v5, v37

    if-gez v0, :cond_19

    .line 319
    iget v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    neg-float v0, v0

    iput v0, v1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    .line 320
    :cond_19
    invoke-virtual {v7, v1}, Lcom/jhlabs/vecmath/Vector3f;->add(Lcom/jhlabs/vecmath/Tuple3f;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_1a
    const/high16 v4, 0x3f800000    # 1.0f

    .line 325
    :goto_15
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->x:F

    int-to-float v5, v10

    div-float/2addr v0, v5

    iput v0, v7, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 326
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->y:F

    div-float/2addr v0, v5

    iput v0, v7, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 327
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->z:F

    div-float/2addr v0, v5

    iput v0, v7, Lcom/jhlabs/vecmath/Vector3f;->z:F

    goto :goto_16

    :cond_1b
    move v13, v5

    move-object v11, v6

    move-object/from16 v36, v14

    move-object/from16 v35, v15

    move-object/from16 v7, v28

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v22, 0x1

    :goto_16
    if-eqz v16, :cond_1c

    .line 330
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->x:F

    neg-float v0, v0

    iput v0, v7, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 331
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->y:F

    neg-float v0, v0

    iput v0, v7, Lcom/jhlabs/vecmath/Vector3f;->y:F

    :cond_1c
    int-to-float v0, v12

    move-object v6, v11

    .line 333
    iput v0, v6, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 335
    iget v0, v7, Lcom/jhlabs/vecmath/Vector3f;->z:F

    const/4 v9, 0x0

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_1f

    .line 337
    iget v0, v8, Lcom/jhlabs/image/LightFilter;->colorSource:I

    if-nez v0, :cond_1d

    move-object/from16 v10, p3

    .line 338
    aget v0, v10, v32

    move-object/from16 v11, v29

    invoke-virtual {v8, v11, v0}, Lcom/jhlabs/image/LightFilter;->setFromRGB(Lcom/jhlabs/vecmath/Color4f;I)V

    goto :goto_17

    :cond_1d
    move-object/from16 v10, p3

    move-object/from16 v11, v29

    .line 340
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iget v0, v0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    invoke-virtual {v8, v11, v0}, Lcom/jhlabs/image/LightFilter;->setFromRGB(Lcom/jhlabs/vecmath/Color4f;I)V

    :goto_17
    cmpl-float v0, v13, v9

    if-eqz v0, :cond_1e

    .line 341
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->environmentMap:Ljava/awt/Image;

    if-eqz v0, :cond_1e

    .line 343
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    move-object/from16 v14, v30

    invoke-virtual {v0, v14}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 344
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0, v6}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 345
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 346
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0, v7}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 347
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 350
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v5, v8, Lcom/jhlabs/image/LightFilter;->tmpv2:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v5

    mul-float v5, v5, v17

    invoke-virtual {v0, v5}, Lcom/jhlabs/vecmath/Vector3f;->scale(F)V

    .line 351
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v5, v8, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0, v5}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 353
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v0}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 354
    iget-object v0, v8, Lcom/jhlabs/image/LightFilter;->tmpv:Lcom/jhlabs/vecmath/Vector3f;

    move/from16 v15, p1

    move/from16 v5, p2

    invoke-direct {v8, v0, v10, v15, v5}, Lcom/jhlabs/image/LightFilter;->getEnvironmentMap(Lcom/jhlabs/vecmath/Vector3f;[III)I

    move-result v0

    move-object/from16 v9, v36

    invoke-virtual {v8, v9, v0}, Lcom/jhlabs/image/LightFilter;->setFromRGB(Lcom/jhlabs/vecmath/Color4f;I)V

    .line 355
    iget v0, v9, Lcom/jhlabs/vecmath/Color4f;->x:F

    mul-float v0, v0, v13

    iget v4, v11, Lcom/jhlabs/vecmath/Color4f;->x:F

    mul-float v4, v4, v19

    add-float/2addr v0, v4

    iput v0, v11, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 356
    iget v0, v9, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v0, v0, v13

    iget v4, v11, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v4, v4, v19

    add-float/2addr v0, v4

    iput v0, v11, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 357
    iget v0, v9, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v0, v0, v13

    iget v4, v11, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v4, v4, v19

    add-float/2addr v0, v4

    iput v0, v11, Lcom/jhlabs/vecmath/Color4f;->z:F

    goto :goto_18

    :cond_1e
    move/from16 v15, p1

    move/from16 v5, p2

    move-object/from16 v14, v30

    move-object/from16 v9, v36

    .line 360
    :goto_18
    iget-object v4, v8, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    move-object/from16 v0, p0

    move-object/from16 v28, v1

    move-object v1, v6

    move-object/from16 v29, v2

    move-object v2, v14

    move-object/from16 v30, v3

    move-object v3, v7

    move-object/from16 v20, v4

    const/high16 v36, 0x3f800000    # 1.0f

    move-object v4, v11

    move-object/from16 v5, v21

    move-object/from16 v37, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v22, v31

    const/16 v23, 0x3

    const/16 v31, 0x1

    move-object/from16 v7, v26

    invoke-virtual/range {v0 .. v7}, Lcom/jhlabs/image/LightFilter;->phongShade(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Color4f;Lcom/jhlabs/vecmath/Color4f;Lcom/jhlabs/image/LightFilter$Material;[Lcom/jhlabs/image/LightFilter$Light;)Lcom/jhlabs/vecmath/Color4f;

    move-result-object v0

    .line 361
    aget v1, v10, v32

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    .line 362
    iget v2, v0, Lcom/jhlabs/vecmath/Color4f;->x:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    iget v4, v0, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    iget v0, v0, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v0, v0, v3

    float-to-int v0, v0

    or-int/2addr v0, v2

    add-int/lit8 v2, v32, 0x1

    or-int/2addr v0, v1

    .line 363
    aput v0, v33, v32

    move/from16 v32, v2

    const/4 v1, 0x0

    goto :goto_19

    :cond_1f
    move/from16 v15, p1

    move-object/from16 v10, p3

    move-object/from16 v28, v1

    move-object/from16 v37, v6

    move-object/from16 v20, v7

    move-object/from16 v11, v29

    move-object/from16 v14, v30

    move/from16 v22, v31

    move-object/from16 v9, v36

    const/16 v23, 0x3

    const/16 v31, 0x1

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v29, v2

    move-object/from16 v30, v3

    add-int/lit8 v0, v32, 0x1

    const/4 v1, 0x0

    .line 365
    aput v1, v33, v32

    move/from16 v32, v0

    :goto_19
    add-int/lit8 v12, v12, 0x1

    move v5, v13

    move/from16 v7, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move/from16 v13, v34

    move-object/from16 v6, v37

    move-object/from16 v29, v11

    move-object/from16 v30, v14

    move-object/from16 v28, v20

    move-object v14, v9

    move-object v11, v10

    move v9, v15

    move-object/from16 v15, v35

    move/from16 v10, p2

    goto/16 :goto_c

    :cond_20
    move-object/from16 v37, v6

    move/from16 v22, v7

    move-object v10, v11

    move/from16 v34, v13

    move-object/from16 v35, v15

    move-object/from16 v20, v28

    move-object/from16 v11, v29

    const/16 v23, 0x3

    const/16 v31, 0x1

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v28, v1

    move-object/from16 v29, v2

    move v13, v5

    move v15, v9

    move-object v9, v14

    move-object/from16 v14, v30

    const/4 v1, 0x0

    move-object/from16 v30, v3

    .line 367
    aget-object v0, v24, v1

    .line 368
    aget-object v2, v24, v31

    aput-object v2, v24, v1

    .line 369
    aget-object v2, v24, v18

    aput-object v2, v24, v31

    .line 370
    aput-object v0, v24, v18

    add-int/lit8 v7, v22, 0x1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move/from16 v0, v32

    move-object/from16 v12, v33

    move/from16 v13, v34

    move-object/from16 v29, v11

    move-object/from16 v30, v14

    move-object/from16 v28, v20

    move-object v14, v9

    move-object v11, v10

    move v9, v15

    move-object/from16 v15, v35

    move/from16 v10, p2

    goto/16 :goto_8

    :cond_21
    move-object/from16 v33, v12

    return-object v33
.end method

.method public getBumpFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getBumpHeight()F
    .locals 1

    .line 88
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->bumpHeight:F

    return v0
.end method

.method public getBumpShape()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->bumpShape:I

    return v0
.end method

.method public getBumpSoftness()F
    .locals 1

    .line 96
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->bumpSoftness:F

    return v0
.end method

.method public getBumpSource()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    return v0
.end method

.method public getColorSource()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->colorSource:I

    return v0
.end method

.method public getDiffuseColor()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iget v0, v0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    return v0
.end method

.method public getEnvironmentMap()Ljava/awt/Image;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->environmentMap:Ljava/awt/Image;

    return-object v0
.end method

.method public getLights()Ljava/util/Vector;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    return-object v0
.end method

.method public getViewDistance()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/jhlabs/image/LightFilter;->viewDistance:F

    return v0
.end method

.method public phongShade(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Color4f;Lcom/jhlabs/vecmath/Color4f;Lcom/jhlabs/image/LightFilter$Material;[Lcom/jhlabs/image/LightFilter$Light;)Lcom/jhlabs/vecmath/Color4f;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 376
    iget-object v5, v0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    invoke-virtual {v5, v2}, Lcom/jhlabs/vecmath/Color4f;->set(Lcom/jhlabs/vecmath/Tuple4f;)V

    .line 377
    iget-object v5, v0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    iget v6, v3, Lcom/jhlabs/image/LightFilter$Material;->ambientIntensity:F

    invoke-virtual {v5, v6}, Lcom/jhlabs/vecmath/Color4f;->scale(F)V

    const/4 v5, 0x0

    .line 379
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_6

    .line 380
    aget-object v6, v4, v5

    .line 381
    iget-object v9, v0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 382
    iget-object v9, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->position:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v9, v11}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 383
    iget v9, v6, Lcom/jhlabs/image/LightFilter$Light;->type:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_0

    .line 384
    iget-object v9, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v9, v1}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 385
    :cond_0
    iget-object v9, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v9}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 386
    iget-object v9, v0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v9, v11}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v9

    float-to-double v11, v9

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-ltz v15, :cond_5

    .line 390
    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Lcom/jhlabs/vecmath/Vector3f;->set(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 391
    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v1}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 392
    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11}, Lcom/jhlabs/vecmath/Vector3f;->normalize()V

    .line 395
    iget v11, v6, Lcom/jhlabs/image/LightFilter$Light;->type:I

    const/4 v15, 0x3

    if-ne v11, v15, :cond_1

    .line 396
    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->direction:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v11, v8}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v8

    .line 397
    iget v11, v6, Lcom/jhlabs/image/LightFilter$Light;->cosConeAngle:F

    cmpg-float v11, v8, v11

    if-gez v11, :cond_2

    goto/16 :goto_2

    :cond_1
    const/4 v8, 0x0

    .line 401
    :cond_2
    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v7, v9, v16

    invoke-virtual {v11, v7}, Lcom/jhlabs/vecmath/Vector3f;->scale(F)V

    .line 402
    iget-object v7, v0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->l:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v7, v11}, Lcom/jhlabs/vecmath/Vector3f;->sub(Lcom/jhlabs/vecmath/Tuple3f;)V

    .line 403
    iget-object v7, v0, Lcom/jhlabs/image/LightFilter;->n:Lcom/jhlabs/vecmath/Vector3f;

    iget-object v11, v0, Lcom/jhlabs/image/LightFilter;->v:Lcom/jhlabs/vecmath/Vector3f;

    invoke-virtual {v7, v11}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v7

    float-to-double v10, v7

    cmpg-double v16, v10, v13

    if-gez v16, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    .line 410
    :cond_3
    iget v10, v3, Lcom/jhlabs/image/LightFilter$Material;->highlight:F

    iget v11, v3, Lcom/jhlabs/image/LightFilter$Material;->highlight:F

    mul-float v11, v11, v7

    sub-float/2addr v10, v11

    add-float/2addr v10, v7

    div-float/2addr v7, v10

    .line 413
    :goto_1
    iget v10, v6, Lcom/jhlabs/image/LightFilter$Light;->type:I

    if-ne v10, v15, :cond_4

    .line 414
    iget v10, v6, Lcom/jhlabs/image/LightFilter$Light;->cosConeAngle:F

    div-float/2addr v10, v8

    mul-float v8, v10, v10

    mul-float v8, v8, v8

    mul-float v8, v8, v8

    float-to-double v10, v10

    .line 419
    iget v13, v6, Lcom/jhlabs/image/LightFilter$Light;->focus:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float v13, v13, v14

    float-to-double v13, v13

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v8, v11, v8

    mul-float v10, v10, v8

    mul-float v7, v7, v10

    mul-float v9, v9, v10

    .line 424
    :cond_4
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    invoke-virtual {v8, v2}, Lcom/jhlabs/vecmath/Color4f;->set(Lcom/jhlabs/vecmath/Tuple4f;)V

    .line 425
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v3, Lcom/jhlabs/image/LightFilter$Material;->diffuseReflectivity:F

    invoke-virtual {v8, v10}, Lcom/jhlabs/vecmath/Color4f;->scale(F)V

    .line 426
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->x:F

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v11, v11, Lcom/jhlabs/vecmath/Color4f;->x:F

    mul-float v11, v11, v9

    mul-float v10, v10, v11

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 427
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->y:F

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v11, v11, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v11, v11, v9

    mul-float v10, v10, v11

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 428
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->z:F

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v11, v11, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v11, v11, v9

    mul-float v10, v10, v11

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->z:F

    .line 429
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    move-object/from16 v9, p5

    invoke-virtual {v8, v9}, Lcom/jhlabs/vecmath/Color4f;->set(Lcom/jhlabs/vecmath/Tuple4f;)V

    .line 430
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v3, Lcom/jhlabs/image/LightFilter$Material;->specularReflectivity:F

    invoke-virtual {v8, v10}, Lcom/jhlabs/vecmath/Color4f;->scale(F)V

    .line 431
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->x:F

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v11, v11, Lcom/jhlabs/vecmath/Color4f;->x:F

    mul-float v11, v11, v7

    mul-float v10, v10, v11

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 432
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->y:F

    iget-object v11, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v11, v11, Lcom/jhlabs/vecmath/Color4f;->y:F

    mul-float v11, v11, v7

    mul-float v10, v10, v11

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 433
    iget-object v8, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    iget v10, v8, Lcom/jhlabs/vecmath/Color4f;->z:F

    iget-object v6, v6, Lcom/jhlabs/image/LightFilter$Light;->realColor:Lcom/jhlabs/vecmath/Color4f;

    iget v6, v6, Lcom/jhlabs/vecmath/Color4f;->z:F

    mul-float v6, v6, v7

    mul-float v10, v10, v6

    iput v10, v8, Lcom/jhlabs/vecmath/Color4f;->z:F

    .line 434
    iget-object v6, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    iget-object v7, v0, Lcom/jhlabs/image/LightFilter;->specular_color:Lcom/jhlabs/vecmath/Color4f;

    invoke-virtual {v6, v7}, Lcom/jhlabs/vecmath/Color4f;->add(Lcom/jhlabs/vecmath/Tuple4f;)V

    .line 435
    iget-object v6, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/jhlabs/vecmath/Color4f;->clamp(FF)V

    .line 436
    iget-object v6, v0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    iget-object v7, v0, Lcom/jhlabs/image/LightFilter;->diffuse_color:Lcom/jhlabs/vecmath/Color4f;

    invoke-virtual {v6, v7}, Lcom/jhlabs/vecmath/Color4f;->add(Lcom/jhlabs/vecmath/Tuple4f;)V

    goto :goto_3

    :cond_5
    move-object/from16 v12, p2

    :goto_2
    move-object/from16 v9, p5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 439
    iget-object v1, v0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    invoke-virtual {v1, v8, v7}, Lcom/jhlabs/vecmath/Color4f;->clamp(FF)V

    .line 440
    iget-object v1, v0, Lcom/jhlabs/image/LightFilter;->shadedColor:Lcom/jhlabs/vecmath/Color4f;

    return-object v1
.end method

.method public removeLight(Lcom/jhlabs/image/LightFilter$Light;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->lights:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBumpFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter;->bumpFunction:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setBumpHeight(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->bumpHeight:F

    return-void
.end method

.method public setBumpShape(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->bumpShape:I

    return-void
.end method

.method public setBumpSoftness(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->bumpSoftness:F

    return-void
.end method

.method public setBumpSource(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->bumpSource:I

    return-void
.end method

.method public setColorSource(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->colorSource:I

    return-void
.end method

.method public setDiffuseColor(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter;->material:Lcom/jhlabs/image/LightFilter$Material;

    iput p1, v0, Lcom/jhlabs/image/LightFilter$Material;->diffuseColor:I

    return-void
.end method

.method public setEnvironmentMap(Ljava/awt/image/BufferedImage;)V
    .locals 8

    .line 116
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter;->environmentMap:Ljava/awt/Image;

    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    .line 119
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 120
    iget v5, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    iget v6, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/jhlabs/image/LightFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/jhlabs/image/LightFilter;->envPixels:[I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 122
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->envHeight:I

    iput p1, p0, Lcom/jhlabs/image/LightFilter;->envWidth:I

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter;->envPixels:[I

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

    .line 170
    invoke-virtual {p1, v0, v2, v3, p2}, Lcom/jhlabs/vecmath/Color4f;->set(FFFF)V

    return-void
.end method

.method public setViewDistance(F)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/jhlabs/image/LightFilter;->viewDistance:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Light Effects..."

    return-object v0
.end method
