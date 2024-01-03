.class public Lcom/jhlabs/image/FillFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "FillFilter.java"


# instance fields
.field private fillColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x1000000

    .line 31
    invoke-direct {p0, v0}, Lcom/jhlabs/image/FillFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    .line 35
    iput p1, p0, Lcom/jhlabs/image/FillFilter;->fillColor:I

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    .line 47
    iget p1, p0, Lcom/jhlabs/image/FillFilter;->fillColor:I

    return p1
.end method

.method public getFillColor()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/jhlabs/image/FillFilter;->fillColor:I

    return v0
.end method

.method public setFillColor(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jhlabs/image/FillFilter;->fillColor:I

    return-void
.end method
