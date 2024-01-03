.class public Lcom/jhlabs/image/FieldWarpFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "FieldWarpFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/FieldWarpFilter$Line;
    }
.end annotation


# instance fields
.field private amount:F

.field private height:F

.field private inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

.field private intermediateLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

.field private outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

.field private power:F

.field private strength:F

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    iput v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    .line 48
    iput v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->power:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 49
    iput v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->strength:F

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 9

    .line 151
    iget v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->width:F

    iput v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->width:F

    .line 152
    iget v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->height:F

    iput v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->height:F

    .line 153
    iget-object v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    if-eqz v1, :cond_1

    .line 154
    array-length v0, v0

    new-array v0, v0, [Lcom/jhlabs/image/FieldWarpFilter$Line;

    iput-object v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->intermediateLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    const/4 v0, 0x0

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/jhlabs/image/FieldWarpFilter;->intermediateLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    new-instance v3, Lcom/jhlabs/image/FieldWarpFilter$Line;

    iget v4, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jhlabs/image/FieldWarpFilter$Line;->x1:I

    iget-object v5, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jhlabs/image/FieldWarpFilter$Line;->x1:I

    invoke-static {v4, v1, v5}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v1

    iget v4, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    iget-object v5, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jhlabs/image/FieldWarpFilter$Line;->y1:I

    iget-object v6, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jhlabs/image/FieldWarpFilter$Line;->y1:I

    invoke-static {v4, v5, v6}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v4

    iget v5, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    iget-object v6, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/jhlabs/image/FieldWarpFilter$Line;->x2:I

    iget-object v7, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jhlabs/image/FieldWarpFilter$Line;->x2:I

    invoke-static {v5, v6, v7}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v5

    iget v6, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    iget-object v7, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v7, v7, v0

    iget v7, v7, Lcom/jhlabs/image/FieldWarpFilter$Line;->y2:I

    iget-object v8, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v8, v8, v0

    iget v8, v8, Lcom/jhlabs/image/FieldWarpFilter$Line;->y2:I

    invoke-static {v6, v7, v8}, Lcom/jhlabs/image/ImageMath;->lerp(FII)I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/jhlabs/image/FieldWarpFilter$Line;-><init>(IIII)V

    aput-object v3, v2, v0

    .line 162
    invoke-virtual {v3}, Lcom/jhlabs/image/FieldWarpFilter$Line;->setup()V

    .line 163
    iget-object v1, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jhlabs/image/FieldWarpFilter$Line;->setup()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    const/4 p2, 0x0

    .line 166
    iput-object p2, p0, Lcom/jhlabs/image/FieldWarpFilter;->intermediateLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    :cond_1
    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    return v0
.end method

.method public getInLines()[Lcom/jhlabs/image/FieldWarpFilter$Line;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    return-object v0
.end method

.method public getOutLines()[Lcom/jhlabs/image/FieldWarpFilter$Line;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->power:F

    return v0
.end method

.method public getStrength()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/FieldWarpFilter;->strength:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/FieldWarpFilter;->amount:F

    return-void
.end method

.method public setInLines([Lcom/jhlabs/image/FieldWarpFilter$Line;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    return-void
.end method

.method public setOutLines([Lcom/jhlabs/image/FieldWarpFilter$Line;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/jhlabs/image/FieldWarpFilter;->outLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    return-void
.end method

.method public setPower(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/FieldWarpFilter;->power:F

    return-void
.end method

.method public setStrength(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/FieldWarpFilter;->strength:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Field Warp..."

    return-object v0
.end method

.method protected transform(IILjava/awt/Point;)V
    .locals 0

    return-void
.end method

.method protected transformInverse(II[F)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 108
    iget v3, v0, Lcom/jhlabs/image/FieldWarpFilter;->strength:F

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    .line 109
    iget v5, v0, Lcom/jhlabs/image/FieldWarpFilter;->power:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 115
    :goto_0
    iget-object v12, v0, Lcom/jhlabs/image/FieldWarpFilter;->inLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    array-length v13, v12

    if-ge v8, v13, :cond_3

    .line 116
    aget-object v12, v12, v8

    .line 117
    iget-object v13, v0, Lcom/jhlabs/image/FieldWarpFilter;->intermediateLines:[Lcom/jhlabs/image/FieldWarpFilter$Line;

    aget-object v13, v13, v8

    .line 118
    iget v14, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->x1:I

    sub-int v14, v1, v14

    int-to-float v14, v14

    .line 119
    iget v15, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->y1:I

    sub-int v15, v2, v15

    int-to-float v15, v15

    .line 121
    iget v6, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->dx:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    iget v4, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->dy:I

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v6, v4

    iget v4, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->lengthSquared:F

    div-float/2addr v6, v4

    .line 122
    iget v4, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->dx:I

    int-to-float v4, v4

    mul-float v4, v4, v15

    iget v7, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->dy:I

    int-to-float v7, v7

    mul-float v7, v7, v14

    sub-float/2addr v4, v7

    iget v7, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->length:F

    div-float/2addr v4, v7

    const/4 v7, 0x0

    cmpg-float v16, v6, v7

    if-gtz v16, :cond_0

    mul-float v14, v14, v14

    mul-float v15, v15, v15

    add-float/2addr v14, v15

    float-to-double v14, v14

    .line 124
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    :goto_1
    double-to-float v7, v14

    move v14, v7

    const/4 v7, 0x0

    goto :goto_2

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_1

    .line 126
    iget v7, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->x2:I

    sub-int v7, v1, v7

    int-to-float v7, v7

    .line 127
    iget v14, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->y2:I

    sub-int v14, v2, v14

    int-to-float v14, v14

    mul-float v7, v7, v7

    mul-float v14, v14, v14

    add-float/2addr v7, v14

    float-to-double v14, v7

    .line 128
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    cmpl-float v14, v4, v7

    if-ltz v14, :cond_2

    move v14, v4

    goto :goto_2

    :cond_2
    neg-float v14, v4

    .line 133
    :goto_2
    iget v15, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->x1:I

    int-to-float v15, v15

    iget v7, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->dx:I

    int-to-float v7, v7

    mul-float v7, v7, v6

    add-float/2addr v15, v7

    iget v7, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->dy:I

    int-to-float v7, v7

    mul-float v7, v7, v4

    iget v0, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->length:F

    div-float/2addr v7, v0

    sub-float/2addr v15, v7

    .line 134
    iget v0, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->y1:I

    int-to-float v0, v0

    iget v7, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->dy:I

    int-to-float v7, v7

    mul-float v6, v6, v7

    add-float/2addr v0, v6

    iget v6, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->dx:I

    int-to-float v6, v6

    mul-float v4, v4, v6

    iget v6, v12, Lcom/jhlabs/image/FieldWarpFilter$Line;->length:F

    div-float/2addr v4, v6

    add-float/2addr v0, v4

    .line 136
    iget v4, v13, Lcom/jhlabs/image/FieldWarpFilter$Line;->length:F

    float-to-double v6, v4

    float-to-double v12, v5

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const v4, 0x3a83126f    # 0.001f

    add-float/2addr v4, v14

    float-to-double v12, v4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v12

    float-to-double v12, v3

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    int-to-float v6, v1

    sub-float/2addr v15, v6

    mul-float v15, v15, v4

    add-float/2addr v9, v15

    int-to-float v6, v2

    sub-float/2addr v0, v6

    mul-float v0, v0, v4

    add-float/2addr v11, v0

    add-float/2addr v10, v4

    add-int/lit8 v8, v8, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_3
    int-to-float v0, v1

    div-float/2addr v9, v10

    add-float/2addr v0, v9

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/4 v3, 0x0

    .line 146
    aput v0, p3, v3

    int-to-float v0, v2

    div-float/2addr v11, v10

    add-float/2addr v0, v11

    add-float/2addr v0, v1

    const/4 v1, 0x1

    .line 147
    aput v0, p3, v1

    return-void
.end method
