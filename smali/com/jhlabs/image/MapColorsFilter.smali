.class public Lcom/jhlabs/image/MapColorsFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "MapColorsFilter.java"


# instance fields
.field private newColor:I

.field private oldColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, -0x1

    const/high16 v1, -0x1000000

    .line 31
    invoke-direct {p0, v0, v1}, Lcom/jhlabs/image/MapColorsFilter;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/jhlabs/image/MapColorsFilter;->canFilterIndexColorModel:Z

    .line 36
    iput p1, p0, Lcom/jhlabs/image/MapColorsFilter;->oldColor:I

    .line 37
    iput p2, p0, Lcom/jhlabs/image/MapColorsFilter;->newColor:I

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    .line 41
    iget p1, p0, Lcom/jhlabs/image/MapColorsFilter;->oldColor:I

    if-ne p3, p1, :cond_0

    .line 42
    iget p1, p0, Lcom/jhlabs/image/MapColorsFilter;->newColor:I

    return p1

    :cond_0
    return p3
.end method
