.class Lproject/listick/fakegps/UI/MapsActivity$1;
.super Ljava/lang/Object;
.source "MapsActivity.java"

# interfaces
.implements Lorg/osmdroid/events/MapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/MapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/MapsActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/MapsActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$1;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Lorg/osmdroid/events/ScrollEvent;)Z
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$1;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MapsActivity;->access$000(Lproject/listick/fakegps/UI/MapsActivity;)Lproject/listick/fakegps/Presenter/MapsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onMapDrag()V

    const/4 p1, 0x0

    return p1
.end method

.method public onZoom(Lorg/osmdroid/events/ZoomEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
