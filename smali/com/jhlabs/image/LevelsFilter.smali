.class public Lcom/jhlabs/image/LevelsFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "LevelsFilter.java"


# instance fields
.field protected highLevel:F

.field protected highOutputLevel:F

.field protected lowLevel:F

.field protected lowOutputLevel:F

.field protected lut:[[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/jhlabs/image/LevelsFilter;->lowLevel:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    iput v1, p0, Lcom/jhlabs/image/LevelsFilter;->highLevel:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/LevelsFilter;->lowOutputLevel:F

    .line 31
    iput v1, p0, Lcom/jhlabs/image/LevelsFilter;->highOutputLevel:F

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 14

    move-object v0, p0

    .line 69
    new-instance v7, Lcom/jhlabs/image/Histogram;

    const/4 v5, 0x0

    move-object v1, v7

    move-object/from16 v2, p3

    move v3, p1

    move/from16 v4, p2

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/jhlabs/image/Histogram;-><init>([IIIII)V

    .line 73
    invoke-virtual {v7}, Lcom/jhlabs/image/Histogram;->getNumSamples()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lez v1, :cond_2

    .line 74
    invoke-virtual {v7}, Lcom/jhlabs/image/Histogram;->getNumSamples()I

    const/16 v1, 0x100

    const/4 v4, 0x3

    .line 75
    filled-new-array {v4, v1}, [I

    move-result-object v5

    const-class v6, I

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, v0, Lcom/jhlabs/image/LevelsFilter;->lut:[[I

    .line 77
    iget v5, v0, Lcom/jhlabs/image/LevelsFilter;->lowLevel:F

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float v5, v5, v6

    .line 78
    iget v7, v0, Lcom/jhlabs/image/LevelsFilter;->highLevel:F

    mul-float v7, v7, v6

    cmpl-float v8, v5, v7

    if-nez v8, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_1

    .line 83
    iget-object v10, v0, Lcom/jhlabs/image/LevelsFilter;->lut:[[I

    aget-object v10, v10, v8

    iget v11, v0, Lcom/jhlabs/image/LevelsFilter;->lowOutputLevel:F

    iget v12, v0, Lcom/jhlabs/image/LevelsFilter;->highOutputLevel:F

    sub-float/2addr v12, v11

    int-to-float v13, v9

    sub-float/2addr v13, v5

    mul-float v12, v12, v13

    sub-float v13, v7, v5

    div-float/2addr v12, v13

    add-float/2addr v11, v12

    mul-float v11, v11, v6

    float-to-int v11, v11

    invoke-static {v11}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v11

    aput v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 86
    :cond_2
    move-object v1, v2

    check-cast v1, [[I

    iput-object v1, v0, Lcom/jhlabs/image/LevelsFilter;->lut:[[I

    :cond_3
    move/from16 v1, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, v1, :cond_5

    move v7, v5

    const/4 v6, 0x0

    move v5, p1

    :goto_3
    if-ge v6, v5, :cond_4

    .line 91
    aget v8, p3, v7

    invoke-virtual {p0, v6, v4, v8}, Lcom/jhlabs/image/LevelsFilter;->filterRGB(III)I

    move-result v8

    aput v8, p3, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_2

    .line 94
    :cond_5
    check-cast v2, [[I

    iput-object v2, v0, Lcom/jhlabs/image/LevelsFilter;->lut:[[I

    return-object p3
.end method

.method public filterRGB(III)I
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/jhlabs/image/LevelsFilter;->lut:[[I

    if-eqz p1, :cond_0

    const/high16 p2, -0x1000000

    and-int/2addr p2, p3

    const/4 v0, 0x0

    .line 102
    aget-object v0, p1, v0

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    aget v0, v0, v1

    const/4 v1, 0x1

    .line 103
    aget-object v1, p1, v1

    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    aget v1, v1, v2

    const/4 v2, 0x2

    .line 104
    aget-object p1, p1, v2

    and-int/lit16 p3, p3, 0xff

    aget p1, p1, p3

    shl-int/lit8 p3, v0, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v1, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1

    :cond_0
    return p3
.end method

.method public getHighLevel()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/LevelsFilter;->highLevel:F

    return v0
.end method

.method public getHighOutputLevel()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/LevelsFilter;->highOutputLevel:F

    return v0
.end method

.method public getLowLevel()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/image/LevelsFilter;->lowLevel:F

    return v0
.end method

.method public getLowOutputLevel()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/LevelsFilter;->lowOutputLevel:F

    return v0
.end method

.method public setHighLevel(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/LevelsFilter;->highLevel:F

    return-void
.end method

.method public setHighOutputLevel(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/LevelsFilter;->highOutputLevel:F

    return-void
.end method

.method public setLowLevel(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/LevelsFilter;->lowLevel:F

    return-void
.end method

.method public setLowOutputLevel(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/LevelsFilter;->lowOutputLevel:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Levels..."

    return-object v0
.end method
