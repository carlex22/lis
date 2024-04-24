.class public Lproject/listick/fakegps/RouteCoordinateMgr;
.super Ljava/lang/Object;
.source "RouteCoordinateMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;
    }
.end annotation


# instance fields
.field private mDestinations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOrigins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/RouteCoordinateMgr;->mOrigins:Ljava/util/ArrayList;

    iput-object p2, p0, Lproject/listick/fakegps/RouteCoordinateMgr;->mDestinations:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/RouteCoordinateMgr;->mDestinations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrigin()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/RouteCoordinateMgr;->mOrigins:Ljava/util/ArrayList;

    return-object v0
.end method
