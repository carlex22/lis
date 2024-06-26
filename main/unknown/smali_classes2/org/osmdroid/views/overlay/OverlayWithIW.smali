.class public abstract Lorg/osmdroid/views/overlay/OverlayWithIW;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "OverlayWithIW.java"


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

.field protected mRelatedObject:Ljava/lang/Object;

.field protected mSnippet:Ljava/lang/String;

.field protected mSubDescription:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/OverlayWithIW;-><init>()V

    return-void
.end method


# virtual methods
.method public closeInfoWindow()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    :cond_0
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoWindow()Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-object v0
.end method

.method public getRelatedObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSubDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isInfoWindowOpen()Z
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mId:Ljava/lang/String;

    return-void
.end method

.method public setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mInfoWindow:Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    return-void
.end method

.method public setRelatedObject(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mRelatedObject:Ljava/lang/Object;

    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSnippet:Ljava/lang/String;

    return-void
.end method

.method public setSubDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mSubDescription:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/OverlayWithIW;->mTitle:Ljava/lang/String;

    return-void
.end method
