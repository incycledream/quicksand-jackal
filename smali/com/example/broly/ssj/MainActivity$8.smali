.class Lcom/example/broly/ssj/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 382
    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity$8;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$8;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-static {p1, p2}, Lcom/example/broly/ssj/MainActivity;->access$102(Lcom/example/broly/ssj/MainActivity;I)I

    .line 397
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$8;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {p1}, Lcom/example/broly/ssj/MainActivity;->onDrawBitmap()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
