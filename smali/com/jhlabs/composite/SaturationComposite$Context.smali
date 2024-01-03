.class Lcom/jhlabs/composite/SaturationComposite$Context;
.super Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.source "SaturationComposite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/SaturationComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# instance fields
.field private dHSB:[F

.field private sHSB:[F


# direct methods
.method public constructor <init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;-><init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    const/4 p1, 0x3

    new-array p2, p1, [F

    .line 33
    iput-object p2, p0, Lcom/jhlabs/composite/SaturationComposite$Context;->sHSB:[F

    new-array p1, p1, [F

    .line 34
    iput-object p1, p0, Lcom/jhlabs/composite/SaturationComposite$Context;->dHSB:[F

    return-void
.end method


# virtual methods
.method public composeRGB([I[IF)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 41
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 44
    aget v5, v1, v4

    .line 45
    aget v6, p2, v4

    add-int/lit8 v7, v4, 0x1

    .line 46
    aget v8, v1, v7

    .line 47
    aget v9, p2, v7

    add-int/lit8 v10, v4, 0x2

    .line 48
    aget v11, v1, v10

    .line 49
    aget v12, p2, v10

    add-int/lit8 v13, v4, 0x3

    .line 50
    aget v14, v1, v13

    .line 51
    aget v15, p2, v13

    .line 54
    iget-object v3, v0, Lcom/jhlabs/composite/SaturationComposite$Context;->sHSB:[F

    invoke-static {v5, v8, v11, v3}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 55
    iget-object v3, v0, Lcom/jhlabs/composite/SaturationComposite$Context;->dHSB:[F

    invoke-static {v6, v9, v12, v3}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 57
    iget-object v3, v0, Lcom/jhlabs/composite/SaturationComposite$Context;->dHSB:[F

    iget-object v5, v0, Lcom/jhlabs/composite/SaturationComposite$Context;->sHSB:[F

    const/4 v8, 0x1

    aget v5, v5, v8

    aput v5, v3, v8

    const/4 v5, 0x0

    .line 59
    aget v11, v3, v5

    aget v8, v3, v8

    const/16 v16, 0x2

    aget v3, v3, v16

    invoke-static {v11, v8, v3}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result v3

    const/high16 v8, 0xff0000

    and-int/2addr v8, v3

    shr-int/lit8 v8, v8, 0x10

    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v14, v14

    mul-float v14, v14, p3

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v16, v14, v16

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v16

    int-to-float v8, v8

    mul-float v8, v8, v16

    int-to-float v6, v6

    mul-float v6, v6, v17

    add-float/2addr v8, v6

    float-to-int v6, v8

    .line 67
    aput v6, p2, v4

    int-to-float v6, v11

    mul-float v6, v6, v16

    int-to-float v8, v9

    mul-float v8, v8, v17

    add-float/2addr v6, v8

    float-to-int v6, v6

    .line 68
    aput v6, p2, v7

    int-to-float v3, v3

    mul-float v16, v16, v3

    int-to-float v3, v12

    mul-float v3, v3, v17

    add-float v3, v16, v3

    float-to-int v3, v3

    .line 69
    aput v3, p2, v10

    int-to-float v3, v15

    mul-float v3, v3, v17

    add-float/2addr v14, v3

    float-to-int v3, v14

    .line 70
    aput v3, p2, v13

    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method
