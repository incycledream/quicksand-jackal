.class Landroid/support/v4/view/KeyEventCompatHoneycomb;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCtrlPressed(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    return p0
.end method

.method public static metaStateHasModifiers(II)Z
    .locals 0

    .line 35
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result p0

    return p0
.end method

.method public static metaStateHasNoModifiers(I)Z
    .locals 0

    .line 39
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p0

    return p0
.end method

.method public static normalizeMetaState(I)I
    .locals 0

    .line 31
    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    return p0
.end method
