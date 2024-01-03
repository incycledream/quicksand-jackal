.class public Lcom/jhlabs/image/LightFilter$PointLight;
.super Lcom/jhlabs/image/LightFilter$Light;
.source "LightFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jhlabs/image/LightFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PointLight"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jhlabs/image/LightFilter;


# direct methods
.method public constructor <init>(Lcom/jhlabs/image/LightFilter;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/jhlabs/image/LightFilter$PointLight;->this$0:Lcom/jhlabs/image/LightFilter;

    invoke-direct {p0}, Lcom/jhlabs/image/LightFilter$Light;-><init>()V

    const/4 p1, 0x2

    .line 658
    iput p1, p0, Lcom/jhlabs/image/LightFilter$PointLight;->type:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Point Light"

    return-object v0
.end method
