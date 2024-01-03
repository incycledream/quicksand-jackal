.class public Lcom/jhlabs/vecmath/Quat4f;
.super Lcom/jhlabs/vecmath/Tuple4f;
.source "Quat4f.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/jhlabs/vecmath/Quat4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 36
    iput p1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 37
    iput p2, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 38
    iput p3, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 39
    iput p4, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Quat4f;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 43
    iget v0, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 44
    iget v0, p1, Lcom/jhlabs/vecmath/Quat4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/Quat4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 46
    iget p1, p1, Lcom/jhlabs/vecmath/Quat4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 50
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 51
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 52
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 53
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    const/4 v0, 0x0

    .line 29
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    const/4 v0, 0x1

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    const/4 v0, 0x2

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    const/4 v0, 0x3

    .line 32
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method


# virtual methods
.method public normalize()V
    .locals 3

    .line 86
    iget v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    iget v2, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    iget v2, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 87
    iget v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 88
    iget v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 89
    iget v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 90
    iget v0, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/AxisAngle4f;)V
    .locals 4

    .line 57
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 60
    iget v1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 61
    iget v1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 62
    iget p1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 63
    iput v2, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 9

    .line 121
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    add-float/2addr v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    add-float/2addr v0, v1

    float-to-double v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-double v7, v1, v4

    if-lez v7, :cond_0

    add-float/2addr v0, v3

    float-to-double v0, v0

    .line 124
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    .line 125
    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    div-float/2addr v6, v0

    .line 127
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    sub-float/2addr v0, v1

    mul-float v0, v0, v6

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 128
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    sub-float/2addr v0, v1

    mul-float v0, v0, v6

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 129
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    sub-float/2addr v0, p1

    mul-float v0, v0, v6

    iput v0, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 132
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v7, 0x1

    const/4 v8, 0x2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 134
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    :goto_0
    const/4 v0, 0x2

    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v7, :cond_6

    if-eq v0, v8, :cond_4

    goto/16 :goto_2

    .line 165
    :cond_4
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, v0, v6

    .line 166
    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    float-to-double v1, v0

    cmpl-double v3, v1, v4

    if-eqz v3, :cond_5

    div-float v0, v6, v0

    .line 169
    :cond_5
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    .line 170
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    .line 171
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    add-float/2addr v1, p1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    goto :goto_2

    .line 156
    :cond_6
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, v0, v6

    .line 157
    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    float-to-double v1, v0

    cmpl-double v3, v1, v4

    if-eqz v3, :cond_7

    div-float v0, v6, v0

    .line 160
    :cond_7
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    .line 161
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    .line 162
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    add-float/2addr v1, p1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    goto :goto_2

    .line 147
    :cond_8
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    add-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, v0, v6

    .line 148
    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->x:F

    float-to-double v1, v0

    cmpl-double v3, v1, v4

    if-eqz v3, :cond_9

    div-float v0, v6, v0

    .line 151
    :cond_9
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->w:F

    .line 152
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iget v2, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    add-float/2addr v1, v2

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->y:F

    .line 153
    iget v1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    add-float/2addr v1, p1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/vecmath/Quat4f;->z:F

    :goto_2
    return-void
.end method
