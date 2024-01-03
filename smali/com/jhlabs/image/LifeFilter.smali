.class public Lcom/jhlabs/image/LifeFilter;
.super Lcom/jhlabs/image/BinaryFilter;
.source "LifeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/BinaryFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 29
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_9

    mul-int v8, v5, v1

    add-int/2addr v8, v6

    .line 34
    aget v8, p3, v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    :goto_2
    const/4 v12, 0x1

    if-gt v10, v12, :cond_4

    add-int v13, v5, v10

    if-ltz v13, :cond_3

    if-ge v13, v2, :cond_3

    mul-int v13, v13, v1

    move v14, v11

    const/4 v11, -0x1

    :goto_3
    if-gt v11, v12, :cond_2

    add-int v15, v6, v11

    if-nez v10, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    if-ltz v15, :cond_1

    if-ge v15, v1, :cond_1

    add-int/2addr v15, v13

    .line 46
    aget v15, p3, v15

    .line 47
    iget-object v4, v0, Lcom/jhlabs/image/LifeFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v4, v15}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v14, v14, 0x1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    move v11, v14

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 54
    :cond_4
    iget-object v4, v0, Lcom/jhlabs/image/LifeFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    invoke-interface {v4, v8}, Lcom/jhlabs/math/BinaryFunction;->isBlack(I)Z

    move-result v4

    const/4 v10, 0x3

    if-eqz v4, :cond_7

    add-int/lit8 v4, v7, 0x1

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    if-ne v11, v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, -0x1

    .line 55
    :cond_6
    :goto_4
    aput v8, v3, v7

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v7, 0x1

    if-ne v11, v10, :cond_8

    const/high16 v8, -0x1000000

    .line 57
    :cond_8
    aput v8, v3, v7

    :goto_5
    move v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_0

    :cond_a
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binary/Life"

    return-object v0
.end method
