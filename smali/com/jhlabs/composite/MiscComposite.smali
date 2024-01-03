.class public final Lcom/jhlabs/composite/MiscComposite;
.super Ljava/lang/Object;
.source "MiscComposite.java"

# interfaces
.implements Ljava/awt/Composite;


# static fields
.field public static final ADD:I = 0x1

.field public static final AVERAGE:I = 0x16

.field public static final BLEND:I = 0x0

.field public static final BURN:I = 0x6

.field public static final COLOR:I = 0xf

.field public static final COLOR_BURN:I = 0x7

.field public static final COLOR_DODGE:I = 0xb

.field public static final DARKEN:I = 0x5

.field public static final DIFFERENCE:I = 0x3

.field public static final DODGE:I = 0xa

.field public static final EXCLUSION:I = 0x14

.field public static final HARD_LIGHT:I = 0x12

.field public static final HUE:I = 0xc

.field public static final LIGHTEN:I = 0x9

.field private static final MAX_RULE:I = 0x18

.field private static final MIN_RULE:I = 0x0

.field public static final MULTIPLY:I = 0x4

.field public static final NEGATION:I = 0x15

.field public static final OVERLAY:I = 0x10

.field public static final PIN_LIGHT:I = 0x13

.field public static RULE_NAMES:[Ljava/lang/String; = null

.field public static final SATURATION:I = 0xd

.field public static final SCREEN:I = 0x8

.field public static final SILHOUETTE:I = 0x18

.field public static final SOFT_LIGHT:I = 0x11

.field public static final STENCIL:I = 0x17

.field public static final SUBTRACT:I = 0x2

.field public static final VALUE:I = 0xe


# instance fields
.field protected extraAlpha:F

.field protected rule:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Add"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Subtract"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Difference"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Multiply"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Darken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Burn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Color Burn"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Screen"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Lighten"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Dodge"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Color Dodge"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Hue"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Saturation"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Brightness"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Color"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Overlay"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Soft Light"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Hard Light"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Pin Light"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Exclusion"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Negation"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Average"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Stencil"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Silhouette"

    aput-object v2, v0, v1

    .line 59
    sput-object v0, Lcom/jhlabs/composite/MiscComposite;->RULE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/jhlabs/composite/MiscComposite;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-gt p1, v0, :cond_0

    .line 105
    iput p1, p0, Lcom/jhlabs/composite/MiscComposite;->rule:I

    .line 106
    iput p2, p0, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown composite rule"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "alpha value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(IF)Ljava/awt/Composite;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 162
    new-instance v0, Lcom/jhlabs/composite/MiscComposite;

    invoke-direct {v0, p0, p1}, Lcom/jhlabs/composite/MiscComposite;-><init>(IF)V

    return-object v0

    :pswitch_0
    const/16 p0, 0x8

    .line 160
    invoke-static {p0, p1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x6

    .line 158
    invoke-static {p0, p1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    .line 156
    :pswitch_2
    new-instance p0, Lcom/jhlabs/composite/AverageComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/AverageComposite;-><init>(F)V

    return-object p0

    .line 154
    :pswitch_3
    new-instance p0, Lcom/jhlabs/composite/NegationComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/NegationComposite;-><init>(F)V

    return-object p0

    .line 152
    :pswitch_4
    new-instance p0, Lcom/jhlabs/composite/ExclusionComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ExclusionComposite;-><init>(F)V

    return-object p0

    .line 150
    :pswitch_5
    new-instance p0, Lcom/jhlabs/composite/PinLightComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/PinLightComposite;-><init>(F)V

    return-object p0

    .line 148
    :pswitch_6
    new-instance p0, Lcom/jhlabs/composite/HardLightComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/HardLightComposite;-><init>(F)V

    return-object p0

    .line 146
    :pswitch_7
    new-instance p0, Lcom/jhlabs/composite/SoftLightComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/SoftLightComposite;-><init>(F)V

    return-object p0

    .line 144
    :pswitch_8
    new-instance p0, Lcom/jhlabs/composite/OverlayComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/OverlayComposite;-><init>(F)V

    return-object p0

    .line 142
    :pswitch_9
    new-instance p0, Lcom/jhlabs/composite/ColorComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ColorComposite;-><init>(F)V

    return-object p0

    .line 140
    :pswitch_a
    new-instance p0, Lcom/jhlabs/composite/ValueComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ValueComposite;-><init>(F)V

    return-object p0

    .line 138
    :pswitch_b
    new-instance p0, Lcom/jhlabs/composite/SaturationComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/SaturationComposite;-><init>(F)V

    return-object p0

    .line 136
    :pswitch_c
    new-instance p0, Lcom/jhlabs/composite/HueComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/HueComposite;-><init>(F)V

    return-object p0

    .line 134
    :pswitch_d
    new-instance p0, Lcom/jhlabs/composite/ColorDodgeComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ColorDodgeComposite;-><init>(F)V

    return-object p0

    .line 132
    :pswitch_e
    new-instance p0, Lcom/jhlabs/composite/DodgeComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/DodgeComposite;-><init>(F)V

    return-object p0

    .line 130
    :pswitch_f
    new-instance p0, Lcom/jhlabs/composite/LightenComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/LightenComposite;-><init>(F)V

    return-object p0

    .line 128
    :pswitch_10
    new-instance p0, Lcom/jhlabs/composite/ScreenComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ScreenComposite;-><init>(F)V

    return-object p0

    .line 126
    :pswitch_11
    new-instance p0, Lcom/jhlabs/composite/ColorBurnComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/ColorBurnComposite;-><init>(F)V

    return-object p0

    .line 124
    :pswitch_12
    new-instance p0, Lcom/jhlabs/composite/BurnComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/BurnComposite;-><init>(F)V

    return-object p0

    .line 122
    :pswitch_13
    new-instance p0, Lcom/jhlabs/composite/DarkenComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/DarkenComposite;-><init>(F)V

    return-object p0

    .line 120
    :pswitch_14
    new-instance p0, Lcom/jhlabs/composite/MultiplyComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/MultiplyComposite;-><init>(F)V

    return-object p0

    .line 118
    :pswitch_15
    new-instance p0, Lcom/jhlabs/composite/DifferenceComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/DifferenceComposite;-><init>(F)V

    return-object p0

    .line 116
    :pswitch_16
    new-instance p0, Lcom/jhlabs/composite/SubtractComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/SubtractComposite;-><init>(F)V

    return-object p0

    .line 114
    :pswitch_17
    new-instance p0, Lcom/jhlabs/composite/AddComposite;

    invoke-direct {p0, p1}, Lcom/jhlabs/composite/AddComposite;-><init>(F)V

    return-object p0

    :pswitch_18
    const/4 p0, 0x3

    .line 112
    invoke-static {p0, p1}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;
    .locals 2

    .line 166
    new-instance p3, Lcom/jhlabs/composite/MiscCompositeContext;

    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->rule:I

    iget v1, p0, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    invoke-direct {p3, v0, v1, p1, p2}, Lcom/jhlabs/composite/MiscCompositeContext;-><init>(IFLjava/awt/image/ColorModel;Ljava/awt/image/ColorModel;)V

    return-object p3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 182
    instance-of v0, p1, Lcom/jhlabs/composite/MiscComposite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    check-cast p1, Lcom/jhlabs/composite/MiscComposite;

    .line 186
    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->rule:I

    iget v2, p1, Lcom/jhlabs/composite/MiscComposite;->rule:I

    if-eq v0, v2, :cond_1

    return v1

    .line 188
    :cond_1
    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    iget p1, p1, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getAlpha()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    return v0
.end method

.method public getRule()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->rule:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 178
    iget v0, p0, Lcom/jhlabs/composite/MiscComposite;->extraAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jhlabs/composite/MiscComposite;->rule:I

    add-int/2addr v0, v1

    return v0
.end method
