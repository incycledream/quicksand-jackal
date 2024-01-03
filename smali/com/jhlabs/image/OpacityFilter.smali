.class public Lcom/jhlabs/image/OpacityFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "OpacityFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4e5473eada827509L


# instance fields
.field private opacity:I

.field private opacity24:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x88

    .line 36
    invoke-direct {p0, v0}, Lcom/jhlabs/image/OpacityFilter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/jhlabs/image/OpacityFilter;->setOpacity(I)V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    if-eqz p1, :cond_0

    const p1, 0xffffff

    and-int/2addr p1, p3

    .line 65
    iget p2, p0, Lcom/jhlabs/image/OpacityFilter;->opacity24:I

    or-int/2addr p1, p2

    return p1

    :cond_0
    return p3
.end method

.method public getOpacity()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/jhlabs/image/OpacityFilter;->opacity:I

    return v0
.end method

.method public setOpacity(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/jhlabs/image/OpacityFilter;->opacity:I

    shl-int/lit8 p1, p1, 0x18

    .line 52
    iput p1, p0, Lcom/jhlabs/image/OpacityFilter;->opacity24:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Transparency..."

    return-object v0
.end method
