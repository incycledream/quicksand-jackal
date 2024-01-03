.class public Lcom/jhlabs/image/PolarFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "PolarFilter.java"


# static fields
.field public static final INVERT_IN_CIRCLE:I = 0x2

.field public static final POLAR_TO_RECT:I = 0x1

.field public static final RECT_TO_POLAR:I


# instance fields
.field private centreX:F

.field private centreY:F

.field private height:F

.field private radius:F

.field private type:I

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Lcom/jhlabs/image/PolarFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    .line 38
    iput p1, p0, Lcom/jhlabs/image/PolarFilter;->type:I

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/PolarFilter;->setEdgeAction(I)V

    return-void
.end method

.method private sqr(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    .line 43
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    .line 44
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    .line 45
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    .line 46
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    .line 47
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    iget v1, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/PolarFilter;->radius:F

    .line 48
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->type:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/PolarFilter;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Polar Coordinates..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 12

    .line 68
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->type:I

    const v1, 0x3fc90fdb

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x4096cbe4

    const v4, 0x40c90fdb

    const v5, 0x40490fdb    # (float)Math.PI

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v8, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    int-to-float p1, p1

    .line 167
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float/2addr p1, v0

    int-to-float p2, p2

    .line 168
    iget v1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr p2, v1

    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    mul-float v3, v0, v0

    mul-float v3, v3, p1

    div-float/2addr v3, v2

    add-float/2addr v0, v3

    .line 170
    aput v0, p3, v6

    mul-float p1, v1, v1

    mul-float p1, p1, p2

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 171
    aput v1, p3, v8

    goto/16 :goto_7

    :cond_1
    int-to-float p1, p1

    .line 116
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    div-float/2addr p1, v0

    mul-float p1, p1, v4

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_2

    sub-float v0, v4, p1

    goto :goto_0

    :cond_2
    cmpl-float v0, p1, v5

    if-ltz v0, :cond_3

    sub-float v0, p1, v5

    goto :goto_0

    :cond_3
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_4

    sub-float v0, v5, p1

    goto :goto_0

    :cond_4
    move v0, p1

    :goto_0
    float-to-double v4, v0

    .line 128
    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v9

    double-to-float v1, v9

    cmpl-float v9, v1, v7

    if-eqz v9, :cond_5

    div-float v1, v2, v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 134
    :goto_1
    iget v2, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    iget v9, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    div-float/2addr v2, v9

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    cmpl-float v0, v0, v7

    if-nez v0, :cond_6

    .line 137
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    goto :goto_2

    .line 139
    :cond_6
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    goto :goto_2

    .line 143
    :cond_7
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    .line 147
    :goto_2
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->radius:F

    int-to-float p2, p2

    iget v1, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    div-float/2addr p2, v1

    mul-float v0, v0, p2

    neg-float p2, v0

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float p2, p2, v1

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_8

    .line 153
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float/2addr p1, p2

    aput p1, p3, v6

    .line 154
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr p1, v0

    aput p1, p3, v8

    goto/16 :goto_7

    :cond_8
    float-to-double v1, p1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_9

    .line 156
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float/2addr p1, p2

    aput p1, p3, v6

    .line 157
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    add-float/2addr p1, v0

    aput p1, p3, v8

    goto/16 :goto_7

    :cond_9
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_a

    .line 159
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    add-float/2addr p1, p2

    aput p1, p3, v6

    .line 160
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    add-float/2addr p1, v0

    aput p1, p3, v8

    goto/16 :goto_7

    .line 162
    :cond_a
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    add-float/2addr p1, p2

    aput p1, p3, v6

    .line 163
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr p1, v0

    aput p1, p3, v8

    goto/16 :goto_7

    :cond_b
    int-to-float p1, p1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    cmpl-float v9, p1, v0

    if-ltz v9, :cond_e

    int-to-float v3, p2

    .line 72
    iget v9, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    cmpl-float v10, v3, v9

    if-lez v10, :cond_c

    sub-float v0, p1, v0

    sub-float v1, v3, v9

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v1, v5, v0

    .line 74
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v0

    iget v5, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    :goto_3
    double-to-float v0, v9

    goto/16 :goto_5

    :cond_c
    cmpg-float v5, v3, v9

    if-gez v5, :cond_d

    sub-float v0, p1, v0

    sub-float/2addr v9, v3

    div-float/2addr v0, v9

    float-to-double v0, v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v1, v0

    .line 77
    iget v0, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float v0, p1, v0

    invoke-direct {p0, v0}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v0

    iget v5, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr v5, v3

    invoke-direct {p0, v5}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v3

    add-float/2addr v0, v3

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    goto :goto_3

    :cond_d
    sub-float v0, p1, v0

    goto :goto_5

    :cond_e
    cmpg-float v1, p1, v0

    if-gez v1, :cond_11

    int-to-float v1, p2

    .line 83
    iget v9, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    cmpg-float v10, v1, v9

    if-gez v10, :cond_f

    sub-float/2addr v0, p1

    sub-float/2addr v9, v1

    div-float/2addr v0, v9

    float-to-double v9, v0

    .line 84
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v0, v9

    sub-float v0, v4, v0

    .line 85
    iget v3, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v3

    iget v5, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr v5, v1

    invoke-direct {p0, v5}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v1

    add-float/2addr v3, v1

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    :goto_4
    double-to-float v1, v9

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_5

    :cond_f
    cmpl-float v10, v1, v9

    if-lez v10, :cond_10

    sub-float/2addr v0, p1

    sub-float v3, v1, v9

    div-float/2addr v0, v3

    float-to-double v9, v0

    .line 87
    invoke-static {v9, v10}, Ljava/lang/Math;->atan(D)D

    move-result-wide v9

    double-to-float v0, v9

    add-float/2addr v0, v5

    .line 88
    iget v3, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v3

    iget v5, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/jhlabs/image/PolarFilter;->sqr(F)F

    move-result v1

    add-float/2addr v3, v1

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    goto :goto_4

    :cond_10
    sub-float/2addr v0, p1

    const v1, 0x4096cbe4

    goto :goto_5

    :cond_11
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    :goto_5
    iget v3, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    cmpl-float v5, p1, v3

    if-eqz v5, :cond_12

    int-to-float p2, p2

    .line 95
    iget v5, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    sub-float/2addr p2, v5

    sub-float v3, p1, v3

    div-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 99
    :cond_12
    iget p2, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    iget v3, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    div-float/2addr p2, v3

    cmpg-float p2, v7, p2

    if-gtz p2, :cond_13

    .line 100
    iget p2, p0, Lcom/jhlabs/image/PolarFilter;->centreX:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_14

    .line 102
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    goto :goto_6

    .line 108
    :cond_13
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->centreY:F

    .line 112
    :cond_14
    :goto_6
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->width:F

    sub-float p2, p1, v2

    sub-float/2addr p1, v2

    div-float/2addr p1, v4

    mul-float p1, p1, v1

    sub-float/2addr p2, p1

    aput p2, p3, v6

    .line 113
    iget p1, p0, Lcom/jhlabs/image/PolarFilter;->height:F

    mul-float p1, p1, v0

    iget p2, p0, Lcom/jhlabs/image/PolarFilter;->radius:F

    div-float/2addr p1, p2

    aput p1, p3, v8

    :goto_7
    return-void
.end method
