.class Lcom/jhlabs/composite/ColorBurnComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "ColorBurnComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/ColorBurnComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# direct methods
.method public constructor <init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;-><init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-void
.end method


# virtual methods
.method public composeRGB([I[IF)V
    .locals 17

    move-object/from16 v0, p1

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 41
    aget v4, v0, v3

    .line 42
    aget v5, p2, v3

    add-int/lit8 v6, v3, 0x1

    .line 43
    aget v7, v0, v6

    .line 44
    aget v8, p2, v6

    add-int/lit8 v9, v3, 0x2

    .line 45
    aget v10, v0, v9

    .line 46
    aget v11, p2, v9

    add-int/lit8 v12, v3, 0x3

    .line 47
    aget v13, v0, v12

    .line 48
    aget v14, p2, v12

    if-eqz v4, :cond_0

    rsub-int v15, v5, 0xff

    shl-int/lit8 v15, v15, 0x8

    .line 52
    div-int/2addr v15, v4

    rsub-int v4, v15, 0xff

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    if-eqz v7, :cond_1

    rsub-int v15, v8, 0xff

    shl-int/lit8 v15, v15, 0x8

    .line 56
    div-int/2addr v15, v7

    rsub-int v7, v15, 0xff

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    if-eqz v10, :cond_2

    rsub-int v15, v11, 0xff

    shl-int/lit8 v15, v15, 0x8

    .line 60
    div-int/2addr v15, v10

    rsub-int v10, v15, 0xff

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_2
    int-to-float v13, v13

    mul-float v13, v13, p3

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v15, v13, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v15

    int-to-float v4, v4

    mul-float v4, v4, v15

    int-to-float v5, v5

    mul-float v5, v5, v16

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 67
    aput v4, p2, v3

    int-to-float v4, v7

    mul-float v4, v4, v15

    int-to-float v5, v8

    mul-float v5, v5, v16

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 68
    aput v4, p2, v6

    int-to-float v4, v10

    mul-float v15, v15, v4

    int-to-float v4, v11

    mul-float v4, v4, v16

    add-float/2addr v15, v4

    float-to-int v4, v15

    .line 69
    aput v4, p2, v9

    int-to-float v4, v14

    mul-float v4, v4, v16

    add-float/2addr v13, v4

    float-to-int v4, v13

    .line 70
    aput v4, p2, v12

    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_3
    return-void
.end method
