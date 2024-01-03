.class public Lcom/jhlabs/image/ContourFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "ContourFilter.java"


# instance fields
.field private contourColor:I

.field private levels:F

.field private offset:F

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/ContourFilter;->levels:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/ContourFilter;->scale:F

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jhlabs/image/ContourFilter;->offset:F

    const/high16 v0, -0x1000000

    .line 27
    iput v0, p0, Lcom/jhlabs/image/ContourFilter;->contourColor:I

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    .line 58
    filled-new-array {v3, v1}, [I

    move-result-object v3

    const-class v4, S

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    mul-int v4, v1, v2

    .line 59
    new-array v4, v4, [I

    const/16 v5, 0x100

    new-array v6, v5, [S

    .line 62
    iget v7, v0, Lcom/jhlabs/image/ContourFilter;->offset:F

    const/high16 v8, 0x43800000    # 256.0f

    mul-float v7, v7, v8

    iget v9, v0, Lcom/jhlabs/image/ContourFilter;->levels:F

    div-float/2addr v7, v9

    float-to-int v7, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_0

    const-wide v11, 0x406fe00000000000L    # 255.0

    .line 64
    iget v13, v0, Lcom/jhlabs/image/ContourFilter;->levels:F

    add-int v14, v10, v7

    int-to-float v14, v14

    mul-float v13, v13, v14

    div-float/2addr v13, v8

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    mul-double v13, v13, v11

    iget v11, v0, Lcom/jhlabs/image/ContourFilter;->levels:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    int-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v11

    double-to-int v11, v13

    invoke-static {v11}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v11

    int-to-short v11, v11

    aput-short v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v5, v1, :cond_1

    .line 67
    aget v8, p3, v5

    .line 68
    aget-object v7, v3, v7

    invoke-static {v8}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v5, v2, :cond_a

    if-lez v5, :cond_2

    add-int/lit8 v10, v2, -0x1

    if-ge v5, v10, :cond_2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    add-int v11, v8, v1

    add-int/lit8 v12, v2, -0x1

    const/4 v13, 0x2

    if-ge v5, v12, :cond_3

    move v12, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v1, :cond_3

    add-int/lit8 v14, v12, 0x1

    .line 75
    aget v12, p3, v12

    .line 76
    aget-object v15, v3, v13

    invoke-static {v12}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v12

    int-to-short v12, v12

    aput-short v12, v15, v11

    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_4

    :cond_3
    move v11, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v1, :cond_9

    if-lez v8, :cond_4

    add-int/lit8 v12, v1, -0x1

    if-ge v8, v12, :cond_4

    const/4 v12, 0x1

    goto :goto_6

    :cond_4
    const/4 v12, 0x0

    :goto_6
    add-int/lit8 v14, v8, -0x1

    add-int/lit8 v15, v8, 0x1

    if-eqz v10, :cond_7

    if-eqz v12, :cond_7

    .line 86
    aget-object v12, v3, v9

    aget-short v12, v12, v14

    .line 87
    aget-object v16, v3, v9

    aget-short v16, v16, v8

    .line 88
    aget-object v17, v3, v7

    aget-short v14, v17, v14

    .line 89
    aget-object v17, v3, v7

    aget-short v8, v17, v8

    .line 90
    aget-short v9, v6, v12

    .line 91
    aget-short v7, v6, v16

    .line 92
    aget-short v13, v6, v14

    .line 93
    aget-short v1, v6, v8

    if-ne v9, v7, :cond_5

    if-ne v9, v13, :cond_5

    if-ne v7, v1, :cond_5

    if-eq v13, v1, :cond_7

    .line 96
    :cond_5
    iget v1, v0, Lcom/jhlabs/image/ContourFilter;->scale:F

    sub-int v7, v12, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v12, v14

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    sub-int v16, v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v7, v9

    sub-int/2addr v14, v8

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    mul-float v1, v1, v7

    float-to-int v9, v1

    const/16 v1, 0xff

    if-le v9, v1, :cond_6

    goto :goto_7

    :cond_6
    move v1, v9

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_8

    .line 104
    aget v7, p3, v11

    iget v8, v0, Lcom/jhlabs/image/ContourFilter;->contourColor:I

    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v1}, Lcom/jhlabs/image/PixelUtils;->combinePixels(IIII)I

    move-result v1

    aput v1, v4, v11

    goto :goto_8

    :cond_8
    const/4 v9, 0x1

    .line 106
    aget v1, p3, v11

    aput v1, v4, v11

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move v8, v15

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x2

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 110
    aget-object v7, v3, v1

    .line 111
    aget-object v8, v3, v9

    aput-object v8, v3, v1

    const/4 v8, 0x2

    .line 112
    aget-object v10, v3, v8

    aput-object v10, v3, v9

    .line 113
    aput-object v7, v3, v8

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    move v8, v11

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    return-object v4
.end method

.method public getLevels()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/jhlabs/image/ContourFilter;->levels:F

    return v0
.end method

.method public getOffset()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/jhlabs/image/ContourFilter;->offset:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 45
    iget v0, p0, Lcom/jhlabs/image/ContourFilter;->scale:F

    return v0
.end method

.method public setLevels(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jhlabs/image/ContourFilter;->levels:F

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/jhlabs/image/ContourFilter;->offset:F

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/jhlabs/image/ContourFilter;->scale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Contour..."

    return-object v0
.end method
