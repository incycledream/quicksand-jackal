.class public Lcom/jhlabs/image/BumpFilter;
.super Lcom/jhlabs/image/ConvolveFilter;
.source "BumpFilter.java"


# static fields
.field protected static embossMatrix:[F = null

.field static final serialVersionUID:J = 0x23170beb3be1d627L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jhlabs/image/BumpFilter;->embossMatrix:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    sget-object v0, Lcom/jhlabs/image/BumpFilter;->embossMatrix:[F

    invoke-direct {p0, v0}, Lcom/jhlabs/image/ConvolveFilter;-><init>([F)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Blur/Emboss Edges"

    return-object v0
.end method
