.class public Lproject/listick/fakegps/SpoofingPlaceInfo;
.super Ljava/lang/Object;
.source "SpoofingPlaceInfo.java"


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CLOSED_ROUTE_MOTION_INVERT:Ljava/lang/String; = "closed_route_motion_invert"

.field public static final DEST_ADDRESS:Ljava/lang/String; = "dst_addr"

.field public static final DEST_LAT:Ljava/lang/String; = "dst_lat"

.field public static final DEST_LNG:Ljava/lang/String; = "dst_lng"

.field public static final ORIGIN_ADDRESS:Ljava/lang/String; = "org_addr"

.field public static final ORIGIN_LAT:Ljava/lang/String; = "org_lat"

.field public static final ORIGIN_LNG:Ljava/lang/String; = "org_lng"

.field public static final TRANSPORT:Ljava/lang/String; = "transport"

.field public static address:Ljava/lang/String;

.field public static destAddress:Ljava/lang/String;

.field public static destLat:D

.field public static destLng:D

.field public static latitude:D

.field public static longtiude:D

.field public static originAddress:Ljava/lang/String;

.field public static sourceLat:D

.field public static sourceLng:D

.field public static transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;


# instance fields
.field private final mMap:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/SpoofingPlaceInfo;->mMap:Lorg/osmdroid/views/MapView;

    return-void
.end method


# virtual methods
.method public removeRoute()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/SpoofingPlaceInfo;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    instance-of v2, v1, Lproject/listick/fakegps/LocationMarker;

    if-nez v2, :cond_0

    iget-object v2, p0, Lproject/listick/fakegps/SpoofingPlaceInfo;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/SpoofingPlaceInfo;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->invalidate()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->latitude:D

    sput-wide v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->longtiude:D

    const/4 v0, 0x0

    sput-object v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    return-void
.end method
