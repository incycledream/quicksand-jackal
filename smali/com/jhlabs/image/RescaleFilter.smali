.class public Lcom/jhlabs/image/RescaleFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "RescaleFilter.java"


# static fields
.field static final serialVersionUID:J = -0x25d0b2a1f5d7443fL


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/RescaleFilter;->scale:F

    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/jhlabs/image/RescaleFilter;->scale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jhlabs/image/RescaleFilter;->scale:F

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/jhlabs/image/RescaleFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Rescale..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 1

    .line 29
    iget v0, p0, Lcom/jhlabs/image/RescaleFilter;->scale:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method
