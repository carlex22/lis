.class Lproject/listick/fakegps/UI/SelectPointActivity$3;
.super Ljava/lang/Object;
.source "SelectPointActivity.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SelectPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/SelectPointActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .registers 8

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$300(Lproject/listick/fakegps/UI/SelectPointActivity;)Lproject/listick/fakegps/AsyncGeocoder;

    move-result-object v0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$3;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    new-instance v5, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;

    invoke-direct {v5, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$3$1;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity$3;)V

    invoke-virtual/range {v0 .. v5}, Lproject/listick/fakegps/AsyncGeocoder;->getLocationAddress(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
