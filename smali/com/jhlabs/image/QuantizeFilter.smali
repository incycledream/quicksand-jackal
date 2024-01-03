.class public Lcom/jhlabs/image/QuantizeFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "QuantizeFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final matrix:[I


# instance fields
.field private dither:Z

.field private numColors:I

.field private serpentine:Z

.field private sum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/QuantizeFilter;->matrix:[I

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

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/16 v0, 0x10

    .line 42
    iput v0, p0, Lcom/jhlabs/image/QuantizeFilter;->sum:I

    const/16 v0, 0x100

    .line 45
    iput v0, p0, Lcom/jhlabs/image/QuantizeFilter;->numColors:I

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/jhlabs/image/QuantizeFilter;->serpentine:Z

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 8

    mul-int p4, p1, p2

    .line 169
    new-array p4, p4, [I

    .line 171
    iget v5, p0, Lcom/jhlabs/image/QuantizeFilter;->numColors:I

    iget-boolean v6, p0, Lcom/jhlabs/image/QuantizeFilter;->dither:Z

    iget-boolean v7, p0, Lcom/jhlabs/image/QuantizeFilter;->serpentine:Z

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/jhlabs/image/QuantizeFilter;->quantize([I[IIIIZZ)V

    return-object p4
.end method

.method public getDither()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/jhlabs/image/QuantizeFilter;->dither:Z

    return v0
.end method

.method public getNumColors()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/jhlabs/image/QuantizeFilter;->numColors:I

    return v0
.end method

.method public getSerpentine()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/jhlabs/image/QuantizeFilter;->serpentine:Z

    return v0
.end method

.method public quantize([I[IIIIZZ)V
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    mul-int v3, v1, v2

    .line 98
    new-instance v4, Lcom/jhlabs/image/OctTreeQuantizer;

    invoke-direct {v4}, Lcom/jhlabs/image/OctTreeQuantizer;-><init>()V

    move/from16 v5, p5

    .line 99
    invoke-interface {v4, v5}, Lcom/jhlabs/image/Quantizer;->setup(I)V

    const/4 v5, 0x0

    .line 100
    invoke-interface {v4, v0, v5, v3}, Lcom/jhlabs/image/Quantizer;->addPixels([III)V

    .line 101
    invoke-interface {v4}, Lcom/jhlabs/image/Quantizer;->buildColorTable()[I

    move-result-object v6

    if-nez p6, :cond_0

    :goto_0
    if-ge v5, v3, :cond_a

    .line 105
    aget v1, v0, v5

    invoke-interface {v4, v1}, Lcom/jhlabs/image/Quantizer;->getIndexForColor(I)I

    move-result v1

    aget v1, v6, v1

    aput v1, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_a

    const/4 v7, 0x1

    if-eqz p7, :cond_1

    and-int/lit8 v8, v3, 0x1

    if-ne v8, v7, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    mul-int v10, v3, v1

    add-int/2addr v10, v1

    sub-int/2addr v10, v7

    const/4 v11, -0x1

    goto :goto_3

    :cond_2
    mul-int v10, v3, v1

    const/4 v11, 0x1

    :goto_3
    move v12, v10

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v1, :cond_9

    .line 119
    aget v13, v0, v12

    .line 120
    invoke-interface {v4, v13}, Lcom/jhlabs/image/Quantizer;->getIndexForColor(I)I

    move-result v14

    aget v14, v6, v14

    .line 122
    aput v14, p2, v12

    shr-int/lit8 v15, v13, 0x10

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v5, v13, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v9, v14, 0x10

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v7, v14, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v14, v14, 0xff

    sub-int/2addr v15, v9

    sub-int/2addr v5, v7

    sub-int/2addr v13, v14

    const/4 v7, -0x1

    :goto_5
    const/4 v9, 0x1

    if-gt v7, v9, :cond_8

    add-int v14, v7, v3

    if-ltz v14, :cond_7

    if-ge v14, v2, :cond_7

    const/4 v14, -0x1

    :goto_6
    if-gt v14, v9, :cond_7

    add-int v9, v14, v10

    if-ltz v9, :cond_6

    if-ge v9, v1, :cond_6

    if-eqz v8, :cond_3

    .line 144
    sget-object v9, Lcom/jhlabs/image/QuantizeFilter;->matrix:[I

    add-int/lit8 v17, v7, 0x1

    mul-int/lit8 v17, v17, 0x3

    sub-int v17, v17, v14

    const/16 v16, 0x1

    add-int/lit8 v17, v17, 0x1

    aget v9, v9, v17

    goto :goto_7

    :cond_3
    const/16 v16, 0x1

    .line 146
    sget-object v9, Lcom/jhlabs/image/QuantizeFilter;->matrix:[I

    add-int/lit8 v17, v7, 0x1

    mul-int/lit8 v17, v17, 0x3

    add-int v17, v17, v14

    add-int/lit8 v17, v17, 0x1

    aget v9, v9, v17

    :goto_7
    if-eqz v9, :cond_5

    if-eqz v8, :cond_4

    sub-int v17, v12, v14

    goto :goto_8

    :cond_4
    add-int v17, v12, v14

    .line 149
    :goto_8
    aget v1, v0, v17

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v18, v4

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    mul-int v19, v15, v9

    move-object/from16 v20, v6

    move/from16 v21, v8

    move-object/from16 v6, p0

    .line 153
    iget v8, v6, Lcom/jhlabs/image/QuantizeFilter;->sum:I

    div-int v19, v19, v8

    add-int v2, v2, v19

    mul-int v19, v5, v9

    .line 154
    div-int v19, v19, v8

    add-int v4, v4, v19

    mul-int v9, v9, v13

    .line 155
    div-int/2addr v9, v8

    add-int/2addr v1, v9

    .line 156
    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, v0, v17

    goto :goto_a

    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v8

    goto :goto_9

    :cond_6
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v8

    const/16 v16, 0x1

    :goto_9
    move-object/from16 v6, p0

    :goto_a
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move/from16 v8, v21

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v8

    const/16 v16, 0x1

    move-object/from16 v6, p0

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v4, v18

    move-object/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_5

    :cond_8
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move/from16 v21, v8

    const/16 v16, 0x1

    move-object/from16 v6, p0

    add-int/2addr v12, v11

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v6, v20

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4

    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v20, v6

    move-object/from16 v6, p0

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v6, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v6, p0

    return-void
.end method

.method public setDither(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/jhlabs/image/QuantizeFilter;->dither:Z

    return-void
.end method

.method public setNumColors(I)V
    .locals 1

    const/16 v0, 0x8

    .line 53
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x100

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/jhlabs/image/QuantizeFilter;->numColors:I

    return-void
.end method

.method public setSerpentine(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/jhlabs/image/QuantizeFilter;->serpentine:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Quantize..."

    return-object v0
.end method
