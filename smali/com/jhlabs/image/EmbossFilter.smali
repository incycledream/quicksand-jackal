.class public Lcom/jhlabs/image/EmbossFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "EmbossFilter.java"


# static fields
.field private static final pixelScale:F = 255.9f


# instance fields
.field private azimuth:F

.field private elevation:F

.field private emboss:Z

.field private width45:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const v0, 0x4016cbe4

    .line 29
    iput v0, p0, Lcom/jhlabs/image/EmbossFilter;->azimuth:F

    const v0, 0x3f060a92

    iput v0, p0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/jhlabs/image/EmbossFilter;->emboss:Z

    const/high16 v0, 0x40400000    # 3.0f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/EmbossFilter;->width45:F

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    mul-int v4, v1, v2

    .line 70
    new-array v5, v4, [I

    .line 77
    new-array v4, v4, [I

    const/4 v7, 0x0

    .line 78
    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_0

    .line 79
    aget v8, v3, v7

    invoke-static {v8}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result v8

    aput v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    :cond_0
    iget v7, v0, Lcom/jhlabs/image/EmbossFilter;->azimuth:F

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    iget v9, v0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    const-wide v9, 0x406ffcccc0000000L    # 255.89999389648438

    mul-double v7, v7, v9

    double-to-int v7, v7

    .line 85
    iget v8, v0, Lcom/jhlabs/image/EmbossFilter;->azimuth:F

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    iget v8, v0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    float-to-double v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    mul-double v11, v11, v9

    double-to-int v8, v11

    .line 86
    iget v11, v0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    double-to-int v9, v11

    const v10, 0x44bf4000    # 1530.0f

    .line 88
    iget v11, v0, Lcom/jhlabs/image/EmbossFilter;->width45:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    mul-int v11, v10, v10

    mul-int v10, v10, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v2, :cond_6

    add-int v15, v13, v1

    add-int v16, v15, v1

    move/from16 v18, v14

    move/from16 v17, v16

    move v14, v13

    move/from16 v16, v15

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v1, :cond_5

    if-eqz v12, :cond_1

    add-int/lit8 v6, v2, -0x2

    if-ge v12, v6, :cond_1

    if-eqz v13, :cond_1

    add-int/lit8 v6, v1, -0x2

    if-ge v13, v6, :cond_1

    add-int/lit8 v6, v14, -0x1

    .line 103
    aget v19, v4, v6

    add-int/lit8 v20, v16, -0x1

    aget v20, v4, v20

    add-int v19, v19, v20

    add-int/lit8 v20, v17, -0x1

    aget v21, v4, v20

    add-int v19, v19, v21

    add-int/lit8 v21, v14, 0x1

    aget v22, v4, v21

    sub-int v19, v19, v22

    add-int/lit8 v22, v16, 0x1

    aget v22, v4, v22

    sub-int v19, v19, v22

    add-int/lit8 v22, v17, 0x1

    aget v23, v4, v22

    sub-int v19, v19, v23

    .line 104
    aget v20, v4, v20

    aget v23, v4, v17

    add-int v20, v20, v23

    aget v22, v4, v22

    add-int v20, v20, v22

    aget v6, v4, v6

    sub-int v20, v20, v6

    aget v6, v4, v14

    sub-int v20, v20, v6

    aget v6, v4, v21

    sub-int v20, v20, v6

    if-nez v19, :cond_2

    if-nez v20, :cond_2

    :cond_1
    move/from16 v19, v7

    goto :goto_3

    :cond_2
    mul-int v6, v19, v7

    mul-int v21, v20, v8

    add-int v6, v6, v21

    add-int/2addr v6, v10

    if-gez v6, :cond_3

    move/from16 v19, v7

    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    int-to-double v1, v6

    mul-int v19, v19, v19

    mul-int v20, v20, v20

    add-int v19, v19, v20

    add-int v6, v19, v11

    move/from16 v19, v7

    int-to-double v6, v6

    .line 111
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    double-to-int v6, v1

    goto :goto_4

    :goto_3
    move v6, v9

    .line 115
    :goto_4
    iget-boolean v1, v0, Lcom/jhlabs/image/EmbossFilter;->emboss:Z

    const/high16 v2, -0x1000000

    if-eqz v1, :cond_4

    .line 116
    aget v1, v3, v18

    and-int/2addr v2, v1

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    mul-int v7, v7, v6

    shr-int/lit8 v7, v7, 0x8

    mul-int v0, v0, v6

    shr-int/lit8 v0, v0, 0x8

    mul-int v1, v1, v6

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v6, v18, 0x1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    .line 124
    aput v0, v5, v18

    move/from16 v18, v6

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v18, 0x1

    shl-int/lit8 v1, v6, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v6

    .line 126
    aput v1, v5, v18

    move/from16 v18, v0

    :goto_5
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v7, v19

    goto/16 :goto_2

    :cond_5
    move/from16 v19, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v13, v15

    move/from16 v14, v18

    goto/16 :goto_1

    :cond_6
    return-object v5
.end method

.method public getAzimuth()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/image/EmbossFilter;->azimuth:F

    return v0
.end method

.method public getBumpHeight()F
    .locals 2

    .line 57
    iget v0, p0, Lcom/jhlabs/image/EmbossFilter;->width45:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getElevation()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    return v0
.end method

.method public getEmboss()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/jhlabs/image/EmbossFilter;->emboss:Z

    return v0
.end method

.method public setAzimuth(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/EmbossFilter;->azimuth:F

    return-void
.end method

.method public setBumpHeight(F)V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    mul-float p1, p1, v0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/EmbossFilter;->width45:F

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/EmbossFilter;->elevation:F

    return-void
.end method

.method public setEmboss(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/jhlabs/image/EmbossFilter;->emboss:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Emboss..."

    return-object v0
.end method
