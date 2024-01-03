.class public Lcom/jhlabs/image/GradientFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "GradientFilter.java"


# static fields
.field public static final BICONICAL:I = 0x4

.field public static final BILINEAR:I = 0x1

.field public static final CONICAL:I = 0x3

.field public static final INT_CIRCLE_DOWN:I = 0x2

.field public static final INT_CIRCLE_UP:I = 0x1

.field public static final INT_LINEAR:I = 0x0

.field public static final INT_SMOOTH:I = 0x3

.field public static final LINEAR:I = 0x0

.field public static final RADIAL:I = 0x2

.field public static final SQUARE:I = 0x5


# instance fields
.field private angle:F

.field private color1:I

.field private color2:I

.field private colormap:Lcom/jhlabs/image/Colormap;

.field private dx:F

.field private dy:F

.field private interpolation:I

.field private p1:Ljava/awt/Point;

.field private p2:Ljava/awt/Point;

.field private paintMode:I

.field private repeat:Z

.field private type:I

.field private x1:F

.field private y1:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->angle:F

    const/high16 v0, -0x1000000

    .line 42
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->color1:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->color2:I

    .line 44
    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    new-instance v0, Ljava/awt/Point;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    .line 45
    iput-boolean v1, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 52
    iput v1, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    return-void
.end method

