.class public Lproject/listick/fakegps/MyLocationPoint;
.super Ljava/lang/Object;
.source "MyLocationPoint.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "project.listick.fakegps.MyLocationPoint"


# instance fields
.field private final mAccuracyPolygon:Lorg/osmdroid/views/overlay/Polygon;

.field private final mMarker:Lproject/listick/fakegps/LocationMarker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lproject/listick/fakegps/LocationMarker;

    invoke-direct {v0}, Lproject/listick/fakegps/LocationMarker;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/MyLocationPoint;->mMarker:Lproject/listick/fakegps/LocationMarker;

    new-instance v0, Lorg/osmdroid/views/overlay/Polygon;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/MyLocationPoint;->mAccuracyPolygon:Lorg/osmdroid/views/overlay/Polygon;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Polygon;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindow(Lorg/osmdroid/views/overlay/infowindow/InfoWindow;)V

    return-void
.end method


# virtual methods
.method public updateMyLocationPoint(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;FF)V
    .registers 7

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/MyLocationPoint;->mMarker:Lproject/listick/fakegps/LocationMarker;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/MyLocationPoint;->mAccuracyPolygon:Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lproject/listick/fakegps/MyLocationPoint;->mMarker:Lproject/listick/fakegps/LocationMarker;

    invoke-virtual {v0, p4}, Lproject/listick/fakegps/LocationMarker;->setBearing(F)V

    iget-object p4, p0, Lproject/listick/fakegps/MyLocationPoint;->mMarker:Lproject/listick/fakegps/LocationMarker;

    invoke-virtual {p4, p2}, Lproject/listick/fakegps/LocationMarker;->setPosition(Lorg/osmdroid/util/GeoPoint;)V

    :try_start_0
    iget-object p4, p0, Lproject/listick/fakegps/MyLocationPoint;->mAccuracyPolygon:Lorg/osmdroid/views/overlay/Polygon;

    float-to-double v0, p3

    invoke-static {p2, v0, v1}, Lorg/osmdroid/views/overlay/Polygon;->pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p4, p2}, Lorg/osmdroid/views/overlay/Polygon;->setPoints(Ljava/util/List;)V

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p2

    iget-object p3, p0, Lproject/listick/fakegps/MyLocationPoint;->mAccuracyPolygon:Lorg/osmdroid/views/overlay/Polygon;

    invoke-interface {p2, p3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    :goto_0
    sget-object p3, Lproject/listick/fakegps/MyLocationPoint;->TAG:Ljava/lang/String;

    const/4 p4, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p2

    iget-object p3, p0, Lproject/listick/fakegps/MyLocationPoint;->mMarker:Lproject/listick/fakegps/LocationMarker;

    invoke-interface {p2, p3}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method
