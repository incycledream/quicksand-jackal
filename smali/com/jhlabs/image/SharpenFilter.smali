.class public Lcom/jhlabs/image/SharpenFilter;
.super Lcom/jhlabs/image/ConvolveFilter;
.source "SharpenFilter.java"


# static fields
.field static final serialVersionUID:J = -0x43c463bd731f1507L

.field protected static sharpenMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/SharpenFilter;->sharpenMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x0
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        0x3fe66666    # 1.8f
        -0x41b33333    # -0.2f
        0x0
        -0x41b33333    # -0.2f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    sget-object v0, Lcom/jhlabs/image/SharpenFilter;->sharpenMatrix:[F

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>([F)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Sharpen"

    return-object v0
.end method
