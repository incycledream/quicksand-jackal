.class public Lcom/jhlabs/image/MaximumFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "MaximumFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    .line 29
    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    const/high16 v7, -0x1000000

    const/4 v8, -0x1

    const/4 v7, -0x1

    const/high16 v9, -0x1000000

    :goto_2
    const/4 v10, 0x1

    if-gt v7, v10, :cond_3

    add-int v11, v4, v7

    if-ltz v11, :cond_2

    if-ge v11, v1, :cond_2

    mul-int v11, v11, v0

    move v12, v9

    const/4 v9, -0x1

    :goto_3
    if-gt v9, v10, :cond_1

    add-int v13, v5, v9

    if-ltz v13, :cond_0

    if-ge v13, v0, :cond_0

    add-int/2addr v13, v11

    .line 42
    aget v13, p3, v13

    const/4 v14, 0x3

    invoke-static {v12, v13, v14}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v12

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    move v9, v12

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 47
    aput v9, v2, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Maximum"

    return-object v0
.end method
