.class Lcom/jhlabs/composite/AddComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "AddComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/AddComposite;
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

    add-int/2addr v3, v4

    const/16 v14, 0xff

    if-le v3, v14, :cond_0

    const/16 v3, 0xff

    :cond_0
    add-int/2addr v6, v7

    if-le v6, v14, :cond_1

    const/16 v6, 0xff

    :cond_1
    add-int/2addr v9, v10

    if-le v9, v14, :cond_2

    goto :goto_1

    :cond_2
    move v14, v9

    :goto_1
    int-to-float v9, v12

    mul-float v9, v9, p3

    const/high16 v12, 0x437f0000    # 255.0f

    div-float v12, v9, v12

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v12

    int-to-float v3, v3

    mul-float v3, v3, v12

    int-to-float v4, v4

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 64
    aput v3, p2, v2

    int-to-float v3, v6

    mul-float v3, v3, v12

    int-to-float v4, v7

    mul-float v4, v4, v15

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 65
    aput v3, p2, v5

    int-to-float v3, v14

    mul-float v12, v12, v3

    int-to-float v3, v10

    mul-float v3, v3, v15

    add-float/2addr v12, v3

    float-to-int v3, v12

    .line 66
    aput v3, p2, v8

    int-to-float v3, v13

    mul-float v3, v3, v15

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 67
    aput v3, p2, v11

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    return-void
.end method
