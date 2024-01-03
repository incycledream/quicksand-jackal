.class public abstract Lcom/jhlabs/image/AbstractBufferedImageOp;
.super Ljava/lang/Object;
.source "AbstractBufferedImageOp.java"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 74
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 31
    :cond_0
    new-instance v0, Ljava/awt/image/BufferedImage;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, v1, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 35
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 4

    if-nez p2, :cond_0

    .line 40
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I
    .locals 10

    .line 54
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move v9, p4

    .line 57
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object v0

    return-object v0

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setRGB(Ljava/awt/image/BufferedImage;IIII[I)V
    .locals 10

    .line 65
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move v9, p4

    .line 69
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    :goto_1
    return-void
.end method
