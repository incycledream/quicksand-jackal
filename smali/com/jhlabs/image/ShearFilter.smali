.class public Lcom/jhlabs/image/ShearFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "ShearFilter.java"


# instance fields
.field private resize:Z

.field private shx:F

.field private shy:F

.field private xangle:F

.field private xoffset:F

.field private yangle:F

.field private yoffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->xangle:F

    .line 25
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->yangle:F

    .line 26
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->shx:F

    .line 27
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->shy:F

    .line 28
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->xoffset:F

    .line 29
    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->yoffset:F

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/jhlabs/image/ShearFilter;->resize:Z

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->xangle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->shx:F

    .line 63
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->yangle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/ShearFilter;->shy:F

    return-void
.end method


# virtual methods
.method public getXAngle()F
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->xangle:F

    return v0
.end method

.method public getYAngle()F
    .locals 1

    .line 58
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->yangle:F

    return v0
.end method

.method public isResize()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/jhlabs/image/ShearFilter;->resize:Z

    return v0
.end method

.method public setResize(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/jhlabs/image/ShearFilter;->resize:Z

    return-void
.end method

.method public setXAngle(F)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/ShearFilter;->xangle:F

    .line 45
    invoke-direct {p0}, Lcom/jhlabs/image/ShearFilter;->initialize()V

    return-void
.end method

.method public setYAngle(F)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/ShearFilter;->yangle:F

    .line 54
    invoke-direct {p0}, Lcom/jhlabs/image/ShearFilter;->initialize()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Shear..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 2

    int-to-float p1, p1

    .line 130
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->xoffset:F

    add-float/2addr v0, p1

    int-to-float p2, p2

    iget v1, p0, Lcom/jhlabs/image/ShearFilter;->shx:F

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 131
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->yoffset:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->shy:F

    mul-float p1, p1, v0

    add-float/2addr p2, p1

    const/4 p1, 0x1

    aput p2, p3, p1

    return-void
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 7

    .line 67
    iget v0, p0, Lcom/jhlabs/image/ShearFilter;->xangle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 68
    iget v1, p1, Ljava/awt/Rectangle;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/jhlabs/image/ShearFilter;->xoffset:F

    float-to-double v1, v0

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    neg-float v0, v0

    .line 71
    :cond_0
    iget v1, p1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    iget v0, p1, Ljava/awt/Rectangle;->width:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const v0, 0x3f7fffef    # 0.999999f

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p1, Ljava/awt/Rectangle;->width:I

    .line 72
    iget v1, p0, Lcom/jhlabs/image/ShearFilter;->yangle:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 73
    iget v2, p1, Ljava/awt/Rectangle;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    iput v2, p0, Lcom/jhlabs/image/ShearFilter;->yoffset:F

    float-to-double v5, v1

    cmpg-double v2, v5, v3

    if-gez v2, :cond_1

    neg-float v1, v1

    .line 76
    :cond_1
    iget v2, p1, Ljava/awt/Rectangle;->width:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    iget v1, p1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Ljava/awt/Rectangle;->height:I

    return-void
.end method
