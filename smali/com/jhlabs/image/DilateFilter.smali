.class public Lcom/jhlabs/image/DilateFilter;
.super Lcom/jhlabs/image/BinaryFilter;
.source "DilateFilter.java"


# instance fields
.field public threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/BinaryFilter;-><init>()V

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/jhlabs/image/DilateFilter;->threshold:I

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 49
    new-array v3, v3, [I

    move-object/from16 v6, p3

    move-object v5, v3

    const/4 v3, 0x0

    .line 51
    :goto_0
    iget v7, v0, Lcom/jhlabs/image/DilateFilter;->iterations:I

    if-ge v3, v7, :cond_a

    if-lez v3, :cond_0

    move-object/from16 v17, v6

    move-object v6, v5

    move-object/from16 v5, v17

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v7, v2, :cond_9

    move v9, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_8

    mul-int v10, v7, v1

    add-int/2addr v10, v8

    .line 61
    aget v10, v6, v10

    .line 62
    iget-object v11, v0, Lcom/jhlabs/image/DilateFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v11, v10}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_3
    const/4 v14, 0x1

    if-gt v12, v14, :cond_5

    add-int v15, v7, v12

    if-ltz v15, :cond_4

    if-ge v15, v2, :cond_4

    mul-int v15, v15, v1

    move/from16 v16, v13

    const/4 v13, -0x1

    :goto_4
    if-gt v13, v14, :cond_3

    add-int v4, v8, v13

    if-nez v12, :cond_1

    if-eqz v13, :cond_2

    :cond_1
    if-ltz v4, :cond_2

    if-ge v4, v1, :cond_2

    add-int/2addr v4, v15

    .line 73
    aget v4, v6, v4

    .line 74
    iget-object v11, v0, Lcom/jhlabs/image/DilateFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v11, v4}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v16, v16, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_3
    move/from16 v13, v16

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 81
    :cond_5
    iget v4, v0, Lcom/jhlabs/image/DilateFilter;->threshold:I

    if-lt v13, v4, :cond_7

    .line 82
    iget-object v4, v0, Lcom/jhlabs/image/DilateFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v4, :cond_6

    .line 83
    iget-object v4, v0, Lcom/jhlabs/image/DilateFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float v10, v3

    iget v11, v0, Lcom/jhlabs/image/DilateFilter;->iterations:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-interface {v4, v10}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v10

    goto :goto_5

    .line 85
    :cond_6
    iget v10, v0, Lcom/jhlabs/image/DilateFilter;->newColor:I

    :cond_7
    :goto_5
    add-int/lit8 v4, v9, 0x1

    .line 88
    aput v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move v8, v9

    goto :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    return-object v5
.end method

.method public getThreshold()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/DilateFilter;->threshold:I

    return v0
.end method

.method public setThreshold(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/DilateFilter;->threshold:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binary/Dilate..."

    return-object v0
.end method
