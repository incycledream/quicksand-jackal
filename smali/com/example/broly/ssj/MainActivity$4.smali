.class Lcom/example/broly/ssj/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/broly/ssj/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/broly/ssj/MainActivity;


# direct methods
.method constructor <init>(Lcom/example/broly/ssj/MainActivity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity$4;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 291
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://vk.com/broly"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 293
    iget-object v0, p0, Lcom/example/broly/ssj/MainActivity$4;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {v0, p1}, Lcom/example/broly/ssj/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
