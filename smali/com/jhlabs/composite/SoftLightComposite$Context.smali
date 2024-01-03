.class Lcom/jhlabs/composite/SoftLightComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "SoftLightComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/SoftLightComposite;
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
    .locals 16

    move-object/from16 v0, p1

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 41
    aget v3, v0, v2

    .line 42
    aget v4, p2, v2

    add-int/lit8 v5, v2, 0x1

    .line 43
    aget v6, v0, v5

    .line 44
    aget v7, p2, v5

    add-int/lit8 v8, v2, 0x2

    .line 45
    aget v9, v0, v8

    .line 46
    aget v10, p2, v8

    add-int/lit8 v11, v2, 0x3

    .line 47
    aget v12, v0, v11

    .line 48
    aget v13, p2, v11

    .line 52
    invoke-static {v3, v4}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v14

    rsub-int v15, v4, 0xff

    rsub-int v3, v3, 0xff

    .line 53
    invoke-static {v15, v3}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v3

    rsub-int v3, v3, 0xff

    sub-int/2addr v3, v14

    invoke-static {v4, v3}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v3

    add-int/2addr v14, v3

    .line 54
    invoke-static {v6, v7}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v3

    rsub-int v15, v7, 0xff

    rsub-int v6, v6, 0xff

    .line 55
    invoke-static {v15, v6}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v6

    rsub-int v6, v6, 0xff

    sub-int/2addr v6, v3

    invoke-static {v7, v6}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v6

    add-int/2addr v3, v6

    .line 56
    invoke-static {v9, v10}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v6

    rsub-int v15, v10, 0xff

    rsub-int v9, v9, 0xff

    .line 57
    invoke-static {v15, v9}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v9

    rsub-int v9, v9, 0xff

    sub-int/2addr v9, v6

    invoke-static {v10, v9}, Lcom/jhlabs/composite/SoftLightComposite$Context;->multiply255(II)I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v9, v12

    mul-float v9, v9, p3

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v12, v9, v12

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    int-to-float v14, v14

    mul-float v14, v14, v12

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v14, v4

    float-to-int v4, v14

    .line 62
    aput v4, p2, v2

    int-to-float v3, v3

    mul-float v3, v3, v12

    int-to-float v4, v7

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 63
    aput v3, p2, v5

    int-to-float v3, v6

    mul-float v12, v12, v3

    int-to-float v3, v10

    mul-float v3, v3, v15

    add-float/2addr v12, v3

    float-to-int v3, v12

    .line 64
    aput v3, p2, v8

    int-to-float v3, v13

    mul-float v3, v3, v15

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 65
    aput v3, p2, v11

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_0
    return-void
.end method
