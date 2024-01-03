.class public Lcom/example/broly/ssj/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final MAX_RESOLUTION:I = 0x400

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field private static final REQUEST_CODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TAG"


# instance fields
.field private CurrentCompress:I

.field private CurrentSharp:I

.field private CurrentSize:I

.field private CurrentSizeVertical:I

.field private InBitmap:Landroid/graphics/Bitmap;

.field private OutBitmap:Landroid/graphics/Bitmap;

.field private first_10of10_compress:Z

.field private first_super_compress:Z

.field public thisActivity:Lcom/example/broly/ssj/MainActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 72
    iput-object v0, p0, Lcom/example/broly/ssj/MainActivity;->OutBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0x64

    .line 73
    iput v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentCompress:I

    .line 74
    iput v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSharp:I

    .line 75
    iput v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSize:I

    .line 76
    iput v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSizeVertical:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/example/broly/ssj/MainActivity;->first_super_compress:Z

    .line 85
    iput-boolean v0, p0, Lcom/example/broly/ssj/MainActivity;->first_10of10_compress:Z

    return-void
.end method

.method static synthetic access$002(Lcom/example/broly/ssj/MainActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/example/broly/ssj/MainActivity;->CurrentCompress:I

    return p1
.end method

.method static synthetic access$102(Lcom/example/broly/ssj/MainActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSharp:I

    return p1
.end method

.method static synthetic access$202(Lcom/example/broly/ssj/MainActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSize:I

    return p1
.end method

.method static synthetic access$302(Lcom/example/broly/ssj/MainActivity;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSizeVertical:I

    return p1
.end method

.method static synthetic access$400(Lcom/example/broly/ssj/MainActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/example/broly/ssj/MainActivity;->OutBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method protected ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 88
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x0

    const-string p2, "OK"

    .line 91
    invoke-virtual {v0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 p2, 0x1

    .line 92
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    const-string p2, "jacakled"

    if-ne p3, p2, :cond_0

    .line 94
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f090020

    .line 95
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const-string p2, "ded"

    if-ne p3, p2, :cond_1

    .line 98
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f09001e

    .line 99
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const-string p2, "hd8k"

    if-ne p3, p2, :cond_2

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f09001f

    .line 103
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string p2, "jpg"

    if-ne p3, p2, :cond_3

    .line 106
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f090021

    .line 107
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 108
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_3
    const-string p2, "slezi"

    if-ne p3, p2, :cond_4

    .line 110
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f090034

    .line 111
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_4
    const-string p2, "bucci"

    if-ne p3, p2, :cond_5

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f09001c

    .line 115
    invoke-virtual {p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 118
    :cond_5
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 119
    new-instance p1, Lcom/example/broly/ssj/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/example/broly/ssj/MainActivity$1;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    const-string p2, "Ok"

    invoke-virtual {v0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    return-void
.end method

.method TickOpensCount()V
    .locals 7

    .line 147
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MyPrefsFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "opens_count"

    .line 149
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 152
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    .line 156
    :cond_0
    rem-int/lit8 v5, v0, 0x5

    if-nez v5, :cond_1

    new-array v5, v4, [Ljava/lang/Object;

    .line 158
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "\u0421\u041a\u041e\u041b\u042c\u041a\u041e \u0423\u0416\u0415 \u041c\u041e\u0416\u041d\u041e \u0421\u0416\u0418\u041c\u0410\u0422\u042c %s\u0423\u0427\u0418\u0419 \u0428\u0410\u041a\u0410\u041b!?"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    const-string v6, "ded"

    invoke-virtual {p0, v5, v1, v6}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/2addr v0, v4

    .line 160
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method TickSavesCount()V
    .locals 8

    .line 204
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MyPrefsFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "saves_count"

    .line 206
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 209
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    .line 213
    :cond_0
    rem-int/lit8 v5, v0, 0xa

    if-nez v5, :cond_1

    new-array v5, v4, [Ljava/lang/Object;

    .line 214
    div-int/lit8 v6, v0, 0xa

    invoke-virtual {p0, v6}, Lcom/example/broly/ssj/MainActivity;->getGrade(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "\u041f\u043e\u0447\u0435\u0442\u043d\u044b\u043c \u0437\u0432\u0430\u043d\u0438\u0435\u043c \u0428\u0410\u041a\u0410\u041b (%s). \u0417\u0410 \u0421\u0416\u0410\u0422\u0418\u0415 \u0414\u0416\u0418\u041f\u0415\u0413\u0410!"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u0412\u044b \u043d\u0430\u0433\u0440\u0430\u0436\u0434\u0430\u0435\u0442\u0435\u0441\u044c!"

    const-string v7, "jpg"

    invoke-virtual {p0, v6, v5, v7}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v5, 0x15

    const-string v6, "\u041e\u0442\u043a\u0440\u044b\u0442\u0430 \u043d\u043e\u0432\u0430\u044f \u0441\u043f\u043e\u0441\u043e\u0431\u043d\u043e\u0441\u0442\u044c"

    if-ne v0, v5, :cond_2

    const-string v5, "HD8K \u0441\u0436\u0430\u0442\u0438\u0435"

    const-string v7, "hd8k"

    .line 218
    invoke-virtual {p0, v6, v5, v7}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->updateHiddens()V

    :cond_2
    const/16 v5, 0x33

    if-ne v0, v5, :cond_3

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v1, "\u0421\u0436\u0430\u0442\u0438\u0435 \u0428\u0430\u043a\u0430\u043b\u043b\u0438 %s\u0443\u0447\u0447\u0438"

    .line 224
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "bucci"

    invoke-virtual {p0, v6, v1, v5}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->updateHiddens()V

    :cond_3
    const/16 v1, 0x3d

    if-ne v0, v1, :cond_4

    const-string v1, "\u0423\u0432\u0435\u043b\u0438\u0447\u0435\u043d\u0438\u0435 \u0440\u0435\u0437\u043a\u043e\u0441\u0442\u0438"

    const-string v5, ""

    .line 229
    invoke-virtual {p0, v6, v1, v5}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->updateHiddens()V

    :cond_4
    add-int/2addr v0, v4

    .line 233
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method getGrade(I)Ljava/lang/String;
    .locals 5

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "I"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "II"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    .line 131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "III"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IV"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "V"

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IIV"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IIIV"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "IX"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "X"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sub-int/2addr p1, v2

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "UBER%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getLetters()Ljava/lang/String;
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MyPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    const-string v1, "letters"

    const-string v2, "\u0437\u044b\u0431"

    .line 167
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSavesCount()I
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MyPrefsFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "saves_count"

    .line 200
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, -0x1

    const-string v0, "TAG"

    if-ne p2, p1, :cond_1

    const p1, 0x7f070006

    .line 628
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 635
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 636
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 638
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->onDrawBitmap()V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "Selecting picture cancelled"

    .line 642
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 647
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception in onActivityResult : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 264
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001b

    .line 265
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->setContentView(I)V

    .line 267
    iput-object p0, p0, Lcom/example/broly/ssj/MainActivity;->thisActivity:Lcom/example/broly/ssj/MainActivity;

    const/high16 p1, 0x7f070000

    .line 269
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 270
    new-instance v0, Lcom/example/broly/ssj/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$2;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070003

    .line 278
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 279
    new-instance v0, Lcom/example/broly/ssj/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$3;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070083

    .line 287
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 288
    new-instance v0, Lcom/example/broly/ssj/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$4;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "MyPrefsFile"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 298
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "letters"

    .line 300
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const-string v4, "\u0437\u044b\u0431"

    .line 303
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 305
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "\'\u041e\u043f\u044f\u0442\u044c \u0441\u0436\u0438\u043c\u0430\u0435\u0448\u044c, ..\u0443\u0447\u0438\u0439 \u0448\u0430\u043a\u0430\u043b!?\' - \u0437\u0430\u043f\u043e\u043b\u043d\u0438\u0442\u0435 \u043f\u0440\u043e\u043f\u0443\u0449\u0435\u043d\u043d\u044b\u0435 \u0431\u0443\u043a\u0432\u044b.\n\u0415\u0441\u043b\u0438 \u043d\u0435 \u0437\u043d\u0430\u0435\u0442\u0435, \u043d\u0430\u0436\u0438\u043c\u0435 Cancel"

    .line 306
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v3, "\u041a\u0430\u043a \u043d\u0430 \u0441\u0430\u043c\u043e\u043c \u0434\u0435\u043b\u0435 \u0437\u0432\u0443\u0447\u0438\u0442 \u0444\u0440\u0430\u0437\u0430?"

    .line 307
    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const-string v3, "Cancel"

    .line 308
    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 310
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 311
    new-instance v3, Lcom/example/broly/ssj/MainActivity$5;

    invoke-direct {v3, p0, v2}, Lcom/example/broly/ssj/MainActivity$5;-><init>(Lcom/example/broly/ssj/MainActivity;Landroid/widget/EditText;)V

    const-string v4, "Ok"

    invoke-virtual {v1, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 326
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->updateHiddens()V

    const v1, 0x7f070008

    .line 336
    invoke-virtual {p0, v1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    .line 337
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "\u041e\u043f\u044f\u0442\u044c \u0441\u0436\u0438\u043c\u0430\u0435\u0448\u044c, %s\u0443\u0447\u0438\u0439 \u0448\u0430\u043a\u0430\u043b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f070007

    .line 338
    invoke-virtual {p0, v1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getLetters()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "%s\u0443\u0447\u0435\u0441\u0442\u044c \u0448\u0430\u043a\u0430\u043b\u043e\u0432"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "saves_count"

    .line 341
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x32

    if-le p1, v1, :cond_1

    const p1, 0x7f070005

    .line 344
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 345
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    const p1, 0x7f070004

    .line 348
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 349
    new-instance v0, Lcom/example/broly/ssj/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$6;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f07000a

    .line 357
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 359
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->TickOpensCount()V

    .line 361
    new-instance v0, Lcom/example/broly/ssj/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$7;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f07000d

    .line 381
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 382
    new-instance v0, Lcom/example/broly/ssj/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$8;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f07000b

    .line 401
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 402
    new-instance v0, Lcom/example/broly/ssj/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$9;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f07000c

    .line 421
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 422
    new-instance v0, Lcom/example/broly/ssj/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$10;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p1, 0x7f070002

    .line 444
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 445
    new-instance v0, Lcom/example/broly/ssj/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$11;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f070009

    .line 456
    invoke-virtual {p0, p1}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 457
    new-instance v0, Lcom/example/broly/ssj/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/example/broly/ssj/MainActivity$12;-><init>(Lcom/example/broly/ssj/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->onDrawBitmap()V

    return-void
.end method

.method protected onDrawBitmap()V
    .locals 11

    .line 554
    iget-object v0, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    const v0, 0x7f070009

    .line 555
    invoke-virtual {p0, v0}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    .line 556
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f070006

    .line 558
    invoke-virtual {p0, v0}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 560
    iget v2, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSize:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 561
    iget v4, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSizeVertical:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 566
    iget-object v5, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x400

    if-gt v5, v7, :cond_1

    iget-object v5, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v5, v7, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    .line 567
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v7

    int-to-float v6, v5

    .line 568
    iget-object v5, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v5, v7

    int-to-float v5, v5

    :goto_1
    const v7, 0x7f070004

    .line 572
    invoke-virtual {p0, v7}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 574
    iget-object v8, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 576
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v6

    const v10, 0x3c23d70a    # 0.01f

    mul-float v4, v4, v2

    invoke-static {v10, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v9, v9, v4

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v9, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 577
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float v9, v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 578
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    xor-int/2addr v9, v1

    .line 574
    invoke-static {v8, v4, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 582
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 583
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v9, p0, Lcom/example/broly/ssj/MainActivity;->CurrentCompress:I

    invoke-virtual {v2, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 585
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 588
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getSavesCount()I

    move-result v4

    const/16 v8, 0x3d

    if-le v4, v8, :cond_2

    .line 589
    iget v4, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSharp:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/example/broly/ssj/MainActivity;->sharpen(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 594
    :cond_2
    iget-object v3, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 596
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/example/broly/ssj/MainActivity;->InBitmap:Landroid/graphics/Bitmap;

    .line 597
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 598
    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    xor-int/2addr v5, v1

    .line 594
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 604
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 606
    iput-object v2, p0, Lcom/example/broly/ssj/MainActivity;->OutBitmap:Landroid/graphics/Bitmap;

    .line 608
    iget v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentCompress:I

    const-string v2, ""

    const/4 v3, 0x5

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSize:I

    if-ge v0, v3, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/example/broly/ssj/MainActivity;->first_10of10_compress:Z

    if-nez v0, :cond_4

    .line 609
    iput-boolean v1, p0, Lcom/example/broly/ssj/MainActivity;->first_10of10_compress:Z

    const-string v0, "10 \u0448\u0430\u043a\u0430\u043b\u043e\u0432 \u0438\u0437 10!"

    const-string v4, "jacakled"

    .line 610
    invoke-virtual {p0, v0, v2, v4}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_4
    iget v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentCompress:I

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/example/broly/ssj/MainActivity;->CurrentSize:I

    if-ge v0, v3, :cond_5

    iget-boolean v0, p0, Lcom/example/broly/ssj/MainActivity;->first_super_compress:Z

    if-nez v0, :cond_5

    .line 614
    iput-boolean v1, p0, Lcom/example/broly/ssj/MainActivity;->first_super_compress:Z

    const-string v0, "\u0422__\u0422"

    const-string v1, "slezi"

    .line 615
    invoke-virtual {p0, v0, v2, v1}, Lcom/example/broly/ssj/MainActivity;->ShowMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 533
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    :cond_1
    return-void
.end method

.method public sharpen(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x41300000    # 11.0f

    sub-float/2addr v0, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p2, v0, p2

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p2, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float p2, p2, v1

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    aput p2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput p2, v1, v3

    const/4 v3, 0x4

    aput v0, v1, v3

    const/4 v0, 0x5

    aput p2, v1, v0

    const/4 v0, 0x6

    aput v2, v1, v0

    const/4 v0, 0x7

    aput p2, v1, v0

    const/16 p2, 0x8

    aput v2, v1, p2

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 180
    invoke-static {p2, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 183
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 185
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    .line 186
    invoke-static {v0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 189
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v3

    .line 190
    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V

    .line 191
    invoke-virtual {v3, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    .line 192
    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V

    .line 193
    invoke-virtual {v2, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 194
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p2
.end method

.method updateHiddens()V
    .locals 3

    .line 238
    invoke-virtual {p0}, Lcom/example/broly/ssj/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MyPrefsFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    const-string v2, "saves_count"

    .line 240
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x33

    if-lt v0, v2, :cond_0

    const v2, 0x7f07000c

    .line 243
    invoke-virtual {p0, v2}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 244
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_0
    const/16 v2, 0x3d

    if-lt v0, v2, :cond_1

    const v2, 0x7f07000d

    .line 248
    invoke-virtual {p0, v2}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 249
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    const v2, 0x7f07000e

    .line 251
    invoke-virtual {p0, v2}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 252
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    const v0, 0x7f070005

    .line 256
    invoke-virtual {p0, v0}, Lcom/example/broly/ssj/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
