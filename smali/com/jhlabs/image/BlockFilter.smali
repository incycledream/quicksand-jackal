.class public Lcom/jhlabs/image/BlockFilter;
.super Lcom/jhlabs/image/TransformFilter;
.source "BlockFilter.java"


# static fields
.field static final serialVersionUID:J = 0x7017a857bc3fdb59L


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/jhlabs/image/TransformFilter;-><init>()V

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/jhlabs/image/BlockFilter;->blockSize:I

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jhlabs/image/BlockFilter;->blockSize:I

    return v0
.end method

.method public setBlockSize(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/jhlabs/image/BlockFilter;->blockSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylize/Mosaic..."

    return-object v0
.end method

.method protected transform(IILjava/awt/Point;)V
    .locals 1

    .line 52
    iget v0, p0, Lcom/jhlabs/image/BlockFilter;->blockSize:I

    div-int/2addr p1, v0

    mul-int p1, p1, v0

    iput p1, p3, Ljava/awt/Point;->x:I

    .line 53
    div-int/2addr p2, v0

    mul-int p2, p2, v0

    iput p2, p3, Ljava/awt/Point;->y:I

    return-void
.end method

.method protected transformInverse(II[F)V
    .locals 2

    .line 57
    iget v0, p0, Lcom/jhlabs/image/BlockFilter;->blockSize:I

    div-int/2addr p1, v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    const/4 v1, 0x0

    aput p1, p3, v1

    .line 58
    div-int/2addr p2, v0

    mul-int p2, p2, v0

    int-to-float p1, p2

    const/4 p2, 0x1

    aput p1, p3, p2

    return-void
.end method
