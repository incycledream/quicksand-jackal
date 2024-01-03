.class public Lcom/jhlabs/math/CompositeFunction1D;
.super Ljava/lang/Object;
.source "CompositeFunction1D.java"

# interfaces
.implements Lcom/jhlabs/math/Function1D;


# instance fields
.field private f1:Lcom/jhlabs/math/Function1D;

.field private f2:Lcom/jhlabs/math/Function1D;


# direct methods
.method public constructor <init>(Lcom/jhlabs/math/Function1D;Lcom/jhlabs/math/Function1D;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jhlabs/math/CompositeFunction1D;->f1:Lcom/jhlabs/math/Function1D;

    .line 25
    iput-object p2, p0, Lcom/jhlabs/math/CompositeFunction1D;->f2:Lcom/jhlabs/math/Function1D;

    return-void
.end method


# virtual methods
.method public evaluate(F)F
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/jhlabs/math/CompositeFunction1D;->f1:Lcom/jhlabs/math/Function1D;

    iget-object v1, p0, Lcom/jhlabs/math/CompositeFunction1D;->f2:Lcom/jhlabs/math/Function1D;

    invoke-interface {v1, p1}, Lcom/jhlabs/math/Function1D;->evaluate(F)F

    move-result p1

    invoke-interface {v0, p1}, Lcom/jhlabs/math/Function1D;->evaluate(F)F

    move-result p1

    return p1
.end method
