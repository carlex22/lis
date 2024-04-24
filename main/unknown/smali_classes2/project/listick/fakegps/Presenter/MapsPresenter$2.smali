.class Lproject/listick/fakegps/Presenter/MapsPresenter$2;
.super Landroid/content/BroadcastReceiver;
.source "MapsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/MapsPresenter;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string p1, "ui_speed_key"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string p1, "ui_passed_distance"

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    const-string p1, "ui_total_distance"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    sub-double v3, v5, v3

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->updateRouteInfo(IDD)V

    const-wide/16 v1, 0x0

    cmpl-double v0, v1, v3

    if-lez v0, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->arrivedRoute()V

    :cond_0
    return-void
.end method
