.class public Lcom/jhlabs/image/OilFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "OilFilter.java"


# static fields
.field static final serialVersionUID:J = 0x17e7f3e159584b02L


# instance fields
.field private levels:I

.field private range:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/jhlabs/image/OilFilter;->range:I

    const/16 v0, 0x100

    .line 27
    iput v0, p0, Lcom/jhlabs/image/OilFilter;->levels:I

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 50
    iget v3, v0, Lcom/jhlabs/image/OilFilter;->levels:I

    new-array v4, v3, [I

    .line 51
    new-array v5, v3, [I

    .line 52
    new-array v6, v3, [I

    .line 53
    new-array v7, v3, [I

    .line 54
    new-array v8, v3, [I

    .line 55
    new-array v3, v3, [I

    mul-int v9, v1, v2

    .line 56
    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v2, :cond_9

    move v13, v12

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v1, :cond_8

    const/4 v14, 0x0

    .line 60
    :goto_2
    iget v15, v0, Lcom/jhlabs/image/OilFilter;->levels:I

    if-ge v14, v15, :cond_0

    .line 61
    aput v10, v3, v14

    aput v10, v8, v14

    aput v10, v7, v14

    aput v10, v6, v14

    aput v10, v5, v14

    aput v10, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 63
    :cond_0
    iget v14, v0, Lcom/jhlabs/image/OilFilter;->range:I

    neg-int v14, v14

    :goto_3
    iget v15, v0, Lcom/jhlabs/image/OilFilter;->range:I

    const/16 v16, 0x1

    if-gt v14, v15, :cond_3

    add-int v10, v11, v14

    if-ltz v10, :cond_2

    if-ge v10, v2, :cond_2

    mul-int v10, v10, v1

    neg-int v15, v15

    .line 68
    :goto_4
    iget v2, v0, Lcom/jhlabs/image/OilFilter;->range:I

    if-gt v15, v2, :cond_2

    add-int v2, v12, v15

    if-ltz v2, :cond_1

    if-ge v2, v1, :cond_1

    add-int/2addr v2, v10

    .line 71
    aget v2, p3, v2

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    move/from16 v17, v10

    shr-int/lit8 v10, v2, 0x8

    and-int/lit16 v10, v10, 0xff

    and-int/lit16 v2, v2, 0xff

    move/from16 v18, v11

    .line 75
    iget v11, v0, Lcom/jhlabs/image/OilFilter;->levels:I

    move/from16 v19, v12

    mul-int v12, v1, v11

    div-int/lit16 v12, v12, 0x100

    move-object/from16 v20, v9

    mul-int v9, v10, v11

    .line 76
    div-int/lit16 v9, v9, 0x100

    mul-int v11, v11, v2

    .line 77
    div-int/lit16 v11, v11, 0x100

    .line 78
    aget v21, v7, v12

    add-int v21, v21, v1

    aput v21, v7, v12

    .line 79
    aget v1, v8, v9

    add-int/2addr v1, v10

    aput v1, v8, v9

    .line 80
    aget v1, v3, v11

    add-int/2addr v1, v2

    aput v1, v3, v11

    .line 81
    aget v1, v4, v12

    add-int/lit8 v1, v1, 0x1

    aput v1, v4, v12

    .line 82
    aget v1, v5, v9

    add-int/lit8 v1, v1, 0x1

    aput v1, v5, v9

    .line 83
    aget v1, v6, v11

    add-int/lit8 v1, v1, 0x1

    aput v1, v6, v11

    goto :goto_5

    :cond_1
    move-object/from16 v20, v9

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v12

    :goto_5
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v9, v20

    goto :goto_4

    :cond_2
    move-object/from16 v20, v9

    move/from16 v18, v11

    move/from16 v19, v12

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v9, v20

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_3
    move-object/from16 v20, v9

    move/from16 v18, v11

    move/from16 v19, v12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 90
    :goto_6
    iget v11, v0, Lcom/jhlabs/image/OilFilter;->levels:I

    if-ge v1, v11, :cond_7

    .line 91
    aget v11, v4, v1

    aget v12, v4, v2

    if-le v11, v12, :cond_4

    move v2, v1

    .line 93
    :cond_4
    aget v11, v5, v1

    aget v12, v5, v9

    if-le v11, v12, :cond_5

    move v9, v1

    .line 95
    :cond_5
    aget v11, v6, v1

    aget v12, v6, v10

    if-le v11, v12, :cond_6

    move v10, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 98
    :cond_7
    aget v1, v7, v2

    aget v2, v4, v2

    div-int/2addr v1, v2

    .line 99
    aget v2, v8, v9

    aget v9, v5, v9

    div-int/2addr v2, v9

    .line 100
    aget v9, v3, v10

    aget v10, v6, v10

    div-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    const/high16 v11, -0x1000000

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v11

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v9

    .line 101
    aput v1, v20, v13

    add-int/lit8 v12, v19, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move v13, v10

    move/from16 v11, v18

    move-object/from16 v9, v20

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v20, v9

    move/from16 v18, v11

    add-int/lit8 v11, v18, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move v12, v13

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v20, v9

    return-object v20
.end method

.method public getLevels()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/OilFilter;->levels:I

    return v0
.end method

.method public getRange()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/jhlabs/image/OilFilter;->range:I

    return v0
.end method

.method public setLevels(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/OilFilter;->levels:I

    return-void
.end method

.method public setRange(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jhlabs/image/OilFilter;->range:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Oil..."

    return-object v0
.end method
