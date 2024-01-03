.class public Lcom/jhlabs/image/LinearColormap;
.super Ljava/lang/Object;
.source "LinearColormap.java"

# interfaces
.implements Lcom/jhlabs/image/Colormap;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x3b10ffca164753a4L


# instance fields
.field private color1:I

.field private color2:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/jhlabs/image/LinearColormap;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/jhlabs/image/LinearColormap;->color1:I

    .line 43
    iput p2, p0, Lcom/jhlabs/image/LinearColormap;->color2:I

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    invoke-static {p1, v0, v1}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    iget v0, p0, Lcom/jhlabs/image/LinearColormap;->color1:I

    iget v1, p0, Lcom/jhlabs/image/LinearColormap;->color2:I

    invoke-static {p1, v0, v1}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public getColor1()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/jhlabs/image/LinearColormap;->color1:I

    return v0
.end method

.method public getColor2()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/jhlabs/image/LinearColormap;->color2:I

    return v0
.end method

.method public setColor1(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/LinearColormap;->color1:I

    return-void
.end method

.method public setColor2(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/jhlabs/image/LinearColormap;->color2:I

    return-void
.end method
