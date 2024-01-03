.class public Lcom/jhlabs/image/ShatterFilter;
.super Lcom/jhlabs/image/AbstractBufferedImageOp;
.source "ShatterFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/image/ShatterFilter$Tile;
    }
.end annotation


# instance fields
.field private centreX:F

.field private centreY:F

.field private distance:F

.field private endAlpha:F

.field private iterations:I

.field private rotation:F

.field private startAlpha:F

.field private tile:I

.field private transition:F

.field private zoom:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/jhlabs/image/AbstractBufferedImageOp;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->startAlpha:F

    .line 31
    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->endAlpha:F

    const/4 v0, 0x5

    .line 32
    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/jhlabs/image/ShatterFilter;->createCompatibleDestImage(Ljava/awt/image/BufferedImage;Ljava/awt/image/ColorModel;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 136
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    int-to-float v5, v5

    .line 138
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    mul-float v6, v6, v7

    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    mul-float v7, v7, v8

    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 140
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 143
    iget v8, v0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    mul-int v8, v8, v8

    .line 144
    new-array v9, v8, [Lcom/jhlabs/image/ShatterFilter$Tile;

    .line 145
    new-array v10, v8, [F

    .line 146
    new-array v11, v8, [F

    .line 147
    new-array v12, v8, [F

    .line 149
    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v13

    .line 152
    new-instance v14, Ljava/util/Random;

    move-object/from16 p2, v3

    const-wide/16 v2, 0x0

    invoke-direct {v14, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v3, 0x0

    .line 178
    :goto_1
    iget v15, v0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    const/high16 v16, 0x40000000    # 2.0f

    if-ge v3, v15, :cond_2

    float-to-int v2, v5

    mul-int v18, v2, v3

    .line 179
    div-int v1, v18, v15

    add-int/lit8 v18, v3, 0x1

    mul-int v2, v2, v18

    .line 180
    div-int/2addr v2, v15

    move-object/from16 v19, v13

    const/4 v15, 0x0

    .line 181
    :goto_2
    iget v13, v0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    if-ge v15, v13, :cond_1

    mul-int v20, v3, v13

    add-int v20, v20, v15

    move/from16 v21, v8

    float-to-int v8, v4

    mul-int v22, v8, v15

    move/from16 v23, v5

    .line 183
    div-int v5, v22, v13

    add-int/lit8 v22, v15, 0x1

    mul-int v8, v8, v22

    .line 184
    div-int/2addr v8, v13

    .line 185
    iget v13, v0, Lcom/jhlabs/image/ShatterFilter;->tile:I

    int-to-float v13, v13

    invoke-virtual {v14}, Ljava/util/Random;->nextFloat()F

    move-result v24

    mul-float v13, v13, v24

    aput v13, v10, v20

    .line 186
    iget v13, v0, Lcom/jhlabs/image/ShatterFilter;->tile:I

    int-to-float v13, v13

    invoke-virtual {v14}, Ljava/util/Random;->nextFloat()F

    move-result v24

    mul-float v13, v13, v24

    aput v13, v11, v20

    const/4 v13, 0x0

    .line 187
    aput v13, v10, v20

    .line 188
    aput v13, v11, v20

    .line 189
    iget v13, v0, Lcom/jhlabs/image/ShatterFilter;->tile:I

    int-to-float v13, v13

    invoke-virtual {v14}, Ljava/util/Random;->nextFloat()F

    move-result v24

    mul-float v24, v24, v16

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v24, v24, v17

    mul-float v13, v13, v24

    aput v13, v12, v20

    .line 190
    new-instance v13, Ljava/awt/Rectangle;

    move-object/from16 v24, v10

    sub-int v10, v8, v5

    move-object/from16 v25, v11

    sub-int v11, v2, v1

    invoke-direct {v13, v5, v1, v10, v11}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 191
    new-instance v26, Lcom/jhlabs/image/ShatterFilter$Tile;

    invoke-direct/range {v26 .. v26}, Lcom/jhlabs/image/ShatterFilter$Tile;-><init>()V

    aput-object v26, v9, v20

    move-object/from16 v26, v14

    .line 192
    aget-object v14, v9, v20

    iput-object v13, v14, Lcom/jhlabs/image/ShatterFilter$Tile;->shape:Ljava/awt/Shape;

    .line 193
    aget-object v13, v9, v20

    add-int/2addr v5, v8

    int-to-float v5, v5

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v5, v5, v8

    iput v5, v13, Lcom/jhlabs/image/ShatterFilter$Tile;->x:F

    .line 194
    aget-object v5, v9, v20

    add-int v13, v1, v2

    int-to-float v13, v13

    mul-float v13, v13, v8

    iput v13, v5, Lcom/jhlabs/image/ShatterFilter$Tile;->y:F

    .line 195
    aget-object v5, v9, v20

    int-to-float v8, v15

    sub-float v8, v6, v8

    sub-float v8, v4, v8

    iput v8, v5, Lcom/jhlabs/image/ShatterFilter$Tile;->vx:F

    .line 196
    aget-object v5, v9, v20

    int-to-float v8, v3

    sub-float v8, v7, v8

    sub-float v8, v23, v8

    iput v8, v5, Lcom/jhlabs/image/ShatterFilter$Tile;->vy:F

    .line 197
    aget-object v5, v9, v20

    int-to-float v8, v10

    iput v8, v5, Lcom/jhlabs/image/ShatterFilter$Tile;->w:F

    .line 198
    aget-object v5, v9, v20

    int-to-float v8, v11

    iput v8, v5, Lcom/jhlabs/image/ShatterFilter$Tile;->h:F

    move/from16 v8, v21

    move/from16 v15, v22

    move/from16 v5, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v14, v26

    goto/16 :goto_2

    :cond_1
    move-object/from16 v1, p1

    move/from16 v3, v18

    move-object/from16 v13, v19

    goto/16 :goto_1

    :cond_2
    move-object/from16 v19, v13

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v8, :cond_3

    int-to-float v2, v1

    int-to-float v3, v8

    div-float/2addr v2, v3

    mul-float v3, v2, v16

    float-to-double v3, v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    .line 204
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    .line 205
    iget v5, v0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    .line 206
    iget v5, v0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    .line 208
    aget-object v3, v9, v1

    .line 209
    iget-object v4, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->shape:Ljava/awt/Shape;

    invoke-interface {v4}, Ljava/awt/Shape;->getBounds()Ljava/awt/Rectangle;

    .line 210
    invoke-virtual/range {v19 .. v19}, Ljava/awt/Graphics2D;->getTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    .line 211
    iget v5, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->x:F

    iget v6, v0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    iget v7, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->vx:F

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    .line 212
    iget v6, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->y:F

    iget v7, v0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    iget v10, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->vy:F

    mul-float v7, v7, v10

    add-float/2addr v6, v7

    float-to-double v10, v5

    float-to-double v5, v6

    move-object/from16 v7, v19

    .line 213
    invoke-virtual {v7, v10, v11, v5, v6}, Ljava/awt/Graphics2D;->translate(DD)V

    .line 215
    iget v5, v0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    aget v6, v12, v1

    mul-float v5, v5, v6

    float-to-double v5, v5

    invoke-virtual {v7, v5, v6}, Ljava/awt/Graphics2D;->rotate(D)V

    const/high16 v5, 0x3f800000    # 1.0f

    .line 218
    invoke-static {v2, v5, v5}, Ljava/awt/Color;->getHSBColor(FFF)Ljava/awt/Color;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    .line 219
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->getClip()Ljava/awt/Shape;

    move-result-object v2

    .line 220
    iget-object v3, v3, Lcom/jhlabs/image/ShatterFilter$Tile;->shape:Ljava/awt/Shape;

    invoke-virtual {v7, v3}, Ljava/awt/Graphics2D;->clip(Ljava/awt/Shape;)V

    move-object/from16 v3, p1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 221
    invoke-virtual {v7, v3, v10, v10, v6}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 222
    invoke-virtual {v7, v2}, Ljava/awt/Graphics2D;->setClip(Ljava/awt/Shape;)V

    .line 223
    invoke-virtual {v7, v4}, Ljava/awt/Graphics2D;->setTransform(Ljava/awt/geom/AffineTransform;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v7, v19

    .line 226
    invoke-virtual {v7}, Ljava/awt/Graphics2D;->dispose()V

    return-object p2
.end method

.method public getCentre()Ljava/awt/geom/Point2D;
    .locals 3

    .line 108
    new-instance v0, Ljava/awt/geom/Point2D$Float;

    iget v1, p0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    iget v2, p0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    invoke-direct {v0, v1, v2}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    return-object v0
.end method

.method public getCentreX()F
    .locals 1

    .line 91
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .line 99
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->distance:F

    return v0
.end method

.method public getEndAlpha()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->endAlpha:F

    return v0
.end method

.method public getIterations()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    return v0
.end method

.method public getRotation()F
    .locals 1

    .line 59
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->rotation:F

    return v0
.end method

.method public getStartAlpha()F
    .locals 1

    .line 75
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->startAlpha:F

    return v0
.end method

.method public getTile()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->tile:I

    return v0
.end method

.method public getTransition()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .line 67
    iget v0, p0, Lcom/jhlabs/image/ShatterFilter;->zoom:F

    return v0
.end method

.method public setCentre(Ljava/awt/geom/Point2D;)V
    .locals 2

    .line 103
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    .line 104
    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide v0

    double-to-float p1, v0

    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->centreX:F

    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->centreY:F

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->distance:F

    return-void
.end method

.method public setEndAlpha(F)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->endAlpha:F

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->iterations:I

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->rotation:F

    return-void
.end method

.method public setStartAlpha(F)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->startAlpha:F

    return-void
.end method

.method public setTile(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->tile:I

    return-void
.end method

.method public setTransition(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->transition:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/jhlabs/image/ShatterFilter;->zoom:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Transition/Shatter..."

    return-object v0
.end method
