.class public Lcom/jhlabs/image/GainFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "GainFilter.java"


# instance fields
.field private bias:F

.field private gain:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/GainFilter;->gain:F

    .line 25
    iput v0, p0, Lcom/jhlabs/image/GainFilter;->bias:F

    return-void
.end method


# virtual methods
.method public getBias()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/GainFilter;->bias:F

    return v0
.end method

.method public getGain()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jhlabs/image/GainFilter;->gain:F

    return v0
.end method

.method public setBias(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/GainFilter;->bias:F

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/jhlabs/image/GainFilter;->initialized:Z

    return-void
.end method

.method public setGain(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jhlabs/image/GainFilter;->gain:F

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/jhlabs/image/GainFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Gain..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 1

    .line 28
    iget v0, p0, Lcom/jhlabs/image/GainFilter;->gain:F

    invoke-static {p1, v0}, Lcom/jhlabs/image/ImageMath;->gain(FF)F

    move-result p1

    .line 29
    iget v0, p0, Lcom/jhlabs/image/GainFilter;->bias:F

    invoke-static {p1, v0}, Lcom/jhlabs/image/ImageMath;->bias(FF)F

    move-result p1

    return p1
.end method
