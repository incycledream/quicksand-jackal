.class public Lcom/jhlabs/image/MaskFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "MaskFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, -0xff0001

    .line 31
    invoke-direct {p0, v0}, Lcom/jhlabs/image/MaskFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/jhlabs/image/MaskFilter;->canFilterIndexColorModel:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/MaskFilter;->setMask(I)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    .line 48
    iget p1, p0, Lcom/jhlabs/image/MaskFilter;->mask:I

    and-int/2addr p1, p3

    return p1
.end method

.method public getMask()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/MaskFilter;->mask:I

    return v0
.end method

.method public setMask(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/jhlabs/image/MaskFilter;->mask:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Mask"

    return-object v0
.end method
