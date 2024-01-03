.class Lcom/example/broly/ssj/MainActivity$6;
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

    .line 349
    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity$6;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 352
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$6;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {p1}, Lcom/example/broly/ssj/MainActivity;->onDrawBitmap()V

    return-void
.end method
