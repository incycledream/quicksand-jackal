.class public Lcom/jhlabs/image/SkeletonFilter;
.super Lcom/jhlabs/image/BinaryFilter;
.source "SkeletonFilter.java"


# static fields
.field private static final skeletonTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/SkeletonFilter;->skeletonTable:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x3t
        0x0t
        0x0t
        0x3t
        0x1t
        0x1t
        0x0t
        0x1t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x3t
        0x0t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x3t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x1t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x1t
        0x3t
        0x0t
        0x0t
        0x1t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/jhlabs/image/BinaryFilter;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/jhlabs/image/SkeletonFilter;->newColor:I

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 17

    move-object/from16 v0, p0

    mul-int v1, p1, p2

    .line 49
    new-array v2, v1, [I

    move-object/from16 v5, p3

    move-object v4, v2

    const/4 v2, 0x0

    .line 54
    :goto_0
    iget v6, v0, Lcom/jhlabs/image/SkeletonFilter;->iterations:I

    if-ge v2, v6, :cond_14

    move-object v6, v4

    move-object v7, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x2

    if-ge v4, v8, :cond_12

    const/4 v9, 0x1

    move v10, v5

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v11, p2, -0x1

    if-ge v5, v11, :cond_10

    mul-int v11, v5, p1

    add-int/2addr v11, v9

    move v12, v11

    move v11, v10

    const/4 v10, 0x1

    :goto_3
    add-int/lit8 v13, p1, -0x1

    if-ge v10, v13, :cond_f

    .line 60
    aget v13, v7, v12

    const/high16 v14, -0x1000000

    if-ne v13, v14, :cond_d

    sub-int v15, v12, p1

    add-int/lit8 v16, v15, -0x1

    .line 64
    aget v3, v7, v16

    if-ne v3, v14, :cond_0

    const/4 v3, 0x1

    goto :goto_4

    :cond_0
    const/4 v3, 0x0

    .line 66
    :goto_4
    aget v8, v7, v15

    if-ne v8, v14, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 68
    aget v8, v7, v15

    if-ne v8, v14, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    add-int/lit8 v8, v12, 0x1

    .line 70
    aget v8, v7, v8

    if-ne v8, v14, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    add-int v8, v12, p1

    add-int/lit8 v15, v8, 0x1

    .line 72
    aget v15, v7, v15

    if-ne v15, v14, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 74
    :cond_4
    aget v15, v7, v8

    if-ne v15, v14, :cond_5

    or-int/lit8 v3, v3, 0x20

    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 76
    aget v8, v7, v8

    if-ne v8, v14, :cond_6

    or-int/lit8 v3, v3, 0x40

    :cond_6
    add-int/lit8 v8, v12, -0x1

    .line 78
    aget v8, v7, v8

    if-ne v8, v14, :cond_7

    or-int/lit16 v3, v3, 0x80

    .line 80
    :cond_7
    sget-object v8, Lcom/jhlabs/image/SkeletonFilter;->skeletonTable:[B

    aget-byte v3, v8, v3

    const/4 v8, 0x3

    if-ne v4, v9, :cond_a

    const/4 v14, 0x2

    if-eq v3, v14, :cond_8

    if-ne v3, v8, :cond_e

    .line 83
    :cond_8
    iget-object v3, v0, Lcom/jhlabs/image/SkeletonFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v3, :cond_9

    .line 84
    iget-object v3, v0, Lcom/jhlabs/image/SkeletonFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float v8, v2

    iget v13, v0, Lcom/jhlabs/image/SkeletonFilter;->iterations:I

    int-to-float v13, v13

    div-float/2addr v8, v13

    invoke-interface {v3, v8}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v3

    goto :goto_5

    .line 86
    :cond_9
    iget v3, v0, Lcom/jhlabs/image/SkeletonFilter;->newColor:I

    goto :goto_5

    :cond_a
    const/4 v14, 0x2

    if-eq v3, v9, :cond_b

    if-ne v3, v8, :cond_e

    .line 91
    :cond_b
    iget-object v3, v0, Lcom/jhlabs/image/SkeletonFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v3, :cond_c

    .line 92
    iget-object v3, v0, Lcom/jhlabs/image/SkeletonFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float v8, v2

    iget v13, v0, Lcom/jhlabs/image/SkeletonFilter;->iterations:I

    int-to-float v13, v13

    div-float/2addr v8, v13

    invoke-interface {v3, v8}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v3

    goto :goto_5

    .line 94
    :cond_c
    iget v3, v0, Lcom/jhlabs/image/SkeletonFilter;->newColor:I

    :goto_5
    move v13, v3

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_d
    const/4 v14, 0x2

    :cond_e
    :goto_6
    add-int/lit8 v3, v12, 0x1

    .line 99
    aput v13, v6, v12

    add-int/lit8 v10, v10, 0x1

    move v12, v3

    const/4 v8, 0x2

    goto/16 :goto_3

    :cond_f
    const/4 v14, 0x2

    add-int/lit8 v5, v5, 0x1

    move v10, v11

    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_10
    if-nez v4, :cond_11

    .line 104
    new-array v3, v1, [I

    move-object v7, v6

    move-object v6, v3

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move v5, v10

    goto/16 :goto_1

    :cond_12
    if-nez v5, :cond_13

    move-object v4, v6

    goto :goto_7

    :cond_13
    add-int/lit8 v2, v2, 0x1

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_0

    :cond_14
    :goto_7
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Binary/Skeletonize..."

    return-object v0
.end method
