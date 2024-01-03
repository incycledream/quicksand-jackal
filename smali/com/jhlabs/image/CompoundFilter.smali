.class public Lcom/jhlabs/image/CompoundFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "CompoundFilter.java"


# instance fields
.field private filter1:Ljava/awt/image/BufferedImageOp;

.field private filter2:Ljava/awt/image/BufferedImageOp;


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImageOp;Ljava/awt/image/BufferedImageOp;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jhlabs/image/CompoundFilter;->filter1:Ljava/awt/image/BufferedImageOp;

    .line 27
    iput-object p2, p0, Lcom/jhlabs/image/CompoundFilter;->filter2:Ljava/awt/image/BufferedImageOp;

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/jhlabs/image/CompoundFilter;->filter1:Ljava/awt/image/BufferedImageOp;

    invoke-interface {v0, p1, p2}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/jhlabs/image/CompoundFilter;->filter2:Ljava/awt/image/BufferedImageOp;

    invoke-interface {v0, p1, p2}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method
