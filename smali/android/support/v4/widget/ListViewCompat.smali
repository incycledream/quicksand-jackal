.class public final Landroid/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;
.source "ListViewCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatKitKat;->scrollListBy(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/widget/ListViewCompatGingerbread;->scrollListBy(Landroid/widget/ListView;I)V

    :goto_0
    return-void
.end method