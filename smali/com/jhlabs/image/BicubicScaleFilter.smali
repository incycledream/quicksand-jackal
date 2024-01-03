.class public Lcom/jhlabs/image/BicubicScaleFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "BicubicScaleFilter.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 31
    invoke-direct {p0, v0, v0}, Lcom/jhlabs/image/BicubicScaleFilter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 40
    iput p1, p0, Lcom/jhlabs/image/BicubicScaleFilter;->width:I

    .line 41
    iput p2, p0, Lcom/jhlabs/image/BicubicScaleFilter;->height:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 8

    .line 45
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    .line 46
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 50
    new-instance v0, Ljava/awt/image/BufferedImage;

    iget v1, p0, Lcom/jhlabs/image/BicubicScaleFilter;->width:I

    iget v2, p0, Lcom/jhlabs/image/BicubicScaleFilter;->height:I

    invoke-virtual {p2, v1, v2}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object p2, v0

    .line 53
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v7

    .line 54
    sget-object v0, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 55
    iget v4, p0, Lcom/jhlabs/image/BicubicScaleFilter;->width:I

    iget v5, p0, Lcom/jhlabs/image/BicubicScaleFilter;->height:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 56
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Bicubic Scale"

    return-object v0
.end method
