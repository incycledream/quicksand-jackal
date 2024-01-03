.class public Lcom/jhlabs/image/JavaLnFFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "JavaLnFFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    and-int/lit8 p1, p1, 0x1

    and-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_0

    return p3

    :cond_0
    const/high16 p1, 0x3e800000    # 0.25f

    const p2, -0x666667

    .line 33
    invoke-static {p1, p2, p3}, Lcom/jhlabs/image/ImageMath;->mixColors(FII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Java L&F Stipple"

    return-object v0
.end method
