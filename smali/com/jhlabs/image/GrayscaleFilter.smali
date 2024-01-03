.class public Lcom/jhlabs/image/GrayscaleFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "GrayscaleFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jhlabs/image/GrayscaleFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 1

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p3, p3, 0xff

    mul-int/lit8 p2, p2, 0x4d

    mul-int/lit16 v0, v0, 0x97

    add-int/2addr p2, v0

    mul-int/lit8 p3, p3, 0x1c

    add-int/2addr p2, p3

    shr-int/lit8 p2, p2, 0x8

    shl-int/lit8 p3, p2, 0x10

    or-int/2addr p1, p3

    shl-int/lit8 p3, p2, 0x8

    or-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Grayscale"

    return-object v0
.end method
