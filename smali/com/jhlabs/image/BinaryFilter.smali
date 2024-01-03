.class public abstract Lcom/jhlabs/image/BinaryFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "BinaryFilter.java"


# instance fields
.field protected blackFunction:Lcom/jhlabs/math/BinaryFunction;

.field protected colormap:Lcom/jhlabs/image/Colormap;

.field protected iterations:I

.field protected newColor:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/jhlabs/image/BinaryFilter;->newColor:I

    .line 26
    new-instance v0, Lcom/jhlabs/math/BlackFunction;

    invoke-direct {v0}, Lcom/jhlabs/math/BlackFunction;-><init>()V

    iput-object v0, p0, Lcom/jhlabs/image/BinaryFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/jhlabs/image/BinaryFilter;->iterations:I

    return-void
.end method


# virtual methods
.method public getBlackFunction()Lcom/jhlabs/math/BinaryFunction;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/jhlabs/image/BinaryFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    return-object v0
.end method

.method public getColormap()Lcom/jhlabs/image/Colormap;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/jhlabs/image/BinaryFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-object v0
.end method

.method public getIterations()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/jhlabs/image/BinaryFilter;->iterations:I

    return v0
.end method

.method public getNewColor()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/jhlabs/image/BinaryFilter;->newColor:I

    return v0
.end method

.method public setBlackFunction(Lcom/jhlabs/math/BinaryFunction;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jhlabs/image/BinaryFilter;->blackFunction:Lcom/jhlabs/math/BinaryFunction;

    return-void
.end method

.method public setColormap(Lcom/jhlabs/image/Colormap;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jhlabs/image/BinaryFilter;->colormap:Lcom/jhlabs/image/Colormap;

    return-void
.end method

.method public setIterations(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/jhlabs/image/BinaryFilter;->iterations:I

    return-void
.end method

.method public setNewColor(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/jhlabs/image/BinaryFilter;->newColor:I

    return-void
.end method
