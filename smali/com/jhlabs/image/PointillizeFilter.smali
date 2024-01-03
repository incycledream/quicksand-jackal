.class public Lcom/jhlabs/image/PointillizeFilter;
.super Lcom/jhlabs/image/CellularFilter;
.source "PointillizeFilter.java"


# instance fields
.field private edgeColor:I

.field private edgeThickness:F

.field private fadeEdges:Z

.field private fuzziness:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jhlabs/image/CellularFilter;-><init>()V

    const v0, 0x3ecccccd    # 0.4f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeThickness:F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/jhlabs/image/PointillizeFilter;->fadeEdges:Z

    const/high16 v0, -0x1000000

    .line 27
    iput v0, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeColor:I

    const v0, 0x3dcccccd    # 0.1f

    .line 28
    iput v0, p0, Lcom/jhlabs/image/PointillizeFilter;->fuzziness:F

    const/high16 v0, 0x41800000    # 16.0f

    .line 31
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/PointillizeFilter;->setScale(F)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/PointillizeFilter;->setRandomness(F)V

    return-void
.end method


# virtual methods
.method public getEdgeColor()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeColor:I

    return v0
.end method

.method public getEdgeThickness()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeThickness:F

    return v0
.end method

.method public getFadeEdges()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/jhlabs/image/PointillizeFilter;->fadeEdges:Z

    return v0
.end method

.method public getFuzziness()F
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/PointillizeFilter;->fuzziness:F

    return v0
.end method

.method public getPixel(II[III)I
    .locals 7

    .line 68
    iget v0, p0, Lcom/jhlabs/image/PointillizeFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/PointillizeFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 69
    iget v1, p0, Lcom/jhlabs/image/PointillizeFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/PointillizeFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 70
    iget p1, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    div-float/2addr v0, p1

    .line 71
    iget p1, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    iget p2, p0, Lcom/jhlabs/image/PointillizeFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v1, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/jhlabs/image/PointillizeFilter;->evaluate(FF)F

    .line 76
    iget-object p2, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget p2, p2, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 77
    iget-object v1, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int/lit8 v2, p4, -0x1

    invoke-static {v1, v0, v2}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v1

    .line 78
    iget-object v3, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float/2addr v3, p1

    iget v4, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    sub-int/2addr p5, v4

    invoke-static {v3, v0, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v3

    mul-int v3, v3, p4

    add-int/2addr v3, v1

    .line 79
    aget v1, p3, v3

    .line 81
    iget-boolean v3, p0, Lcom/jhlabs/image/PointillizeFilter;->fadeEdges:Z

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 83
    iget-object v5, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5, v0, v2}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v2

    .line 84
    iget-object v5, p0, Lcom/jhlabs/image/PointillizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v4, v5, v4

    iget v4, v4, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/jhlabs/image/PointillizeFilter;->scale:F

    mul-float v4, v4, p1

    float-to-int p1, v4

    invoke-static {p1, v0, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p1

    mul-int p1, p1, p4

    add-int/2addr p1, v2

    .line 85
    aget p1, p3, p1

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    div-float/2addr p2, v3

    .line 86
    invoke-static {p2, v1, p1}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 88
    iget p3, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeThickness:F

    iget p4, p0, Lcom/jhlabs/image/PointillizeFilter;->fuzziness:F

    add-float/2addr p4, p3

    invoke-static {p3, p4, p2}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p2

    sub-float/2addr p1, p2

    .line 89
    iget p2, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeColor:I

    invoke-static {p1, p2, v1}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    :goto_0
    return p1
.end method

.method public setEdgeColor(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeColor:I

    return-void
.end method

.method public setEdgeThickness(F)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jhlabs/image/PointillizeFilter;->edgeThickness:F

    return-void
.end method

.method public setFadeEdges(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/jhlabs/image/PointillizeFilter;->fadeEdges:Z

    return-void
.end method

.method public setFuzziness(F)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/PointillizeFilter;->fuzziness:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Pointillize..."

    return-object v0
.end method
