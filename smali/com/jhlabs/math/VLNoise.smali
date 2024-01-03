.class public Lcom/jhlabs/math/VLNoise;
.super Ljava/lang/Object;
.source "VLNoise.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# instance fields
.field private distortion:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 21
    iput v0, p0, Lcom/jhlabs/math/VLNoise;->distortion:F

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float v1, p1, v0

    .line 32
    invoke-static {v1, p2}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v1

    iget v2, p0, Lcom/jhlabs/math/VLNoise;->distortion:F

    mul-float v1, v1, v2

    add-float/2addr v0, p2

    .line 33
    invoke-static {p1, v0}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result v0

    iget v2, p0, Lcom/jhlabs/math/VLNoise;->distortion:F

    mul-float v0, v0, v2

    add-float/2addr p1, v1

    add-float/2addr p2, v0

    .line 34
    invoke-static {p1, p2}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    return p1
.end method

.method public getDistortion()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/jhlabs/math/VLNoise;->distortion:F

    return v0
.end method

.method public setDistortion(F)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/jhlabs/math/VLNoise;->distortion:F

    return-void
.end method
