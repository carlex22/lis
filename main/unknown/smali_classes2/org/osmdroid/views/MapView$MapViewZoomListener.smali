.class Lorg/osmdroid/views/MapView$MapViewZoomListener;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Lorg/osmdroid/views/CustomZoomButtonsController$OnZoomListener;
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapViewZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/views/MapView;


# direct methods
.method private constructor <init>(Lorg/osmdroid/views/MapView;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/MapView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/osmdroid/views/MapView$MapViewZoomListener;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onZoom(Z)V
    .registers 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomIn()Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/osmdroid/views/MapView$MapViewZoomListener;->this$0:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IMapController;->zoomOut()Z

    :goto_0
    return-void
.end method
