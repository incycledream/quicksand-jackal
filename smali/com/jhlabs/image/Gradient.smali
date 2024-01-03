.class public Lcom/jhlabs/image/Gradient;
.super Lcom/jhlabs/image/ArrayColormap;
.source "Gradient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final BLEND_MASK:I = 0x70

.field public static final CIRCLE_DOWN:I = 0x40

.field public static final CIRCLE_UP:I = 0x30

.field private static final COLOR_MASK:I = 0x3

.field public static final CONSTANT:I = 0x50

.field public static final HUE_CCW:I = 0x2

.field public static final HUE_CW:I = 0x1

.field public static final LINEAR:I = 0x10

.field public static final RGB:I = 0x0

.field public static final SPLINE:I = 0x20

.field static final serialVersionUID:J = 0x1488e2ab7e90e2adL


# instance fields
.field public knotTypes:[B

.field public numKnots:I

.field public xKnots:[I

.field public yKnots:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/jhlabs/image/ArrayColormap;-><init>()V

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    new-array v1, v0, [I

    .line 56
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    new-array v1, v0, [I

    .line 59
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    new-array v0, v0, [B

    .line 62
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    .line 67
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0xff
        0x100
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0, p1, v0}, Lcom/jhlabs/image/Gradient;-><init>([I[I[B)V

    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/jhlabs/image/Gradient;-><init>([I[I[B)V

    return-void
.end method

.method public constructor <init>([I[I[B)V
    .locals 2

    .line 78
    invoke-direct {p0}, Lcom/jhlabs/image/ArrayColormap;-><init>()V

    const/4 v0, 0x4

    .line 55
    iput v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    new-array v1, v0, [I

    .line 56
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    new-array v1, v0, [I

    .line 59
    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    new-array v0, v0, [B

    .line 62
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/jhlabs/image/Gradient;->setKnots([I[I[B)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0xff
        0x100
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public static randomGradient()Lcom/jhlabs/image/Gradient;
    .locals 1

    .line 350
    new-instance v0, Lcom/jhlabs/image/Gradient;

    invoke-direct {v0}, Lcom/jhlabs/image/Gradient;-><init>()V

    .line 351
    invoke-virtual {v0}, Lcom/jhlabs/image/Gradient;->randomize()V

    return-object v0
.end method

.method private rebuildGradient()V
    .locals 17

    move-object/from16 v0, p0

    .line 226
    iget-object v1, v0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 227
    iget v3, v0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x100

    aput v5, v1, v4

    .line 228
    iget-object v1, v0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    const/4 v4, 0x1

    aget v5, v1, v4

    aput v5, v1, v2

    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    .line 229
    aget v3, v1, v3

    aput v3, v1, v5

    const/4 v1, 0x1

    .line 232
    :goto_0
    iget v3, v0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v5, v3, -0x1

    if-ge v1, v5, :cond_c

    .line 233
    iget-object v5, v0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    add-int/lit8 v7, v1, 0x1

    aget v8, v5, v7

    aget v9, v5, v1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 234
    aget v5, v5, v7

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 237
    :cond_0
    iget-object v3, v0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    aget v3, v3, v1

    :goto_1
    if-ge v3, v5, :cond_b

    .line 238
    iget-object v9, v0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    aget v10, v9, v1

    .line 239
    aget v9, v9, v7

    shr-int/lit8 v11, v10, 0x10

    const/16 v12, 0xff

    and-int/2addr v11, v12

    shr-int/lit8 v13, v10, 0x8

    and-int/2addr v13, v12

    and-int/lit16 v14, v10, 0xff

    const/4 v15, 0x0

    .line 240
    invoke-static {v11, v13, v14, v15}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    move-result-object v11

    shr-int/lit8 v13, v9, 0x10

    and-int/2addr v13, v12

    shr-int/lit8 v14, v9, 0x8

    and-int/2addr v14, v12

    and-int/lit16 v2, v9, 0xff

    .line 241
    invoke-static {v13, v14, v2, v15}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    move-result-object v2

    .line 242
    iget-object v13, v0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    aget v13, v13, v1

    sub-int v13, v3, v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    .line 243
    invoke-virtual {v0, v1}, Lcom/jhlabs/image/Gradient;->getKnotType(I)I

    move-result v14

    .line 244
    invoke-virtual {v0, v1}, Lcom/jhlabs/image/Gradient;->getKnotBlend(I)B

    move-result v15

    if-ltz v3, :cond_a

    if-gt v3, v12, :cond_a

    const/16 v12, 0x10

    const/high16 v16, 0x3f800000    # 1.0f

    if-eq v15, v12, :cond_5

    const/16 v12, 0x20

    if-eq v15, v12, :cond_4

    const/16 v12, 0x30

    if-eq v15, v12, :cond_3

    const/16 v12, 0x40

    if-eq v15, v12, :cond_2

    const/16 v12, 0x50

    if-eq v15, v12, :cond_1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    mul-float v13, v13, v13

    sub-float v12, v16, v13

    float-to-double v12, v12

    .line 262
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    sub-float v13, v16, v12

    goto :goto_2

    :cond_3
    sub-float v13, v13, v16

    mul-float v13, v13, v13

    sub-float v12, v16, v13

    float-to-double v12, v12

    .line 259
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v13, v12

    goto :goto_2

    :cond_4
    const v12, 0x3e19999a    # 0.15f

    const v15, 0x3f59999a    # 0.85f

    .line 255
    invoke-static {v12, v15, v13}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result v13

    :cond_5
    :goto_2
    if-eqz v14, :cond_9

    if-eq v14, v4, :cond_6

    if-eq v14, v6, :cond_6

    goto :goto_4

    :cond_6
    if-ne v14, v4, :cond_7

    const/4 v12, 0x0

    .line 273
    aget v9, v2, v12

    aget v10, v11, v12

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_8

    .line 274
    aget v9, v2, v12

    add-float v9, v9, v16

    aput v9, v2, v12

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    .line 276
    aget v9, v11, v12

    aget v10, v2, v4

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_8

    .line 277
    aget v9, v11, v12

    add-float v9, v9, v16

    aput v9, v11, v12

    .line 279
    :cond_8
    :goto_3
    aget v9, v11, v12

    aget v10, v2, v12

    invoke-static {v13, v9, v10}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v9

    const v10, 0x40c90fdb

    rem-float/2addr v9, v10

    .line 280
    aget v10, v11, v4

    aget v14, v2, v4

    invoke-static {v13, v10, v14}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v10

    .line 281
    aget v11, v11, v6

    aget v2, v2, v6

    invoke-static {v13, v11, v2}, Lcom/jhlabs/image/ImageMath;->lerp(FFF)F

    move-result v2

    .line 282
    iget-object v11, v0, Lcom/jhlabs/image/Gradient;->map:[I

    const/high16 v13, -0x1000000

    invoke-static {v9, v10, v2}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result v2

    or-int/2addr v2, v13

    aput v2, v11, v3

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    .line 268
    iget-object v2, v0, Lcom/jhlabs/image/Gradient;->map:[I

    invoke-static {v13, v10, v9}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v9

    aput v9, v2, v3

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v12, 0x0

    :goto_5
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    move v1, v7

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private sortKnots()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 292
    :goto_0
    iget v2, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 294
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    aget v4, v3, v1

    aget v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 295
    aget v4, v3, v1

    .line 296
    aget v5, v3, v2

    aput v5, v3, v1

    .line 297
    aput v4, v3, v2

    .line 298
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    aget v4, v3, v1

    .line 299
    aget v5, v3, v2

    aput v5, v3, v1

    .line 300
    aput v4, v3, v2

    .line 301
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte v4, v3, v1

    .line 302
    aget-byte v5, v3, v2

    aput-byte v5, v3, v1

    .line 303
    aput-byte v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addKnot(III)V
    .locals 6

    .line 138
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    add-int/lit8 v2, v0, 0x1

    .line 139
    new-array v2, v2, [I

    add-int/lit8 v3, v0, 0x1

    .line 140
    new-array v3, v3, [B

    .line 141
    iget-object v4, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    iget v4, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    invoke-static {v0, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    iget v4, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 145
    iput-object v2, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 146
    iput-object v3, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    .line 148
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    iget v1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v2, v1, -0x1

    aget v2, v0, v2

    aput v2, v0, v1

    .line 149
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    aput v3, v2, v1

    .line 150
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    aput-byte v4, v3, v1

    add-int/lit8 v4, v1, -0x1

    .line 151
    aput p1, v0, v4

    add-int/lit8 p1, v1, -0x1

    .line 152
    aput p2, v2, p1

    add-int/lit8 p1, v1, -0x1

    int-to-byte p2, p3

    .line 153
    aput-byte p2, v3, p1

    add-int/lit8 v1, v1, 0x1

    .line 154
    iput v1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 155
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 156
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 83
    invoke-super {p0}, Lcom/jhlabs/image/ArrayColormap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jhlabs/image/Gradient;

    .line 84
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->map:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jhlabs/image/Gradient;->map:[I

    .line 85
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 86
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 87
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    return-object v0
.end method

.method public copyTo(Lcom/jhlabs/image/Gradient;)V
    .locals 1

    .line 92
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    iput v0, p1, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 93
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->map:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jhlabs/image/Gradient;->map:[I

    .line 94
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 95
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 96
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p1, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    return-void
.end method

.method public getKnot(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    aget p1, v0, p1

    return p1
.end method

.method public getKnotBlend(I)B
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte p1, v0, p1

    and-int/lit8 p1, p1, 0x70

    int-to-byte p1, p1

    return p1
.end method

.method public getKnotType(I)I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    int-to-byte p1, p1

    return p1
.end method

.method public knotAt(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 219
    :goto_0
    iget v2, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    if-le v2, p1, :cond_0

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method public mutate(F)V
    .locals 12

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget v1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    aget v1, v1, v0

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v1, v1, 0xff

    int-to-double v4, v2

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p1

    float-to-double v6, v2

    .line 339
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v8

    double-to-int v2, v4

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    int-to-double v3, v3

    .line 340
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v8

    double-to-int v3, v3

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v3

    int-to-double v4, v1

    .line 341
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v1, v4

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    .line 342
    iget-object v4, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    const/high16 v5, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v4, v0

    .line 343
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 346
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public randomize()V
    .locals 9

    .line 315
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 316
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 317
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 318
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 319
    :goto_0
    iget v2, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    aput v3, v2, v1

    .line 321
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    const/high16 v3, -0x1000000

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 322
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    const/16 v3, 0x20

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    const/4 v3, 0x1

    .line 325
    aput v0, v1, v3

    add-int/lit8 v0, v2, -0x2

    const/16 v4, 0xff

    .line 326
    aput v4, v1, v0

    sub-int/2addr v2, v3

    const/16 v0, 0x100

    .line 327
    aput v0, v1, v2

    .line 328
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 329
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public rebuild()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 311
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public removeKnot(I)V
    .locals 4

    .line 160
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    iget v1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    iget v1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    invoke-static {v0, v3, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    :cond_1
    iget p1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 168
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    aget v0, p1, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 169
    aput v0, p1, v2

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setColor(II)V
    .locals 7

    .line 100
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->map:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 101
    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->map:[I

    const/16 v3, 0xff

    aget v2, v2, v3

    if-lez p1, :cond_0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 104
    iget-object v4, p0, Lcom/jhlabs/image/Gradient;->map:[I

    int-to-float v5, v1

    int-to-float v6, p1

    div-float/2addr v5, v6

    invoke-static {v5, v0, p2}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, v3, :cond_1

    move v0, p1

    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->map:[I

    sub-int v4, v0, p1

    int-to-float v4, v4

    sub-int/2addr v1, p1

    int-to-float v1, v1

    div-float/2addr v4, v1

    invoke-static {v4, p2, v2}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setKnot(II)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    aput p2, v0, p1

    .line 116
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setKnotBlend(II)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x71

    or-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 130
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setKnotPosition(II)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p2

    aput p2, v0, p1

    .line 214
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 215
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setKnotType(II)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte v1, v0, p1

    and-int/lit8 v1, v1, -0x4

    or-int/2addr p2, v1

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 121
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setKnots([I[I[B)V
    .locals 5

    .line 175
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 176
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 177
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 178
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 180
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    add-int/lit8 v0, v0, -0x2

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 182
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v3, v0, -0x1

    if-le p1, v3, :cond_1

    .line 183
    iget-object v3, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    mul-int/lit16 v4, p1, 0xff

    add-int/lit8 v0, v0, -0x2

    div-int/2addr v4, v0

    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    iget v0, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 v0, v0, -0x2

    invoke-static {p2, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p3, :cond_2

    .line 186
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    iget p2, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    add-int/lit8 p2, p2, -0x2

    invoke-static {p3, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 188
    :cond_2
    :goto_2
    iget p1, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    if-le v1, p1, :cond_3

    .line 189
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    const/16 p2, 0x20

    aput-byte p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 190
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 191
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public setKnots([I[I[BII)V
    .locals 2

    .line 195
    iput p5, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    .line 196
    iget p5, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    new-array v0, p5, [I

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    .line 197
    new-array v0, p5, [I

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    .line 198
    new-array v0, p5, [B

    iput-object v0, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    .line 199
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    const/4 v1, 0x0

    invoke-static {p1, p4, v0, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->yKnots:[I

    iget p5, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    invoke-static {p2, p4, p1, v1, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget-object p1, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    iget p2, p0, Lcom/jhlabs/image/Gradient;->numKnots:I

    invoke-static {p3, p4, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->sortKnots()V

    .line 203
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method

.method public splitSpan(I)V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/jhlabs/image/Gradient;->xKnots:[I

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v0, v2

    .line 208
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/Gradient;->getColor(F)I

    move-result v0

    iget-object v2, p0, Lcom/jhlabs/image/Gradient;->knotTypes:[B

    aget-byte p1, v2, p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/jhlabs/image/Gradient;->addKnot(III)V

    .line 209
    invoke-direct {p0}, Lcom/jhlabs/image/Gradient;->rebuildGradient()V

    return-void
.end method
