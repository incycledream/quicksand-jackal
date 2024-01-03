.class public Lcom/jhlabs/image/CompositeFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "CompositeFilter.java"


# instance fields
.field private composite:Ljava/awt/Composite;

.field private transform:Ljava/awt/geom/AffineTransform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Composite;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/jhlabs/image/CompositeFilter;->composite:Ljava/awt/Composite;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Composite;Ljava/awt/geom/AffineTransform;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/jhlabs/image/CompositeFilter;->composite:Ljava/awt/Composite;

    .line 40
    iput-object p2, p0, Lcom/jhlabs/image/CompositeFilter;->transform:Ljava/awt/geom/AffineTransform;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/jhlabs/image/CompositeFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 55
    :cond_0
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 56
    sget-object v1, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 57
    sget-object v1, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v2, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    .line 58
    iget-object v1, p0, Lcom/jhlabs/image/CompositeFilter;->composite:Ljava/awt/Composite;

    invoke-virtual {v0, v1}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    .line 59
    iget-object v1, p0, Lcom/jhlabs/image/CompositeFilter;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0, p1, v1}, Ljava/awt/Graphics2D;->drawRenderedImage(Ljava/awt/image/RenderedImage;Ljava/awt/geom/AffineTransform;)V

    .line 60
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getComposite()Ljava/awt/Composite;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/jhlabs/image/CompositeFilter;->composite:Ljava/awt/Composite;

    return-object v0
.end method

.method public setComposite(Ljava/awt/Composite;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/jhlabs/image/CompositeFilter;->composite:Ljava/awt/Composite;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Composite"

    return-object v0
.end method