.method public constructor <init>(Ljava/awt/Point;Ljava/awt/Point;IIZII)V
    .locals 3

    .line 58
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->angle:F

    const/high16 v0, -0x1000000

    .line 42
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->color1:I

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->color2:I

    .line 44
    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    new-instance v0, Ljava/awt/Point;

    const/16 v2, 0x40

    invoke-direct {v0, v2, v2}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    .line 45
    iput-boolean v1, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    .line 52
    iput v1, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    const/4 v0, 0x1

    .line 53
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    .line 59
    iput-object p1, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    .line 60
    iput-object p2, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    .line 61
    iput p3, p0, Lcom/jhlabs/image/GradientFilter;->color1:I

    .line 62
    iput p4, p0, Lcom/jhlabs/image/GradientFilter;->color2:I

    .line 63
    iput-boolean p5, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    .line 64
    iput p6, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    .line 65
    iput p7, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    .line 66
    new-instance p1, Lcom/jhlabs/image/LinearColormap;

    invoke-direct {p1, p3, p4}, Lcom/jhlabs/image/LinearColormap;-><init>(II)V

    iput-object p1, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method private conicalGradient([IIII)V
    .locals 6

    .line 291
    iget-object p4, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget p4, p4, Ljava/awt/Point;->x:I

    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->x:I

    sub-int/2addr p4, v0

    int-to-double v0, p4

    iget-object p4, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget p4, p4, Ljava/awt/Point;->y:I

    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->y:I

    sub-int/2addr p4, v2

    int-to-double v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p4, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 293
    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->x:I

    sub-int v2, v0, v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v4, v4, Ljava/awt/Point;->y:I

    sub-int v4, p2, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    float-to-double v4, p4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-float v2, v2

    const v3, 0x40c90fdb

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    rem-float/2addr v2, v3

    .line 296
    iget v3, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 297
    invoke-static {v2}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v2

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-direct {p0, v2}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v2

    invoke-interface {v3, v2}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v2

    .line 299
    aget v3, p1, v1

    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v2, v3, v4}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private distance(FF)F
    .locals 0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 322
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private linearGradient([IIII)V
    .locals 8

    const/4 v0, 0x0

    int-to-float v0, v0

    .line 250
    iget v1, p0, Lcom/jhlabs/image/GradientFilter;->x1:F

    sub-float/2addr v0, v1

    iget v6, p0, Lcom/jhlabs/image/GradientFilter;->dx:F

    mul-float v0, v0, v6

    int-to-float p2, p2

    iget v1, p0, Lcom/jhlabs/image/GradientFilter;->y1:F

    sub-float/2addr p2, v1

    iget v7, p0, Lcom/jhlabs/image/GradientFilter;->dy:F

    mul-float p2, p2, v7

    add-float v5, v0, p2

    .line 251
    iget-boolean p2, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    if-eqz p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    .line 252
    invoke-direct/range {v1 .. v7}, Lcom/jhlabs/image/GradientFilter;->repeatGradient([IIIFFF)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    .line 254
    invoke-direct/range {v1 .. v7}, Lcom/jhlabs/image/GradientFilter;->singleGradient([IIIFFF)V

    :goto_0
    return-void
.end method

.method private map(F)F
    .locals 5

    .line 305
    iget-boolean v0, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    sub-float p1, v0, p1

    .line 307
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {v3, v2, p1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p1

    goto :goto_0

    .line 312
    :cond_2
    invoke-static {p1, v3, v2}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    invoke-static {p1}, Lcom/jhlabs/image/ImageMath;->circleDown(F)F

    move-result p1

    goto :goto_0

    .line 309
    :cond_3
    invoke-static {p1, v3, v2}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    invoke-static {p1}, Lcom/jhlabs/image/ImageMath;->circleUp(F)F

    move-result p1

    :goto_0
    return p1
.end method

.method private radialGradient([IIII)V
    .locals 8

    .line 259
    iget-object p4, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget p4, p4, Ljava/awt/Point;->x:I

    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->x:I

    sub-int/2addr p4, v0

    int-to-float p4, p4

    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->y:I

    iget-object v1, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, p4, v0}, Lcom/jhlabs/image/GradientFilter;->distance(FF)F

    move-result p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 261
    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->x:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v3, v3, Ljava/awt/Point;->y:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-direct {p0, v2, v3}, Lcom/jhlabs/image/GradientFilter;->distance(FF)F

    move-result v2

    div-float/2addr v2, p4

    .line 263
    iget-boolean v3, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    rem-float/2addr v2, v3

    goto :goto_1

    :cond_0
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 267
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-direct {p0, v2}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v2

    invoke-interface {v3, v2}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v2

    .line 268
    aget v3, p1, v1

    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v2, v3, v4}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private repeatGradient([IIIFFF)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    move v2, p4

    move v3, v1

    move v1, p2

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 199
    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 200
    iget-object v4, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-static {v2}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v5

    invoke-interface {v4, v5}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v4

    goto :goto_2

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/jhlabs/image/ImageMath;->mod(FF)F

    move-result v5

    invoke-direct {p0, v5}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v5

    invoke-interface {v4, v5}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v4

    .line 203
    :goto_2
    aget v5, p1, v3

    iget v6, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v4, v5, v6}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-float/2addr v2, p5

    goto :goto_1

    :cond_1
    add-float/2addr p4, p6

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private singleGradient([IIIFFF)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v1, p3

    move/from16 v3, p4

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    float-to-double v5, v3

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    cmpg-double v11, v5, v8

    if-gtz v11, :cond_1

    .line 218
    iget-object v5, v0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-interface {v5, v7}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v5

    move/from16 v11, p2

    move v6, v3

    .line 220
    :cond_0
    aget v12, p1, v4

    iget v13, v0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v5, v12, v13}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v12

    aput v12, p1, v4

    add-int/2addr v4, v10

    add-float v6, v6, p5

    add-int/lit8 v11, v11, -0x1

    if-lez v11, :cond_2

    float-to-double v12, v6

    cmpg-double v14, v12, v8

    if-lez v14, :cond_0

    goto :goto_1

    :cond_1
    move/from16 v11, p2

    move v6, v3

    :cond_2
    :goto_1
    float-to-double v8, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v8, v12

    if-gez v5, :cond_4

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_4

    .line 226
    iget v5, v0, Lcom/jhlabs/image/GradientFilter;->type:I

    if-ne v5, v10, :cond_3

    .line 227
    iget-object v5, v0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-static {v6}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result v8

    invoke-direct {p0, v8}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v8

    invoke-interface {v5, v8}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v5

    goto :goto_2

    .line 229
    :cond_3
    iget-object v5, v0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-direct {p0, v6}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v8

    invoke-interface {v5, v8}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v5

    .line 230
    :goto_2
    aget v8, p1, v4

    iget v9, v0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v5, v8, v9}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v5

    aput v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    add-float v6, v6, p5

    goto :goto_1

    :cond_4
    if-lez v11, :cond_7

    .line 235
    iget v5, v0, Lcom/jhlabs/image/GradientFilter;->type:I

    if-ne v5, v10, :cond_5

    .line 236
    iget-object v5, v0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-interface {v5, v7}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v5

    goto :goto_3

    .line 238
    :cond_5
    iget-object v5, v0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-interface {v5, v6}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v5

    .line 240
    :cond_6
    :goto_3
    aget v6, p1, v4

    iget v7, v0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v5, v6, v7}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v6

    aput v6, p1, v4

    add-int/2addr v4, v10

    add-int/lit8 v11, v11, -0x1

    if-gtz v11, :cond_6

    :cond_7
    add-float v3, v3, p6

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private squareGradient([IIII)V
    .locals 8

    .line 275
    iget-object p4, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget p4, p4, Ljava/awt/Point;->x:I

    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->x:I

    sub-int/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->y:I

    iget-object v1, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->y:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 277
    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->x:I

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v3, v3, Ljava/awt/Point;->y:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p4

    .line 279
    iget-boolean v3, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    rem-float/2addr v2, v3

    goto :goto_1

    :cond_0
    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-lez v7, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 283
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    invoke-direct {p0, v2}, Lcom/jhlabs/image/GradientFilter;->map(F)F

    move-result v2

    invoke-interface {v3, v2}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result v2

    .line 284
    aget v3, p1, v1

    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    invoke-static {v2, v3, v4}, Lcom/jhlabs/image/PixelUtils;->combinePixels(III)I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 13

    .line 127
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 128
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/GradientFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v0, v0, Ljava/awt/Point;->x:I

    int-to-float v0, v0

    .line 136
    iget-object v1, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget v1, v1, Ljava/awt/Point;->x:I

    int-to-float v1, v1

    const/4 v9, 0x2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 138
    iget v2, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    if-eq v2, v9, :cond_1

    .line 142
    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->y:I

    int-to-float v2, v2

    .line 143
    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v3, v3, Ljava/awt/Point;->y:I

    int-to-float v3, v3

    .line 144
    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->color2:I

    .line 145
    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->color1:I

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    iget v2, v2, Ljava/awt/Point;->y:I

    int-to-float v2, v2

    .line 148
    iget-object v3, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    iget v3, v3, Ljava/awt/Point;->y:I

    int-to-float v3, v3

    .line 149
    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->color1:I

    .line 150
    iget v4, p0, Lcom/jhlabs/image/GradientFilter;->color2:I

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_0
    sub-float/2addr v0, v1

    sub-float/2addr v3, v2

    mul-float v4, v0, v0

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 155
    iput v1, p0, Lcom/jhlabs/image/GradientFilter;->x1:F

    .line 156
    iput v2, p0, Lcom/jhlabs/image/GradientFilter;->y1:F

    const/4 v1, 0x1

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_2

    div-float/2addr v0, v4

    div-float/2addr v3, v4

    .line 160
    iget-boolean v1, p0, Lcom/jhlabs/image/GradientFilter;->repeat:Z

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float/2addr v0, v1

    rem-float/2addr v3, v1

    .line 165
    :cond_2
    iput v0, p0, Lcom/jhlabs/image/GradientFilter;->dx:F

    .line 166
    iput v3, p0, Lcom/jhlabs/image/GradientFilter;->dy:F

    .line 168
    new-array v10, v7, [I

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_7

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v11

    move v4, v7

    move-object v6, v10

    .line 170
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GradientFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    .line 171
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    if-eq v0, v9, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    goto :goto_2

    .line 184
    :cond_3
    invoke-direct {p0, v10, v11, v7, v1}, Lcom/jhlabs/image/GradientFilter;->squareGradient([IIII)V

    goto :goto_2

    .line 181
    :cond_4
    invoke-direct {p0, v10, v11, v7, v1}, Lcom/jhlabs/image/GradientFilter;->conicalGradient([IIII)V

    goto :goto_2

    .line 177
    :cond_5
    invoke-direct {p0, v10, v11, v7, v1}, Lcom/jhlabs/image/GradientFilter;->radialGradient([IIII)V

    goto :goto_2

    .line 174
    :cond_6
    invoke-direct {p0, v10, v11, v7, v1}, Lcom/jhlabs/image/GradientFilter;->linearGradient([IIII)V

    :goto_2
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, v11

    move v4, v7

    move-object v6, v10

    .line 187
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/GradientFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    return-object p2
.end method

.method public getAngle()F
    .locals 1

    .line 107
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->angle:F

    return v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getInterpolation()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    return v0
.end method

.method public getPaintMode()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    return v0
.end method

.method public getPoint1()Ljava/awt/Point;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    return-object v0
.end method

.method public getPoint2()Ljava/awt/Point;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    return v0
.end method

.method public setAngle(F)V
    .locals 7

    .line 102
    iput p1, p0, Lcom/jhlabs/image/GradientFilter;->angle:F

    .line 103
    new-instance v0, Ljava/awt/Point;

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4050000000000000L    # 64.0

    mul-double v3, v3, v5

    double-to-int p1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double v1, v1, v5

    double-to-int v1, v1

    invoke-direct {v0, p1, v1}, Ljava/awt/Point;-><init>(II)V

    iput-object v0, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/jhlabs/image/GradientFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setInterpolation(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/jhlabs/image/GradientFilter;->interpolation:I

    return-void
.end method

.method public setPaintMode(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/jhlabs/image/GradientFilter;->paintMode:I

    return-void
.end method

.method public setPoint1(Ljava/awt/Point;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/jhlabs/image/GradientFilter;->p1:Ljava/awt/Point;

    return-void
.end method

.method public setPoint2(Ljava/awt/Point;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jhlabs/image/GradientFilter;->p2:Ljava/awt/Point;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/jhlabs/image/GradientFilter;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Other/Gradient Fill..."

    return-object v0
.end method
