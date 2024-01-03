.class Lcom/jhlabs/image/LightFilter$1;
.super Ljava/lang/Object;
.source "LightFilter.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jhlabs/image/LightFilter;->filterPixels(II[ILjava/awt/Rectangle;)[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private original:Lcom/jhlabs/math/Function2D;

.field final synthetic this$0:Lcom/jhlabs/image/LightFilter;

.field final synthetic val$bbump:Lcom/jhlabs/math/Function2D;


# direct methods
.method constructor <init>(Lcom/jhlabs/image/LightFilter;Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter$1;->this$0:Lcom/jhlabs/image/LightFilter;

    iput-object p2, p0, Lcom/jhlabs/image/LightFilter$1;->val$bbump:Lcom/jhlabs/math/Function2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iget-object p1, p0, Lcom/jhlabs/image/LightFilter$1;->val$bbump:Lcom/jhlabs/math/Function2D;

    iput-object p1, p0, Lcom/jhlabs/image/LightFilter$1;->original:Lcom/jhlabs/math/Function2D;

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/jhlabs/image/LightFilter$1;->original:Lcom/jhlabs/math/Function2D;

    invoke-interface {v0, p1, p2}, Lcom/jhlabs/math/Function2D;->evaluate(FF)F

    move-result p1

    .line 217
    iget-object p2, p0, Lcom/jhlabs/image/LightFilter$1;->this$0:Lcom/jhlabs/image/LightFilter;

    invoke-static {p2}, Lcom/jhlabs/image/LightFilter;->access$000(Lcom/jhlabs/image/LightFilter;)I

    move-result p2

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    const/high16 p2, 0x3f400000    # 0.75f

    .line 232
    invoke-static {p1, p2}, Lcom/jhlabs/image/ImageMath;->gain(FF)F

    move-result p1

    goto :goto_1

    .line 228
    :cond_1
    invoke-static {p1}, Lcom/jhlabs/image/ImageMath;->circleDown(F)F

    move-result p1

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {p1}, Lcom/jhlabs/image/ImageMath;->triangle(F)F

    move-result p1

    goto :goto_1

    :cond_3
    cmpg-float p2, p1, v1

    if-gez p2, :cond_5

    :goto_0
    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_4
    cmpl-float p2, p1, v1

    if-lez p2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return p1
.end method
