.class public abstract Lcom/jhlabs/math/CompoundFunction2D;
.super Ljava/lang/Object;
.source "CompoundFunction2D.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# instance fields
.field protected basis:Lcom/jhlabs/math/Function2D;


# direct methods
.method public constructor <init>(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jhlabs/math/CompoundFunction2D;->basis:Lcom/jhlabs/math/Function2D;

    return-void
.end method


# virtual methods
.method public getBasis()Lcom/jhlabs/math/Function2D;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jhlabs/math/CompoundFunction2D;->basis:Lcom/jhlabs/math/Function2D;

    return-object v0
.end method

.method public setBasis(Lcom/jhlabs/math/Function2D;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/jhlabs/math/CompoundFunction2D;->basis:Lcom/jhlabs/math/Function2D;

    return-void
.end method
