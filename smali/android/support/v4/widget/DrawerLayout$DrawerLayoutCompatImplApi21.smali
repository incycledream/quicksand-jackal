.class Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerLayoutCompatImplApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    .line 340
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    return-void
.end method

.method public configureApplyInsets(Landroid/view/View;)V
    .locals 0

    .line 330
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->configureApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 335
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method

.method public getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 350
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getTopInset(Ljava/lang/Object;)I
    .locals 0

    .line 345
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->getTopInset(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
