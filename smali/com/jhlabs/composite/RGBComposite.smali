.class public abstract Lcom/jhlabs/composite/RGBComposite;
.super Ljava/lang/Object;
.source "RGBComposite.java"

# interfaces
.implements Ljava/awt/Composite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
    }
.end annotation


# instance fields
.field protected extraAlpha:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    invoke-direct {p0, v0}, Lcom/jhlabs/composite/RGBComposite;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 33
    iput p1, p0, Lcom/jhlabs/composite/RGBComposite;->extraAlpha:F

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RGBComposite: alpha must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 45
    instance-of v0, p1, Lcom/jhlabs/composite/RGBComposite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    check-cast p1, Lcom/jhlabs/composite/RGBComposite;

    .line 49
    iget v0, p0, Lcom/jhlabs/composite/RGBComposite;->extraAlpha:F

    iget p1, p1, Lcom/jhlabs/composite/RGBComposite;->extraAlpha:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public getAlpha()F
    .locals 1

    .line 37
    iget v0, p0, Lcom/jhlabs/composite/RGBComposite;->extraAlpha:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/jhlabs/composite/RGBComposite;->extraAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method
