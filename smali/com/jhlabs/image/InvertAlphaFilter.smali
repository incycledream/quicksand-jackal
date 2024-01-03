.class public Lcom/jhlabs/image/InvertAlphaFilter;
.super Lcom/jhlabs/image/PointFilter;
.source "InvertAlphaFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/PointFilter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/jhlabs/image/InvertAlphaFilter;->canFilterIndexColorModel:Z

    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 0

    const/high16 p1, -0x1000000

    xor-int/2addr p1, p3

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Alpha/Invert"

    return-object v0
.end method
