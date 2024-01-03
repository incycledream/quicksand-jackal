.class public Lcom/jhlabs/image/ArrayColormap;
.super Ljava/lang/Object;
.source "ArrayColormap.java"

# interfaces
.implements Lcom/jhlabs/image/Colormap;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x6ee3b70fc9402713L


# instance fields
.field protected map:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 35
    iput-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 48
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jhlabs/image/ArrayColormap;

    .line 49
    iget-object v1, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jhlabs/image/ArrayColormap;->map:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColor(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    const/16 v0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 p1, 0xff

    .line 86
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    aget p1, v0, p1

    return p1
.end method

.method public getMap()[I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    return-object v0
.end method

.method public setColor(II)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    aput p2, v0, p1

    return-void
.end method

.method public setColorInterpolated(IIII)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    aget v1, v0, p2

    .line 96
    aget v0, v0, p3

    move v2, p2

    :goto_0
    if-gt v2, p1, :cond_0

    .line 98
    iget-object v3, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    sub-int v4, v2, p2

    int-to-float v4, v4

    sub-int v5, p1, p2

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v1, p4}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_1
    if-ge p2, p3, :cond_1

    .line 100
    iget-object v1, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    sub-int v2, p2, p1

    int-to-float v2, v2

    sub-int v3, p3, p1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, p4, v0}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setColorRange(III)V
    .locals 1

    :goto_0
    if-gt p1, p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    aput p3, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setColorRange(IIII)V
    .locals 4

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    sub-int v2, v0, p1

    int-to-float v2, v2

    sub-int v3, p2, p1

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, p3, p4}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMap([I)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jhlabs/image/ArrayColormap;->map:[I

    return-void
.end method
