.class public Lcom/jhlabs/image/PerspectiveFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "PerspectiveFilter.java"


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private dx1:F

.field private dx2:F

.field private dx3:F

.field private dy1:F

.field private dy2:F

.field private dy3:F

.field private x0:F

.field private x1:F

.field private x2:F

.field private x3:F

.field private y0:F

.field private y1:F

.field private y2:F

.field private y3:F


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    move-object v0, p0

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/jhlabs/image/PerspectiveFilter;-><init>(FFFFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p8}, Lcom/jhlabs/image/PerspectiveFilter;->setCorners(FFFFFFFF)V

    return-void
.end method


# virtual methods
.method public getOriginX()F
    .locals 4

    .line 94
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->x0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->x2:F

    iget v3, p0, Lcom/jhlabs/image/PerspectiveFilter;->x3:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getOriginY()F
    .locals 4

    .line 98
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->y0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->y1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->y2:F

    iget v3, p0, Lcom/jhlabs/image/PerspectiveFilter;->y3:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public setCorners(FFFFFFFF)V
    .locals 7

    .line 38
    iput p1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x0:F

    .line 39
    iput p2, p0, Lcom/jhlabs/image/PerspectiveFilter;->y0:F

    .line 40
    iput p3, p0, Lcom/jhlabs/image/PerspectiveFilter;->x1:F

    .line 41
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->y1:F

    .line 42
    iput p5, p0, Lcom/jhlabs/image/PerspectiveFilter;->x2:F

    .line 43
    iput p6, p0, Lcom/jhlabs/image/PerspectiveFilter;->y2:F

    .line 44
    iput p7, p0, Lcom/jhlabs/image/PerspectiveFilter;->x3:F

    .line 45
    iput p8, p0, Lcom/jhlabs/image/PerspectiveFilter;->y3:F

    sub-float v0, p3, p5

    .line 47
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx1:F

    sub-float v0, p4, p6

    .line 48
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy1:F

    sub-float v0, p7, p5

    .line 49
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx2:F

    sub-float v0, p8, p6

    .line 50
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy2:F

    sub-float v0, p1, p3

    add-float/2addr v0, p5

    sub-float/2addr v0, p7

    .line 51
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx3:F

    sub-float v0, p2, p4

    add-float/2addr v0, p6

    sub-float/2addr v0, p8

    .line 52
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy3:F

    .line 56
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx3:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy3:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    sub-float p7, p3, p1

    sub-float/2addr p5, p3

    sub-float p3, p4, p2

    sub-float/2addr p6, p4

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    iget p5, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx3:F

    iget p6, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy2:F

    mul-float v0, p5, p6

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx2:F

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy3:F

    mul-float v3, v1, v2

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/jhlabs/image/PerspectiveFilter;->dx1:F

    mul-float v4, v3, p6

    iget v5, p0, Lcom/jhlabs/image/PerspectiveFilter;->dy1:F

    mul-float v6, v5, v1

    sub-float/2addr v4, v6

    div-float/2addr v0, v4

    mul-float v2, v2, v3

    mul-float p5, p5, v5

    sub-float/2addr v2, p5

    mul-float v3, v3, p6

    mul-float v5, v5, v1

    sub-float/2addr v3, v5

    div-float v1, v2, v3

    sub-float p5, p3, p1

    mul-float p3, p3, v0

    add-float/2addr p3, p5

    sub-float p5, p7, p1

    mul-float p7, p7, v1

    add-float/2addr p5, p7

    sub-float p6, p4, p2

    mul-float p4, p4, v0

    add-float/2addr p4, p6

    sub-float p6, p8, p2

    mul-float p8, p8, v1

    add-float/2addr p6, p8

    move p7, p3

    move p3, p4

    :goto_0
    mul-float p4, p2, v1

    sub-float p4, p6, p4

    .line 75
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->A:F

    mul-float p4, p1, v1

    sub-float/2addr p4, p5

    .line 76
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->B:F

    mul-float p4, p5, p2

    mul-float p8, p1, p6

    sub-float/2addr p4, p8

    .line 77
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->C:F

    mul-float p4, p2, v0

    sub-float/2addr p4, p3

    .line 78
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->D:F

    mul-float p4, p1, v0

    sub-float p4, p7, p4

    .line 79
    iput p4, p0, Lcom/jhlabs/image/PerspectiveFilter;->E:F

    mul-float p1, p1, p3

    mul-float p2, p2, p7

    sub-float/2addr p1, p2

    .line 80
    iput p1, p0, Lcom/jhlabs/image/PerspectiveFilter;->F:F

    mul-float p1, p3, v1

    mul-float p2, p6, v0

    sub-float/2addr p1, p2

    .line 81
    iput p1, p0, Lcom/jhlabs/image/PerspectiveFilter;->G:F

    mul-float v0, v0, p5

    mul-float v1, v1, p7

    sub-float/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->H:F

    mul-float p7, p7, p6

    mul-float p5, p5, p3

    sub-float/2addr p7, p5

    .line 83
    iput p7, p0, Lcom/jhlabs/image/PerspectiveFilter;->I:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Perspective..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->originalSpace:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->A:F

    int-to-float p1, p1

    mul-float v1, v1, p1

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->B:F

    int-to-float p2, p2

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->C:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->G:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->H:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->I:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 145
    iget-object v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->originalSpace:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->D:F

    mul-float v1, v1, p1

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->E:F

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->F:F

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->G:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/PerspectiveFilter;->H:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    iget p1, p0, Lcom/jhlabs/image/PerspectiveFilter;->I:F

    add-float/2addr v1, p1

    div-float/2addr v0, v1

    const/4 p1, 0x1

    aput v0, p3, p1

    return-void
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 3

    .line 87
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->x0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x2:F

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->x3:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Ljava/awt/Rectangle;->x:I

    .line 88
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->y0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->y1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->y2:F

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->y3:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Ljava/awt/Rectangle;->y:I

    .line 89
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->x0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->x2:F

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->x3:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Ljava/awt/Rectangle;->x:I

    sub-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->width:I

    .line 90
    iget v0, p0, Lcom/jhlabs/image/PerspectiveFilter;->y0:F

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->y1:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/jhlabs/image/PerspectiveFilter;->y2:F

    iget v2, p0, Lcom/jhlabs/image/PerspectiveFilter;->y3:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->height:I

    return-void
.end method
