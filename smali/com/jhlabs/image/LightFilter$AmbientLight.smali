.class public Lcom/jhlabs/image/LightFilter$AmbientLight;
.super Lcom/jhlabs/image/LightFilter$Light;
.source "LightFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/LightFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AmbientLight"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jhlabs/image/LightFilter;


# direct methods
.method public constructor <init>(Lcom/jhlabs/image/LightFilter;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter$AmbientLight;->this$0:Lcom/jhlabs/image/LightFilter;

    invoke-direct {p0}, Lcom/jhlabs/image/LightFilter$Light;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ambient Light"

    return-object v0
.end method
