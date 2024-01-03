.class public Lcom/jhlabs/math/RidgedFBM;
.super Ljava/lang/Object;
.source "RidgedFBM.java"

# interfaces
.implements Lcom/jhlabs/math/Function2D;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FF)F
    .locals 0

    .line 22
    invoke-static {p1, p2}, Lcom/jhlabs/math/Noise;->noise2(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    return p2
.end method
