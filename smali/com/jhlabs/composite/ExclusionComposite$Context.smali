.class Lcom/jhlabs/composite/ExclusionComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "ExclusionComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/ExclusionComposite;
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

    rsub-int v14, v4, 0xff

    sub-int/2addr v14, v4

    .line 51
    invoke-static {v3, v14}, Lcom/jhlabs/composite/ExclusionComposite$Context;->multiply255(II)I

    move-result v3

    add-int/2addr v3, v4

    rsub-int v14, v7, 0xff

    sub-int/2addr v14, v7

    .line 52
    invoke-static {v6, v14}, Lcom/jhlabs/composite/ExclusionComposite$Context;->multiply255(II)I

    move-result v6

    add-int/2addr v6, v7

    rsub-int v14, v10, 0xff

    sub-int/2addr v14, v10

    .line 53
    invoke-static {v9, v14}, Lcom/jhlabs/composite/ExclusionComposite$Context;->multiply255(II)I

    move-result v9

    add-int/2addr v9, v10

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

    .line 58
    aput v3, p2, v2

    int-to-float v3, v6

    mul-float v3, v3, v14

    int-to-float v4, v7

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 59
    aput v3, p2, v5

    int-to-float v3, v9

    mul-float v14, v14, v3

    int-to-float v3, v10

    mul-float v3, v3, v15

    add-float/2addr v14, v3

    float-to-int v3, v14

    .line 60
    aput v3, p2, v8

    int-to-float v3, v13

    mul-float v3, v3, v15

    add-float/2addr v12, v3

    float-to-int v3, v12

    .line 61
    aput v3, p2, v11

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method
