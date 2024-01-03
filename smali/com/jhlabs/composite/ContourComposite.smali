.class public final Lcom/jhlabs/composite/ContourComposite;
.super Ljava/lang/Object;
.source "ContourComposite.java"

# interfaces
.implements Ljava/awt/Composite;


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/jhlabs/composite/ContourComposite;->offset:I

    return-void
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 1

    .line 36
    new-instance p3, Lcom/jhlabs/composite/ContourCompositeContext;

    iget v0, p0, Lcom/jhlabs/composite/ContourComposite;->offset:I

    invoke-direct {p3, v0, p1, p2}, Lcom/jhlabs/composite/ContourCompositeContext;-><init>(ILjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 44
    instance-of p1, p1, Lcom/jhlabs/composite/ContourComposite;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
