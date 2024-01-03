.class public Lcom/jhlabs/image/BlurFilter;
.super Lcom/jhlabs/image/ConvolveFilter;
.source "BlurFilter.java"


# static fields
.field protected static blurMatrix:[F = null

.field static final serialVersionUID:J = -0x41f9324643703926L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/BlurFilter;->blurMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3d924925
        0x3e124925
        0x3d924925
        0x3e124925
        0x3e124925
        0x3e124925
        0x3d924925
        0x3e124925
        0x3d924925
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/jhlabs/image/BlurFilter;->blurMatrix:[F

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>([F)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Simple Blur"

    return-object v0
.end method
