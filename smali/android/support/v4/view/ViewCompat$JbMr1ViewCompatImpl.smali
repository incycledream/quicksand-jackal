.class Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1510
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .locals 0

    .line 1564
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 0

    .line 1514
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLabelFor(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 0

    .line 1529
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 0

    .line 1544
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingEnd(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 0

    .line 1539
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingStart(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 0

    .line 1554
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 0

    .line 1559
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->isPaddingRelative(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .line 1519
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .line 1524
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .line 1534
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayoutDirection(Landroid/view/View;I)V

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 0

    .line 1549
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setPaddingRelative(Landroid/view/View;IIII)V

    return-void
.end method
