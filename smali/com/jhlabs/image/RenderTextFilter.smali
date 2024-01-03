.class public Lcom/jhlabs/image/RenderTextFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "RenderTextFilter.java"


# instance fields
.field private composite:Ljava/awt/Composite;

.field private font:Ljava/awt/Font;

.field private paint:Ljava/awt/Paint;

.field private text:Ljava/lang/String;

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/Paint;Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jhlabs/image/RenderTextFilter;->text:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/jhlabs/image/RenderTextFilter;->font:Ljava/awt/Font;

    .line 40
    iput-object p4, p0, Lcom/jhlabs/image/RenderTextFilter;->composite:Ljava/awt/Composite;

    .line 41
    iput-object p3, p0, Lcom/jhlabs/image/RenderTextFilter;->paint:Ljava/awt/Paint;

    .line 42
    iput-object p5, p0, Lcom/jhlabs/image/RenderTextFilter;->transform:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/RenderTextFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 65
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object p1

    .line 66
    sget-object v0, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v1, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->font:Ljava/awt/Font;

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->transform:Ljava/awt/geom/AffineTransform;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->composite:Ljava/awt/Composite;

    if-eqz v0, :cond_3

    .line 72
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 73
    :cond_3
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->paint:Ljava/awt/Paint;

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p1, v0}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    .line 75
    :cond_4
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->text:Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    const/16 v2, 0x64

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Ljava/awt/Graphics2D;->drawString(Ljava/lang/String;II)V

    .line 77
    :cond_5
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->composite:Ljava/awt/Composite;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jhlabs/image/RenderTextFilter;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/jhlabs/image/RenderTextFilter;->composite:Ljava/awt/Composite;

    return-void
.end method

.method public setComposite(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/jhlabs/image/RenderTextFilter;->text:Ljava/lang/String;

    return-void
.end method
