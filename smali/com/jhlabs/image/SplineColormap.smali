.class public Lcom/jhlabs/image/SplineColormap;
.super Lcom/jhlabs/image/ArrayColormap;
.source "SplineColormap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public numKnots:I

.field public xKnots:[I

.field public yKnots:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/jhlabs/image/ArrayColormap;-><init>()V

    const/4 v0, 0x4

    .line 30
    iput v0, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    new-array v1, v0, [I

    .line 31
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    .line 39
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>([I[I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/image/ArrayColormap;-><init>()V

    const/4 v0, 0x4

    .line 30
    iput v0, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    new-array v1, v0, [I

    .line 31
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    .line 43
    iput-object p1, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    .line 44
    iput-object p2, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    .line 45
    array-length p1, p1

    iput p1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    .line 46
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data
.end method

.method private rebuildGradient()V
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 91
    iget v2, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    add-int/lit8 v3, v2, -0x1

    const/16 v4, 0x100

    aput v4, v0, v3

    .line 92
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    const/4 v3, 0x1

    aget v3, v0, v3

    aput v3, v0, v1

    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v2, v2, -0x2

    .line 93
    aget v2, v0, v2

    aput v2, v0, v3

    :goto_0
    if-ge v1, v4, :cond_0

    .line 95
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->map:[I

    iget v2, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    iget-object v3, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    iget-object v5, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    invoke-static {v1, v2, v3, v5}, Lcom/jhlabs/image/ImageMath;->colorSpline(II[I[I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sortKnots()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 99
    :goto_0
    iget v2, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    if-ge v1, v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v1, :cond_1

    .line 101
    iget-object v3, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    aget v4, v3, v1

    aget v5, v3, v2

    if-ge v4, v5, :cond_0

    .line 102
    aget v4, v3, v1

    .line 103
    aget v5, v3, v2

    aput v5, v3, v1

    .line 104
    aput v4, v3, v2

    .line 105
    iget-object v3, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    aget v4, v3, v1

    .line 106
    aget v5, v3, v2

    aput v5, v3, v1

    .line 107
    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addKnot(II)V
    .locals 5

    .line 59
    iget v0, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    add-int/lit8 v2, v0, 0x1

    .line 60
    new-array v2, v2, [I

    .line 61
    iget-object v3, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    iget v3, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v1, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    .line 64
    iput-object v2, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    .line 65
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    iget v1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    aput p1, v0, v1

    .line 66
    iget-object p1, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 67
    iput v1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    .line 68
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->sortKnots()V

    .line 69
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void
.end method

.method public getKnot(I)I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    aget p1, v0, p1

    return p1
.end method

.method public removeKnot(I)V
    .locals 3

    .line 73
    iget v0, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    iget v1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    :cond_1
    iget p1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jhlabs/image/SplineColormap;->numKnots:I

    .line 80
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void
.end method

.method public setKnot(II)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->yKnots:[I

    aput p2, v0, p1

    .line 55
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void
.end method

.method public setKnotPosition(II)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/jhlabs/image/SplineColormap;->xKnots:[I

    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    aput p2, v0, p1

    .line 85
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->sortKnots()V

    .line 86
    invoke-direct {p0}, Lcom/jhlabs/image/SplineColormap;->rebuildGradient()V

    return-void
.end method
