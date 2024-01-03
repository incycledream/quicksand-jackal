.class public Lcom/jhlabs/image/AverageFilter;
.super Lcom/jhlabs/image/ConvolveFilter;
.source "AverageFilter.java"


# static fields
.field protected static theMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 26
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/AverageFilter;->theMatrix:[F

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/jhlabs/image/AverageFilter;->theMatrix:[F

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>([F)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Average Blur"

    return-object v0
.end method
