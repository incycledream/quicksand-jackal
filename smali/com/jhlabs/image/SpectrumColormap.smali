.class public Lcom/jhlabs/image/SpectrumColormap;
.super Ljava/lang/Object;
.source "SpectrumColormap.java"

# interfaces
.implements Lcom/jhlabs/image/Colormap;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor(F)I
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    invoke-static {p1, v0, v1}, Lcom/jhlabs/image/ImageMath;->clamp(FFF)F

    move-result p1

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43be0000    # 380.0f

    add-float/2addr p1, v0

    invoke-static {p1}, Lcom/jhlabs/image/Spectrum;->wavelengthToRGB(F)I

    move-result p1

    return p1
.end method
