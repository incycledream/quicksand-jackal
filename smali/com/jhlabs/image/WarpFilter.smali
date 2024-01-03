.class public Lcom/jhlabs/image/WarpFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "WarpFilter.java"


# static fields
.field static final serialVersionUID:J = 0x12078114eed6a702L


# instance fields
.field private destGrid:Lcom/jhlabs/image/WarpGrid;

.field private frames:I

.field private morphImage:Ljava/awt/image/BufferedImage;

.field private sourceGrid:Lcom/jhlabs/image/WarpGrid;

.field private time:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    .line 53
    iput-object p1, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    .line 54
    iput-object p2, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    return-void
.end method


# virtual methods
.method public crossDissolve([I[IIIF)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p4, :cond_1

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p3, :cond_0

    .line 152
    aget v4, p1, v3

    aget v5, p2, v3

    invoke-static {p5, v4, v5}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 9

    mul-int p4, p1, p2

    .line 121
    new-array p4, p4, [I

    .line 123
    iget-object v1, p0, Lcom/jhlabs/image/WarpFilter;->morphImage:Ljava/awt/image/BufferedImage;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WarpFilter;->getRGB(Ljava/awt/image/BufferedImage;IIII[I)[I

    move-result-object v2

    .line 125
    iget-object v4, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    iget-object v5, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    iget v8, p0, Lcom/jhlabs/image/WarpFilter;->time:F

    move-object v1, p3

    move-object v3, p4

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/jhlabs/image/WarpFilter;->morph([I[I[ILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;IIF)V

    goto :goto_1

    .line 126
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 127
    iget-object v4, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    iget-object v5, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    move-object v0, v4

    move-object v1, p3

    move v2, p1

    move v3, p2

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WarpGrid;->warp([IIILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;[I)V

    goto :goto_1

    .line 129
    :cond_1
    new-instance v7, Lcom/jhlabs/image/WarpGrid;

    iget-object v0, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    iget v0, v0, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget-object v1, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    iget v1, v1, Lcom/jhlabs/image/WarpGrid;->cols:I

    invoke-direct {v7, v0, v1, p1, p2}, Lcom/jhlabs/image/WarpGrid;-><init>(IIII)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 130
    :goto_0
    iget v0, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    if-ge v8, v0, :cond_2

    int-to-float v1, v8

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 132
    iget-object v0, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    iget-object v2, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    invoke-virtual {v0, v1, v2, v7}, Lcom/jhlabs/image/WarpGrid;->lerp(FLcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;)V

    .line 133
    iget-object v4, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    move-object v0, v4

    move-object v1, p3

    move v2, p1

    move v3, p2

    move-object v5, v7

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WarpGrid;->warp([IIILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;[I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p4
.end method

.method public getDestGrid()Lcom/jhlabs/image/WarpGrid;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    return-object v0
.end method

.method public getFrames()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    return v0
.end method

.method public getMorphImage()Ljava/awt/image/BufferedImage;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/jhlabs/image/WarpFilter;->morphImage:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getSourceGrid()Lcom/jhlabs/image/WarpGrid;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    return-object v0
.end method

.method public getTime()F
    .locals 1

    .line 113
    iget v0, p0, Lcom/jhlabs/image/WarpFilter;->time:F

    return v0
.end method

.method public morph([I[I[ILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;IIF)V
    .locals 13

    move-object/from16 v4, p4

    move/from16 v7, p6

    move/from16 v8, p7

    .line 140
    new-instance v9, Lcom/jhlabs/image/WarpGrid;

    iget v0, v4, Lcom/jhlabs/image/WarpGrid;->rows:I

    iget v1, v4, Lcom/jhlabs/image/WarpGrid;->cols:I

    invoke-direct {v9, v0, v1, v7, v8}, Lcom/jhlabs/image/WarpGrid;-><init>(IIII)V

    move-object/from16 v10, p5

    move/from16 v11, p8

    .line 141
    invoke-virtual {v4, v11, v10, v9}, Lcom/jhlabs/image/WarpGrid;->lerp(FLcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;)V

    move-object/from16 v0, p4

    move-object v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    move-object v5, v9

    move-object/from16 v6, p3

    .line 142
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WarpGrid;->warp([IIILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;[I)V

    mul-int v0, v7, v8

    .line 143
    new-array v12, v0, [I

    move-object/from16 v0, p5

    move-object v1, p2

    move-object/from16 v4, p5

    move-object v6, v12

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/jhlabs/image/WarpGrid;->warp([IIILcom/jhlabs/image/WarpGrid;Lcom/jhlabs/image/WarpGrid;[I)V

    move-object v0, p0

    move-object/from16 v1, p3

    move-object v2, v12

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/jhlabs/image/WarpFilter;->crossDissolve([I[IIIF)V

    return-void
.end method

.method public setDestGrid(Lcom/jhlabs/image/WarpGrid;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/jhlabs/image/WarpFilter;->destGrid:Lcom/jhlabs/image/WarpGrid;

    return-void
.end method

.method public setFrames(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    return-void
.end method

.method public setMorphImage(Ljava/awt/image/BufferedImage;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/jhlabs/image/WarpFilter;->morphImage:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setSourceGrid(Lcom/jhlabs/image/WarpGrid;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/jhlabs/image/WarpFilter;->sourceGrid:Lcom/jhlabs/image/WarpGrid;

    return-void
.end method

.method public setTime(F)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/jhlabs/image/WarpFilter;->time:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Distort/Mesh Warp..."

    return-object v0
.end method

.method protected transformSpace(Ljava/awt/Rectangle;)V
    .locals 2

    .line 117
    iget v0, p1, Ljava/awt/Rectangle;->width:I

    iget v1, p0, Lcom/jhlabs/image/WarpFilter;->frames:I

    mul-int v0, v0, v1

    iput v0, p1, Ljava/awt/Rectangle;->width:I

    return-void
.end method
