.class public Lcom/jhlabs/image/ChromeFilter;
.super Lcom/jhlabs/image/LightFilter;
.source "ChromeFilter.java"


# instance fields
.field private amount:F

.field private exposure:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/LightFilter;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 25
    iput v0, p0, Lcom/jhlabs/image/ChromeFilter;->amount:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/jhlabs/image/ChromeFilter;->exposure:F

    return-void
.end method

.method static synthetic access$000(Lcom/jhlabs/image/ChromeFilter;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/jhlabs/image/ChromeFilter;->amount:F

    return p0
.end method

.method static synthetic access$100(Lcom/jhlabs/image/ChromeFilter;)F
    .locals 0

    .line 24
    iget p0, p0, Lcom/jhlabs/image/ChromeFilter;->exposure:F

    return p0
.end method


# virtual methods
.method public filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, v0}, Lcom/jhlabs/image/ChromeFilter;->setColorSource(I)V

    .line 46
    invoke-super {p0, p1, p2}, Lcom/jhlabs/image/LightFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    .line 47
    new-instance p2, Lcom/jhlabs/image/ChromeFilter$1;

    invoke-direct {p2, p0}, Lcom/jhlabs/image/ChromeFilter$1;-><init>(Lcom/jhlabs/image/ChromeFilter;)V

    .line 53
    invoke-virtual {p2, p1, p1}, Lcom/jhlabs/image/TransferFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/jhlabs/image/ChromeFilter;->amount:F

    return v0
.end method

.method public getExposure()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/image/ChromeFilter;->exposure:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/jhlabs/image/ChromeFilter;->amount:F

    return-void
.end method

.method public setExposure(F)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/jhlabs/image/ChromeFilter;->exposure:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Effects/Chrome..."

    return-object v0
.end method
