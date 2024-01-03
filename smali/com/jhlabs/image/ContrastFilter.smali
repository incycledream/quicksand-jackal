.class public Lcom/jhlabs/image/ContrastFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "ContrastFilter.java"


# instance fields
.field private brightness:F

.field private contrast:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 24
    iput v0, p0, Lcom/jhlabs/image/ContrastFilter;->brightness:F

    .line 25
    iput v0, p0, Lcom/jhlabs/image/ContrastFilter;->contrast:F

    return-void
.end method


# virtual methods
.method public getBrightness()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jhlabs/image/ContrastFilter;->brightness:F

    return v0
.end method

.method public getContrast()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/ContrastFilter;->contrast:F

    return v0
.end method

.method public setBrightness(F)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/jhlabs/image/ContrastFilter;->brightness:F

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/jhlabs/image/ContrastFilter;->initialized:Z

    return-void
.end method

.method public setContrast(F)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/ContrastFilter;->contrast:F

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/jhlabs/image/ContrastFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Contrast..."

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 2

    .line 28
    iget v0, p0, Lcom/jhlabs/image/ContrastFilter;->brightness:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 29
    iget v1, p0, Lcom/jhlabs/image/ContrastFilter;->contrast:F

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    return p1
.end method
