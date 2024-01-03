.class public Lcom/jhlabs/image/MapFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "MapFilter.java"


# instance fields
.field private xMapFunction:Lcom/jhlabs/math/Function2D;

.field private yMapFunction:Lcom/jhlabs/math/Function2D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getXMapFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/jhlabs/image/MapFilter;->xMapFunction:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public getYMapFunction()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/jhlabs/image/MapFilter;->yMapFunction:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public setXMapFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jhlabs/image/MapFilter;->xMapFunction:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public setYMapFunction(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jhlabs/image/MapFilter;->yMapFunction:Lcom/jhlabs/math/Function2D;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Map Coordinates..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/jhlabs/image/MapFilter;->xMapFunction:Lcom/jhlabs/math/Function2D;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-interface {v0, p1, p2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/jhlabs/image/MapFilter;->yMapFunction:Lcom/jhlabs/math/Function2D;

    invoke-interface {v1, p1, p2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result p1

    .line 51
    iget-object p2, p0, Lcom/jhlabs/image/MapFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget p2, p2, Ljava/awt/Rectangle;->width:I

    int-to-float p2, p2

    mul-float v0, v0, p2

    const/4 p2, 0x0

    aput v0, p3, p2

    .line 52
    iget-object p2, p0, Lcom/jhlabs/image/MapFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method
