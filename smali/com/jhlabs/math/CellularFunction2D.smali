.class public Lcom/jhlabs/math/CellularFunction2D;
.super Ljava/lang/Object;
.source "CellularFunction2D.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/math/CellularFunction2D$Point;
    }
.end annotation


# instance fields
.field public angular:Z

.field public cells:Z

.field private coefficients:[F

.field public distancePower:F

.field private random:Ljava/util/Random;

.field private results:[Lcom/jhlabs/math/CellularFunction2D$Point;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/math/CellularFunction2D;->distancePower:F

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/jhlabs/math/CellularFunction2D;->cells:Z

    .line 26
    iput-boolean v0, p0, Lcom/jhlabs/math/CellularFunction2D;->angular:Z

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 27
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jhlabs/math/CellularFunction2D;->coefficients:[F

    .line 28
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/jhlabs/math/CellularFunction2D;->random:Ljava/util/Random;

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/jhlabs/math/CellularFunction2D$Point;

    .line 32
    iput-object v1, p0, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 34
    new-instance v2, Lcom/jhlabs/math/CellularFunction2D$Point;

    invoke-direct {v2, p0}, Lcom/jhlabs/math/CellularFunction2D$Point;-><init>(Lcom/jhlabs/math/CellularFunction2D;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    .line 52
    iget-object v2, v0, Lcom/jhlabs/math/CellularFunction2D;->random:Ljava/util/Random;

    move/from16 v3, p3

    mul-int/lit16 v3, v3, 0x23b

    mul-int/lit8 v4, p4, 0x17

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Random;->setSeed(J)V

    .line 53
    iget-object v2, v0, Lcom/jhlabs/math/CellularFunction2D;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const/4 v3, 0x4

    rem-int/2addr v2, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v3, :cond_6

    .line 57
    iget-object v6, v0, Lcom/jhlabs/math/CellularFunction2D;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    .line 58
    iget-object v7, v0, Lcom/jhlabs/math/CellularFunction2D;->random:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    sub-float v8, p1, v6

    .line 59
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, p2, v7

    .line 60
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 62
    iget v10, v0, Lcom/jhlabs/math/CellularFunction2D;->distancePower:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v12, v10, v11

    if-nez v12, :cond_0

    add-float/2addr v8, v9

    goto :goto_2

    :cond_0
    const/high16 v12, 0x40000000    # 2.0f

    cmpl-float v12, v10, v12

    if-nez v12, :cond_1

    mul-float v8, v8, v8

    mul-float v9, v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 65
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    goto :goto_1

    :cond_1
    float-to-double v12, v8

    float-to-double v14, v10

    .line 67
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v8, v9

    iget v10, v0, Lcom/jhlabs/math/CellularFunction2D;->distancePower:F

    float-to-double v14, v10

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v12, v8

    iget v8, v0, Lcom/jhlabs/math/CellularFunction2D;->distancePower:F

    div-float/2addr v11, v8

    float-to-double v8, v11

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    :goto_1
    double-to-float v8, v8

    :goto_2
    const/4 v9, 0x0

    .line 70
    :goto_3
    array-length v10, v1

    if-ge v9, v10, :cond_5

    .line 71
    aget-object v10, v1, v9

    iget v10, v10, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    float-to-double v10, v10

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v14, v10, v12

    if-nez v14, :cond_2

    .line 72
    aget-object v5, v1, v9

    .line 73
    iput v8, v5, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    .line 74
    iput v6, v5, Lcom/jhlabs/math/CellularFunction2D$Point;->x:F

    .line 75
    iput v7, v5, Lcom/jhlabs/math/CellularFunction2D$Point;->y:F

    .line 76
    aput-object v5, v1, v9

    goto :goto_5

    .line 78
    :cond_2
    aget-object v10, v1, v9

    iget v10, v10, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    cmpg-float v10, v8, v10

    if-gez v10, :cond_4

    .line 79
    array-length v10, v1

    sub-int/2addr v10, v5

    aget-object v10, v1, v10

    .line 80
    array-length v11, v1

    sub-int/2addr v11, v5

    :goto_4
    if-le v11, v9, :cond_3

    add-int/lit8 v5, v11, -0x1

    .line 81
    aget-object v5, v1, v5

    aput-object v5, v1, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 82
    :cond_3
    iput v8, v10, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    .line 83
    iput v6, v10, Lcom/jhlabs/math/CellularFunction2D$Point;->x:F

    .line 84
    iput v7, v10, Lcom/jhlabs/math/CellularFunction2D$Point;->y:F

    .line 85
    aput-object v10, v1, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 90
    :cond_6
    aget-object v1, v1, v5

    iget v1, v1, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    return v1
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 17

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 94
    :goto_0
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    array-length v3, v5

    if-ge v2, v3, :cond_0

    .line 95
    aget-object v3, v5, v2

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v4, v3, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-int v8, v0

    float-to-int v9, v1

    int-to-float v2, v8

    sub-float v10, v0, v2

    int-to-float v0, v9

    sub-float v11, v1, v0

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    .line 102
    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v11

    if-lez v1, :cond_1

    add-float v2, v11, v12

    add-int/lit8 v4, v9, -0x1

    .line 104
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v10

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v0

    :cond_1
    sub-float v13, v12, v11

    cmpl-float v1, v0, v13

    if-lez v1, :cond_2

    sub-float v2, v11, v12

    add-int/lit8 v4, v9, 0x1

    .line 106
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v10

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v0

    :cond_2
    move v14, v0

    cmpl-float v0, v14, v10

    if-lez v0, :cond_4

    add-float v15, v10, v12

    add-int/lit8 v16, v8, -0x1

    .line 108
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    move/from16 v3, v16

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    cmpl-float v0, v14, v11

    if-lez v0, :cond_3

    add-float v2, v11, v12

    add-int/lit8 v4, v9, -0x1

    .line 110
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v14

    :cond_3
    cmpl-float v0, v14, v13

    if-lez v0, :cond_4

    sub-float v2, v11, v12

    add-int/lit8 v4, v9, 0x1

    .line 112
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v3, v16

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v14

    :cond_4
    sub-float v0, v12, v10

    cmpl-float v0, v14, v0

    if-lez v0, :cond_6

    sub-float v14, v10, v12

    add-int/lit8 v8, v8, 0x1

    .line 115
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v14

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v0

    cmpl-float v1, v0, v11

    if-lez v1, :cond_5

    add-float v2, v11, v12

    add-int/lit8 v4, v9, -0x1

    .line 117
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v14

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    move-result v0

    :cond_5
    cmpl-float v0, v0, v13

    if-lez v0, :cond_6

    sub-float v2, v11, v12

    add-int/lit8 v4, v9, 0x1

    .line 119
    iget-object v5, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    move-object/from16 v0, p0

    move v1, v14

    move v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/jhlabs/math/CellularFunction2D;->checkCube(FFII[Lcom/jhlabs/math/CellularFunction2D$Point;)F

    :cond_6
    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    .line 124
    iget-object v2, v6, Lcom/jhlabs/math/CellularFunction2D;->coefficients:[F

    aget v2, v2, v0

    iget-object v3, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jhlabs/math/CellularFunction2D$Point;->distance:F

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 125
    :cond_7
    iget-boolean v0, v6, Lcom/jhlabs/math/CellularFunction2D;->angular:Z

    if-eqz v0, :cond_8

    float-to-double v0, v1

    .line 126
    iget-object v2, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    aget-object v2, v2, v7

    iget v2, v2, Lcom/jhlabs/math/CellularFunction2D$Point;->y:F

    sub-float/2addr v11, v2

    float-to-double v2, v11

    iget-object v4, v6, Lcom/jhlabs/math/CellularFunction2D;->results:[Lcom/jhlabs/math/CellularFunction2D$Point;

    aget-object v4, v4, v7

    iget v4, v4, Lcom/jhlabs/math/CellularFunction2D$Point;->x:F

    sub-float/2addr v10, v4

    float-to-double v4, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v1, v0

    :cond_8
    return v1
.end method

.method public getCoefficient(I)F
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/jhlabs/math/CellularFunction2D;->coefficients:[F

    aget p1, v0, p1

    return p1
.end method

.method public setCoefficient(IF)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jhlabs/math/CellularFunction2D;->coefficients:[F

    aput p2, v0, p1

    return-void
.end method
