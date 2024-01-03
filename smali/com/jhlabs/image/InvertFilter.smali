.class public Lcom/jhlabs/image/InvertFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "InvertFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/jhlabs/image/InvertFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    const/high16 p1, -0x1000000

    and-int/2addr p1, p3

    xor-int/lit8 p2, p3, -0x1

    const p3, 0xffffff

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Invert"

    return-object v0
.end method
