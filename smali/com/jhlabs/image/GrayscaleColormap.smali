.class public Lcom/jhlabs/image/GrayscaleColormap;
.super Ljava/lang/Object;
.source "GrayscaleColormap.java"

# interfaces
.implements Lcom/jhlabs/image/Colormap;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x537a2d5eb30e6afdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 2

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

    :cond_1
    :goto_0
    const/high16 v0, -0x1000000

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr p1, v0

    return p1
.end method
