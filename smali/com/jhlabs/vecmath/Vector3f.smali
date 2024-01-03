.class public Lcom/jhlabs/vecmath/Vector3f;
.super Lcom/jhlabs/vecmath/Tuple3f;
.source "Vector3f.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0, v0}, Lcom/jhlabs/vecmath/Vector3f;-><init>(FFF)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple3f;-><init>()V

    .line 35
    iput p1, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 36
    iput p2, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 37
    iput p3, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple3f;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple3f;-><init>()V

    .line 47
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 48
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 49
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Vector3f;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple3f;-><init>()V

    .line 41
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 42
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 43
    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iput p1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple3f;-><init>()V

    const/4 v0, 0x0

    .line 29
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    const/4 v0, 0x1

    .line 30
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    const/4 v0, 0x2

    .line 31
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method


# virtual methods
.method public angle(Lcom/jhlabs/vecmath/Vector3f;)F
    .locals 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/jhlabs/vecmath/Vector3f;->dot(Lcom/jhlabs/vecmath/Vector3f;)F

    move-result v0

    invoke-virtual {p0}, Lcom/jhlabs/vecmath/Vector3f;->length()F

    move-result v1

    invoke-virtual {p1}, Lcom/jhlabs/vecmath/Vector3f;->length()F

    move-result p1

    mul-float v1, v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public cross(Lcom/jhlabs/vecmath/Vector3f;Lcom/jhlabs/vecmath/Vector3f;)V
    .locals 3

    .line 61
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v1, p2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float v0, v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v2, p2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 62
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v1, p2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v2, p2, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 63
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v1, p2, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v0, v0, v1

    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget p2, p2, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float p1, p1, p2

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method

.method public dot(Lcom/jhlabs/vecmath/Vector3f;)F
    .locals 3

    .line 57
    iget v0, p1, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float v0, v0, v1

    iget v1, p1, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public length()F
    .locals 3

    .line 67
    iget v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public normalize()V
    .locals 3

    .line 71
    iget v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    iget v2, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    iget v2, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 72
    iget v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->x:F

    .line 73
    iget v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->y:F

    .line 74
    iget v0, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/jhlabs/vecmath/Vector3f;->z:F

    return-void
.end method
