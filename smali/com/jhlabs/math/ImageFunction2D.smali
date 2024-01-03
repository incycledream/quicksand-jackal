.class public Lcom/jhlabs/math/ImageFunction2D;
.super Ljava/lang/Object;
.source "ImageFunction2D.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# static fields
.field public static final CLAMP:I = 0x1

.field public static final WRAP:I = 0x2

.field public static final ZERO:I


# instance fields
.field protected alpha:Z

.field protected edgeAction:I

.field protected height:I

.field protected pixels:[I

.field protected width:I


# direct methods
.method public constructor <init>(Ljava/awt/Image;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0, v0}, Lcom/jhlabs/math/ImageFunction2D;-><init>(Ljava/awt/Image;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/Image;IZ)V
    .locals 10

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/math/ImageFunction2D;->alpha:Z

    .line 56
    new-instance v0, Ljava/awt/image/PixelGrabber;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIII[III)V

    .line 58
    :try_start_0
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->status()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getPixels()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    move-object v2, p1

    check-cast v2, [I

    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Ljava/awt/image/PixelGrabber;->getHeight()I

    move-result v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/jhlabs/math/ImageFunction2D;->init([IIIIZ)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "image fetch aborted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "interrupted waiting for pixels!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/jhlabs/math/ImageFunction2D;-><init>(Ljava/awt/image/BufferedImage;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;IZ)V
    .locals 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/math/ImageFunction2D;->alpha:Z

    .line 44
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/math/ImageFunction2D;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/math/ImageFunction2D;->init([IIIIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, p2}, Lcom/jhlabs/math/ImageFunction2D;-><init>(Ljava/awt/image/BufferedImage;IZ)V

    return-void
.end method

.method public constructor <init>([IIIIZ)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/math/ImageFunction2D;->alpha:Z

    .line 48
    invoke-virtual/range {p0 .. p5}, Lcom/jhlabs/math/ImageFunction2D;->init([IIIIZ)V

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 3

    float-to-int p1, p1

    float-to-int p2, p2

    .line 90
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 91
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    invoke-static {p1, v0}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p1

    .line 92
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->height:I

    invoke-static {p2, v0}, Lcom/jhlabs/image/ImageMath;->mod(II)I

    move-result p2

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    .line 93
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->height:I

    if-lt p2, v0, :cond_6

    .line 94
    :cond_1
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 98
    :cond_3
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    if-lt p1, v0, :cond_4

    add-int/lit8 p1, v0, -0x1

    :cond_4
    :goto_0
    if-gez p2, :cond_5

    const/4 p2, 0x0

    goto :goto_1

    .line 102
    :cond_5
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->height:I

    if-lt p2, v0, :cond_6

    add-int/lit8 p2, v0, -0x1

    .line 105
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/jhlabs/math/ImageFunction2D;->alpha:Z

    const/high16 v1, 0x437f0000    # 255.0f

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jhlabs/math/ImageFunction2D;->pixels:[I

    iget v2, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    mul-int p2, p2, v2

    add-int/2addr p2, p1

    aget p1, v0, p2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/jhlabs/math/ImageFunction2D;->pixels:[I

    iget v2, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    mul-int p2, p2, v2

    add-int/2addr p2, p1

    aget p1, v0, p2

    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->brightness(I)I

    move-result p1

    :goto_2
    int-to-float p1, p1

    div-float/2addr p1, v1

    return p1
.end method

.method public getEdgeAction()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->height:I

    return v0
.end method

.method public getPixels()[I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/jhlabs/math/ImageFunction2D;->pixels:[I

    return-object v0
.end method

.method public getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I
    .locals 10

    .line 73
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

    .line 76
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->getRGB(IIII[III)[I

    move-result-object v0

    return-object v0

    .line 75
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

.method public getWidth()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    return v0
.end method

.method public init([IIIIZ)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/jhlabs/math/ImageFunction2D;->pixels:[I

    .line 81
    iput p2, p0, Lcom/jhlabs/math/ImageFunction2D;->width:I

    .line 82
    iput p3, p0, Lcom/jhlabs/math/ImageFunction2D;->height:I

    .line 83
    iput p4, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    .line 84
    iput-boolean p5, p0, Lcom/jhlabs/math/ImageFunction2D;->alpha:Z

    return-void
.end method

.method public setEdgeAction(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/jhlabs/math/ImageFunction2D;->edgeAction:I

    return-void
.end method
