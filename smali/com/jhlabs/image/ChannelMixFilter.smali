.class public Lcom/jhlabs/image/ChannelMixFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "ChannelMixFilter.java"


# instance fields
.field public blueGreen:I

.field public greenRed:I

.field public intoB:I

.field public intoG:I

.field public intoR:I

.field public redBlue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 5

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    .line 87
    iget v1, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoR:I

    iget v2, p0, Lcom/jhlabs/image/ChannelMixFilter;->blueGreen:I

    mul-int v3, v2, v0

    rsub-int v2, v2, 0xff

    mul-int v2, v2, p3

    add-int/2addr v3, v2

    mul-int v3, v3, v1

    div-int/lit16 v3, v3, 0xff

    rsub-int v1, v1, 0xff

    mul-int v1, v1, p2

    add-int/2addr v3, v1

    div-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v1

    .line 88
    iget v2, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoG:I

    iget v3, p0, Lcom/jhlabs/image/ChannelMixFilter;->redBlue:I

    mul-int v4, v3, p3

    rsub-int v3, v3, 0xff

    mul-int v3, v3, p2

    add-int/2addr v4, v3

    mul-int v4, v4, v2

    div-int/lit16 v4, v4, 0xff

    rsub-int v2, v2, 0xff

    mul-int v2, v2, v0

    add-int/2addr v4, v2

    div-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    .line 89
    iget v3, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoB:I

    iget v4, p0, Lcom/jhlabs/image/ChannelMixFilter;->greenRed:I

    mul-int p2, p2, v4

    rsub-int v4, v4, 0xff

    mul-int v4, v4, v0

    add-int/2addr p2, v4

    mul-int p2, p2, v3

    div-int/lit16 p2, p2, 0xff

    rsub-int v0, v3, 0xff

    mul-int v0, v0, p3

    add-int/2addr p2, v0

    div-int/lit16 p2, p2, 0xff

    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    shl-int/lit8 p3, v1, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p3, v2, 0x8

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public getBlueGreen()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->blueGreen:I

    return v0
.end method

.method public getGreenRed()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->greenRed:I

    return v0
.end method

.method public getIntoB()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoB:I

    return v0
.end method

.method public getIntoG()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoG:I

    return v0
.end method

.method public getIntoR()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoR:I

    return v0
.end method

.method public getRedBlue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/ChannelMixFilter;->redBlue:I

    return v0
.end method

.method public setBlueGreen(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->blueGreen:I

    return-void
.end method

.method public setGreenRed(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->greenRed:I

    return-void
.end method

.method public setIntoB(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoB:I

    return-void
.end method

.method public setIntoG(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoG:I

    return-void
.end method

.method public setIntoR(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->intoR:I

    return-void
.end method

.method public setRedBlue(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/jhlabs/image/ChannelMixFilter;->redBlue:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Mix Channels..."

    return-object v0
.end method
