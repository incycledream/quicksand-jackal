.class public Lcom/jhlabs/image/TileImageFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "TileImageFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLIP_180:I = 0x4

.field public static final FLIP_H:I = 0x1

.field public static final FLIP_HV:I = 0x3

.field public static final FLIP_NONE:I = 0x0

.field public static final FLIP_V:I = 0x2

.field static final serialVersionUID:J = 0x445e0dcefe34b51eL


# instance fields
.field private height:I

.field private symmetryCols:I

.field private symmetryMatrix:[[I

.field private symmetryRows:I

.field private tileHeight:I

.field private tileWidth:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 38
    invoke-direct {p0, v0, v0}, Lcom/jhlabs/image/TileImageFilter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/4 v0, 0x0

    .line 82
    check-cast v0, [[I

    iput-object v0, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryMatrix:[[I

    const/4 v0, 0x2

    .line 83
    iput v0, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryRows:I

    iput v0, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryCols:I

    .line 42
    iput p1, p0, Lcom/jhlabs/image/TileImageFilter;->width:I

    .line 43
    iput p2, p0, Lcom/jhlabs/image/TileImageFilter;->height:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 8

    .line 63
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 68
    new-instance v3, Ljava/awt/image/BufferedImage;

    iget v4, p0, Lcom/jhlabs/image/TileImageFilter;->width:I

    iget v5, p0, Lcom/jhlabs/image/TileImageFilter;->height:I

    invoke-virtual {p2, v4, v5}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v4

    invoke-virtual {p2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v5

    invoke-direct {v3, p2, v4, v5, v2}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object p2, v3

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 72
    :goto_0
    iget v6, p0, Lcom/jhlabs/image/TileImageFilter;->height:I

    if-ge v5, v6, :cond_2

    const/4 v6, 0x0

    .line 73
    :goto_1
    iget v7, p0, Lcom/jhlabs/image/TileImageFilter;->width:I

    if-ge v6, v7, :cond_1

    .line 74
    invoke-virtual {v3, p1, v2, v6, v5}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImageOp;II)V

    add-int/2addr v6, v0

    goto :goto_1

    :cond_1
    add-int/2addr v5, v1

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {v3}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getHeight()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/jhlabs/image/TileImageFilter;->height:I

    return v0
.end method

.method public getSymmetryMatrix()[[I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryMatrix:[[I

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/image/TileImageFilter;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/jhlabs/image/TileImageFilter;->height:I

    return-void
.end method

.method public setSymmetryMatrix([[I)V
    .locals 1

    .line 86
    iput-object p1, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryMatrix:[[I

    .line 87
    array-length v0, p1

    iput v0, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryRows:I

    const/4 v0, 0x0

    .line 88
    aget-object p1, p1, v0

    array-length p1, p1

    iput p1, p0, Lcom/jhlabs/image/TileImageFilter;->symmetryCols:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/jhlabs/image/TileImageFilter;->width:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Tile"

    return-object v0
.end method
