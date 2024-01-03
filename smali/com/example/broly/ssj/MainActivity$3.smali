.class Lcom/example/broly/ssj/MainActivity$3;
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

    .line 279
    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity$3;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$3;->this$0:Lcom/example/broly/ssj/MainActivity;

    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    .line 283
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
