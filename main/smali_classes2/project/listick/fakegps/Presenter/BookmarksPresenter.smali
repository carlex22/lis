.class public Lproject/listick/fakegps/Presenter/BookmarksPresenter;
.super Ljava/lang/Object;
.source "BookmarksPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/BookmarksImpl$Presenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mModel:Lproject/listick/fakegps/Model/BookmarksModel;

.field private mRouteAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRouteTransport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticCoordinates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTab:I

.field private mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lproject/listick/fakegps/Contract/BookmarksImpl$UI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mTab:I

    const/4 v0, 0x0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteCoordinates:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteAddresses:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteTransport:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticCoordinates:Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticAddresses:Ljava/util/ArrayList;

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    new-instance p2, Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-direct {p2, p1}, Lproject/listick/fakegps/Model/BookmarksModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    return-void
.end method


# virtual methods
.method synthetic lambda$onItemSelected$0$project-listick-fakegps-Presenter-BookmarksPresenter(IZ)V
    .registers 5

    if-eqz p2, :cond_0

    iget-object p2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {p2}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteRowIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lproject/listick/fakegps/Model/BookmarksModel;->removeRouteBookmark(J)V

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onRouteSpoofList()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {p2}, Lproject/listick/fakegps/Model/BookmarksModel;->getStaticRowIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lproject/listick/fakegps/Model/BookmarksModel;->removeStaticBookmark(J)V

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onStaticSpoofList()V

    :goto_0
    return-void
.end method

.method public onActivityLoad()V
    .registers 1

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onRouteSpoofList()V

    return-void
.end method

.method public onItemSelected(I)V
    .registers 6

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteRowIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    iget v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mTab:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getStaticRowIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    iget v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mTab:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lproject/listick/fakegps/UI/BookmarkDialog;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mContext:Landroid/content/Context;

    new-instance v3, Lproject/listick/fakegps/Presenter/BookmarksPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Presenter/BookmarksPresenter;)V

    invoke-direct {v0, v2, v3}, Lproject/listick/fakegps/UI/BookmarkDialog;-><init>(Landroid/content/Context;Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;)V

    invoke-virtual {v0, p1}, Lproject/listick/fakegps/UI/BookmarkDialog;->setPosition(I)V

    iget v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mTab:I

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;

    invoke-virtual {v2}, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lproject/listick/fakegps/UI/BookmarkDialog;->setOriginAddress(Ljava/lang/String;)V

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;

    invoke-virtual {v2}, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->getDest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lproject/listick/fakegps/UI/BookmarkDialog;->setDestAddress(Ljava/lang/String;)V

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteTransport:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {v0, v2}, Lproject/listick/fakegps/UI/BookmarkDialog;->setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteNames:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lproject/listick/fakegps/UI/BookmarkDialog;->show(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/UI/BookmarkDialog;->setLatitude(D)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticCoordinates:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/UI/BookmarkDialog;->setLongitude(D)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/UI/BookmarkDialog;->setAddress(Ljava/lang/String;)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lproject/listick/fakegps/UI/BookmarkDialog;->show(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public onRouteSpoofList()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteCoordinates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteCoordinates:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteAddress()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteAddresses:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getRouteTransport()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteTransport:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->setCurrentTab(I)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteCoordinates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteAddresses:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mRouteNames:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    invoke-interface {v3, v0, v1, v2}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->showRouteBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->showBlankFragment()V

    return-void
.end method

.method public onStaticSpoofList()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getStaticAddress()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticAddresses:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getStaticCoordinates()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticCoordinates:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mModel:Lproject/listick/fakegps/Model/BookmarksModel;

    invoke-virtual {v0}, Lproject/listick/fakegps/Model/BookmarksModel;->getStaticNames()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticNames:Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->setCurrentTab(I)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticCoordinates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mStaticNames:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    invoke-interface {v3, v1, v0, v2}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->showStaticBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/BookmarksImpl$UI;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/BookmarksImpl$UI;->showBlankFragment()V

    return-void
.end method

.method public setCurrentTab(I)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->mTab:I

    return-void
.end method
