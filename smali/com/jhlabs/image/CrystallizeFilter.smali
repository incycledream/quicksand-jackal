.class public Lcom/jhlabs/image/CrystallizeFilter;
.super Lcom/jhlabs/image/CellularFilter;
.source "CrystallizeFilter.java"


# instance fields
.field private edgeColor:I

.field private edgeThickness:F

.field private fadeEdges:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/CellularFilter;-><init>()V

    const v0, 0x3ecccccd    # 0.4f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeThickness:F

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->fadeEdges:Z

    const/high16 v0, -0x1000000

    .line 27
    iput v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeColor:I

    const/high16 v0, 0x41800000    # 16.0f

    .line 30
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/CrystallizeFilter;->setScale(F)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/CrystallizeFilter;->setRandomness(F)V

    return-void
.end method


# virtual methods
.method public getEdgeColor()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeColor:I

    return v0
.end method

.method public getEdgeThickness()F
    .locals 1

    .line 39
    iget v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeThickness:F

    return v0
.end method

.method public getFadeEdges()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->fadeEdges:Z

    return v0
.end method

.method public getPixel(II[III)I
    .locals 7

    .line 59
    iget v0, p0, Lcom/jhlabs/image/CrystallizeFilter;->m00:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    iget v1, p0, Lcom/jhlabs/image/CrystallizeFilter;->m01:F

    int-to-float p2, p2

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    .line 60
    iget v1, p0, Lcom/jhlabs/image/CrystallizeFilter;->m10:F

    mul-float v1, v1, p1

    iget p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->m11:F

    mul-float p1, p1, p2

    add-float/2addr v1, p1

    .line 61
    iget p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    div-float/2addr v0, p1

    .line 62
    iget p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    iget p2, p0, Lcom/jhlabs/image/CrystallizeFilter;->stretch:F

    mul-float p1, p1, p2

    div-float/2addr v1, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    add-float/2addr v0, p1

    add-float/2addr v1, p1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/jhlabs/image/CrystallizeFilter;->evaluate(FF)F

    .line 67
    iget-object p2, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    iget p2, p2, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 68
    iget-object v1, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->distance:F

    .line 69
    iget-object v3, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float/2addr v3, p1

    iget v4, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    add-int/lit8 v4, p4, -0x1

    invoke-static {v3, v0, v4}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v3

    .line 70
    iget-object v5, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr p5, v2

    invoke-static {v5, v0, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v5

    mul-int v5, v5, p4

    add-int/2addr v5, v3

    .line 71
    aget v3, p3, v5

    sub-float/2addr v1, p2

    .line 72
    iget p2, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeThickness:F

    div-float/2addr v1, p2

    const/4 v5, 0x0

    .line 73
    invoke-static {v5, p2, v1}, Lcom/jhlabs/image/ImageMath;->smoothStep(FFF)F

    move-result p2

    .line 74
    iget-boolean v1, p0, Lcom/jhlabs/image/CrystallizeFilter;->fadeEdges:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jhlabs/image/CellularFilter$Point;->x:F

    sub-float/2addr v1, p1

    iget v5, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-static {v1, v0, v4}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result v1

    .line 76
    iget-object v4, p0, Lcom/jhlabs/image/CrystallizeFilter;->results:[Lcom/jhlabs/image/CellularFilter$Point;

    aget-object v2, v4, v2

    iget v2, v2, Lcom/jhlabs/image/CellularFilter$Point;->y:F

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->scale:F

    mul-float v2, v2, p1

    float-to-int p1, v2

    invoke-static {p1, v0, p5}, Lcom/jhlabs/image/ImageMath;->clamp(III)I

    move-result p1

    mul-int p1, p1, p4

    add-int/2addr p1, v1

    .line 77
    aget p1, p3, p1

    const/high16 p3, 0x3f000000    # 0.5f

    .line 78
    invoke-static {p3, p1, v3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    .line 79
    invoke-static {p2, p1, v3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    goto :goto_0

    .line 81
    :cond_0
    iget p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeColor:I

    invoke-static {p2, p1, v3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    :goto_0
    return p1
.end method

.method public setEdgeColor(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeColor:I

    return-void
.end method

.method public setEdgeThickness(F)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->edgeThickness:F

    return-void
.end method

.method public setFadeEdges(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/jhlabs/image/CrystallizeFilter;->fadeEdges:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Crystallize..."

    return-object v0
.end method
