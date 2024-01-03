.class public abstract Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;
.super Ljava/lang/Object;
.source "RGBComposite.java"

# interfaces
.implements Ljava/awt/CompositeContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/composite/RGBComposite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RGBCompositeContext"
.end annotation


# instance fields
.field private alpha:F

.field private dstColorModel:Ljava/awt/image/ColorModel;

.field private srcColorModel:Ljava/awt/image/ColorModel;


# direct methods
.method public constructor <init>(FLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;->alpha:F

    .line 62
    iput-object p2, p0, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;->srcColorModel:Ljava/awt/image/ColorModel;

    .line 63
    iput-object p3, p0, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;->dstColorModel:Ljava/awt/image/ColorModel;

    return-void
.end method

.method static clamp(I)I
    .locals 1

    const/16 v0, 0xff

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    const/16 p0, 0xff

    :cond_1
    :goto_0
    return p0
.end method

.method static multiply255(II)I
    .locals 0

    mul-int p0, p0, p1

    add-int/lit16 p0, p0, 0x80

    shr-int/lit8 p1, p0, 0x8

    add-int/2addr p1, p0

    shr-int/lit8 p0, p1, 0x8

    return p0
.end method


# virtual methods
.method public compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V
    .locals 14

    move-object v0, p0

    .line 82
    iget v1, v0, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;->alpha:F

    .line 87
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getMinX()I

    move-result v8

    .line 88
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getWidth()I

    move-result v9

    .line 89
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getMinY()I

    move-result v2

    .line 90
    invoke-virtual/range {p3 .. p3}, Ljava/awt/image/WritableRaster;->getHeight()I

    move-result v3

    add-int v10, v2, v3

    const/4 v3, 0x0

    move v11, v2

    move-object v7, v3

    move-object v12, v7

    :goto_0
    if-ge v11, v10, :cond_0

    const/4 v6, 0x1

    move-object v2, p1

    move v3, v8

    move v4, v11

    move v5, v9

    .line 93
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v13

    move-object/from16 v2, p2

    move-object v7, v12

    .line 94
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v12

    .line 95
    invoke-virtual {p0, v13, v12, v1}, Lcom/jhlabs/composite/RGBComposite$RGBCompositeContext;->composeRGB([I[IF)V

    move-object/from16 v2, p3

    move-object v7, v12

    .line 96
    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v11, v11, 0x1

    move-object v7, v13

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract composeRGB([I[IF)V
.end method

.method public dispose()V
    .locals 0

    return-void
.end method
