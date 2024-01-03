.class public Lcom/example/broly/ssj/ConvolutionMatrix;
.super Ljava/lang/Object;
.source "ConvolutionMatrix.java"


# static fields
.field public static final SIZE:I = 0x3


# instance fields
.field public Factor:D

.field public Matrix:[[D

.field public Offset:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 11
    iput-wide v0, p0, Lcom/example/broly/ssj/ConvolutionMatrix;->Factor:D

    .line 12
    iput-wide v0, p0, Lcom/example/broly/ssj/ConvolutionMatrix;->Offset:D

    .line 15
    filled-new-array {p1, p1}, [I

    move-result-object p1

    const-class v0, D

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    return-void
.end method

.method public static computeConvolution3x3(Landroid/graphics/Bitmap;Lcom/example/broly/ssj/ConvolutionMatrix;)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p1

    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x3

    .line 41
    filled-new-array {v4, v4}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v7, 0x0

    :goto_0
    add-int/lit8 v8, v2, -0x2

    if-ge v7, v8, :cond_b

    const/4 v8, 0x0

    :goto_1
    add-int/lit8 v9, v1, -0x2

    if-ge v8, v9, :cond_a

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_1

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_0

    .line 49
    aget-object v11, v5, v9

    add-int v12, v8, v9

    add-int v13, v7, v10

    move-object/from16 v14, p0

    invoke-virtual {v14, v12, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v12

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v14, p0

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v14, p0

    const/4 v9, 0x1

    .line 54
    aget-object v10, v5, v9

    aget v9, v10, v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_4
    if-ge v10, v4, :cond_3

    move v15, v13

    move v13, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v4, :cond_2

    move/from16 v16, v7

    int-to-double v6, v12

    .line 62
    aget-object v12, v5, v10

    aget v12, v12, v11

    invoke-static {v12}, Landroid/graphics/Color;->red(I)I

    move-result v12

    move-object/from16 v17, v5

    int-to-double v4, v12

    iget-object v12, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    aget-object v12, v12, v10

    aget-wide v18, v12, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v18

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v4

    double-to-int v12, v6

    int-to-double v4, v13

    .line 63
    aget-object v6, v17, v10

    aget v6, v6, v11

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    iget-object v13, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    aget-object v13, v13, v10

    aget-wide v18, v13, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v13, v4

    int-to-double v4, v15

    .line 64
    aget-object v6, v17, v10

    aget v6, v6, v11

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    iget-object v15, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    aget-object v15, v15, v10

    aget-wide v18, v15, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v18

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v6

    double-to-int v15, v4

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    move-object/from16 v5, v17

    const/4 v4, 0x3

    goto :goto_5

    :cond_2
    move-object/from16 v17, v5

    move/from16 v16, v7

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    move v12, v13

    move v13, v15

    const/4 v4, 0x3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v5

    move/from16 v16, v7

    int-to-double v4, v11

    .line 69
    iget-wide v6, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Factor:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    iget-wide v6, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Offset:D

    add-double/2addr v4, v6

    double-to-int v6, v4

    const/16 v4, 0xff

    if-gez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_6

    :cond_4
    if-le v6, v4, :cond_5

    const/16 v6, 0xff

    :cond_5
    :goto_6
    int-to-double v10, v12

    .line 74
    iget-wide v4, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Factor:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v4

    iget-wide v4, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Offset:D

    add-double/2addr v10, v4

    double-to-int v4, v10

    if-gez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    const/16 v5, 0xff

    if-le v4, v5, :cond_7

    const/16 v4, 0xff

    :cond_7
    :goto_7
    int-to-double v10, v13

    .line 79
    iget-wide v12, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Factor:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    iget-wide v12, v0, Lcom/example/broly/ssj/ConvolutionMatrix;->Offset:D

    add-double/2addr v10, v12

    double-to-int v5, v10

    if-gez v5, :cond_8

    const/4 v5, 0x0

    goto :goto_8

    :cond_8
    const/16 v7, 0xff

    if-le v5, v7, :cond_9

    const/16 v5, 0xff

    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v16, 0x1

    .line 84
    invoke-static {v9, v6, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v8, v7, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    move/from16 v7, v16

    move-object/from16 v5, v17

    const/4 v4, 0x3

    goto/16 :goto_1

    :cond_a
    move-object/from16 v14, p0

    move-object/from16 v17, v5

    move/from16 v16, v7

    add-int/lit8 v7, v16, 0x1

    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_b
    return-object v3
.end method


# virtual methods
.method public applyConfig([[D)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 29
    iget-object v4, p0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAll(D)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 21
    iget-object v4, p0, Lcom/example/broly/ssj/ConvolutionMatrix;->Matrix:[[D

    aget-object v4, v4, v1

    aput-wide p1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
