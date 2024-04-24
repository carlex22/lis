.class public interface abstract Lproject/listick/fakegps/Contract/BookmarksImpl$UI;
.super Ljava/lang/Object;
.source "BookmarksImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Contract/BookmarksImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UI"
.end annotation


# virtual methods
.method public abstract setCurrentTab(I)V
.end method

.method public abstract showBlankFragment()V
.end method

.method public abstract showRouteBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showStaticBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
