.class public Lcom/jhlabs/image/CausticsFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "CausticsFilter.java"


# instance fields
.field public amount:F

.field private angle:F

.field private bgColor:I

.field public brightness:I

.field private c:F

.field public dispersion:F

.field private s:F

.field private samples:I

.field private scale:F

.field public time:F

.field public turbulence:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, 0x42000000    # 32.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->angle:F

    const/16 v1, 0xa

    .line 31
    iput v1, p0, Lcom/jhlabs/image/CausticsFilter;->brightness:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 32
    iput v1, p0, Lcom/jhlabs/image/CausticsFilter;->amount:F

    .line 33
    iput v1, p0, Lcom/jhlabs/image/CausticsFilter;->turbulence:F

    .line 34
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->dispersion:F

    .line 35
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->time:F

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->samples:I

    const v0, -0x866001

    .line 37
    iput v0, p0, Lcom/jhlabs/image/CausticsFilter;->bgColor:I

    return-void
.end method

.method private static add(IF)I
    .locals 3

    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr p0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int v2, v2

    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    if-le v0, v1, :cond_0

    const/16 v0, 0xff

    :cond_0
    if-le v2, v1, :cond_1

    const/16 v2, 0xff

    :cond_1
    if-le p0, v1, :cond_2

    const/16 p0, 0xff

    :cond_2
    const/high16 p1, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static add(IFI)I
    .locals 4

    shr-int/lit8 v0, p0, 0x10

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr p0, v1

    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    int-to-float p2, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    int-to-float p2, v2

    add-float/2addr p2, p1

    float-to-int p1, p2

    move v2, p1

    goto :goto_0

    :cond_1
    int-to-float p0, p0

    add-float/2addr p0, p1

    float-to-int p0, p0

    :goto_0
    if-le v0, v1, :cond_2

    const/16 v0, 0xff

    :cond_2
    if-le v2, v1, :cond_3

    const/16 v2, 0xff

    :cond_3
    if-le p0, v1, :cond_4

    const/16 p0, 0xff

    :cond_4
    const/high16 p1, -0x1000000

    shl-int/lit8 p2, v0, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public static turbulence2(FFFF)F
    .locals 5

    const v0, 0x43b98000    # 371.0f

    add-float/2addr p0, v0

    const v0, 0x44044000    # 529.0f

    add-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    move p1, p0

    const/4 p0, 0x0

    :goto_0
    float-to-int v4, p3

    if-ge v2, v4, :cond_0

    .line 250
    invoke-static {p1, v1, p2}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr p0, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float p1, p1, v4

    mul-float v1, v1, v4

    mul-float v3, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v2, v4

    sub-float/2addr p3, v2

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {p1, v1, p2}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result p1

    mul-float p3, p3, p1

    div-float/2addr p3, v3

    add-float/2addr p0, p3

    :cond_1
    return p0
.end method


# virtual methods
.method protected evaluate(FF)F
    .locals 7

    .line 264
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->s:F

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/CausticsFilter;->c:F

    iget v2, p0, Lcom/jhlabs/image/CausticsFilter;->time:F

    mul-float v3, v1, v2

    add-float/2addr v0, v3

    mul-float p1, p1, v1

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    .line 266
    iget v1, p0, Lcom/jhlabs/image/CausticsFilter;->turbulence:F

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    invoke-static {v0, p2, p1}, Lcom/jhlabs/math/Noise;->noise3(FFF)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p2, p1, v1}, Lcom/jhlabs/image/CausticsFilter;->turbulence2(FFFF)F

    move-result p1

    :goto_0
    return p1
.end method

