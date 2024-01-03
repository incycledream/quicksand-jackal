.class public Lcom/jhlabs/math/FBM;
.super Ljava/lang/Object;
.source "FBM.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# instance fields
.field protected H:F

.field protected basis:Lcom/jhlabs/math/Function2D;

.field protected exponents:[F

.field protected lacunarity:F

.field protected octaves:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    .line 28
    new-instance v0, Lcom/jhlabs/math/Noise;

    invoke-direct {v0}, Lcom/jhlabs/math/Noise;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jhlabs/math/FBM;-><init>(FFFLcom/jhlabs/math/Function2D;)V

    return-void
.end method

.method public constructor <init>(FFFLcom/jhlabs/math/Function2D;)V
    .locals 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/jhlabs/math/FBM;->H:F

    .line 33
    iput p2, p0, Lcom/jhlabs/math/FBM;->lacunarity:F

    .line 34
    iput p3, p0, Lcom/jhlabs/math/FBM;->octaves:F

    .line 35
    iput-object p4, p0, Lcom/jhlabs/math/FBM;->basis:Lcom/jhlabs/math/Function2D;

    float-to-int p3, p3

    add-int/lit8 p4, p3, 0x1

    .line 37
    new-array p4, p4, [F

    iput-object p4, p0, Lcom/jhlabs/math/FBM;->exponents:[F

    const/high16 p4, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p3, :cond_0

    .line 40
    iget-object v1, p0, Lcom/jhlabs/math/FBM;->exponents:[F

    float-to-double v2, p4

    neg-float v4, p1

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    mul-float p4, p4, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 5

    const v0, 0x43b98000    # 371.0f

    add-float/2addr p1, v0

    const v0, 0x44044000    # 529.0f

    add-float/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    move p2, p1

    const/4 p1, 0x0

    .line 62
    :goto_0
    iget v3, p0, Lcom/jhlabs/math/FBM;->octaves:F

    float-to-int v4, v3

    if-ge v1, v4, :cond_0

    .line 63
    iget-object v3, p0, Lcom/jhlabs/math/FBM;->basis:Lcom/jhlabs/math/Function2D;

    invoke-interface {v3, p2, v2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v3

    iget-object v4, p0, Lcom/jhlabs/math/FBM;->exponents:[F

    aget v4, v4, v1

    mul-float v3, v3, v4

    add-float/2addr p1, v3

    .line 64
    iget v3, p0, Lcom/jhlabs/math/FBM;->lacunarity:F

    mul-float p2, p2, v3

    mul-float v2, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    float-to-int v4, v3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/jhlabs/math/FBM;->basis:Lcom/jhlabs/math/Function2D;

    invoke-interface {v0, p2, v2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result p2

    mul-float v3, v3, p2

    iget-object p2, p0, Lcom/jhlabs/math/FBM;->exponents:[F

    aget p2, p2, v1

    mul-float v3, v3, p2

    add-float/2addr p1, v3

    :cond_1
    return p1
.end method

.method public getBasisType()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jhlabs/math/FBM;->basis:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public setBasis(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jhlabs/math/FBM;->basis:Lcom/jhlabs/math/Function2D;

    return-void
.end method
