.class public Lcom/jhlabs/image/OutlineFilter;
.super Lcom/jhlabs/image/BinaryFilter;
.source "OutlineFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/BinaryFilter;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/jhlabs/image/OutlineFilter;->newColor:I

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 33
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_8

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_7

    mul-int v8, v5, v1

    add-int/2addr v8, v6

    .line 37
    aget v8, p3, v8

    .line 38
    iget-object v9, v0, Lcom/jhlabs/image/OutlineFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v9, v8}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x1

    if-gt v10, v12, :cond_5

    add-int v13, v5, v10

    if-ltz v13, :cond_4

    if-ge v13, v2, :cond_4

    mul-int v13, v13, v1

    move v14, v11

    const/4 v11, -0x1

    :goto_3
    if-gt v11, v12, :cond_3

    add-int v15, v6, v11

    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    if-ltz v15, :cond_1

    if-ge v15, v1, :cond_1

    add-int/2addr v15, v13

    .line 49
    aget v15, p3, v15

    .line 50
    iget-object v4, v0, Lcom/jhlabs/image/OutlineFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v4, v15}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v14, v14, 0x1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    move v11, v14

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    const/16 v4, 0x9

    if-ne v11, v4, :cond_6

    .line 59
    iget v8, v0, Lcom/jhlabs/image/OutlineFilter;->newColor:I

    :cond_6
    add-int/lit8 v4, v7, 0x1

    .line 61
    aput v8, v3, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v4

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_0

    :cond_8
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binary/Outline..."

    return-object v0
.end method
