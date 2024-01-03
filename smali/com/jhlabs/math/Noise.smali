.class public Lcom/jhlabs/math/Noise;
.super Ljava/lang/Object;
.source "Noise.java"

# interfaces
.implements Lcom/jhlabs/math/Function1D;
.implements Lcom/jhlabs/math/Function2D;
.implements Lcom/jhlabs/math/Function3D;


# static fields
.field private static final B:I = 0x100

.field private static final BM:I = 0xff

.field private static final N:I = 0x1000

.field static g1:[F

.field static g2:[[F

.field static g3:[[F

.field static p:[I

.field private static randomGenerator:Ljava/util/Random;

.field static start:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    const-class v0, F

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/jhlabs/math/Noise;->randomGenerator:Ljava/util/Random;

    const/16 v1, 0x202

    new-array v2, v1, [I

    .line 74
    sput-object v2, Lcom/jhlabs/math/Noise;->p:[I

    const/4 v2, 0x3

    .line 75
    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    sput-object v2, Lcom/jhlabs/math/Noise;->g3:[[F

    const/4 v2, 0x2

    .line 76
    filled-new-array {v1, v2}, [I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/jhlabs/math/Noise;->g2:[[F

    new-array v0, v1, [F

    .line 77
    sput-object v0, Lcom/jhlabs/math/Noise;->g1:[F

    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcom/jhlabs/math/Noise;->start:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRange(Lcom/jhlabs/math/Function1D;[F)[F
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 296
    invoke-interface {p0, v0}, Lcom/jhlabs/math/Function1D;->evaluate(F)F

    move-result v3

    .line 297
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 298
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v3, v0

    const-wide v5, 0x3ff4579d0a67620fL    # 1.27139

    .line 295
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-float v0, v3

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 300
    aput v1, p1, p0

    const/4 p0, 0x1

    .line 301
    aput v2, p1, p0

    return-object p1
.end method

.method public static findRange(Lcom/jhlabs/math/Function2D;[F)[F
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [F

    :cond_0
    const/high16 v0, -0x3d380000    # -100.0f

    const/4 v1, 0x0

    const/high16 v1, -0x3d380000    # -100.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v5, v1, v4

    if-gez v5, :cond_2

    move v5, v3

    move v3, v2

    const/high16 v2, -0x3d380000    # -100.0f

    :goto_1
    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    .line 317
    invoke-interface {p0, v2, v1}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v6

    .line 318
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 319
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-double v6, v2

    const-wide v8, 0x40258af3a14cec42L    # 10.77139

    .line 316
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v8

    double-to-float v2, v6

    goto :goto_1

    :cond_1
    float-to-double v1, v1

    const-wide v6, 0x4024b415f45e0b4eL    # 10.35173

    .line 315
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v6

    double-to-float v1, v1

    move v2, v3

    move v3, v5

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 322
    aput v2, p1, p0

    const/4 p0, 0x1

    .line 323
    aput v3, p1, p0

    return-object p1
.end method

.method private static init()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x100

    if-ge v1, v4, :cond_2

    .line 256
    sget-object v5, Lcom/jhlabs/math/Noise;->p:[I

    aput v1, v5, v1

    .line 258
    sget-object v5, Lcom/jhlabs/math/Noise;->g1:[F

    invoke-static {}, Lcom/jhlabs/math/Noise;->random()I

    move-result v6

    rem-int/lit16 v6, v6, 0x200

    sub-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v7, 0x43800000    # 256.0f

    div-float/2addr v6, v7

    aput v6, v5, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_0

    .line 261
    sget-object v6, Lcom/jhlabs/math/Noise;->g2:[[F

    aget-object v6, v6, v1

    invoke-static {}, Lcom/jhlabs/math/Noise;->random()I

    move-result v8

    rem-int/lit16 v8, v8, 0x200

    sub-int/2addr v8, v4

    int-to-float v8, v8

    div-float/2addr v8, v7

    aput v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 262
    :cond_0
    sget-object v3, Lcom/jhlabs/math/Noise;->g2:[[F

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/jhlabs/math/Noise;->normalize2([F)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_1

    .line 265
    sget-object v5, Lcom/jhlabs/math/Noise;->g3:[[F

    aget-object v5, v5, v1

    invoke-static {}, Lcom/jhlabs/math/Noise;->random()I

    move-result v6

    rem-int/lit16 v6, v6, 0x200

    sub-int/2addr v6, v4

    int-to-float v6, v6

    div-float/2addr v6, v7

    aput v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 266
    :cond_1
    sget-object v2, Lcom/jhlabs/math/Noise;->g3:[[F

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/jhlabs/math/Noise;->normalize3([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0xff

    :goto_3
    if-ltz v1, :cond_3

    .line 270
    sget-object v5, Lcom/jhlabs/math/Noise;->p:[I

    aget v6, v5, v1

    .line 271
    invoke-static {}, Lcom/jhlabs/math/Noise;->random()I

    move-result v7

    rem-int/2addr v7, v4

    aget v8, v5, v7

    aput v8, v5, v1

    .line 272
    sget-object v5, Lcom/jhlabs/math/Noise;->p:[I

    aput v6, v5, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_4
    const/16 v4, 0x102

    if-ge v1, v4, :cond_6

    .line 276
    sget-object v4, Lcom/jhlabs/math/Noise;->p:[I

    add-int/lit16 v5, v1, 0x100

    aget v6, v4, v1

    aput v6, v4, v5

    .line 277
    sget-object v4, Lcom/jhlabs/math/Noise;->g1:[F

    aget v6, v4, v1

    aput v6, v4, v5

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_4

    .line 279
    sget-object v6, Lcom/jhlabs/math/Noise;->g2:[[F

    aget-object v7, v6, v5

    aget-object v6, v6, v1

    aget v6, v6, v4

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_5

    .line 281
    sget-object v6, Lcom/jhlabs/math/Noise;->g3:[[F

    aget-object v7, v6, v5

    aget-object v6, v6, v1

    aget v6, v6, v4

    aput v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public static lerp(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float p0, p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method public static noise1(F)F
    .locals 6

    .line 93
    sget-boolean v0, Lcom/jhlabs/math/Noise;->start:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 94
    sput-boolean v0, Lcom/jhlabs/math/Noise;->start:Z

    .line 95
    invoke-static {}, Lcom/jhlabs/math/Noise;->init()V

    :cond_0
    const/high16 v0, 0x45800000    # 4096.0f

    add-float/2addr p0, v0

    float-to-int v0, p0

    and-int/lit16 v1, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-float v0, v0

    sub-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p0, v0

    .line 104
    invoke-static {p0}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v3

    .line 106
    sget-object v4, Lcom/jhlabs/math/Noise;->g1:[F

    sget-object v5, Lcom/jhlabs/math/Noise;->p:[I

    aget v1, v5, v1

    aget v1, v4, v1

    mul-float p0, p0, v1

    .line 107
    aget v1, v5, v2

    aget v1, v4, v1

    mul-float v0, v0, v1

    const v1, 0x40133333    # 2.3f

    .line 108
    invoke-static {v3, p0, v0}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result p0

    mul-float p0, p0, v1

    return p0
.end method

.method public static noise2(FF)F
    .locals 12

    .line 122
    sget-boolean v0, Lcom/jhlabs/math/Noise;->start:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 123
    sput-boolean v1, Lcom/jhlabs/math/Noise;->start:Z

    .line 124
    invoke-static {}, Lcom/jhlabs/math/Noise;->init()V

    :cond_0
    const/high16 v0, 0x45800000    # 4096.0f

    add-float/2addr p0, v0

    float-to-int v2, p0

    and-int/lit16 v3, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    and-int/lit16 v4, v4, 0xff

    int-to-float v2, v2

    sub-float/2addr p0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, p0, v2

    add-float/2addr p1, v0

    float-to-int v0, p1

    and-int/lit16 v6, v0, 0xff

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v7, v7, 0xff

    int-to-float v0, v0

    sub-float/2addr p1, v0

    sub-float v0, p1, v2

    .line 139
    sget-object v2, Lcom/jhlabs/math/Noise;->p:[I

    aget v3, v2, v3

    .line 140
    aget v4, v2, v4

    add-int v8, v3, v6

    .line 142
    aget v8, v2, v8

    add-int/2addr v6, v4

    .line 143
    aget v6, v2, v6

    add-int/2addr v3, v7

    .line 144
    aget v3, v2, v3

    add-int/2addr v4, v7

    .line 145
    aget v2, v2, v4

    .line 147
    invoke-static {p0}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v4

    .line 148
    invoke-static {p1}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v7

    .line 150
    sget-object v9, Lcom/jhlabs/math/Noise;->g2:[[F

    aget-object v8, v9, v8

    aget v10, v8, v1

    mul-float v10, v10, p0

    const/4 v11, 0x1

    aget v8, v8, v11

    mul-float v8, v8, p1

    add-float/2addr v10, v8

    .line 151
    aget-object v6, v9, v6

    aget v8, v6, v1

    mul-float v8, v8, v5

    aget v6, v6, v11

    mul-float p1, p1, v6

    add-float/2addr v8, p1

    .line 152
    invoke-static {v4, v10, v8}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result p1

    .line 154
    sget-object v6, Lcom/jhlabs/math/Noise;->g2:[[F

    aget-object v3, v6, v3

    aget v8, v3, v1

    mul-float p0, p0, v8

    aget v3, v3, v11

    mul-float v3, v3, v0

    add-float/2addr p0, v3

    .line 155
    aget-object v2, v6, v2

    aget v1, v2, v1

    mul-float v5, v5, v1

    aget v1, v2, v11

    mul-float v0, v0, v1

    add-float/2addr v5, v0

    .line 156
    invoke-static {v4, p0, v5}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result p0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 158
    invoke-static {v7, p1, p0}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result p0

    mul-float p0, p0, v0

    return p0
.end method

.method public static noise3(FFF)F
    .locals 22

    .line 173
    sget-boolean v0, Lcom/jhlabs/math/Noise;->start:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 174
    sput-boolean v1, Lcom/jhlabs/math/Noise;->start:Z

    .line 175
    invoke-static {}, Lcom/jhlabs/math/Noise;->init()V

    :cond_0
    const/high16 v0, 0x45800000    # 4096.0f

    add-float v2, p0, v0

    float-to-int v3, v2

    and-int/lit16 v4, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v2, v3

    add-float v7, p1, v0

    float-to-int v8, v7

    and-int/lit16 v9, v8, 0xff

    add-int/lit8 v10, v9, 0x1

    and-int/lit16 v10, v10, 0xff

    int-to-float v8, v8

    sub-float/2addr v7, v8

    sub-float v8, v7, v3

    add-float v0, p2, v0

    float-to-int v11, v0

    and-int/lit16 v12, v11, 0xff

    add-int/lit8 v13, v12, 0x1

    and-int/lit16 v13, v13, 0xff

    int-to-float v11, v11

    sub-float/2addr v0, v11

    sub-float v3, v0, v3

    .line 196
    sget-object v11, Lcom/jhlabs/math/Noise;->p:[I

    aget v4, v11, v4

    .line 197
    aget v5, v11, v5

    add-int v14, v4, v9

    .line 199
    aget v14, v11, v14

    add-int/2addr v9, v5

    .line 200
    aget v9, v11, v9

    add-int/2addr v4, v10

    .line 201
    aget v4, v11, v4

    add-int/2addr v5, v10

    .line 202
    aget v5, v11, v5

    .line 204
    invoke-static {v2}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v10

    .line 205
    invoke-static {v7}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v11

    .line 206
    invoke-static {v0}, Lcom/jhlabs/math/Noise;->sCurve(F)F

    move-result v15

    .line 208
    sget-object v16, Lcom/jhlabs/math/Noise;->g3:[[F

    add-int v17, v14, v12

    aget-object v17, v16, v17

    aget v18, v17, v1

    mul-float v18, v18, v2

    const/16 v19, 0x1

    aget v20, v17, v19

    mul-float v20, v20, v7

    add-float v18, v18, v20

    const/16 v20, 0x2

    aget v17, v17, v20

    mul-float v17, v17, v0

    add-float v1, v18, v17

    add-int v17, v9, v12

    .line 209
    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v18, v16, v17

    mul-float v18, v18, v6

    aget v17, v16, v19

    mul-float v17, v17, v7

    add-float v18, v18, v17

    aget v16, v16, v20

    mul-float v16, v16, v0

    move/from16 p0, v15

    add-float v15, v18, v16

    .line 210
    invoke-static {v10, v1, v15}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v1

    .line 212
    sget-object v15, Lcom/jhlabs/math/Noise;->g3:[[F

    add-int v16, v4, v12

    aget-object v16, v15, v16

    const/16 v17, 0x0

    aget v18, v16, v17

    mul-float v18, v18, v2

    aget v21, v16, v19

    mul-float v21, v21, v8

    add-float v18, v18, v21

    aget v16, v16, v20

    mul-float v16, v16, v0

    move/from16 p1, v4

    add-float v4, v18, v16

    add-int/2addr v12, v5

    .line 213
    aget-object v12, v15, v12

    aget v15, v12, v17

    mul-float v15, v15, v6

    aget v16, v12, v19

    mul-float v16, v16, v8

    add-float v15, v15, v16

    aget v12, v12, v20

    mul-float v0, v0, v12

    add-float/2addr v15, v0

    .line 214
    invoke-static {v10, v4, v15}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v0

    .line 216
    invoke-static {v11, v1, v0}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v0

    .line 218
    sget-object v1, Lcom/jhlabs/math/Noise;->g3:[[F

    add-int/2addr v14, v13

    aget-object v4, v1, v14

    const/4 v12, 0x0

    aget v14, v4, v12

    mul-float v14, v14, v2

    aget v15, v4, v19

    mul-float v15, v15, v7

    add-float/2addr v14, v15

    aget v4, v4, v20

    mul-float v4, v4, v3

    add-float/2addr v14, v4

    add-int/2addr v9, v13

    .line 219
    aget-object v1, v1, v9

    aget v4, v1, v12

    mul-float v4, v4, v6

    aget v9, v1, v19

    mul-float v7, v7, v9

    add-float/2addr v4, v7

    aget v1, v1, v20

    mul-float v1, v1, v3

    add-float/2addr v4, v1

    .line 220
    invoke-static {v10, v14, v4}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v1

    .line 222
    sget-object v4, Lcom/jhlabs/math/Noise;->g3:[[F

    add-int v7, p1, v13

    aget-object v7, v4, v7

    const/4 v9, 0x0

    aget v12, v7, v9

    mul-float v2, v2, v12

    aget v12, v7, v19

    mul-float v12, v12, v8

    add-float/2addr v2, v12

    aget v7, v7, v20

    mul-float v7, v7, v3

    add-float/2addr v2, v7

    add-int/2addr v5, v13

    .line 223
    aget-object v4, v4, v5

    aget v5, v4, v9

    mul-float v6, v6, v5

    aget v5, v4, v19

    mul-float v8, v8, v5

    add-float/2addr v6, v8

    aget v4, v4, v20

    mul-float v3, v3, v4

    add-float/2addr v6, v3

    .line 224
    invoke-static {v10, v2, v6}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v2

    .line 226
    invoke-static {v11, v1, v2}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v1

    const/high16 v2, 0x3fc00000    # 1.5f

    move/from16 v3, p0

    .line 228
    invoke-static {v3, v0, v1}, Lcom/jhlabs/math/Noise;->lerp(FFF)F

    move-result v0

    mul-float v0, v0, v2

    return v0
.end method

.method private static normalize2([F)V
    .locals 5

    const/4 v0, 0x0

    .line 236
    aget v1, p0, v0

    aget v2, p0, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p0, v2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    .line 237
    aget v3, p0, v0

    div-float/2addr v3, v1

    aput v3, p0, v0

    .line 238
    aget v0, p0, v2

    div-float/2addr v0, v1

    aput v0, p0, v2

    return-void
.end method

.method static normalize3([F)V
    .locals 6

    const/4 v0, 0x0

    .line 242
    aget v1, p0, v0

    aget v2, p0, v0

    mul-float v1, v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p0, v2

    mul-float v3, v3, v4

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    aget v5, p0, v3

    mul-float v4, v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 243
    aget v4, p0, v0

    div-float/2addr v4, v1

    aput v4, p0, v0

    .line 244
    aget v0, p0, v2

    div-float/2addr v0, v1

    aput v0, p0, v2

    .line 245
    aget v0, p0, v3

    div-float/2addr v0, v1

    aput v0, p0, v3

    return-void
.end method

.method private static random()I
    .locals 2

    .line 249
    sget-object v0, Lcom/jhlabs/math/Noise;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static sCurve(F)F
    .locals 2

    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float p0, p0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v1, p0

    mul-float v0, v0, v1

    return v0
.end method

.method public static turbulence2(FFF)F
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v1, p2

    if-gtz v2, :cond_0

    mul-float v2, v1, p0

    mul-float v3, v1, p1

    .line 51
    invoke-static {v2, v3}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static turbulence3(FFFF)F
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v1, p3

    if-gtz v2, :cond_0

    mul-float v2, v1, p0

    mul-float v3, v1, p1

    mul-float v4, v1, p2

    .line 66
    invoke-static {v2, v3, v4}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public evaluate(F)F
    .locals 0

    .line 29
    invoke-static {p1}, Lcom/jhlabs/math/Noise;->noise1(F)F

    move-result p1

    return p1
.end method

.method public evaluate(FF)F
    .locals 0

    .line 33
    invoke-static {p1, p2}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    return p1
.end method

.method public evaluate(FFF)F
    .locals 0

    .line 37
    invoke-static {p1, p2, p3}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result p1

    return p1
.end method
