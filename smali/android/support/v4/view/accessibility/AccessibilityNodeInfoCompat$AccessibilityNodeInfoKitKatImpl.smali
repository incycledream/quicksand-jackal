.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1965
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .locals 0

    .line 2090
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->canOpenPopup(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1978
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .locals 0

    .line 2015
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .locals 0

    .line 2020
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .locals 0

    .line 2045
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .locals 0

    .line 2050
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2030
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .locals 0

    .line 2055
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .locals 0

    .line 2060
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 2100
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getInputType(Ljava/lang/Object;)I
    .locals 0

    .line 2105
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getInputType(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .locals 0

    .line 1968
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2035
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 2135
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .locals 0

    .line 2025
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .locals 0

    .line 2065
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .locals 0

    .line 2085
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .locals 0

    .line 2115
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isDismissable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .locals 0

    .line 2125
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isMultiLine(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .locals 0

    .line 1995
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .locals 0

    .line 1989
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .locals 0

    .line 2010
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .locals 0

    .line 2003
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .locals 0

    .line 2075
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainRangeInfo(IFFF)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .locals 0

    .line 2095
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCanOpenPopup(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1983
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2070
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .locals 0

    .line 2080
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .locals 0

    .line 2120
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setDismissable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .locals 0

    .line 2110
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setInputType(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .locals 0

    .line 1973
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .locals 0

    .line 2130
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setMultiLine(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 2040
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 2140
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method
