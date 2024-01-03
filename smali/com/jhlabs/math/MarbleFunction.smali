.class public Lcom/jhlabs/math/MarbleFunction;
.super Lcom/jhlabs/math/CompoundFunction2D;
.source "MarbleFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/jhlabs/math/TurbulenceFunction;

    new-instance v1, Lcom/jhlabs/math/Noise;

    invoke-direct {v1}, Lcom/jhlabs/math/Noise;-><init>()V

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-direct {v0, v1, v2}, Lcom/jhlabs/math/TurbulenceFunction;-><init>(Lcom/jhlabs/math/Function2D;F)V

    invoke-direct {p0, v0}, Lcom/jhlabs/math/CompoundFunction2D;-><init>(Lcom/jhlabs/math/Function2D;)V

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/jhlabs/math/CompoundFunction2D;-><init>(Lcom/jhlabs/math/Function2D;)V

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/jhlabs/math/MarbleFunction;->basis:Lcom/jhlabs/math/Function2D;

    invoke-interface {v0, p1, p2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result p1

    float-to-double p1, p1

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    const-wide v0, 0x3fe8a3d70a3d70a4L    # 0.77

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method
