.class public Lcom/jhlabs/vecmath/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field public m00:F

.field public m01:F

.field public m02:F

.field public m03:F

.field public m10:F

.field public m11:F

.field public m12:F

.field public m13:F

.field public m20:F

.field public m21:F

.field public m22:F

.field public m23:F

.field public m30:F

.field public m31:F

.field public m32:F

.field public m33:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0}, Lcom/jhlabs/vecmath/Matrix4f;->setIdentity()V

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Lcom/jhlabs/vecmath/Matrix4f;->set(Lcom/jhlabs/vecmath/Matrix4f;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/jhlabs/vecmath/Matrix4f;->set([F)V

    return-void
.end method


# virtual methods
.method public get(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 80
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 81
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 82
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 83
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 84
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 85
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 86
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 87
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 88
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 89
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 90
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 91
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 92
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 93
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 94
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    iput v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public get([F)V
    .locals 2

    .line 98
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 99
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 100
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 101
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 102
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 103
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 104
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    const/4 v1, 0x6

    aput v0, p1, v1

    .line 105
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    const/4 v1, 0x7

    aput v0, p1, v1

    .line 106
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    const/16 v1, 0x8

    aput v0, p1, v1

    .line 107
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    const/16 v1, 0x9

    aput v0, p1, v1

    .line 108
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    const/16 v1, 0xa

    aput v0, p1, v1

    .line 109
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    const/16 v1, 0xb

    aput v0, p1, v1

    .line 110
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    const/16 v1, 0xc

    aput v0, p1, v1

    .line 111
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    const/16 v1, 0xd

    aput v0, p1, v1

    .line 112
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    const/16 v1, 0xe

    aput v0, p1, v1

    .line 113
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    const/16 v1, 0xf

    aput v0, p1, v1

    return-void
.end method

.method public invert()V
    .locals 1

    .line 175
    new-instance v0, Lcom/jhlabs/vecmath/Matrix4f;

    invoke-direct {v0, p0}, Lcom/jhlabs/vecmath/Matrix4f;-><init>(Lcom/jhlabs/vecmath/Matrix4f;)V

    .line 176
    invoke-virtual {p0, v0}, Lcom/jhlabs/vecmath/Matrix4f;->invert(Lcom/jhlabs/vecmath/Matrix4f;)V

    return-void
.end method

.method public invert(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 2

    .line 180
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 181
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 182
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 183
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 185
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 186
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 187
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 188
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 190
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 191
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 192
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 193
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 195
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 196
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 197
    iget v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 198
    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public mul(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 139
    iget v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 140
    iget v3, v0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 141
    iget v4, v0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 142
    iget v5, v0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 143
    iget v6, v0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 144
    iget v7, v0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 145
    iget v8, v0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 146
    iget v9, v0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 147
    iget v10, v0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 148
    iget v11, v0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 149
    iget v12, v0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 150
    iget v13, v0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 151
    iget v14, v0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 152
    iget v15, v0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    move/from16 v16, v13

    .line 153
    iget v13, v0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    move/from16 v17, v9

    .line 154
    iget v9, v0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    move/from16 v18, v9

    .line 156
    iget v9, v1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    mul-float v9, v9, v2

    move/from16 v19, v2

    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    mul-float v20, v6, v2

    add-float v9, v9, v20

    move/from16 v20, v6

    iget v6, v1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    mul-float v21, v10, v6

    add-float v9, v9, v21

    move/from16 v21, v10

    iget v10, v1, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    mul-float v22, v14, v10

    add-float v9, v9, v22

    iput v9, v0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 157
    iget v9, v1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    mul-float v22, v3, v9

    mul-float v2, v2, v7

    add-float v22, v22, v2

    mul-float v2, v11, v6

    add-float v22, v22, v2

    mul-float v2, v15, v10

    add-float v2, v22, v2

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    mul-float v2, v4, v9

    move/from16 v22, v4

    .line 158
    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    mul-float v23, v8, v4

    add-float v2, v2, v23

    mul-float v6, v6, v12

    add-float/2addr v2, v6

    mul-float v6, v13, v10

    add-float/2addr v2, v6

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    mul-float v9, v9, v5

    mul-float v2, v17, v4

    add-float/2addr v9, v2

    .line 159
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    mul-float v2, v2, v16

    add-float/2addr v9, v2

    mul-float v2, v18, v10

    add-float/2addr v9, v2

    iput v9, v0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 160
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    mul-float v2, v2, v19

    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    mul-float v6, v20, v4

    add-float/2addr v2, v6

    iget v6, v1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    mul-float v10, v21, v6

    add-float/2addr v2, v10

    iget v9, v1, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    mul-float v10, v14, v9

    add-float/2addr v2, v10

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 161
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    mul-float v10, v3, v2

    mul-float v4, v4, v7

    add-float/2addr v10, v4

    mul-float v4, v11, v6

    add-float/2addr v10, v4

    mul-float v4, v15, v9

    add-float/2addr v10, v4

    iput v10, v0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    mul-float v4, v22, v2

    .line 162
    iget v10, v1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    mul-float v23, v8, v10

    add-float v4, v4, v23

    mul-float v6, v6, v12

    add-float/2addr v4, v6

    mul-float v6, v13, v9

    add-float/2addr v4, v6

    iput v4, v0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    mul-float v2, v2, v5

    mul-float v4, v17, v10

    add-float/2addr v2, v4

    .line 163
    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    mul-float v4, v4, v16

    add-float/2addr v2, v4

    mul-float v9, v9, v18

    add-float/2addr v2, v9

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 164
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    mul-float v2, v2, v19

    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    mul-float v6, v20, v4

    add-float/2addr v2, v6

    iget v6, v1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    mul-float v10, v21, v6

    add-float/2addr v2, v10

    iget v9, v1, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    mul-float v10, v14, v9

    add-float/2addr v2, v10

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 165
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    mul-float v10, v3, v2

    mul-float v4, v4, v7

    add-float/2addr v10, v4

    mul-float v4, v11, v6

    add-float/2addr v10, v4

    mul-float v4, v15, v9

    add-float/2addr v10, v4

    iput v10, v0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    mul-float v4, v22, v2

    .line 166
    iget v10, v1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    mul-float v23, v8, v10

    add-float v4, v4, v23

    mul-float v6, v6, v12

    add-float/2addr v4, v6

    mul-float v6, v13, v9

    add-float/2addr v4, v6

    iput v4, v0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    mul-float v2, v2, v5

    mul-float v4, v17, v10

    add-float/2addr v2, v4

    .line 167
    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    mul-float v4, v4, v16

    add-float/2addr v2, v4

    mul-float v9, v9, v18

    add-float/2addr v2, v9

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 168
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    mul-float v2, v2, v19

    iget v4, v1, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    mul-float v6, v20, v4

    add-float/2addr v2, v6

    iget v6, v1, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    mul-float v10, v21, v6

    add-float/2addr v2, v10

    iget v9, v1, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    mul-float v14, v14, v9

    add-float/2addr v2, v14

    iput v2, v0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 169
    iget v2, v1, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    mul-float v3, v3, v2

    mul-float v7, v7, v4

    add-float/2addr v3, v7

    mul-float v11, v11, v6

    add-float/2addr v3, v11

    mul-float v15, v15, v9

    add-float/2addr v3, v15

    iput v3, v0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    mul-float v4, v22, v2

    .line 170
    iget v3, v1, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    mul-float v8, v8, v3

    add-float/2addr v4, v8

    mul-float v12, v12, v6

    add-float/2addr v4, v12

    mul-float v13, v13, v9

    add-float/2addr v4, v13

    iput v4, v0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    mul-float v5, v5, v2

    mul-float v2, v17, v3

    add-float/2addr v5, v2

    .line 171
    iget v1, v1, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    mul-float v13, v16, v1

    add-float/2addr v5, v13

    mul-float v9, v9, v18

    add-float/2addr v5, v9

    iput v5, v0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public rotX(F)V
    .locals 4

    float-to-double v0, p1

    .line 271
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 273
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v2, 0x0

    .line 274
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 275
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 276
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 278
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 279
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 280
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 281
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 283
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    neg-float p1, p1

    .line 284
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 285
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 286
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 288
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 289
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 290
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 291
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public rotY(F)V
    .locals 4

    float-to-double v0, p1

    .line 295
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 296
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 297
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    .line 298
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    neg-float v2, p1

    .line 299
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 300
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 302
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 303
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 304
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 305
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 307
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 308
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 309
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 310
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 312
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 313
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 314
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 315
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public rotZ(F)V
    .locals 4

    float-to-double v0, p1

    .line 319
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 320
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 321
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 322
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    const/4 v1, 0x0

    .line 323
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 324
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    neg-float p1, p1

    .line 326
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 327
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 328
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 329
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 331
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 332
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 333
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 334
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 336
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 337
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 338
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 339
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public set(F)V
    .locals 0

    .line 265
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 266
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 267
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/AxisAngle4f;)V
    .locals 5

    .line 202
    iget v0, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->angle:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    float-to-double v0, v0

    .line 203
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 205
    new-instance v1, Lcom/jhlabs/vecmath/Quat4f;

    iget v3, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->x:F

    mul-float v3, v3, v0

    iget v4, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->y:F

    mul-float v4, v4, v0

    iget p1, p1, Lcom/jhlabs/vecmath/AxisAngle4f;->z:F

    mul-float p1, p1, v0

    invoke-direct {v1, v3, v4, p1, v2}, Lcom/jhlabs/vecmath/Quat4f;-><init>(FFFF)V

    invoke-virtual {p0, v1}, Lcom/jhlabs/vecmath/Matrix4f;->set(Lcom/jhlabs/vecmath/Quat4f;)V

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/Matrix4f;)V
    .locals 1

    .line 41
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    .line 42
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 43
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 44
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 46
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 47
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 48
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 49
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 50
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 51
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 52
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 53
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 54
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 55
    iget v0, p1, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 56
    iget p1, p1, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public set(Lcom/jhlabs/vecmath/Quat4f;)V
    .locals 10

    .line 210
    iget v0, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    add-float/2addr v0, v1

    .line 211
    iget v1, p1, Lcom/jhlabs/vecmath/Quat4f;->y:F

    iget v2, p1, Lcom/jhlabs/vecmath/Quat4f;->y:F

    add-float/2addr v1, v2

    .line 212
    iget v2, p1, Lcom/jhlabs/vecmath/Quat4f;->z:F

    iget v3, p1, Lcom/jhlabs/vecmath/Quat4f;->z:F

    add-float/2addr v2, v3

    .line 213
    iget v3, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    mul-float v3, v3, v0

    .line 214
    iget v4, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    mul-float v4, v4, v1

    .line 215
    iget v5, p1, Lcom/jhlabs/vecmath/Quat4f;->x:F

    mul-float v5, v5, v2

    .line 216
    iget v6, p1, Lcom/jhlabs/vecmath/Quat4f;->y:F

    mul-float v6, v6, v1

    .line 217
    iget v7, p1, Lcom/jhlabs/vecmath/Quat4f;->y:F

    mul-float v7, v7, v2

    .line 218
    iget v8, p1, Lcom/jhlabs/vecmath/Quat4f;->z:F

    mul-float v8, v8, v2

    .line 219
    iget v9, p1, Lcom/jhlabs/vecmath/Quat4f;->w:F

    mul-float v9, v9, v0

    .line 220
    iget v0, p1, Lcom/jhlabs/vecmath/Quat4f;->w:F

    mul-float v0, v0, v1

    .line 221
    iget p1, p1, Lcom/jhlabs/vecmath/Quat4f;->w:F

    mul-float p1, p1, v2

    add-float v1, v6, v8

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 222
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    sub-float v1, v4, p1

    .line 223
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    add-float v1, v5, v0

    .line 224
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    const/4 v1, 0x0

    .line 225
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    add-float/2addr v4, p1

    .line 226
    iput v4, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    add-float/2addr v8, v3

    sub-float p1, v2, v8

    .line 227
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    sub-float p1, v7, v9

    .line 228
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 229
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    sub-float/2addr v5, v0

    .line 230
    iput v5, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    add-float/2addr v7, v9

    .line 231
    iput v7, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    add-float/2addr v3, v6

    sub-float p1, v2, v3

    .line 232
    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 233
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 234
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 235
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 236
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 237
    iput v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public set([F)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v0, 0x1

    .line 61
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    const/4 v0, 0x2

    .line 62
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    const/4 v0, 0x3

    .line 63
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    const/4 v0, 0x4

    .line 64
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    const/4 v0, 0x5

    .line 65
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    const/4 v0, 0x6

    .line 66
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    const/4 v0, 0x7

    .line 67
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    const/16 v0, 0x8

    .line 68
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    const/16 v0, 0x9

    .line 69
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    const/16 v0, 0xa

    .line 70
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    const/16 v0, 0xb

    .line 71
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    const/16 v0, 0xc

    .line 72
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    const/16 v0, 0xd

    .line 73
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    const/16 v0, 0xe

    .line 74
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    const/16 v0, 0xf

    .line 75
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public setIdentity()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 117
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    .line 119
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    .line 120
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m03:F

    .line 122
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    .line 123
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    .line 124
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    .line 125
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m13:F

    .line 127
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    .line 128
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    .line 129
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    .line 130
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m23:F

    .line 132
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 133
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 134
    iput v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    .line 135
    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m33:F

    return-void
.end method

.method public setTranslation(Lcom/jhlabs/vecmath/Vector3f;)V
    .locals 1

    .line 259
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    .line 260
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    .line 261
    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    return-void
.end method

.method public transform(Lcom/jhlabs/vecmath/Point3f;)V
    .locals 5

    .line 241
    iget v0, p1, Lcom/jhlabs/vecmath/Point3f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    mul-float v0, v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Point3f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Point3f;->z:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m30:F

    add-float/2addr v0, v1

    .line 242
    iget v1, p1, Lcom/jhlabs/vecmath/Point3f;->x:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    mul-float v1, v1, v2

    iget v2, p1, Lcom/jhlabs/vecmath/Point3f;->y:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/jhlabs/vecmath/Point3f;->z:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m31:F

    add-float/2addr v1, v2

    .line 243
    iget v2, p1, Lcom/jhlabs/vecmath/Point3f;->x:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    mul-float v2, v2, v3

    iget v3, p1, Lcom/jhlabs/vecmath/Point3f;->y:F

    iget v4, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/jhlabs/vecmath/Point3f;->z:F

    iget v4, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m32:F

    add-float/2addr v2, v3

    .line 244
    iput v0, p1, Lcom/jhlabs/vecmath/Point3f;->x:F

    .line 245
    iput v1, p1, Lcom/jhlabs/vecmath/Point3f;->y:F

    .line 246
    iput v2, p1, Lcom/jhlabs/vecmath/Point3f;->z:F

    return-void
.end method

.method public transform(Lcom/jhlabs/vecmath/Vector3f;)V
    .locals 5

    .line 250
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Matrix4f;->m00:F

    mul-float v0, v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m10:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m20:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    .line 251
    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v2, p0, Lcom/jhlabs/vecmath/Matrix4f;->m01:F

    mul-float v1, v1, v2

    iget v2, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m11:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m21:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    .line 252
    iget v2, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v3, p0, Lcom/jhlabs/vecmath/Matrix4f;->m02:F

    mul-float v2, v2, v3

    iget v3, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v4, p0, Lcom/jhlabs/vecmath/Matrix4f;->m12:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v4, p0, Lcom/jhlabs/vecmath/Matrix4f;->m22:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    .line 253
    iput v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 254
    iput v1, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 255
    iput v2, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method
