.class public Lcom/jhlabs/math/MathFunction1D;
.super Ljava/lang/Object;
.source "MathFunction1D.java"

# interfaces
.implements Lcom/jhlabs/math/Function1D;


# static fields
.field public static final ACOS:I = -0x2

.field public static final ASIN:I = -0x1

.field public static final ATAN:I = -0x3

.field public static final COS:I = 0x2

.field public static final SIN:I = 0x1

.field public static final SQR:I = -0x4

.field public static final SQRT:I = 0x4

.field public static final TAN:I = 0x3


# instance fields
.field private operation:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/jhlabs/math/MathFunction1D;->operation:I

    return-void
.end method


# virtual methods
.method public evaluate(F)F
    .locals 2

    .line 37
    iget v0, p0, Lcom/jhlabs/math/MathFunction1D;->operation:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return p1

    :pswitch_1
    float-to-double v0, p1

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    return p1

    :pswitch_2
    float-to-double v0, p1

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    float-to-double v0, p1

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_4
    float-to-double v0, p1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_5
    float-to-double v0, p1

    .line 47
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_6
    float-to-double v0, p1

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_7
    float-to-double v0, p1

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_8
    mul-float p1, p1, p1

    return p1

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
