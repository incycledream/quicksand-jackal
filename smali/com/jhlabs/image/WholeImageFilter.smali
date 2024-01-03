.class public abstract Lcom/jhlabs/image/WholeImageFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "WholeImageFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected originalSpace:Ljava/awt/Rectangle;

.field protected transformedSpace:Ljava/awt/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 10

    .line 38
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 39
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 41
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    .line 43
    new-instance v0, Ljava/awt/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, p0, Lcom/jhlabs/image/WholeImageFilter;->originalSpace:Ljava/awt/Rectangle;

    .line 44
    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, v1, v1, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v0, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    .line 45
    iget-object v0, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    invoke-virtual {p0, v0}, Lcom/jhlabs/image/WholeImageFilter;->transformSpace(Ljava/awt/Rectangle;)V

    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/awt/image/BufferedImage;

    iget-object v2, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->width:I

    iget-object v3, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    invoke-virtual {v0, v2, v3}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, p2

    .line 51
    :goto_0
    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    .line 53
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WholeImageFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    invoke-virtual {p0, v7, v8, v0, v1}, Lcom/jhlabs/image/WholeImageFilter;->filterPixels(II[ILjava/awt/Rectangle;)[I

    move-result-object v6

    .line 55
    iget-object v0, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    iget-object v0, p0, Lcom/jhlabs/image/WholeImageFilter;->transformedSpace:Ljava/awt/Rectangle;

    iget v5, v0, Ljava/awt/Rectangle;->height:I

    move-object v0, p0

    move-object v1, v9

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WholeImageFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object v9
.end method

.method protected abstract filterPixels(II[ILjava/awt/Rectangle;)[I
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 0

    return-void
.end method
