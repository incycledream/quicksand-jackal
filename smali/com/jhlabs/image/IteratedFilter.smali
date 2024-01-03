.class public Lcom/jhlabs/image/IteratedFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "IteratedFilter.java"


# instance fields
.field private filter:Ljava/awt/image/BufferedImageOp;

.field private iterations:I


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImageOp;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/jhlabs/image/IteratedFilter;->filter:Ljava/awt/image/BufferedImageOp;

    .line 27
    iput p2, p0, Lcom/jhlabs/image/IteratedFilter;->iterations:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 2

    const/4 v0, 0x0

    .line 33
    :goto_0
    iget v1, p0, Lcom/jhlabs/image/IteratedFilter;->iterations:I

    if-ge v0, v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/jhlabs/image/IteratedFilter;->filter:Ljava/awt/image/BufferedImageOp;

    invoke-interface {v1, p1, p2}, Ljava/awt/image/BufferedImageOp;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
