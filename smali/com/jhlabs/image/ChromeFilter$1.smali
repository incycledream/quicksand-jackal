.class Lcom/jhlabs/image/ChromeFilter$1;
.super Lcom/jhlabs/image/TransferFilter;
.source "ChromeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jhlabs/image/ChromeFilter;->filter(Ljava/awt/image/BufferedImage;Ljava/awt/image/BufferedImage;)Ljava/awt/image/BufferedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jhlabs/image/ChromeFilter;


# direct methods
.method constructor <init>(Lcom/jhlabs/image/ChromeFilter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/jhlabs/image/ChromeFilter$1;->this$0:Lcom/jhlabs/image/ChromeFilter;

    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected transferFunction(F)F
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/jhlabs/image/ChromeFilter$1;->this$0:Lcom/jhlabs/image/ChromeFilter;

    invoke-static {v0}, Lcom/jhlabs/image/ChromeFilter;->access$000(Lcom/jhlabs/image/ChromeFilter;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v1, v1, p1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr p1, v0

    neg-float p1, p1

    .line 50
    iget-object v0, p0, Lcom/jhlabs/image/ChromeFilter$1;->this$0:Lcom/jhlabs/image/ChromeFilter;

    invoke-static {v0}, Lcom/jhlabs/image/ChromeFilter;->access$100(Lcom/jhlabs/image/ChromeFilter;)F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method