.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 109
    new-instance v2, Ljava/util/Random;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const-wide v3, 0x3fb999999999999aL    # 0.1

    .line 111
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    iput v5, v0, Lcom/jhlabs/image/CausticsFilter;->s:F

    .line 112
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/jhlabs/image/CausticsFilter;->c:F

    .line 114
    iget-object v3, v0, Lcom/jhlabs/image/CausticsFilter;->originalSpace:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    .line 115
    iget-object v3, v0, Lcom/jhlabs/image/CausticsFilter;->originalSpace:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    .line 116
    iget v3, v1, Ljava/awt/Rectangle;->width:I

    .line 117
    iget v1, v1, Ljava/awt/Rectangle;->height:I

    mul-int v4, v3, v1

    .line 119
    new-array v4, v4, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 123
    iget v10, v0, Lcom/jhlabs/image/CausticsFilter;->bgColor:I

    aput v10, v4, v8

    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_0

    .line 127
    :cond_1
    iget v6, v0, Lcom/jhlabs/image/CausticsFilter;->brightness:I

    iget v7, v0, Lcom/jhlabs/image/CausticsFilter;->samples:I

    div-int/2addr v6, v7

    if-nez v6, :cond_2

    const/4 v6, 0x1

    .line 131
    :cond_2
    iget v8, v0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v8, v9, v8

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v1, :cond_13

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v3, :cond_12

    const/4 v13, 0x0

    .line 136
    :goto_4
    iget v14, v0, Lcom/jhlabs/image/CausticsFilter;->samples:I

    if-ge v13, v14, :cond_11

    int-to-float v14, v12

    .line 137
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v15

    add-float/2addr v14, v15

    int-to-float v15, v11

    .line 138
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v16

    add-float v15, v15, v16

    mul-float v5, v14, v8

    mul-float v7, v15, v8

    const v16, 0x3dcccccd    # 0.1f

    .line 142
    iget v9, v0, Lcom/jhlabs/image/CausticsFilter;->amount:F

    add-float v9, v9, v16

    move-object/from16 v16, v2

    sub-float v2, v5, v10

    .line 143
    invoke-virtual {v0, v2, v7}, Lcom/jhlabs/image/CausticsFilter;->evaluate(FF)F

    move-result v2

    move/from16 p4, v8

    add-float v8, v5, v10

    invoke-virtual {v0, v8, v7}, Lcom/jhlabs/image/CausticsFilter;->evaluate(FF)F

    move-result v8

    sub-float/2addr v2, v8

    add-float v8, v7, v10

    .line 144
    invoke-virtual {v0, v5, v8}, Lcom/jhlabs/image/CausticsFilter;->evaluate(FF)F

    move-result v8

    sub-float/2addr v7, v10

    invoke-virtual {v0, v5, v7}, Lcom/jhlabs/image/CausticsFilter;->evaluate(FF)F

    move-result v5

    sub-float/2addr v8, v5

    .line 146
    iget v5, v0, Lcom/jhlabs/image/CausticsFilter;->dispersion:F

    const/16 v17, 0x0

    cmpl-float v5, v5, v17

    if-lez v5, :cond_b

    const/4 v5, 0x0

    :goto_5
    const/4 v7, 0x3

    if-ge v5, v7, :cond_a

    int-to-float v7, v5

    .line 148
    iget v10, v0, Lcom/jhlabs/image/CausticsFilter;->dispersion:F

    mul-float v7, v7, v10

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v7, v10

    .line 149
    iget v10, v0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    mul-float v18, v10, v9

    mul-float v18, v18, v2

    mul-float v18, v18, v7

    move/from16 v19, v11

    add-float v11, v14, v18

    mul-float v10, v10, v9

    mul-float v10, v10, v8

    mul-float v10, v10, v7

    add-float/2addr v10, v15

    cmpg-float v7, v11, v17

    if-ltz v7, :cond_9

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    cmpl-float v7, v11, v7

    if-gez v7, :cond_9

    cmpg-float v7, v10, v17

    if-ltz v7, :cond_9

    add-int/lit8 v7, v1, -0x1

    int-to-float v7, v7

    cmpl-float v7, v10, v7

    if-ltz v7, :cond_3

    goto :goto_8

    :cond_3
    float-to-int v7, v10

    mul-int v7, v7, v3

    float-to-int v10, v11

    add-int/2addr v7, v10

    .line 155
    aget v10, v4, v7

    shr-int/lit8 v11, v10, 0x10

    move/from16 v18, v12

    const/16 v12, 0xff

    and-int/2addr v11, v12

    move/from16 v20, v13

    shr-int/lit8 v13, v10, 0x8

    and-int/2addr v13, v12

    and-int/2addr v10, v12

    const/4 v12, 0x2

    if-ne v5, v12, :cond_4

    add-int/2addr v11, v6

    :goto_6
    const/16 v12, 0xff

    move/from16 v21, v11

    move v11, v10

    move/from16 v10, v21

    goto :goto_7

    :cond_4
    const/4 v12, 0x1

    if-ne v5, v12, :cond_5

    add-int/2addr v13, v6

    goto :goto_6

    :cond_5
    add-int/2addr v10, v6

    goto :goto_6

    :goto_7
    if-le v10, v12, :cond_6

    const/16 v10, 0xff

    :cond_6
    if-le v13, v12, :cond_7

    const/16 v13, 0xff

    :cond_7
    if-le v11, v12, :cond_8

    const/16 v11, 0xff

    :cond_8
    shl-int/lit8 v10, v10, 0x10

    const/high16 v12, -0x1000000

    or-int/2addr v10, v12

    shl-int/lit8 v12, v13, 0x8

    or-int/2addr v10, v12

    or-int/2addr v10, v11

    .line 171
    aput v10, v4, v7

    goto :goto_9

    :cond_9
    :goto_8
    move/from16 v18, v12

    move/from16 v20, v13

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move/from16 v12, v18

    move/from16 v11, v19

    move/from16 v13, v20

    goto/16 :goto_5

    :cond_a
    move/from16 v19, v11

    move/from16 v18, v12

    move/from16 v20, v13

    goto :goto_b

    :cond_b
    move/from16 v19, v11

    move/from16 v18, v12

    move/from16 v20, v13

    .line 175
    iget v5, v0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    mul-float v7, v5, v9

    mul-float v7, v7, v2

    add-float/2addr v14, v7

    mul-float v5, v5, v9

    mul-float v5, v5, v8

    add-float/2addr v15, v5

    cmpg-float v2, v14, v17

    if-ltz v2, :cond_10

    add-int/lit8 v2, v3, -0x1

    int-to-float v2, v2

    cmpl-float v2, v14, v2

    if-gez v2, :cond_10

    cmpg-float v2, v15, v17

    if-ltz v2, :cond_10

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-ltz v2, :cond_c

    goto :goto_b

    :cond_c
    float-to-int v2, v15

    mul-int v2, v2, v3

    float-to-int v5, v14

    add-int/2addr v2, v5

    .line 181
    aget v5, v4, v2

    shr-int/lit8 v7, v5, 0x10

    const/16 v12, 0xff

    and-int/2addr v7, v12

    shr-int/lit8 v8, v5, 0x8

    and-int/2addr v8, v12

    and-int/2addr v5, v12

    add-int v10, v7, v6

    add-int v7, v8, v6

    add-int/2addr v5, v6

    if-le v10, v12, :cond_d

    const/16 v10, 0xff

    :cond_d
    if-le v7, v12, :cond_e

    const/16 v7, 0xff

    :cond_e
    if-le v5, v12, :cond_f

    goto :goto_a

    :cond_f
    move v12, v5

    :goto_a
    shl-int/lit8 v5, v10, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v12

    .line 194
    aput v5, v4, v2

    :cond_10
    :goto_b
    add-int/lit8 v13, v20, 0x1

    move/from16 v8, p4

    move-object/from16 v2, v16

    move/from16 v12, v18

    move/from16 v11, v19

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    goto/16 :goto_4

    :cond_11
    move-object/from16 v16, v2

    move/from16 p4, v8

    move/from16 v19, v11

    move/from16 v18, v12

    add-int/lit8 v12, v18, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    goto/16 :goto_3

    :cond_12
    move-object/from16 v16, v2

    move/from16 p4, v8

    move/from16 v19, v11

    add-int/lit8 v11, v19, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    goto/16 :goto_2

    :cond_13
    return-object v4
.end method

.method public getAmount()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->amount:F

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->bgColor:I

    return v0
.end method

.method public getBrightness()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->brightness:I

    return v0
.end method

.method public getDispersion()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->dispersion:F

    return v0
.end method

.method public getSamples()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->samples:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    return v0
.end method

.method public getTime()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->time:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/CausticsFilter;->turbulence:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->amount:F

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->bgColor:I

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->brightness:I

    return-void
.end method

.method public setDispersion(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->dispersion:F

    return-void
.end method

.method public setSamples(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->samples:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->scale:F

    return-void
.end method

.method public setTime(F)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->time:F

    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/CausticsFilter;->turbulence:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Caustics..."

    return-object v0
.end method
