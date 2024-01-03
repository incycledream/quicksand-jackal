.class public Lcom/jhlabs/image/ImageCombiningFilter;
.super Ljava/lang/Object;
.source "ImageCombiningFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/Image;Ljava/awt/Image;IIII)Ljava/awt/image/ImageProducer;
    .locals 16

    move/from16 v9, p5

    move/from16 v10, p6

    mul-int v0, v9, v10

    .line 40
    new-array v11, v0, [I

    .line 41
    new-array v12, v0, [I

    .line 42
    new-array v13, v0, [I

    .line 43
    new-instance v14, Ljava/awt/image/PixelGrabber;

    const/4 v7, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v11

    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIII[III)V

    .line 44
    new-instance v15, Ljava/awt/image/PixelGrabber;

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v6, v12

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/PixelGrabber;-><init>(Ljava/awt/Image;IIII[III)V

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v14}, Ljava/awt/image/PixelGrabber;->grabPixels()Z

    .line 47
    invoke-virtual {v15}, Ljava/awt/image/PixelGrabber;->grabPixels()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-virtual {v14}, Ljava/awt/image/PixelGrabber;->status()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const-string v2, "image fetch aborted or errored"

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {v15}, Ljava/awt/image/PixelGrabber;->status()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v9, :cond_2

    mul-int v3, v1, v9

    add-int/2addr v3, v2

    add-int v4, p3, v2

    add-int v5, p4, v1

    .line 64
    aget v6, v11, v3

    aget v7, v12, v3

    move-object/from16 v8, p0

    invoke-virtual {v8, v4, v5, v6, v7}, Lcom/jhlabs/image/ImageCombiningFilter;->filterRGB(IIII)I

    move-result v4

    aput v4, v13, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v8, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v8, p0

    .line 67
    new-instance v6, Ljava/awt/image/MemoryImageSource;

    const/4 v4, 0x0

    move-object v0, v6

    move/from16 v1, p5

    move/from16 v2, p6

    move-object v3, v13

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/MemoryImageSource;-><init>(II[III)V

    return-object v6

    :catch_0
    move-object/from16 v8, p0

    .line 49
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "interrupted waiting for pixels!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0
.end method

.method public filterRGB(IIII)I
    .locals 0

    shr-int/lit8 p1, p3, 0x18

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 p3, p4, 0x10

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p2, p3

    .line 33
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p3

    .line 34
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p4

    .line 35
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p3, p3, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p3, p4, 0x8

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method
