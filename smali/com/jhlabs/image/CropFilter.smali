.class public Lcom/jhlabs/image/CropFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "CropFilter.java"


# instance fields
.field private height:I

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, v1, v1, v0, v0}, Lcom/jhlabs/image/CropFilter;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 38
    iput p1, p0, Lcom/jhlabs/image/CropFilter;->x:I

    .line 39
    iput p2, p0, Lcom/jhlabs/image/CropFilter;->y:I

    .line 40
    iput p3, p0, Lcom/jhlabs/image/CropFilter;->width:I

    .line 41
    iput p4, p0, Lcom/jhlabs/image/CropFilter;->height:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 5

    .line 77
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    .line 78
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    if-nez p2, :cond_0

    .line 81
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 82
    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/jhlabs/image/CropFilter;->width:I

    iget v2, p0, Lcom/jhlabs/image/CropFilter;->height:I

    invoke-virtual {p2, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object p2, v0

    .line 85
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 86
    iget v1, p0, Lcom/jhlabs/image/CropFilter;->x:I

    neg-int v1, v1

    int-to-double v1, v1

    iget v3, p0, Lcom/jhlabs/image/CropFilter;->y:I

    neg-int v3, v3

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 87
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getHeight()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/jhlabs/image/CropFilter;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/jhlabs/image/CropFilter;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/jhlabs/image/CropFilter;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/jhlabs/image/CropFilter;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/jhlabs/image/CropFilter;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/jhlabs/image/CropFilter;->width:I

    return-void
.end method

.method public setX(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/jhlabs/image/CropFilter;->x:I

    return-void
.end method

.method public setY(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/jhlabs/image/CropFilter;->y:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Crop"

    return-object v0
.end method
