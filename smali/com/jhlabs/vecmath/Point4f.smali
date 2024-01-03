.class public Lcom/jhlabs/vecmath/Point4f;
.super Lcom/jhlabs/vecmath/Tuple4f;
.source "Point4f.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/jhlabs/vecmath/Point4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 36
    iput p1, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    .line 37
    iput p2, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    .line 38
    iput p3, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    .line 39
    iput p4, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Point4f;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 43
    iget v0, p1, Lcom/jhlabs/vecmath/Point4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    .line 44
    iget v0, p1, Lcom/jhlabs/vecmath/Point4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/Point4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    .line 46
    iget p1, p1, Lcom/jhlabs/vecmath/Point4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 50
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    .line 51
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    .line 52
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    .line 53
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    const/4 v0, 0x0

    .line 29
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    const/4 v0, 0x1

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    const/4 v0, 0x2

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    const/4 v0, 0x3

    .line 32
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    return-void
.end method


# virtual methods
.method public distance(Lcom/jhlabs/vecmath/Point4f;)F
    .locals 4

    .line 69
    iget v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Point4f;->x:F

    sub-float/2addr v0, v1

    .line 70
    iget v1, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    iget v2, p1, Lcom/jhlabs/vecmath/Point4f;->y:F

    sub-float/2addr v1, v2

    .line 71
    iget v2, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    iget v3, p1, Lcom/jhlabs/vecmath/Point4f;->z:F

    sub-float/2addr v2, v3

    .line 72
    iget v3, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    iget p1, p1, Lcom/jhlabs/vecmath/Point4f;->w:F

    sub-float/2addr v3, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    mul-float v3, v3, v3

    add-float/2addr v0, v3

    float-to-double v0, v0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public distanceL1(Lcom/jhlabs/vecmath/Point4f;)F
    .locals 3

    .line 57
    iget v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Point4f;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    iget v2, p1, Lcom/jhlabs/vecmath/Point4f;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    iget v2, p1, Lcom/jhlabs/vecmath/Point4f;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    iget p1, p1, Lcom/jhlabs/vecmath/Point4f;->w:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    add-float/2addr v0, p1

    return v0
.end method

.method public distanceSquared(Lcom/jhlabs/vecmath/Point4f;)F
    .locals 4

    .line 61
    iget v0, p0, Lcom/jhlabs/vecmath/Point4f;->x:F

    iget v1, p1, Lcom/jhlabs/vecmath/Point4f;->x:F

    sub-float/2addr v0, v1

    .line 62
    iget v1, p0, Lcom/jhlabs/vecmath/Point4f;->y:F

    iget v2, p1, Lcom/jhlabs/vecmath/Point4f;->y:F

    sub-float/2addr v1, v2

    .line 63
    iget v2, p0, Lcom/jhlabs/vecmath/Point4f;->z:F

    iget v3, p1, Lcom/jhlabs/vecmath/Point4f;->z:F

    sub-float/2addr v2, v3

    .line 64
    iget v3, p0, Lcom/jhlabs/vecmath/Point4f;->w:F

    iget p1, p1, Lcom/jhlabs/vecmath/Point4f;->w:F

    sub-float/2addr v3, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    mul-float v3, v3, v3

    add-float/2addr v0, v3

    return v0
.end method
