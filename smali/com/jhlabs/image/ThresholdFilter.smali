.class public Lcom/jhlabs/image/ThresholdFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "ThresholdFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x1a5cc5cb64e7b6acL


# instance fields
.field private black:I

.field private lowerThreshold:I

.field private lowerThreshold3:I

.field private upperThreshold:I

.field private upperThreshold3:I

.field private white:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7f

    .line 33
    invoke-direct {p0, v0}, Lcom/jhlabs/image/ThresholdFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const v0, 0xffffff

    .line 29
    iput v0, p0, Lcom/jhlabs/image/ThresholdFilter;->white:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/jhlabs/image/ThresholdFilter;->black:I

    .line 37
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/ThresholdFilter;->setLowerThreshold(I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/ThresholdFilter;->setUpperThreshold(I)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 2

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, p3, 0xff

    add-int/2addr p2, v0

    add-int/2addr p2, v1

    .line 81
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->lowerThreshold3:I

    if-ge p2, v0, :cond_0

    .line 82
    iget p2, p0, Lcom/jhlabs/image/ThresholdFilter;->black:I

    :goto_0
    or-int/2addr p1, p2

    return p1

    .line 83
    :cond_0
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->upperThreshold3:I

    if-le p2, v0, :cond_1

    .line 84
    iget p2, p0, Lcom/jhlabs/image/ThresholdFilter;->white:I

    goto :goto_0

    :cond_1
    return p3
.end method

.method public getBlack()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->black:I

    return v0
.end method

.method public getLowerThreshold()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->lowerThreshold:I

    return v0
.end method

.method public getUpperThreshold()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->upperThreshold:I

    return v0
.end method

.method public getWhite()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/jhlabs/image/ThresholdFilter;->white:I

    return v0
.end method

.method public setBlack(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->black:I

    return-void
.end method

.method public setLowerThreshold(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->lowerThreshold:I

    mul-int/lit8 p1, p1, 0x3

    .line 43
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->lowerThreshold3:I

    return-void
.end method

.method public setUpperThreshold(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->upperThreshold:I

    mul-int/lit8 p1, p1, 0x3

    .line 52
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->upperThreshold3:I

    return-void
.end method

.method public setWhite(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/jhlabs/image/ThresholdFilter;->white:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Threshold..."

    return-object v0
.end method
