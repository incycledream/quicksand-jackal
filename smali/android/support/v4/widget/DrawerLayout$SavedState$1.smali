.class final Landroid/support/v4/widget/DrawerLayout$SavedState$1;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks<",
        "Landroid/support/v4/widget/DrawerLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/DrawerLayout$SavedState;
    .locals 1

    .line 2043
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/widget/DrawerLayout$SavedState;
    .locals 0

    .line 2048
    new-array p1, p1, [Landroid/support/v4/widget/DrawerLayout$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2040
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;->newArray(I)[Landroid/support/v4/widget/DrawerLayout$SavedState;

    move-result-object p1

    return-object p1
.end method
