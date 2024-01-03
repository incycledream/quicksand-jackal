.class public Lcom/jhlabs/image/BrushedMetalFilter;
.super Ljava/lang/Object;
.source "BrushedMetalFilter.java"

# interfaces
.implements Ljava/awt/image/BufferedImageOp;


# instance fields
.field private amount:F

.field private color:I

.field private monochrome:Z

.field private radius:I

.field private randomNumbers:Ljava/util/Random;

.field private shine:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    const v0, 0x3dcccccd    # 0.1f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    const v1, -0x777778

    .line 31
    iput v1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    .line 32
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    return-void
.end method

.method public constructor <init>(IIFZF)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 29
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    const v0, 0x3dcccccd    # 0.1f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    const v1, -0x777778

    .line 31
    iput v1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    .line 32
    iput v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    .line 40
    iput p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    .line 41
    iput p2, p0, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    .line 42
    iput p3, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    .line 43
    iput-boolean p4, p0, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    .line 44
    iput p5, p0, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    return-void
.end method

.method private static clamp(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private static mod(II)I
    .locals 1

    .line 114
    div-int v0, p0, p1

    mul-int v0, v0, p1

    sub-int/2addr p0, v0

    if-gez p0, :cond_0

    add-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method private random(I)I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    add-int/2addr p1, v0

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xff

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public blur([I[III)V
    .locals 10

    add-int/lit8 v0, p3, -0x1

    mul-int/lit8 v1, p4, 0x2

    add-int/lit8 v1, v1, 0x1

    neg-int v2, p4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-gt v2, p4, :cond_0

    .line 128
    invoke-static {v2, p3}, Lcom/jhlabs/image/BrushedMetalFilter;->mod(II)I

    move-result v7

    aget v7, p1, v7

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, p3, :cond_3

    const/high16 v2, -0x1000000

    .line 135
    div-int v7, v4, v1

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    div-int v7, v5, v1

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v2, v7

    div-int v7, v6, v1

    or-int/2addr v2, v7

    aput v2, p2, v3

    add-int v2, v3, p4

    add-int/lit8 v2, v2, 0x1

    if-le v2, v0, :cond_1

    .line 139
    invoke-static {v2, p3}, Lcom/jhlabs/image/BrushedMetalFilter;->mod(II)I

    move-result v2

    :cond_1
    sub-int v7, v3, p4

    if-gez v7, :cond_2

    .line 142
    invoke-static {v7, p3}, Lcom/jhlabs/image/BrushedMetalFilter;->mod(II)I

    move-result v7

    .line 143
    :cond_2
    aget v2, p1, v2

    .line 144
    aget v7, p1, v7

    const/high16 v8, 0xff0000

    and-int v9, v2, v8

    and-int/2addr v8, v7

    sub-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x10

    add-int/2addr v4, v8

    const v8, 0xff00

    and-int v9, v2, v8

    and-int/2addr v8, v7

    sub-int/2addr v9, v8

    shr-int/lit8 v8, v9, 0x8

    add-int/2addr v5, v8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v2, v7

    add-int/2addr v6, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p2, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    .line 195
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

.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 18

    move-object/from16 v7, p0

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v8

    .line 49
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v9

    if-nez p2, :cond_0

    const/4 v0, 0x0

    move-object/from16 v1, p1

    .line 52
    invoke-virtual {v7, v1, v0}, Lcom/jhlabs/image/BrushedMetalFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    .line 54
    :goto_0
    new-array v11, v8, [I

    .line 55
    new-array v12, v8, [I

    .line 57
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, v7, Lcom/jhlabs/image/BrushedMetalFilter;->randomNumbers:Ljava/util/Random;

    .line 58
    iget v0, v7, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    const/high16 v1, -0x1000000

    and-int v13, v0, v1

    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v14, v1, 0xff

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v15, v1, 0xff

    and-int/lit16 v6, v0, 0xff

    const/16 v16, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_3

    .line 67
    iget v1, v7, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    const/4 v2, 0x0

    const/high16 v3, 0x437f0000    # 255.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    mul-float v1, v1, v3

    float-to-double v1, v1

    int-to-double v3, v0

    move/from16 v17, v9

    move-object/from16 p2, v10

    int-to-double v9, v8

    .line 68
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v3, v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    add-int v2, v14, v1

    add-int v3, v15, v1

    add-int/2addr v1, v6

    goto :goto_3

    :cond_1
    move/from16 v17, v9

    move-object/from16 p2, v10

    move v1, v6

    move v2, v14

    move v3, v15

    .line 73
    :goto_3
    iget-boolean v4, v7, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x40000000    # 2.0f

    .line 74
    iget-object v9, v7, Lcom/jhlabs/image/BrushedMetalFilter;->randomNumbers:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float v9, v9, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v9, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v9, v9, v4

    iget v4, v7, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    mul-float v9, v9, v4

    float-to-int v4, v9

    add-int/2addr v2, v4

    .line 75
    invoke-static {v2}, Lcom/jhlabs/image/BrushedMetalFilter;->clamp(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v13

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/jhlabs/image/BrushedMetalFilter;->clamp(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/2addr v1, v4

    invoke-static {v1}, Lcom/jhlabs/image/BrushedMetalFilter;->clamp(I)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, v11, v0

    goto :goto_4

    .line 77
    :cond_2
    invoke-direct {v7, v2}, Lcom/jhlabs/image/BrushedMetalFilter;->random(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v13

    invoke-direct {v7, v3}, Lcom/jhlabs/image/BrushedMetalFilter;->random(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    invoke-direct {v7, v1}, Lcom/jhlabs/image/BrushedMetalFilter;->random(I)I

    move-result v1

    or-int/2addr v1, v2

    aput v1, v11, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v10, p2

    move/from16 v9, v17

    goto/16 :goto_2

    :cond_3
    move/from16 v17, v9

    move-object/from16 p2, v10

    .line 81
    iget v0, v7, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    if-eqz v0, :cond_4

    .line 82
    invoke-virtual {v7, v11, v12, v8, v0}, Lcom/jhlabs/image/BrushedMetalFilter;->blur([I[III)V

    const/4 v2, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v5

    move v4, v8

    move v10, v5

    move v5, v9

    move v9, v6

    move-object v6, v12

    .line 83
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/BrushedMetalFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    goto :goto_5

    :cond_4
    move v10, v5

    move v9, v6

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v3, v10

    move v4, v8

    move-object v6, v11

    .line 85
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/BrushedMetalFilter;->setRGB(Ljava/awt/image/BufferedImage;IIII[I)V

    :goto_5
    add-int/lit8 v5, v10, 0x1

    move-object/from16 v10, p2

    move v6, v9

    move/from16 v9, v17

    goto/16 :goto_1

    :cond_5
    move-object/from16 p2, v10

    return-object p2
.end method

.method public getAmount()F
    .locals 1

    .line 165
    iget v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    return v0
.end method

.method public getBounds2D(Ljava/awt/image/BufferedImage;)Ljava/awt/geom/Rectangle2D;
    .locals 3

    .line 199
    new-instance v0, Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    return v0
.end method

.method public getMonochrome()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    return v0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 4

    if-nez p2, :cond_0

    .line 204
    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-direct {p2}, Ljava/awt/geom/Point2D$Double;-><init>()V

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v2

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/awt/geom/Point2D;->setLocation(DD)V

    return-object p2
.end method

.method public getRadius()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    return v0
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShine()F
    .locals 1

    .line 189
    iget v0, p0, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->amount:F

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->color:I

    return-void
.end method

.method public setMonochrome(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->monochrome:Z

    return-void
.end method

.method public setRGB(Ljava/awt/image/BufferedImage;IIII[I)V
    .locals 10

    .line 218
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

    .line 222
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/BufferedImage;->setRGB(IIII[III)V

    goto :goto_1

    .line 220
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

.method public setRadius(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->radius:I

    return-void
.end method

.method public setShine(F)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/jhlabs/image/BrushedMetalFilter;->shine:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Texture/Brushed Metal..."

    return-object v0
.end method
