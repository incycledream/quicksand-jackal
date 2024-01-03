.class public Lcom/jhlabs/image/ReduceNoiseFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "ReduceNoiseFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method

.method private smooth([I)I
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x9

    const/4 v6, 0x4

    if-ge v0, v5, :cond_2

    if-eq v0, v6, :cond_1

    .line 36
    aget v5, p1, v0

    if-ge v5, v1, :cond_0

    .line 37
    aget v1, p1, v0

    move v3, v0

    .line 40
    :cond_0
    aget v5, p1, v0

    if-le v5, v2, :cond_1

    .line 41
    aget v2, p1, v0

    move v4, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_2
    aget v0, p1, v6

    if-ge v0, v1, :cond_3

    .line 47
    aget p1, p1, v3

    return p1

    .line 48
    :cond_3
    aget v0, p1, v6

    if-le v0, v2, :cond_4

    .line 49
    aget p1, p1, v4

    return p1

    .line 50
    :cond_4
    aget p1, p1, v6

    return p1
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x9

    new-array v4, v3, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    mul-int v7, v1, v2

    .line 58
    new-array v7, v7, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v2, :cond_6

    move v11, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v1, :cond_5

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x1

    if-gt v13, v15, :cond_3

    add-int v12, v9, v13

    if-ltz v12, :cond_2

    if-ge v12, v2, :cond_2

    mul-int v12, v12, v1

    move/from16 v16, v14

    const/4 v14, -0x1

    :goto_3
    if-gt v14, v15, :cond_1

    add-int v15, v10, v14

    if-ltz v15, :cond_0

    if-ge v15, v1, :cond_0

    add-int/2addr v15, v12

    .line 70
    aget v15, p3, v15

    shr-int/lit8 v8, v15, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 71
    aput v8, v4, v16

    shr-int/lit8 v8, v15, 0x8

    and-int/lit16 v8, v8, 0xff

    .line 72
    aput v8, v5, v16

    and-int/lit16 v8, v15, 0xff

    .line 73
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
    if-ge v14, v3, :cond_4

    const/4 v8, 0x0

    .line 80
    aput v8, v6, v14

    aput v8, v5, v14

    aput v8, v4, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    .line 83
    aget v12, p3, v11

    const/high16 v13, -0x1000000

    and-int/2addr v12, v13

    invoke-direct {v0, v4}, Lcom/jhlabs/image/ReduceNoiseFilter;->smooth([I)I

    move-result v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    invoke-direct {v0, v5}, Lcom/jhlabs/image/ReduceNoiseFilter;->smooth([I)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    invoke-direct {v0, v6}, Lcom/jhlabs/image/ReduceNoiseFilter;->smooth([I)I

    move-result v13

    or-int/2addr v12, v13

    aput v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_0

    :cond_6
    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Smooth"

    return-object v0
.end method
