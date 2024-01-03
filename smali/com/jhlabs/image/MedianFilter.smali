.class public Lcom/jhlabs/image/MedianFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "MedianFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method

.method private median([I)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x9

    if-ge v1, v2, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 37
    aget v6, p1, v2

    if-le v6, v5, :cond_0

    .line 38
    aget v4, p1, v2

    move v5, v4

    move v4, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_1
    aput v0, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 46
    aget v2, p1, v0

    if-le v2, v1, :cond_3

    .line 47
    aget v1, p1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return v1
.end method

.method private rgbMedian([I[I[I)I
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_0
    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    .line 58
    aget v7, p1, v1

    aget v8, p1, v5

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 59
    aget v7, p2, v1

    aget v8, p2, v5

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 60
    aget v7, p3, v1

    aget v8, p3, v5

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    if-ge v6, v3, :cond_1

    move v2, v1

    move v3, v6

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x9

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    mul-int v7, v0, v1

    .line 76
    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v1, :cond_6

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v0, :cond_5

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x1

    if-gt v13, v15, :cond_3

    add-int v12, v9, v13

    if-ltz v12, :cond_2

    if-ge v12, v1, :cond_2

    mul-int v12, v12, v0

    move/from16 v16, v14

    const/4 v14, -0x1

    :goto_3
    if-gt v14, v15, :cond_1

    add-int v15, v10, v14

    if-ltz v15, :cond_0

    if-ge v15, v0, :cond_0

    add-int/2addr v15, v12

    .line 88
    aget v15, p3, v15

    .line 89
    aput v15, v3, v16

    shr-int/lit8 v8, v15, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 90
    aput v8, v4, v16

    shr-int/lit8 v8, v15, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 91
    aput v8, v5, v16

    and-int/lit16 v8, v15, 0xff

    .line 92
    aput v8, v6, v16

    add-int/lit8 v16, v16, 0x1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    goto :goto_3

    :cond_1
    move/from16 v14, v16

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    :goto_4
    if-ge v14, v2, :cond_4

    const/high16 v8, -0x1000000

    .line 99
    aput v8, v3, v14

    const/4 v8, 0x0

    .line 100
    aput v8, v6, v14

    aput v8, v5, v14

    aput v8, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v13, p0

    .line 103
    invoke-direct {v13, v4, v5, v6}, Lcom/jhlabs/image/MedianFilter;->rgbMedian([I[I[I)I

    move-result v14

    aget v14, v3, v14

    aput v14, v7, v11

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    move-object/from16 v13, p0

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_0

    :cond_6
    move-object/from16 v13, p0

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Median"

    return-object v0
.end method
