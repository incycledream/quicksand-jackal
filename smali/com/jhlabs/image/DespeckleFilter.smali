.class public Lcom/jhlabs/image/DespeckleFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "DespeckleFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 40
    const-class v3, S

    const/4 v4, 0x3

    .line 41
    filled-new-array {v4, v1}, [I

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    .line 42
    filled-new-array {v4, v1}, [I

    move-result-object v6

    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    .line 43
    filled-new-array {v4, v1}, [I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    mul-int v4, v1, v2

    .line 44
    new-array v4, v4, [I

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v1, :cond_0

    .line 47
    aget v10, p3, v8

    .line 48
    aget-object v11, v5, v9

    shr-int/lit8 v12, v10, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-short v12, v12

    aput-short v12, v11, v8

    .line 49
    aget-object v11, v6, v9

    shr-int/lit8 v12, v10, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-short v12, v12

    aput-short v12, v11, v8

    .line 50
    aget-object v9, v3, v9

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v8, v2, :cond_8

    if-lez v8, :cond_1

    add-int/lit8 v11, v2, -0x1

    if-ge v8, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    add-int v12, v10, v1

    add-int/lit8 v13, v2, -0x1

    const/4 v14, 0x2

    if-ge v8, v13, :cond_2

    move v13, v12

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v1, :cond_2

    add-int/lit8 v15, v13, 0x1

    .line 57
    aget v13, p3, v13

    .line 58
    aget-object v16, v5, v14

    shr-int/lit8 v7, v13, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aput-short v7, v16, v12

    .line 59
    aget-object v7, v6, v14

    shr-int/lit8 v9, v13, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v12

    .line 60
    aget-object v7, v3, v14

    and-int/lit16 v9, v13, 0xff

    int-to-short v9, v9

    aput-short v9, v7, v12

    add-int/lit8 v12, v12, 0x1

    move v13, v15

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_4
    if-ge v7, v1, :cond_7

    if-lez v7, :cond_3

    add-int/lit8 v9, v1, -0x1

    if-ge v7, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_5

    :cond_3
    const/4 v9, 0x0

    :goto_5
    const/4 v12, 0x1

    .line 65
    aget-object v13, v5, v12

    aget-short v13, v13, v7

    .line 66
    aget-object v15, v6, v12

    aget-short v15, v15, v7

    .line 67
    aget-object v17, v3, v12

    aget-short v12, v17, v7

    add-int/lit8 v17, v7, -0x1

    add-int/lit8 v18, v7, 0x1

    if-eqz v11, :cond_4

    const/16 v19, 0x0

    .line 72
    aget-object v20, v5, v19

    aget-short v1, v20, v7

    aget-object v20, v5, v14

    aget-short v14, v20, v7

    invoke-virtual {v0, v13, v1, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v13

    .line 73
    aget-object v1, v6, v19

    aget-short v1, v1, v7

    const/4 v14, 0x2

    aget-object v20, v6, v14

    aget-short v14, v20, v7

    invoke-virtual {v0, v15, v1, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v15

    .line 74
    aget-object v1, v3, v19

    aget-short v1, v1, v7

    const/4 v14, 0x2

    aget-object v19, v3, v14

    aget-short v7, v19, v7

    invoke-virtual {v0, v12, v1, v7}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v12

    :cond_4
    if-eqz v9, :cond_5

    const/4 v1, 0x1

    .line 78
    aget-object v7, v5, v1

    aget-short v7, v7, v17

    aget-object v14, v5, v1

    aget-short v14, v14, v18

    invoke-virtual {v0, v13, v7, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v13

    .line 79
    aget-object v7, v6, v1

    aget-short v7, v7, v17

    aget-object v14, v6, v1

    aget-short v14, v14, v18

    invoke-virtual {v0, v15, v7, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v15

    .line 80
    aget-object v7, v3, v1

    aget-short v7, v7, v17

    aget-object v14, v3, v1

    aget-short v1, v14, v18

    invoke-virtual {v0, v12, v7, v1}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v12

    :cond_5
    if-eqz v11, :cond_6

    if-eqz v9, :cond_6

    const/4 v1, 0x0

    .line 84
    aget-object v7, v5, v1

    aget-short v7, v7, v17

    const/4 v9, 0x2

    aget-object v14, v5, v9

    aget-short v14, v14, v18

    invoke-virtual {v0, v13, v7, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v7

    .line 85
    aget-object v13, v6, v1

    aget-short v13, v13, v17

    aget-object v14, v6, v9

    aget-short v14, v14, v18

    invoke-virtual {v0, v15, v13, v14}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v13

    .line 86
    aget-object v14, v3, v1

    aget-short v14, v14, v17

    aget-object v15, v3, v9

    aget-short v15, v15, v18

    invoke-virtual {v0, v12, v14, v15}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v12

    .line 88
    aget-object v14, v5, v9

    aget-short v14, v14, v17

    aget-object v15, v5, v1

    aget-short v15, v15, v18

    invoke-virtual {v0, v7, v14, v15}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v7

    .line 89
    aget-object v14, v6, v9

    aget-short v14, v14, v17

    aget-object v15, v6, v1

    aget-short v15, v15, v18

    invoke-virtual {v0, v13, v14, v15}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v15

    .line 90
    aget-object v13, v3, v9

    aget-short v9, v13, v17

    aget-object v13, v3, v1

    aget-short v1, v13, v18

    invoke-virtual {v0, v12, v9, v1}, Lcom/jhlabs/image/DespeckleFilter;->pepperAndSalt(SSS)S

    move-result v12

    move v13, v7

    .line 93
    :cond_6
    aget v1, p3, v10

    const/high16 v7, -0x1000000

    and-int/2addr v1, v7

    shl-int/lit8 v7, v13, 0x10

    or-int/2addr v1, v7

    shl-int/lit8 v7, v15, 0x8

    or-int/2addr v1, v7

    or-int/2addr v1, v12

    aput v1, v4, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v7, v18

    const/4 v14, 0x2

    goto/16 :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 97
    aget-object v7, v5, v1

    const/4 v9, 0x1

    .line 98
    aget-object v11, v5, v9

    aput-object v11, v5, v1

    const/4 v11, 0x2

    .line 99
    aget-object v12, v5, v11

    aput-object v12, v5, v9

    .line 100
    aput-object v7, v5, v11

    .line 101
    aget-object v7, v6, v1

    .line 102
    aget-object v12, v6, v9

    aput-object v12, v6, v1

    .line 103
    aget-object v12, v6, v11

    aput-object v12, v6, v9

    .line 104
    aput-object v7, v6, v11

    .line 105
    aget-object v7, v3, v1

    .line 106
    aget-object v12, v3, v9

    aput-object v12, v3, v1

    .line 107
    aget-object v12, v3, v11

    aput-object v12, v3, v9

    .line 108
    aput-object v7, v3, v11

    add-int/lit8 v8, v8, 0x1

    move/from16 v1, p1

    goto/16 :goto_1

    :cond_8
    return-object v4
.end method

.method protected pepperAndSalt(SSS)S
    .locals 0

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    :cond_0
    if-ge p1, p3, :cond_1

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    :cond_1
    if-le p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    int-to-short p1, p1

    :cond_2
    if-le p1, p3, :cond_3

    add-int/lit8 p1, p1, -0x1

    int-to-short p1, p1

    :cond_3
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Despeckle..."

    return-object v0
.end method
