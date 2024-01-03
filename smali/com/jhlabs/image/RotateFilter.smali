.class public Lcom/jhlabs/image/RotateFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "RotateFilter.java"


# static fields
.field static final serialVersionUID:J = 0x102fcba4adf52974L


# instance fields
.field private angle:F

.field private cos:F

.field private resize:Z

.field private sin:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x40490fdb    # (float)Math.PI

    .line 31
    invoke-direct {p0, v0}, Lcom/jhlabs/image/RotateFilter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/jhlabs/image/RotateFilter;-><init>(FZ)V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jhlabs/image/RotateFilter;->resize:Z

    .line 39
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/RotateFilter;->setAngle(F)V

    .line 40
    iput-boolean p2, p0, Lcom/jhlabs/image/RotateFilter;->resize:Z

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .line 50
    iget v0, p0, Lcom/jhlabs/image/RotateFilter;->angle:F

    return v0
.end method

.method public setAngle(F)V
    .locals 2

    .line 44
    iput p1, p0, Lcom/jhlabs/image/RotateFilter;->angle:F

    .line 45
    iget p1, p0, Lcom/jhlabs/image/RotateFilter;->angle:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/RotateFilter;->cos:F

    .line 46
    iget p1, p0, Lcom/jhlabs/image/RotateFilter;->angle:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/RotateFilter;->sin:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jhlabs/image/RotateFilter;->angle:F

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(IILjava/awt/Point;)V
    .locals 4

    int-to-float p1, p1

    .line 86
    iget v0, p0, Lcom/jhlabs/image/RotateFilter;->cos:F

    mul-float v1, p1, v0

    int-to-float p2, p2

    iget v2, p0, Lcom/jhlabs/image/RotateFilter;->sin:F

    mul-float v3, p2, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p3, Ljava/awt/Point;->x:I

    mul-float p2, p2, v0

    mul-float p1, p1, v2

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 87
    iput p1, p3, Ljava/awt/Point;->y:I

    return-void
.end method

.method protected transformInverse(II[F)V
    .locals 4

    int-to-float p1, p1

    .line 91
    iget v0, p0, Lcom/jhlabs/image/RotateFilter;->cos:F

    mul-float v1, p1, v0

    int-to-float p2, p2

    iget v2, p0, Lcom/jhlabs/image/RotateFilter;->sin:F

    mul-float v3, p2, v2

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, p3, v3

    mul-float p2, p2, v0

    mul-float p1, p1, v2

    add-float/2addr p2, p1

    const/4 p1, 0x1

    .line 92
    aput p2, p3, p1

    return-void
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 12

    .line 54
    iget-boolean v0, p0, Lcom/jhlabs/image/RotateFilter;->resize:Z

    if-eqz v0, :cond_5

    .line 55
    new-instance v0, Ljava/awt/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Point;-><init>(II)V

    .line 60
    iget v2, p1, Ljava/awt/Rectangle;->width:I

    .line 61
    iget v3, p1, Ljava/awt/Rectangle;->height:I

    .line 62
    iget v4, p1, Ljava/awt/Rectangle;->x:I

    .line 63
    iget v5, p1, Ljava/awt/Rectangle;->y:I

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const v6, 0x7fffffff

    const/high16 v8, -0x80000000

    const/high16 v9, -0x80000000

    :goto_0
    const/4 v10, 0x4

    if-ge v1, v10, :cond_4

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    if-eq v1, v10, :cond_2

    const/4 v10, 0x2

    if-eq v1, v10, :cond_1

    const/4 v10, 0x3

    if-eq v1, v10, :cond_0

    goto :goto_1

    :cond_0
    add-int v10, v4, v2

    add-int v11, v5, v3

    .line 70
    invoke-virtual {p0, v10, v11, v0}, Lcom/jhlabs/image/RotateFilter;->transform(IILjava/awt/Point;)V

    goto :goto_1

    :cond_1
    add-int v10, v5, v3

    .line 69
    invoke-virtual {p0, v4, v10, v0}, Lcom/jhlabs/image/RotateFilter;->transform(IILjava/awt/Point;)V

    goto :goto_1

    :cond_2
    add-int v10, v4, v2

    .line 68
    invoke-virtual {p0, v10, v5, v0}, Lcom/jhlabs/image/RotateFilter;->transform(IILjava/awt/Point;)V

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {p0, v4, v5, v0}, Lcom/jhlabs/image/RotateFilter;->transform(IILjava/awt/Point;)V

    .line 72
    :goto_1
    iget v10, v0, Ljava/awt/Point;->x:I

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 73
    iget v10, v0, Ljava/awt/Point;->y:I

    invoke-static {v6, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 74
    iget v10, v0, Ljava/awt/Point;->x:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 75
    iget v10, v0, Ljava/awt/Point;->y:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_4
    iput v7, p1, Ljava/awt/Rectangle;->x:I

    .line 79
    iput v6, p1, Ljava/awt/Rectangle;->y:I

    .line 80
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v8, v0

    iput v8, p1, Ljava/awt/Rectangle;->width:I

    .line 81
    iget v0, p1, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v9, v0

    iput v9, p1, Ljava/awt/Rectangle;->height:I

    :cond_5
    return-void
.end method
