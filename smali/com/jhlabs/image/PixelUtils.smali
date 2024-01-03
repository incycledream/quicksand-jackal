.class public Lcom/jhlabs/image/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# static fields
.field public static final ADD:I = 0x4

.field public static final ALPHA:I = 0x13

.field public static final ALPHA_TO_GRAY:I = 0x14

.field public static final AVERAGE:I = 0xd

.field public static final CLEAR:I = 0xf

.field public static final COLOR:I = 0xb

.field public static final DIFFERENCE:I = 0x6

.field public static final DISSOLVE:I = 0x11

.field public static final DST_IN:I = 0x12

.field public static final EXCHANGE:I = 0x10

.field public static final HUE:I = 0x8

.field public static final MAX:I = 0x3

.field public static final MIN:I = 0x2

.field public static final MULTIPLY:I = 0x7

.field public static final NORMAL:I = 0x1

.field public static final OVERLAY:I = 0xe

.field public static final REPLACE:I = 0x0

.field public static final SATURATION:I = 0x9

.field public static final SCREEN:I = 0xc

.field public static final SUBTRACT:I = 0x5

.field public static final VALUE:I = 0xa

.field private static final hsb1:[F

.field private static final hsb2:[F

.field private static randomGenerator:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jhlabs/image/PixelUtils;->randomGenerator:Ljava/util/Random;

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 84
    sput-object v1, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    new-array v0, v0, [F

    .line 85
    sput-object v0, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static brightness(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    .line 71
    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static clamp(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method public static combinePixels(III)I
    .locals 1

    const/16 v0, 0xff

    .line 89
    invoke-static {p0, p1, p2, v0}, Lcom/jhlabs/image/PixelUtils;->combinePixels(IIII)I

    move-result p0

    return p0
.end method

.method public static combinePixels(IIII)I
    .locals 9

    if-nez p2, :cond_0

    return p0

    :cond_0
    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    shr-int/lit8 v2, p0, 0x10

    and-int/2addr v2, v1

    shr-int/lit8 v3, p0, 0x8

    and-int/2addr v3, v1

    and-int/2addr p0, v1

    shr-int/lit8 v4, p1, 0x18

    and-int/2addr v4, v1

    shr-int/lit8 v5, p1, 0x10

    and-int/2addr v5, v1

    shr-int/lit8 v6, p1, 0x8

    and-int/2addr v6, v1

    and-int/2addr p1, v1

    const/4 v7, 0x2

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    sub-int/2addr v1, v0

    shl-int/lit8 p0, v0, 0x18

    shl-int/lit8 p1, v1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, v1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, v1

    return p0

    :pswitch_2
    mul-int v0, v0, v4

    .line 206
    div-int/2addr v0, v1

    shl-int/lit8 p0, v0, 0x18

    shl-int/lit8 p2, v5, 0x10

    or-int/2addr p0, p2

    shl-int/lit8 p2, v6, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0

    :pswitch_3
    mul-int v5, v5, v0

    .line 200
    div-int/2addr v5, v1

    invoke-static {v5}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    mul-int v6, v6, v0

    .line 201
    div-int/2addr v6, v1

    invoke-static {v6}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    mul-int p1, p1, v0

    .line 202
    div-int/2addr p1, v1

    invoke-static {p1}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p1

    mul-int v4, v4, v0

    .line 203
    div-int/2addr v4, v1

    invoke-static {v4}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p3

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    return p0

    .line 142
    :pswitch_4
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->randomGenerator:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    and-int/2addr p2, v1

    if-gt p2, v0, :cond_1

    move p0, p1

    move p2, v5

    move v2, v6

    goto/16 :goto_2

    :pswitch_5
    const/16 p0, 0xff

    const/16 p2, 0xff

    const/16 v2, 0xff

    goto/16 :goto_2

    :pswitch_6
    rsub-int p2, v2, 0xff

    rsub-int v7, v5, 0xff

    mul-int v7, v7, p2

    .line 186
    div-int/2addr v7, v1

    rsub-int v7, v7, 0xff

    mul-int v8, v2, v5

    .line 187
    div-int/2addr v8, v1

    mul-int v7, v7, v2

    mul-int v8, v8, p2

    add-int/2addr v7, v8

    .line 188
    div-int/lit16 p2, v7, 0xff

    rsub-int v2, v3, 0xff

    rsub-int v7, v6, 0xff

    mul-int v7, v7, v2

    .line 189
    div-int/2addr v7, v1

    rsub-int v7, v7, 0xff

    mul-int v8, v3, v6

    .line 190
    div-int/2addr v8, v1

    mul-int v7, v7, v3

    mul-int v8, v8, v2

    add-int/2addr v7, v8

    .line 191
    div-int/lit16 v2, v7, 0xff

    rsub-int v3, p0, 0xff

    rsub-int v7, p1, 0xff

    mul-int v7, v7, v3

    .line 192
    div-int/2addr v7, v1

    rsub-int v7, v7, 0xff

    mul-int v8, p0, p1

    .line 193
    div-int/2addr v8, v1

    mul-int v7, v7, p0

    mul-int v8, v8, v3

    add-int/2addr v7, v8

    .line 194
    div-int/lit16 p0, v7, 0xff

    goto/16 :goto_2

    :pswitch_7
    add-int/2addr v2, v5

    .line 149
    div-int/lit8 p2, v2, 0x2

    add-int/2addr v3, v6

    .line 150
    div-int/lit8 v2, v3, 0x2

    add-int/2addr p0, p1

    .line 151
    div-int/2addr p0, v7

    goto/16 :goto_2

    :pswitch_8
    rsub-int p2, v2, 0xff

    rsub-int v2, v5, 0xff

    mul-int p2, p2, v2

    .line 180
    div-int/2addr p2, v1

    rsub-int p2, p2, 0xff

    rsub-int v2, v3, 0xff

    rsub-int v3, v6, 0xff

    mul-int v2, v2, v3

    .line 181
    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    rsub-int p0, p0, 0xff

    rsub-int v3, p1, 0xff

    mul-int p0, p0, v3

    .line 182
    div-int/2addr p0, v1

    rsub-int p0, p0, 0xff

    goto/16 :goto_2

    .line 157
    :pswitch_9
    sget-object v8, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    invoke-static {v2, v3, p0, v8}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    .line 158
    sget-object p0, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    invoke-static {v5, v6, p1, p0}, Ljava/awt/Color;->RGBtoHSB(III[F)[F

    const/4 p0, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 170
    :pswitch_a
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    sget-object v3, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    aget v8, v3, v2

    aput v8, p2, v2

    .line 171
    aget v3, v3, p0

    aput v3, p2, p0

    goto :goto_0

    .line 167
    :pswitch_b
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    sget-object v3, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    aget v3, v3, v7

    aput v3, p2, v7

    goto :goto_0

    .line 164
    :pswitch_c
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    sget-object v3, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    aget v3, v3, p0

    aput v3, p2, p0

    goto :goto_0

    .line 161
    :pswitch_d
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    sget-object v3, Lcom/jhlabs/image/PixelUtils;->hsb1:[F

    aget v3, v3, v2

    aput v3, p2, v2

    .line 174
    :goto_0
    sget-object p2, Lcom/jhlabs/image/PixelUtils;->hsb2:[F

    aget v2, p2, v2

    aget p0, p2, p0

    aget p2, p2, v7

    invoke-static {v2, p0, p2}, Ljava/awt/Color;->HSBtoRGB(FFF)I

    move-result p0

    shr-int/lit8 p2, p0, 0x10

    and-int/2addr p2, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/2addr v2, v1

    and-int/2addr p0, v1

    goto/16 :goto_2

    :pswitch_e
    mul-int v2, v2, v5

    .line 137
    div-int/2addr v2, v1

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    mul-int v3, v3, v6

    .line 138
    div-int/2addr v3, v1

    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    mul-int p0, p0, p1

    .line 139
    div-int/2addr p0, v1

    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    goto :goto_2

    :pswitch_f
    sub-int/2addr v2, v5

    .line 132
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    sub-int/2addr v3, v6

    .line 133
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    sub-int/2addr p0, p1

    .line 134
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    goto :goto_2

    :pswitch_10
    sub-int p2, v5, v2

    .line 127
    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    sub-int v2, v6, v3

    .line 128
    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    sub-int p0, p1, p0

    .line 129
    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    goto :goto_2

    :pswitch_11
    add-int/2addr v2, v5

    .line 122
    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    add-int/2addr v3, v6

    .line 123
    invoke-static {v3}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    add-int/2addr p0, p1

    .line 124
    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    goto :goto_2

    .line 117
    :pswitch_12
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 118
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 119
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    .line 112
    :pswitch_13
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 113
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_2

    :cond_1
    :goto_1
    :pswitch_14
    move p2, v2

    move v2, v3

    :goto_2
    if-ne p3, v1, :cond_2

    if-eq v0, v1, :cond_3

    :cond_2
    mul-int v0, v0, p3

    .line 213
    div-int/2addr v0, v1

    rsub-int p3, v0, 0xff

    mul-int p3, p3, v4

    .line 214
    div-int/2addr p3, v1

    mul-int p2, p2, v0

    mul-int v5, v5, p3

    add-int/2addr p2, v5

    .line 215
    div-int/2addr p2, v1

    invoke-static {p2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p2

    mul-int v2, v2, v0

    mul-int v6, v6, p3

    add-int/2addr v2, v6

    .line 216
    div-int/2addr v2, v1

    invoke-static {v2}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v2

    mul-int p0, p0, v0

    mul-int p1, p1, p3

    add-int/2addr p0, p1

    .line 217
    div-int/2addr p0, v1

    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    add-int/2addr v0, p3

    .line 218
    invoke-static {v0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result v0

    :cond_3
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v2, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
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

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static combinePixels(IIIII)I
    .locals 1

    xor-int/lit8 v0, p4, -0x1

    and-int/2addr v0, p1

    and-int/2addr p0, p4

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/jhlabs/image/PixelUtils;->combinePixels(IIII)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static interpolate(IIF)I
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p2, p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    .line 64
    invoke-static {p0}, Lcom/jhlabs/image/PixelUtils;->clamp(I)I

    move-result p0

    return p0
.end method

.method public static nearColors(III)Z
    .locals 4

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr v0, v2

    .line 81
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, p2, :cond_0

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
