.class public Lcom/jhlabs/image/ScaleFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "ScaleFilter.java"


# instance fields
.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 31
    invoke-direct {p0, v0, v0}, Lcom/jhlabs/image/ScaleFilter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 35
    iput p1, p0, Lcom/jhlabs/image/ScaleFilter;->width:I

    .line 36
    iput p2, p0, Lcom/jhlabs/image/ScaleFilter;->height:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 10

    .line 40
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 41
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    if-nez p2, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 45
    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {p2, v0, v1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v3

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, p2, v3, v4, v5}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object p2, v2

    :cond_0
    const/16 v2, 0x10

    .line 48
    invoke-virtual {p1, v0, v1, v2}, Ljava/awt/image/BufferedImage;->getScaledInstance(III)Ljava/awt/Image;

    .line 49
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 50
    iget v7, p0, Lcom/jhlabs/image/ScaleFilter;->width:I

    iget v8, p0, Lcom/jhlabs/image/ScaleFilter;->height:I

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 51
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Scale"

    return-object v0
.end method
