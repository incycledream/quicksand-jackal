.class public Lcom/jhlabs/image/FlipFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "FlipFilter.java"


# static fields
.field public static final FLIP_180:I = 0x6

.field public static final FLIP_90CCW:I = 0x5

.field public static final FLIP_90CW:I = 0x4

.field public static final FLIP_H:I = 0x1

.field public static final FLIP_HV:I = 0x3

.field public static final FLIP_V:I = 0x2


# instance fields
.field private height:I

.field private newHeight:I

.field private newWidth:I

.field private operation:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 38
    invoke-direct {p0, v0}, Lcom/jhlabs/image/FlipFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    .line 42
    iput p1, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 12

    .line 54
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v7

    .line 55
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v8

    .line 56
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getType()I

    .line 57
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v7

    move v5, v8

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/FlipFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v0

    .line 69
    iget v1, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v5, v7

    move v4, v8

    goto :goto_1

    :goto_0
    :pswitch_1
    move v4, v7

    move v5, v8

    :goto_1
    mul-int v1, v4, v5

    .line 100
    new-array v6, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_0

    mul-int v9, v2, v7

    add-int/2addr v9, v3

    .line 107
    iget v10, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    packed-switch v10, :pswitch_data_1

    move v10, v2

    :goto_4
    move v11, v3

    goto :goto_6

    :pswitch_2
    sub-int v10, v8, v2

    add-int/lit8 v10, v10, -0x1

    sub-int v11, v7, v3

    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :pswitch_3
    sub-int v10, v7, v3

    add-int/lit8 v10, v10, -0x1

    move v11, v2

    goto :goto_6

    :pswitch_4
    sub-int v10, v8, v2

    add-int/lit8 v10, v10, -0x1

    move v11, v10

    goto :goto_5

    :pswitch_5
    move v11, v2

    :goto_5
    move v10, v3

    goto :goto_6

    :pswitch_6
    sub-int v10, v8, v2

    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :pswitch_7
    sub-int v10, v7, v3

    add-int/lit8 v10, v10, -0x1

    move v11, v10

    move v10, v2

    :goto_6
    mul-int v10, v10, v4

    add-int/2addr v10, v11

    .line 132
    aget v9, v0, v9

    aput v9, v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    .line 137
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0, v4, v5}, Ljava/awt/image/ColorModel;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v7, 0x0

    invoke-direct {v1, v0, v2, v3, v7}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    move-object v7, v1

    goto :goto_7

    :cond_2
    move-object v7, p2

    .line 140
    :goto_7
    invoke-virtual {v7}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v7

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/FlipFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getOperation()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    return v0
.end method

.method public setOperation(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 147
    iget v0, p0, Lcom/jhlabs/image/FlipFilter;->operation:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Flip"

    return-object v0

    :pswitch_0
    const-string v0, "Rotate 180"

    return-object v0

    :pswitch_1
    const-string v0, "Rotate -90"

    return-object v0

    :pswitch_2
    const-string v0, "Rotate 90"

    return-object v0

    :pswitch_3
    const-string v0, "Flip Diagonal"

    return-object v0

    :pswitch_4
    const-string v0, "Flip Vertical"

    return-object v0

    :pswitch_5
    const-string v0, "Flip Horizontal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
