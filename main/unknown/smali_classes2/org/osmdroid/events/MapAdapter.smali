.class public abstract Lorg/osmdroid/events/MapAdapter;
.super Ljava/lang/Object;
.source "MapAdapter.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
