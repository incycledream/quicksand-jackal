.class public final Lcom/jhlabs/composite/DifferenceComposite;
.super Lcom/jhlabs/composite/RGBComposite;
.source "DifferenceComposite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jhlabs/composite/DifferenceComposite$Context;
    }
.end annotation


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/jhlabs/composite/RGBComposite;-><init>(F)V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 1

    .line 29
    new-instance p3, Lcom/jhlabs/composite/DifferenceComposite$Context;

    iget v0, p0, Lcom/jhlabs/composite/DifferenceComposite;->extraAlpha:F

    invoke-direct {p3, v0, p1, p2}, Lcom/jhlabs/composite/DifferenceComposite$Context;-><init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-object p3
.end method
