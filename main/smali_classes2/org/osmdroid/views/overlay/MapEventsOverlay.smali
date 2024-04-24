.class public Lorg/osmdroid/views/overlay/MapEventsOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MapEventsOverlay.java"


# instance fields
.field private mReceiver:Lorg/osmdroid/events/MapEventsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/events/MapEventsReceiver;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/MapEventsOverlay;-><init>(Lorg/osmdroid/events/MapEventsReceiver;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/events/MapEventsReceiver;)V
    .registers 2

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .registers 4

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {p2, p1}, Lorg/osmdroid/events/MapEventsReceiver;->longPressHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .registers 4

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {p2, p1}, Lorg/osmdroid/events/MapEventsReceiver;->singleTapConfirmedHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1
.end method
