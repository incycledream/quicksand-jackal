.class public Lcom/jhlabs/image/QuiltFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "QuiltFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private d:F

.field private iterations:I

.field private k:I

.field private randomGenerator:Ljava/util/Random;

.field private seed:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const-wide/16 v0, 0x237

    .line 27
    iput-wide v0, p0, Lcom/jhlabs/image/QuiltFilter;->seed:J

    const/16 v0, 0x61a8

    .line 28
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->iterations:I

    const v0, -0x40e8f5c3    # -0.59f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->a:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->b:F

    const v0, 0x3dcccccd    # 0.1f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->c:F

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->d:F

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->k:I

    .line 34
    new-instance v0, Lcom/jhlabs/image/LinearColormap;

    invoke-direct {v0}, Lcom/jhlabs/image/LinearColormap;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 107
    new-array v3, v3, [I

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3e99999a    # 0.3f

    :goto_0
    const/16 v8, 0x14

    const/high16 v11, 0x40000000    # 2.0f

    const v12, 0x40490fdb    # (float)Math.PI

    if-ge v5, v8, :cond_2

    mul-float v8, v6, v12

    mul-float v12, v12, v7

    mul-float v15, v8, v11

    move/from16 p4, v5

    float-to-double v4, v15

    .line 118
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v11, v11, v12

    float-to-double v9, v11

    .line 119
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v15, v14

    .line 120
    iget v14, v0, Lcom/jhlabs/image/QuiltFilter;->a:F

    mul-float v14, v14, v13

    move/from16 v17, v12

    float-to-double v11, v14

    iget v14, v0, Lcom/jhlabs/image/QuiltFilter;->b:F

    mul-float v14, v14, v13

    float-to-double v13, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    iget v9, v0, Lcom/jhlabs/image/QuiltFilter;->c:F

    float-to-double v9, v9

    const/high16 v13, 0x40800000    # 4.0f

    mul-float v14, v8, v13

    float-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v19

    add-double/2addr v11, v9

    iget v9, v0, Lcom/jhlabs/image/QuiltFilter;->d:F

    float-to-double v9, v9

    const/high16 v18, 0x40c00000    # 6.0f

    mul-float v8, v8, v18

    move-wide/from16 v18, v13

    move v13, v15

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v14

    const/high16 v8, 0x40800000    # 4.0f

    mul-float v8, v8, v17

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    iget v8, v0, Lcom/jhlabs/image/QuiltFilter;->k:I

    int-to-float v8, v8

    mul-float v8, v8, v6

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v8

    double-to-float v6, v11

    const/4 v8, 0x0

    cmpl-float v9, v6, v8

    float-to-int v8, v6

    int-to-float v8, v8

    sub-float/2addr v6, v8

    if-ltz v9, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v6, v8

    :goto_1
    move v8, v13

    move-wide v9, v14

    .line 124
    iget v11, v0, Lcom/jhlabs/image/QuiltFilter;->a:F

    mul-float v11, v11, v8

    float-to-double v11, v11

    iget v13, v0, Lcom/jhlabs/image/QuiltFilter;->b:F

    mul-float v13, v13, v8

    float-to-double v13, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v4

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v13

    iget v4, v0, Lcom/jhlabs/image/QuiltFilter;->c:F

    float-to-double v4, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    add-double/2addr v11, v4

    iget v4, v0, Lcom/jhlabs/image/QuiltFilter;->d:F

    float-to-double v4, v4

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v8, v8, v17

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v4, v4, v8

    add-double/2addr v11, v4

    iget v4, v0, Lcom/jhlabs/image/QuiltFilter;->k:I

    int-to-float v4, v4

    mul-float v4, v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v4

    double-to-float v4, v11

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    float-to-int v5, v4

    int-to-float v5, v5

    sub-float/2addr v4, v5

    goto :goto_2

    :cond_1
    float-to-int v5, v4

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    :goto_2
    move v7, v4

    add-int/lit8 v5, p4, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 131
    :goto_3
    iget v8, v0, Lcom/jhlabs/image/QuiltFilter;->iterations:I

    if-ge v4, v8, :cond_7

    mul-float v8, v6, v12

    mul-float v9, v7, v12

    .line 134
    iget v10, v0, Lcom/jhlabs/image/QuiltFilter;->a:F

    float-to-double v12, v10

    mul-float v10, v8, v11

    float-to-double v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v19

    iget v10, v0, Lcom/jhlabs/image/QuiltFilter;->b:F

    move-wide/from16 v19, v12

    float-to-double v11, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v21

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v13, v9, v10

    move/from16 v17, v4

    move/from16 v21, v5

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v11, v11, v22

    add-double v12, v19, v11

    iget v11, v0, Lcom/jhlabs/image/QuiltFilter;->c:F

    float-to-double v10, v11

    move-object/from16 v20, v3

    const/high16 v16, 0x40800000    # 4.0f

    mul-float v3, v8, v16

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v22

    add-double/2addr v12, v10

    iget v10, v0, Lcom/jhlabs/image/QuiltFilter;->d:F

    float-to-double v10, v10

    const/high16 v18, 0x40c00000    # 6.0f

    mul-float v8, v8, v18

    move/from16 v22, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v7

    const/high16 v7, 0x40800000    # 4.0f

    mul-float v8, v9, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v10, v10, v23

    add-double/2addr v12, v10

    iget v10, v0, Lcom/jhlabs/image/QuiltFilter;->k:I

    int-to-float v10, v10

    mul-float v10, v10, v6

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v6, v12

    const/4 v10, 0x0

    cmpl-float v11, v6, v10

    float-to-int v10, v6

    int-to-float v10, v10

    sub-float/2addr v6, v10

    if-ltz v11, :cond_3

    goto :goto_4

    :cond_3
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v6, v10

    .line 138
    :goto_4
    iget v11, v0, Lcom/jhlabs/image/QuiltFilter;->a:F

    float-to-double v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v23

    iget v13, v0, Lcom/jhlabs/image/QuiltFilter;->b:F

    move-wide/from16 v23, v11

    float-to-double v10, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v10, v10, v4

    add-double v11, v23, v10

    iget v4, v0, Lcom/jhlabs/image/QuiltFilter;->c:F

    float-to-double v4, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v7

    add-double/2addr v11, v4

    iget v4, v0, Lcom/jhlabs/image/QuiltFilter;->d:F

    float-to-double v4, v4

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float v9, v9, v7

    float-to-double v8, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v4, v4, v2

    add-double/2addr v11, v4

    iget v2, v0, Lcom/jhlabs/image/QuiltFilter;->k:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v11, v2

    double-to-float v2, v11

    const/4 v8, 0x0

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_4

    float-to-int v3, v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_5

    :cond_4
    float-to-int v3, v2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    :goto_5
    int-to-float v3, v1

    mul-float v3, v3, v6

    float-to-int v3, v3

    move/from16 v4, p2

    int-to-float v5, v4

    mul-float v5, v5, v2

    float-to-int v5, v5

    if-ltz v3, :cond_5

    if-ge v3, v1, :cond_5

    if-ltz v5, :cond_5

    if-ge v5, v4, :cond_5

    mul-int v5, v5, v1

    add-int/2addr v5, v3

    .line 146
    aget v3, v20, v5

    add-int/lit8 v9, v3, 0x1

    aput v9, v20, v5

    move/from16 v5, v21

    if-le v3, v5, :cond_6

    move v5, v3

    goto :goto_6

    :cond_5
    move/from16 v5, v21

    :cond_6
    :goto_6
    add-int/lit8 v3, v17, 0x1

    move v7, v2

    move v2, v4

    const/high16 v11, 0x40000000    # 2.0f

    const v12, 0x40490fdb    # (float)Math.PI

    move v4, v3

    move-object/from16 v3, v20

    goto/16 :goto_3

    :cond_7
    move v4, v2

    move-object/from16 v20, v3

    const/4 v8, 0x0

    .line 152
    iget-object v2, v0, Lcom/jhlabs/image/QuiltFilter;->colormap:Lcom/jhlabs/image/Colormap;

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    int-to-float v6, v4

    cmpg-float v6, v2, v6

    if-gez v6, :cond_9

    move v6, v3

    const/4 v3, 0x0

    :goto_8
    int-to-float v7, v1

    cmpg-float v7, v3, v7

    if-gez v7, :cond_8

    .line 156
    iget-object v7, v0, Lcom/jhlabs/image/QuiltFilter;->colormap:Lcom/jhlabs/image/Colormap;

    aget v9, v20, v6

    int-to-float v9, v9

    int-to-float v10, v5

    div-float/2addr v9, v10

    invoke-interface {v7, v9}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v7

    aput v7, v20, v6

    add-int/lit8 v6, v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v3, v7

    goto :goto_8

    :cond_8
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    move v3, v6

    goto :goto_7

    :cond_9
    return-object v20
.end method

.method public getA()F
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->a:F

    return v0
.end method

.method public getB()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->b:F

    return v0
.end method

.method public getC()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->c:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getD()F
    .locals 1

    .line 87
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->d:F

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->iterations:I

    return v0
.end method

.method public getK()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/jhlabs/image/QuiltFilter;->k:I

    return v0
.end method

.method public randomize()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jhlabs/image/QuiltFilter;->seed:J

    .line 42
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    iget-wide v1, p0, Lcom/jhlabs/image/QuiltFilter;->seed:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Random;->setSeed(J)V

    .line 43
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->a:F

    .line 44
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->b:F

    .line 45
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->c:F

    .line 46
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->d:F

    .line 47
    iget-object v0, p0, Lcom/jhlabs/image/QuiltFilter;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/jhlabs/image/QuiltFilter;->k:I

    return-void
.end method

.method public setA(F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->a:F

    return-void
.end method

.method public setB(F)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->b:F

    return-void
.end method

.method public setC(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->c:F

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/jhlabs/image/QuiltFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setD(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->d:F

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->iterations:I

    return-void
.end method

.method public setK(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/jhlabs/image/QuiltFilter;->k:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Chaotic Quilt..."

    return-object v0
.end method
