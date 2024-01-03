.class public Lcom/jhlabs/image/SolarizeFilter;
.super Lcom/jhlabs/image/TransferFilter;
.source "SolarizeFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jhlabs/image/TransferFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Colors/Solarize"

    return-object v0
.end method

.method protected transferFunction(F)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    sub-float/2addr p1, v1

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    sub-float/2addr v1, p1

    mul-float p1, v1, v0

    :goto_0
    return p1
.end method
