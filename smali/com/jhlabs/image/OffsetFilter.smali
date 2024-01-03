.class public Lcom/jhlabs/image/OffsetFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "OffsetFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private height:I

.field private width:I

.field private wrap:Z

.field private xOffset:I

.field private yOffset:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0, v0, v0, v1}, Lcom/jhlabs/image/OffsetFilter;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    .line 33
    iput p1, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    .line 34
    iput p2, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    .line 35
    iput-boolean p3, p0, Lcom/jhlabs/image/OffsetFilter;->wrap:Z

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/OffsetFilter;->setEdgeAction(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    .line 74
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/OffsetFilter;->width:I

    .line 75
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jhlabs/image/OffsetFilter;->height:I

    .line 76
    iget-boolean v0, p0, Lcom/jhlabs/image/OffsetFilter;->wrap:Z

    if-eqz v0, :cond_2

    .line 77
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    if-gez v0, :cond_0

    .line 78
    iget v1, p0, Lcom/jhlabs/image/OffsetFilter;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    goto :goto_0

    .line 79
    :cond_0
    :goto_1
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    if-gez v0, :cond_1

    .line 80
    iget v1, p0, Lcom/jhlabs/image/OffsetFilter;->height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    goto :goto_1

    .line 81
    :cond_1
    iget v1, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    iget v2, p0, Lcom/jhlabs/image/OffsetFilter;->width:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    .line 82
    iget v1, p0, Lcom/jhlabs/image/OffsetFilter;->height:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    .line 84
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/TransformFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getWrap()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/jhlabs/image/OffsetFilter;->wrap:Z

    return v0
.end method

.method public getXOffset()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    return v0
.end method

.method public setWrap(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/jhlabs/image/OffsetFilter;->wrap:Z

    return-void
.end method

.method public setXOffset(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    return-void
.end method

.method public setYOffset(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Offset..."

    return-object v0
.end method

.method protected transformInverse(II[F)V
    .locals 4

    .line 64
    iget-boolean v0, p0, Lcom/jhlabs/image/OffsetFilter;->wrap:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 65
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->width:I

    add-int/2addr p1, v0

    iget v3, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    sub-int/2addr p1, v3

    rem-int/2addr p1, v0

    int-to-float p1, p1

    aput p1, p3, v2

    .line 66
    iget p1, p0, Lcom/jhlabs/image/OffsetFilter;->height:I

    add-int/2addr p2, p1

    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    sub-int/2addr p2, v0

    rem-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, p3, v1

    goto :goto_0

    .line 68
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/OffsetFilter;->xOffset:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    aput p1, p3, v2

    .line 69
    iget p1, p0, Lcom/jhlabs/image/OffsetFilter;->yOffset:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    aput p1, p3, v1

    :goto_0
    return-void
.end method
