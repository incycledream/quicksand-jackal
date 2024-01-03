.class Lcom/example/broly/ssj/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/example/broly/ssj/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    iput-object p2, p0, Lcom/example/broly/ssj/MainActivity$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 314
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {p1}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "MyPrefsFile"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 315
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 316
    iget-object v0, p0, Lcom/example/broly/ssj/MainActivity$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "letters"

    .line 317
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 320
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    const v0, 0x7f070008

    invoke-virtual {p1, v0}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {v2}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const-string v2, "\u041e\u043f\u044f\u0442\u044c \u0441\u0436\u0438\u043c\u0430\u0435\u0448\u044c, %s\u0443\u0447\u0438\u0439 \u0448\u0430\u043a\u0430\u043b?"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    const v1, 0x7f070007

    invoke-virtual {p1, v1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    .line 323
    iget-object v1, p0, Lcom/example/broly/ssj/MainActivity$5;->this$0:Lcom/example/broly/ssj/MainActivity;

    invoke-virtual {v1}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    const-string p2, "%s\u0443\u0447\u0435\u0441\u0442\u044c \u0448\u0430\u043a\u0430\u043b\u043e\u0432"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
