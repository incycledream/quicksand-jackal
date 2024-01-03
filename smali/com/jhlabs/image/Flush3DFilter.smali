.class public Lcom/jhlabs/image/Flush3DFilter;
.super Lcom/jhlabs/image/WholeImageFilter;
.source "Flush3DFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/jhlabs/image/WholeImageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILjava/awt/Rectangle;)[I
    .locals 9

    mul-int p4, p1, p2

    .line 32
    new-array p4, p4, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_5

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    mul-int v4, v1, p1

    add-int/2addr v4, v2

    .line 36
    aget v5, p3, v4

    const/high16 v6, -0x1000000

    if-eq v5, v6, :cond_3

    if-lez v1, :cond_3

    if-lez v2, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 40
    aget v4, p3, v4

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v7, v1, -0x1

    mul-int v7, v7, p1

    add-int/2addr v7, v2

    .line 42
    aget v8, p3, v7

    if-ne v8, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    .line 44
    aget v7, p3, v7

    if-ne v7, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    const/4 v5, -0x1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    .line 49
    aput v5, p4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_5
    return-object p4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Flush 3D..."

    return-object v0
.end method
