.class public Lcom/jhlabs/image/BorderFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "BorderFilter.java"


# instance fields
.field private borderPaint:Ljava/awt/Paint;

.field private bottomBorder:I

.field private leftBorder:I

.field private rightBorder:I

.field private topBorder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIILjava/awt/Paint;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 36
    iput p1, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    .line 37
    iput p2, p0, Lcom/jhlabs/image/BorderFilter;->topBorder:I

    .line 38
    iput p3, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    .line 39
    iput p4, p0, Lcom/jhlabs/image/BorderFilter;->bottomBorder:I

    .line 40
    iput-object p5, p0, Lcom/jhlabs/image/BorderFilter;->borderPaint:Ljava/awt/Paint;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 8

    .line 76
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 77
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    if-nez p2, :cond_0

    .line 80
    new-instance p2, Ljava/awt/image/BufferedImage;

    iget v2, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->topBorder:I

    add-int/2addr v3, v1

    iget v4, p0, Lcom/jhlabs/image/BorderFilter;->bottomBorder:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    move-result v4

    invoke-direct {p2, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 81
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/jhlabs/image/BorderFilter;->borderPaint:Ljava/awt/Paint;

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 84
    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    .line 85
    invoke-virtual {v2, v4, v4, v3, v1}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 86
    :cond_1
    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    if-lez v3, :cond_2

    sub-int v5, v0, v3

    .line 87
    invoke-virtual {v2, v5, v4, v3, v1}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 88
    :cond_2
    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->topBorder:I

    if-lez v3, :cond_3

    .line 89
    iget v5, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    sub-int v6, v0, v5

    iget v7, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v4, v6, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 90
    :cond_3
    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->bottomBorder:I

    if-lez v3, :cond_4

    .line 91
    iget v4, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v4

    iget v5, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v4, v1, v0, v3}, Ljava/awt/Graphics2D;->fillRect(IIII)V

    .line 93
    :cond_4
    iget v0, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    int-to-double v0, v0

    iget v3, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    int-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 94
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getBottomBorder()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/image/BorderFilter;->bottomBorder:I

    return v0
.end method

.method public getLeftBorder()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    return v0
.end method

.method public getRightBorder()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    return v0
.end method

.method public getTopBorder()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/BorderFilter;->topBorder:I

    return v0
.end method

.method public setBottomBorder(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jhlabs/image/BorderFilter;->bottomBorder:I

    return-void
.end method

.method public setLeftBorder(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/jhlabs/image/BorderFilter;->leftBorder:I

    return-void
.end method

.method public setRightBorder(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/jhlabs/image/BorderFilter;->rightBorder:I

    return-void
.end method

.method public setTopBorder(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/BorderFilter;->topBorder:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Border..."

    return-object v0
.end method
