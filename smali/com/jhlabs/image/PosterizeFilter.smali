.class public Lcom/jhlabs/image/PosterizeFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "PosterizeFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private initialized:Z

.field private levels:[I

.field private numLevels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/jhlabs/image/PosterizeFilter;->initialized:Z

    const/4 v0, 0x6

    .line 29
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/PosterizeFilter;->setNumLevels(I)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2

    .line 49
    iget-boolean p1, p0, Lcom/jhlabs/image/PosterizeFilter;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/jhlabs/image/PosterizeFilter;->initialized:Z

    .line 51
    invoke-virtual {p0}, Lcom/jhlabs/image/PosterizeFilter;->initialize()V

    :cond_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 57
    iget-object v1, p0, Lcom/jhlabs/image/PosterizeFilter;->levels:[I

    aget p2, v1, p2

    .line 58
    aget v0, v1, v0

    .line 59
    aget p3, v1, p3

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    return p1
.end method

.method public getNumLevels()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/jhlabs/image/PosterizeFilter;->numLevels:I

    return v0
.end method

.method protected initialize()V
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 42
    iput-object v1, p0, Lcom/jhlabs/image/PosterizeFilter;->levels:[I

    .line 43
    iget v1, p0, Lcom/jhlabs/image/PosterizeFilter;->numLevels:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 45
    iget-object v3, p0, Lcom/jhlabs/image/PosterizeFilter;->levels:[I

    iget v4, p0, Lcom/jhlabs/image/PosterizeFilter;->numLevels:I

    mul-int v5, v4, v1

    div-int/2addr v5, v0

    mul-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v2

    div-int/2addr v5, v4

    aput v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setNumLevels(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/jhlabs/image/PosterizeFilter;->numLevels:I

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/jhlabs/image/PosterizeFilter;->initialized:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Posterize..."

    return-object v0
.end method
