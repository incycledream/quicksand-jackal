.class Lcom/jhlabs/composite/ContourCompositeContext;
.super Ljava/lang/Object;
.source "ContourComposite.java"

# interfaces
.implements Ljava/awt/CompositeContext;


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(ILjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/jhlabs/composite/ContourCompositeContext;->offset:I

    return-void
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 19

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v6

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    mul-int/lit8 v1, v7, 0x4

    .line 71
    new-array v9, v1, [I

    const/4 v1, 0x0

    const/4 v10, 0x0

    move v12, v0

    move-object v5, v1

    move-object v13, v5

    move-object v14, v13

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v12

    move v3, v7

    .line 74
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v15

    move-object/from16 v0, p2

    move-object v5, v13

    .line 75
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v0, v7, :cond_5

    add-int/lit8 v3, v1, 0x3

    .line 80
    aget v4, v15, v3

    if-eqz v11, :cond_0

    .line 81
    aget v5, v14, v3

    goto :goto_2

    :cond_0
    move v5, v4

    :goto_2
    const/16 v16, 0xff

    if-eqz v11, :cond_1

    if-eqz v0, :cond_1

    xor-int/2addr v2, v4

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_2

    :cond_1
    xor-int v2, v4, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_4

    :cond_2
    move-object/from16 v5, p0

    .line 84
    iget v2, v5, Lcom/jhlabs/composite/ContourCompositeContext;->offset:I

    add-int/2addr v2, v11

    add-int/2addr v2, v0

    rem-int/lit8 v2, v2, 0xa

    move/from16 v17, v4

    const/4 v4, 0x4

    if-le v2, v4, :cond_3

    .line 85
    aput v10, v9, v1

    add-int/lit8 v2, v1, 0x1

    .line 86
    aput v10, v9, v2

    add-int/lit8 v2, v1, 0x2

    .line 87
    aput v10, v9, v2

    goto :goto_3

    .line 89
    :cond_3
    aput v16, v9, v1

    add-int/lit8 v2, v1, 0x1

    .line 90
    aput v16, v9, v2

    add-int/lit8 v2, v1, 0x2

    const/16 v4, 0x7f

    .line 91
    aput v4, v9, v2

    .line 93
    :goto_3
    aput v16, v9, v3

    goto :goto_4

    :cond_4
    move-object/from16 v5, p0

    move/from16 v17, v4

    .line 95
    aget v2, v13, v1

    aput v2, v9, v1

    add-int/lit8 v2, v1, 0x1

    .line 96
    aget v4, v13, v2

    aput v4, v9, v2

    add-int/lit8 v4, v1, 0x2

    .line 97
    aget v18, v13, v4

    aput v18, v9, v4

    .line 99
    aput v16, v9, v1

    .line 100
    aput v10, v9, v2

    .line 101
    aput v10, v9, v4

    .line 102
    aput v10, v9, v3

    :goto_4
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v17

    goto :goto_1

    :cond_5
    move-object/from16 v5, p0

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v6

    move v2, v12

    move v3, v7

    move-object v5, v9

    .line 111
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v5, v14

    move-object v14, v15

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method
