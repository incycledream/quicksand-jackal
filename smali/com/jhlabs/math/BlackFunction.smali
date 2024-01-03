.class public Lcom/jhlabs/math/BlackFunction;
.super Ljava/lang/Object;
.source "BlackFunction.java"

# interfaces
.implements Lcom/jhlabs/math/BinaryFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlack(I)Z
    .locals 1

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
