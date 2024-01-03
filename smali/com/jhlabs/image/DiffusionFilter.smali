.class public Lcom/jhlabs/image/DiffusionFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "DiffusionFilter.java"


# static fields
.field protected static final diffusionMatrix:[I


# instance fields
.field private colorDither:Z

.field public levels:I

.field private matrix:[I

.field private serpentine:Z

.field private sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 27
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/DiffusionFilter;->diffusionMatrix:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x3
        0x5
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/16 v0, 0x10

    .line 34
    iput v0, p0, Lcom/jhlabs/image/DiffusionFilter;->sum:I

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/jhlabs/image/DiffusionFilter;->serpentine:Z

    .line 36
    iput-boolean v0, p0, Lcom/jhlabs/image/DiffusionFilter;->colorDither:Z

    const/4 v0, 0x6

    .line 37
    iput v0, p0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    .line 43
    sget-object v0, Lcom/jhlabs/image/DiffusionFilter;->diffusionMatrix:[I

    invoke-virtual {p0, v0}, Lcom/jhlabs/image/DiffusionFilter;->setMatrix([I)V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 90
    new-array v3, v3, [I

    .line 93
    iget v4, v0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 94
    :goto_0
    iget v7, v0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    if-ge v6, v7, :cond_0

    mul-int/lit16 v8, v6, 0xff

    add-int/lit8 v7, v7, -0x1

    .line 95
    div-int/2addr v8, v7

    .line 96
    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x100

    new-array v7, v6, [I

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_1

    .line 100
    iget v9, v0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    mul-int v9, v9, v8

    div-int/2addr v9, v6

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_c

    .line 103
    iget-boolean v8, v0, Lcom/jhlabs/image/DiffusionFilter;->serpentine:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_2

    and-int/lit8 v8, v6, 0x1

    if-ne v8, v9, :cond_2

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_3

    mul-int v11, v6, v1

    add-int/2addr v11, v1

    sub-int/2addr v11, v9

    const/4 v12, -0x1

    goto :goto_4

    :cond_3
    mul-int v11, v6, v1

    const/4 v12, 0x1

    :goto_4
    move v13, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v1, :cond_b

    .line 113
    aget v14, p3, v13

    shr-int/lit8 v15, v14, 0x10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v5, v14, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v14, v14, 0xff

    .line 119
    iget-boolean v10, v0, Lcom/jhlabs/image/DiffusionFilter;->colorDither:Z

    if-nez v10, :cond_4

    add-int/2addr v15, v5

    add-int/2addr v15, v14

    .line 120
    div-int/lit8 v15, v15, 0x3

    move v5, v15

    move v14, v5

    .line 122
    :cond_4
    aget v10, v7, v15

    aget v10, v4, v10

    .line 123
    aget v16, v7, v5

    aget v16, v4, v16

    .line 124
    aget v17, v7, v14

    aget v17, v4, v17

    const/high16 v18, -0x1000000

    shl-int/lit8 v19, v10, 0x10

    or-int v18, v19, v18

    shl-int/lit8 v19, v16, 0x8

    or-int v18, v18, v19

    or-int v18, v18, v17

    .line 126
    aput v18, v3, v13

    sub-int/2addr v15, v10

    sub-int v5, v5, v16

    sub-int v14, v14, v17

    const/4 v10, -0x1

    :goto_6
    if-gt v10, v9, :cond_a

    add-int v9, v10, v6

    if-ltz v9, :cond_9

    if-ge v9, v2, :cond_9

    const/4 v2, 0x1

    const/4 v9, -0x1

    :goto_7
    if-gt v9, v2, :cond_9

    add-int v2, v9, v11

    if-ltz v2, :cond_8

    if-ge v2, v1, :cond_8

    if-eqz v8, :cond_5

    .line 140
    iget-object v2, v0, Lcom/jhlabs/image/DiffusionFilter;->matrix:[I

    add-int/lit8 v17, v10, 0x1

    mul-int/lit8 v17, v17, 0x3

    sub-int v17, v17, v9

    const/16 v16, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v2, v2, v17

    goto :goto_8

    :cond_5
    const/16 v16, 0x1

    .line 142
    iget-object v2, v0, Lcom/jhlabs/image/DiffusionFilter;->matrix:[I

    add-int/lit8 v17, v10, 0x1

    mul-int/lit8 v17, v17, 0x3

    add-int v17, v17, v9

    add-int/lit8 v17, v17, 0x1

    aget v2, v2, v17

    :goto_8
    if-eqz v2, :cond_7

    if-eqz v8, :cond_6

    sub-int v17, v13, v9

    goto :goto_9

    :cond_6
    add-int v17, v13, v9

    .line 145
    :goto_9
    aget v1, p3, v17

    move-object/from16 v18, v4

    shr-int/lit8 v4, v1, 0x10

    and-int/lit16 v4, v4, 0xff

    move-object/from16 v19, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v1, v1, 0xff

    mul-int v20, v15, v2

    move/from16 v21, v8

    .line 149
    iget v8, v0, Lcom/jhlabs/image/DiffusionFilter;->sum:I

    div-int v20, v20, v8

    add-int v4, v4, v20

    mul-int v20, v5, v2

    .line 150
    div-int v20, v20, v8

    add-int v7, v7, v20

    mul-int v2, v2, v14

    .line 151
    div-int/2addr v2, v8

    add-int/2addr v1, v2

    .line 152
    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v7}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, p3, v17

    goto :goto_a

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v21, v8

    goto :goto_a

    :cond_8
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v21, v8

    const/16 v16, 0x1

    :goto_a
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move/from16 v8, v21

    const/4 v2, 0x1

    goto/16 :goto_7

    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v21, v8

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, v18

    move-object/from16 v7, v19

    move/from16 v8, v21

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_a
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move/from16 v21, v8

    const/16 v16, 0x1

    add-int/2addr v13, v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto/16 :goto_2

    :cond_c
    return-object v3
.end method

.method public getColorDither()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/jhlabs/image/DiffusionFilter;->colorDither:Z

    return v0
.end method

.method public getLevels()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    return v0
.end method

.method public getMatrix()[I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/jhlabs/image/DiffusionFilter;->matrix:[I

    return-object v0
.end method

.method public getSerpentine()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/jhlabs/image/DiffusionFilter;->serpentine:Z

    return v0
.end method

.method public setColorDither(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/jhlabs/image/DiffusionFilter;->colorDither:Z

    return-void
.end method

.method public setLevels(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/jhlabs/image/DiffusionFilter;->levels:I

    return-void
.end method

.method public setMatrix([I)V
    .locals 3

    .line 71
    iput-object p1, p0, Lcom/jhlabs/image/DiffusionFilter;->matrix:[I

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/jhlabs/image/DiffusionFilter;->sum:I

    .line 73
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 74
    iget v1, p0, Lcom/jhlabs/image/DiffusionFilter;->sum:I

    aget v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/image/DiffusionFilter;->sum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSerpentine(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/jhlabs/image/DiffusionFilter;->serpentine:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Diffusion Dither..."

    return-object v0
.end method
