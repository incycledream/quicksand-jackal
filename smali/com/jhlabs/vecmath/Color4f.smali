.class public Lcom/jhlabs/vecmath/Color4f;
.super Lcom/jhlabs/vecmath/Tuple4f;
.source "Color4f.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/jhlabs/vecmath/Color4f;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 38
    iput p1, p0, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 39
    iput p2, p0, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 40
    iput p3, p0, Lcom/jhlabs/vecmath/Color4f;->z:F

    .line 41
    iput p4, p0, Lcom/jhlabs/vecmath/Color4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Color4f;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 45
    iget v0, p1, Lcom/jhlabs/vecmath/Color4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 46
    iget v0, p1, Lcom/jhlabs/vecmath/Color4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 47
    iget v0, p1, Lcom/jhlabs/vecmath/Color4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->z:F

    .line 48
    iget p1, p1, Lcom/jhlabs/vecmath/Color4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Color4f;->w:F

    return-void
.end method

.method public constructor <init>(Lcom/jhlabs/vecmath/Tuple4f;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 52
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->x:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->x:F

    .line 53
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->y:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->y:F

    .line 54
    iget v0, p1, Lcom/jhlabs/vecmath/Tuple4f;->z:F

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->z:F

    .line 55
    iget p1, p1, Lcom/jhlabs/vecmath/Tuple4f;->w:F

    iput p1, p0, Lcom/jhlabs/vecmath/Color4f;->w:F

    return-void
.end method

.method public constructor <init>(Ljava/awt/Color;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/jhlabs/vecmath/Color4f;->set(Ljava/awt/Color;)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jhlabs/vecmath/Tuple4f;-><init>()V

    const/4 v0, 0x0

    .line 31
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->x:F

    const/4 v0, 0x1

    .line 32
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->y:F

    const/4 v0, 0x2

    .line 33
    aget v0, p1, v0

    iput v0, p0, Lcom/jhlabs/vecmath/Color4f;->z:F

    const/4 v0, 0x3

    .line 34
    aget p1, p1, v0

    iput p1, p0, Lcom/jhlabs/vecmath/Color4f;->w:F

    return-void
.end method


# virtual methods
.method public get()Ljava/awt/Color;
    .locals 5

    .line 67
    new-instance v0, Ljava/awt/Color;

    iget v1, p0, Lcom/jhlabs/vecmath/Color4f;->x:F

    iget v2, p0, Lcom/jhlabs/vecmath/Color4f;->y:F

    iget v3, p0, Lcom/jhlabs/vecmath/Color4f;->z:F

    iget v4, p0, Lcom/jhlabs/vecmath/Color4f;->w:F

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/awt/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public set(Ljava/awt/Color;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0}, Ljava/awt/Color;->getRGBComponents([F)[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jhlabs/vecmath/Color4f;->set([F)V

    return-void
.end method
