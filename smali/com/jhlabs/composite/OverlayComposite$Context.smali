.class Lcom/jhlabs/composite/OverlayComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "OverlayComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/OverlayComposite;
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
    if-ge v2, v1, :cond_3

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

    const/16 v14, 0x80

    if-ge v4, v14, :cond_0

    mul-int v3, v3, v4

    add-int/2addr v3, v14

    shr-int/lit8 v15, v3, 0x8

    add-int/2addr v15, v3

    shr-int/lit8 v3, v15, 0x8

    goto :goto_1

    :cond_0
    rsub-int v15, v4, 0xff

    rsub-int v3, v3, 0xff

    mul-int v15, v15, v3

    add-int/2addr v15, v14

    shr-int/lit8 v3, v15, 0x8

    add-int/2addr v3, v15

    shr-int/lit8 v3, v3, 0x8

    rsub-int v3, v3, 0xff

    :goto_1
    mul-int/lit8 v3, v3, 0x2

    if-ge v7, v14, :cond_1

    mul-int v6, v6, v7

    add-int/2addr v6, v14

    shr-int/lit8 v15, v6, 0x8

    add-int/2addr v15, v6

    shr-int/lit8 v6, v15, 0x8

    goto :goto_2

    :cond_1
    rsub-int v15, v7, 0xff

    rsub-int v6, v6, 0xff

    mul-int v15, v15, v6

    add-int/2addr v15, v14

    shr-int/lit8 v6, v15, 0x8

    add-int/2addr v6, v15

    shr-int/lit8 v6, v6, 0x8

    rsub-int v6, v6, 0xff

    :goto_2
    mul-int/lit8 v6, v6, 0x2

    if-ge v10, v14, :cond_2

    mul-int v9, v9, v10

    add-int/2addr v9, v14

    shr-int/lit8 v14, v9, 0x8

    add-int/2addr v14, v9

    shr-int/lit8 v9, v14, 0x8

    goto :goto_3

    :cond_2
    rsub-int v15, v10, 0xff

    rsub-int v9, v9, 0xff

    mul-int v15, v15, v9

    add-int/2addr v15, v14

    shr-int/lit8 v9, v15, 0x8

    add-int/2addr v9, v15

    shr-int/lit8 v9, v9, 0x8

    rsub-int v9, v9, 0xff

    :goto_3
    mul-int/lit8 v9, v9, 0x2

    int-to-float v12, v12

    mul-float v12, v12, p3

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v14, v12, v14

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v14

    int-to-float v3, v3

    mul-float v3, v3, v14

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 77
    aput v3, p2, v2

    int-to-float v3, v6

    mul-float v3, v3, v14

    int-to-float v4, v7

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 78
    aput v3, p2, v5

    int-to-float v3, v9

    mul-float v14, v14, v3

    int-to-float v3, v10

    mul-float v3, v3, v15

    add-float/2addr v14, v3

    float-to-int v3, v14

    .line 79
    aput v3, p2, v8

    int-to-float v3, v13

    mul-float v3, v3, v15

    add-float/2addr v12, v3

    float-to-int v3, v12

    .line 80
    aput v3, p2, v11

    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    :cond_3
    return-void
.end method
