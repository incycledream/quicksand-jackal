.class public Lcom/jhlabs/math/TurbulenceFunction;
.super Lcom/jhlabs/math/CompoundFunction2D;
.source "TurbulenceFunction.java"


# instance fields
.field private octaves:F


# direct methods
.method public constructor <init>(Lcom/jhlabs/math/Function2D;F)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jhlabs/math/CompoundFunction2D;-><init>(Lcom/jhlabs/math/Function2D;)V

    .line 25
    iput p2, p0, Lcom/jhlabs/math/TurbulenceFunction;->octaves:F

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 39
    :goto_0
    iget v2, p0, Lcom/jhlabs/math/TurbulenceFunction;->octaves:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/jhlabs/math/TurbulenceFunction;->basis:Lcom/jhlabs/math/Function2D;

    mul-float v3, v1, p1

    mul-float v4, v1, p2

    invoke-interface {v2, v3, v4}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getOctaves()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/jhlabs/math/TurbulenceFunction;->octaves:F

    return v0
.end method

.method public setOctaves(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/jhlabs/math/TurbulenceFunction;->octaves:F

    return-void
.end method
