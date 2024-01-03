.class public Lcom/jhlabs/image/EdgeFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "EdgeFilter.java"


# static fields
.field public static FREI_CHEN_H:[F = null

.field public static final FREI_CHEN_V:[F

.field public static final PREWITT_H:[F

.field public static final PREWITT_V:[F

.field public static final R2:F

.field public static final ROBERTS_H:[F

.field public static final ROBERTS_V:[F

.field public static SOBEL_H:[F = null

.field public static final SOBEL_V:[F

.field static final serialVersionUID:J = -0xf0b92fe1c8a667dL


# instance fields
.field protected hEdgeMatrix:[F

.field protected vEdgeMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/jhlabs/image/EdgeFilter;->R2:F

    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 31
    fill-array-data v1, :array_0

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->ROBERTS_V:[F

    new-array v1, v0, [F

    .line 36
    fill-array-data v1, :array_1

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->ROBERTS_H:[F

    new-array v1, v0, [F

    .line 41
    fill-array-data v1, :array_2

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->PREWITT_V:[F

    new-array v1, v0, [F

    .line 46
    fill-array-data v1, :array_3

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->PREWITT_H:[F

    new-array v1, v0, [F

    .line 51
    fill-array-data v1, :array_4

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->SOBEL_V:[F

    new-array v1, v0, [F

    .line 56
    fill-array-data v1, :array_5

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->SOBEL_H:[F

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v1, v4

    const/4 v6, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v1, v6

    .line 61
    sget v8, Lcom/jhlabs/image/EdgeFilter;->R2:F

    neg-float v9, v8

    const/4 v10, 0x3

    aput v9, v1, v10

    const/4 v9, 0x4

    aput v5, v1, v9

    const/4 v11, 0x5

    aput v8, v1, v11

    const/4 v12, 0x6

    aput v3, v1, v12

    const/4 v13, 0x7

    aput v5, v1, v13

    const/16 v14, 0x8

    aput v7, v1, v14

    sput-object v1, Lcom/jhlabs/image/EdgeFilter;->FREI_CHEN_V:[F

    new-array v0, v0, [F

    aput v3, v0, v2

    neg-float v1, v8

    aput v1, v0, v4

    aput v3, v0, v6

    aput v5, v0, v10

    aput v5, v0, v9

    aput v5, v0, v11

    aput v7, v0, v12

    aput v8, v0, v13

    aput v7, v0, v14

    .line 66
    sput-object v0, Lcom/jhlabs/image/EdgeFilter;->FREI_CHEN_H:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40000000    # -2.0f
        0x0
        0x40000000    # 2.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        -0x40000000    # -2.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    .line 72
    sget-object v0, Lcom/jhlabs/image/EdgeFilter;->SOBEL_V:[F

    iput-object v0, p0, Lcom/jhlabs/image/EdgeFilter;->vEdgeMatrix:[F

    .line 73
    sget-object v0, Lcom/jhlabs/image/EdgeFilter;->SOBEL_H:[F

    iput-object v0, p0, Lcom/jhlabs/image/EdgeFilter;->hEdgeMatrix:[F

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    mul-int v3, v1, v2

    .line 96
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    mul-int v8, v5, v1

    add-int v9, v8, v6

    .line 103
    aget v9, p3, v9

    const/high16 v10, -0x1000000

    and-int/2addr v9, v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_2
    const/4 v4, 0x1

    if-gt v11, v4, :cond_4

    add-int v10, v5, v11

    if-ltz v10, :cond_0

    if-ge v10, v2, :cond_0

    mul-int v10, v10, v1

    goto :goto_3

    :cond_0
    move v10, v8

    :goto_3
    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v18, v11, 0x3

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v17

    move/from16 v17, v15

    move v15, v13

    move v13, v12

    const/4 v12, -0x1

    :goto_4
    if-gt v12, v4, :cond_3

    add-int v4, v6, v12

    if-ltz v4, :cond_1

    if-lt v4, v1, :cond_2

    :cond_1
    move v4, v6

    :cond_2
    add-int/2addr v4, v10

    .line 117
    aget v4, p3, v4

    .line 118
    iget-object v1, v0, Lcom/jhlabs/image/EdgeFilter;->hEdgeMatrix:[F

    add-int v20, v18, v12

    aget v1, v1, v20

    .line 119
    iget-object v2, v0, Lcom/jhlabs/image/EdgeFilter;->vEdgeMatrix:[F

    aget v2, v2, v20

    const/high16 v20, 0xff0000

    and-int v20, v4, v20

    shr-int/lit8 v0, v20, 0x10

    const v20, 0xff00

    and-int v20, v4, v20

    move/from16 v21, v8

    shr-int/lit8 v8, v20, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v0, v0

    move/from16 v20, v10

    mul-float v10, v1, v0

    float-to-int v10, v10

    add-int/2addr v13, v10

    int-to-float v8, v8

    mul-float v10, v1, v8

    float-to-int v10, v10

    add-int/2addr v14, v10

    int-to-float v4, v4

    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v16, v16, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v15, v0

    mul-float v8, v8, v2

    float-to-int v0, v8

    add-int v17, v17, v0

    mul-float v2, v2, v4

    float-to-int v0, v2

    add-int v19, v19, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v10, v20

    move/from16 v8, v21

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v12, v13

    move v13, v15

    move/from16 v15, v17

    move/from16 v17, v19

    goto :goto_2

    :cond_4
    mul-int v12, v12, v12

    mul-int v13, v13, v13

    add-int/2addr v12, v13

    int-to-double v0, v12

    .line 132
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v0, v10

    double-to-int v0, v0

    mul-int v14, v14, v14

    mul-int v15, v15, v15

    add-int/2addr v14, v15

    int-to-double v1, v14

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v1, v10

    double-to-int v1, v1

    mul-int v16, v16, v16

    mul-int v17, v17, v17

    add-int v2, v16, v17

    int-to-double v12, v2

    .line 134
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double/2addr v12, v10

    double-to-int v2, v12

    .line 135
    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    .line 136
    invoke-static {v1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    .line 137
    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    add-int/lit8 v4, v7, 0x1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v9

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    .line 138
    aput v0, v3, v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v7, v4

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v6, v7

    goto/16 :goto_0

    :cond_6
    return-object v3
.end method

.method public getHEdgeMatrix()[F
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/jhlabs/image/EdgeFilter;->hEdgeMatrix:[F

    return-object v0
.end method

.method public getVEdgeMatrix()[F
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/jhlabs/image/EdgeFilter;->vEdgeMatrix:[F

    return-object v0
.end method

.method public setHEdgeMatrix([F)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/jhlabs/image/EdgeFilter;->hEdgeMatrix:[F

    return-void
.end method

.method public setVEdgeMatrix([F)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jhlabs/image/EdgeFilter;->vEdgeMatrix:[F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Detect Edges"

    return-object v0
.end method
