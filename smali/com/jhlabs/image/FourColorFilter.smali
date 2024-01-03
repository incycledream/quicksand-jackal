.class public Lcom/jhlabs/image/FourColorFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "FourColorFilter.java"


# instance fields
.field private bNE:I

.field private bNW:I

.field private bSE:I

.field private bSW:I

.field private colorNE:I

.field private colorNW:I

.field private colorSE:I

.field private colorSW:I

.field private gNE:I

.field private gNW:I

.field private gSE:I

.field private gSW:I

.field private height:I

.field private rNE:I

.field private rNW:I

.field private rSE:I

.field private rSW:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/high16 v0, -0x10000

    .line 40
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FourColorFilter;->setColorNW(I)V

    const v0, -0xff01

    .line 41
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FourColorFilter;->setColorNE(I)V

    const v0, -0xffff01

    .line 42
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FourColorFilter;->setColorSW(I)V

    const v0, -0xff0001

    .line 43
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/FourColorFilter;->setColorSE(I)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 6

    int-to-float p1, p1

    .line 97
    iget p3, p0, Lcom/jhlabs/image/FourColorFilter;->width:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    int-to-float p2, p2

    .line 98
    iget p3, p0, Lcom/jhlabs/image/FourColorFilter;->height:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 101
    iget p3, p0, Lcom/jhlabs/image/FourColorFilter;->rNW:I

    int-to-float v0, p3

    iget v1, p0, Lcom/jhlabs/image/FourColorFilter;->rNE:I

    sub-int/2addr v1, p3

    int-to-float p3, v1

    mul-float p3, p3, p1

    add-float/2addr v0, p3

    .line 102
    iget p3, p0, Lcom/jhlabs/image/FourColorFilter;->rSW:I

    int-to-float v1, p3

    iget v2, p0, Lcom/jhlabs/image/FourColorFilter;->rSE:I

    sub-int/2addr v2, p3

    int-to-float p3, v2

    mul-float p3, p3, p1

    add-float/2addr v1, p3

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    const/high16 p3, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int v0, v0

    .line 105
    iget v1, p0, Lcom/jhlabs/image/FourColorFilter;->gNW:I

    int-to-float v2, v1

    iget v3, p0, Lcom/jhlabs/image/FourColorFilter;->gNE:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p1

    add-float/2addr v2, v1

    .line 106
    iget v1, p0, Lcom/jhlabs/image/FourColorFilter;->gSW:I

    int-to-float v3, v1

    iget v4, p0, Lcom/jhlabs/image/FourColorFilter;->gSE:I

    sub-int/2addr v4, v1

    int-to-float v1, v4

    mul-float v1, v1, p1

    add-float/2addr v3, v1

    sub-float/2addr v3, v2

    mul-float v3, v3, p2

    add-float/2addr v2, v3

    add-float/2addr v2, p3

    float-to-int v1, v2

    .line 109
    iget v2, p0, Lcom/jhlabs/image/FourColorFilter;->bNW:I

    int-to-float v3, v2

    iget v4, p0, Lcom/jhlabs/image/FourColorFilter;->bNE:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float v2, v2, p1

    add-float/2addr v3, v2

    .line 110
    iget v2, p0, Lcom/jhlabs/image/FourColorFilter;->bSW:I

    int-to-float v4, v2

    iget v5, p0, Lcom/jhlabs/image/FourColorFilter;->bSE:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v2, v2, p1

    add-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float v4, v4, p2

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    float-to-int p1, v3

    shl-int/lit8 p2, v0, 0x10

    const/high16 p3, -0x1000000

    or-int/2addr p2, p3

    shl-int/lit8 p3, v1, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getColorNE()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/FourColorFilter;->colorNE:I

    return v0
.end method

.method public getColorNW()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jhlabs/image/FourColorFilter;->colorNW:I

    return v0
.end method

.method public getColorSE()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/jhlabs/image/FourColorFilter;->colorSE:I

    return v0
.end method

.method public getColorSW()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/jhlabs/image/FourColorFilter;->colorSW:I

    return v0
.end method

.method public setColorNE(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->colorNE:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 59
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->rNE:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 60
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->gNE:I

    and-int/lit16 p1, p1, 0xff

    .line 61
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->bNE:I

    return-void
.end method

.method public setColorNW(I)V
    .locals 1

    .line 47
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->colorNW:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 48
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->rNW:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 49
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->gNW:I

    and-int/lit16 p1, p1, 0xff

    .line 50
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->bNW:I

    return-void
.end method

.method public setColorSE(I)V
    .locals 1

    .line 80
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->colorSE:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 81
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->rSE:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 82
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->gSE:I

    and-int/lit16 p1, p1, 0xff

    .line 83
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->bSE:I

    return-void
.end method

.method public setColorSW(I)V
    .locals 1

    .line 69
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->colorSW:I

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 70
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->rSW:I

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 71
    iput v0, p0, Lcom/jhlabs/image/FourColorFilter;->gSW:I

    and-int/lit16 p1, p1, 0xff

    .line 72
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->bSW:I

    return-void
.end method

.method public setDimensions(II)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/jhlabs/image/FourColorFilter;->width:I

    .line 92
    iput p2, p0, Lcom/jhlabs/image/FourColorFilter;->height:I

    .line 93
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/PointFilter;->setDimensions(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Four Color Fill..."

    return-object v0
.end method
