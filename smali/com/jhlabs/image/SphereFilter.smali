.class public Lcom/jhlabs/image/SphereFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "SphereFilter.java"


# static fields
.field static final serialVersionUID:J = -0x7114f2be9420fed7L


# instance fields
.field private a:F

.field private a2:F

.field private b:F

.field private b2:F

.field private centreX:F

.field private centreY:F

.field private icentreX:F

.field private icentreY:F

.field private refractionIndex:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->b:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->a2:F

    .line 30
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->b2:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 31
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    .line 32
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 33
    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->refractionIndex:F

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/SphereFilter;->setEdgeAction(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 40
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/SphereFilter;->setRadius(F)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 4

    .line 86
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 87
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    int-to-float v2, v0

    .line 88
    iget v3, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    mul-float v2, v2, v3

    iput v2, p0, Lcom/jhlabs/image/SphereFilter;->icentreX:F

    int-to-float v2, v1

    .line 89
    iget v3, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    mul-float v2, v2, v3

    iput v2, p0, Lcom/jhlabs/image/SphereFilter;->icentreY:F

    .line 90
    iget v2, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 91
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    .line 92
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->b:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 93
    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->b:F

    .line 94
    :cond_1
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->a2:F

    .line 95
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->b:F

    mul-float v0, v0, v0

    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->b2:F

    .line 96
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 82
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    return v0
.end method

.method public getRefractionIndex()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/SphereFilter;->refractionIndex:F

    return v0
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    .line 78
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->centreY:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->a:F

    .line 53
    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->b:F

    return-void
.end method

.method public setRefractionIndex(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/SphereFilter;->refractionIndex:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Sphere..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    int-to-float v1, v1

    .line 100
    iget v2, v0, Lcom/jhlabs/image/SphereFilter;->icentreX:F

    sub-float v2, v1, v2

    move/from16 v3, p2

    int-to-float v3, v3

    .line 101
    iget v4, v0, Lcom/jhlabs/image/SphereFilter;->icentreY:F

    sub-float v4, v3, v4

    mul-float v5, v2, v2

    mul-float v6, v4, v4

    .line 104
    iget v7, v0, Lcom/jhlabs/image/SphereFilter;->b2:F

    mul-float v8, v7, v5

    iget v9, v0, Lcom/jhlabs/image/SphereFilter;->a2:F

    div-float/2addr v8, v9

    sub-float v8, v7, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_0

    .line 105
    aput v1, p3, v11

    .line 106
    aput v3, p3, v10

    goto :goto_0

    .line 108
    :cond_0
    iget v8, v0, Lcom/jhlabs/image/SphereFilter;->refractionIndex:F

    const/high16 v12, 0x3f800000    # 1.0f

    div-float v8, v12, v8

    div-float v9, v5, v9

    sub-float/2addr v12, v9

    div-float v7, v6, v7

    sub-float/2addr v12, v7

    .line 110
    iget v7, v0, Lcom/jhlabs/image/SphereFilter;->a:F

    iget v9, v0, Lcom/jhlabs/image/SphereFilter;->b:F

    mul-float v7, v7, v9

    mul-float v12, v12, v7

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v7, v12

    mul-float v9, v7, v7

    float-to-double v12, v2

    add-float/2addr v5, v9

    float-to-double v14, v5

    .line 113
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    double-to-float v2, v12

    const v5, 0x3fc90fdb

    sub-float v2, v5, v2

    float-to-double v12, v2

    .line 115
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    float-to-double v14, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    double-to-float v8, v12

    sub-float/2addr v2, v8

    float-to-double v12, v2

    .line 117
    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    double-to-float v2, v12

    mul-float v2, v2, v7

    sub-float/2addr v1, v2

    aput v1, p3, v11

    float-to-double v1, v4

    add-float/2addr v6, v9

    float-to-double v8, v6

    .line 119
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v5, v1

    float-to-double v1, v5

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v14

    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v5, v1

    float-to-double v1, v5

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v7

    sub-float/2addr v3, v1

    aput v3, p3, v10

    :goto_0
    return-void
.end method
