.class public Lcom/jhlabs/image/LookupFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "LookupFilter.java"


# instance fields
.field private colormap:Lcom/jhlabs/image/Colormap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    .line 27
    new-instance v0, Lcom/jhlabs/image/Gradient;

    invoke-direct {v0}, Lcom/jhlabs/image/Gradient;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/jhlabs/image/LookupFilter;->canFilterIndexColorModel:Z

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/image/Colormap;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    .line 27
    new-instance v0, Lcom/jhlabs/image/Gradient;

    invoke-direct {v0}, Lcom/jhlabs/image/Gradient;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/jhlabs/image/LookupFilter;->canFilterIndexColorModel:Z

    .line 35
    iput-object p1, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    and-int/lit16 p3, p3, 0xff

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    .line 51
    div-int/lit8 p1, p1, 0x3

    .line 52
    iget-object p2, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    int-to-float p1, p1

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p1, p3

    invoke-interface {p2, p1}, Lcom/jhlabs/image/Colormap;->getColor(F)I

    move-result p1

    return p1
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jhlabs/image/LookupFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Lookup..."

    return-object v0
.end method
