.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi24"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2272
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 1

    .line 2277
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepare(Ljava/lang/Object;)V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2282
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2288
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 2294
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
