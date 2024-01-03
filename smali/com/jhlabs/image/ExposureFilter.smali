.class public Lcom/jhlabs/image/ExposureFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "ExposureFilter.java"


# instance fields
.field private exposure:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/ExposureFilter;->exposure:F

    return-void
.end method


# virtual methods
.method public getExposure()F
    .locals 1

    .line 36
    iget v0, p0, Lcom/jhlabs/image/ExposureFilter;->exposure:F

    return v0
.end method

.method public setExposure(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/jhlabs/image/ExposureFilter;->exposure:F

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/jhlabs/image/ExposureFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Exposure..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 2

    neg-float p1, p1

    .line 27
    iget v0, p0, Lcom/jhlabs/image/ExposureFilter;->exposure:F

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method
