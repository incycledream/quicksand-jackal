.class public Lcom/jhlabs/image/DiffuseFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "DiffuseFilter.java"


# instance fields
.field public cosTable:[F

.field public scale:F

.field public sinTable:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 29
    iput v0, p0, Lcom/jhlabs/image/DiffuseFilter;->scale:F

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/DiffuseFilter;->setEdgeAction(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [F

    .line 51
    iput-object v1, p0, Lcom/jhlabs/image/DiffuseFilter;->sinTable:[F

    new-array v1, v0, [F

    .line 52
    iput-object v1, p0, Lcom/jhlabs/image/DiffuseFilter;->cosTable:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const v2, 0x40c90fdb

    int-to-float v3, v1

    mul-float v3, v3, v2

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v3, v2

    .line 55
    iget-object v2, p0, Lcom/jhlabs/image/DiffuseFilter;->sinTable:[F

    iget v4, p0, Lcom/jhlabs/image/DiffuseFilter;->scale:F

    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v8

    double-to-float v3, v4

    aput v3, v2, v1

    .line 56
    iget-object v2, p0, Lcom/jhlabs/image/DiffuseFilter;->cosTable:[F

    iget v3, p0, Lcom/jhlabs/image/DiffuseFilter;->scale:F

    float-to-double v3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getScale()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/jhlabs/image/DiffuseFilter;->scale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jhlabs/image/DiffuseFilter;->scale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Diffuse..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .line 44
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 45
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    int-to-float p1, p1

    .line 46
    iget-object v2, p0, Lcom/jhlabs/image/DiffuseFilter;->sinTable:[F

    aget v2, v2, v0

    mul-float v2, v2, v1

    add-float/2addr p1, v2

    const/4 v2, 0x0

    aput p1, p3, v2

    int-to-float p1, p2

    .line 47
    iget-object p2, p0, Lcom/jhlabs/image/DiffuseFilter;->cosTable:[F

    aget p2, p2, v0

    mul-float v1, v1, p2

    add-float/2addr p1, v1

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method
