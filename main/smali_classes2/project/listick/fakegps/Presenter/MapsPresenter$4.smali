.class Lproject/listick/fakegps/Presenter/MapsPresenter$4;
.super Ljava/lang/Object;
.source "MapsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/MapsPresenter;->buildRoute(DDDDLandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

.field final synthetic val$builder:Lproject/listick/fakegps/RouteBuilder;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Lproject/listick/fakegps/RouteBuilder;Landroid/content/Intent;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->val$builder:Lproject/listick/fakegps/RouteBuilder;

    iput-object p3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captchaResponse()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v0

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->removeProgressLayout()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v2}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lproject/listick/fakegps/UI/CaptchaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "data"

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->val$data:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method synthetic lambda$prepare$0$project-listick-fakegps-Presenter-MapsPresenter$4(Lproject/listick/fakegps/RouteBuilder;Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Lproject/listick/fakegps/RouteBuilder;->cancel()V

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object p1

    invoke-interface {p1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->removeProgressLayout()V

    sget-object p1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeLatestRoute()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    :goto_0
    return-void
.end method

.method public onRouteBuilt(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;DDDDD",
            "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p12

    iget-object v3, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v3

    invoke-interface {v3}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->lockSearchView()V

    iget-object v3, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v3

    invoke-interface {v3}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->removeProgressLayout()V

    iget-object v3, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v4}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120167

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800df

    invoke-static {v3, v4, v5}, Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    iget-object v3, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$300(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lorg/osmdroid/views/MapView;

    move-result-object v3

    invoke-static {v3, p1}, Lproject/listick/fakegps/MapUtil;->drawPath(Lorg/osmdroid/views/MapView;Ljava/util/List;)D

    move-result-wide v3

    iget-object v5, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v5, v3, v4}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$418(Lproject/listick/fakegps/Presenter/MapsPresenter;D)D

    new-instance v5, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-direct {v5}, Lproject/listick/fakegps/MultipleRoutesInfo;-><init>()V

    invoke-virtual {v5, p1}, Lproject/listick/fakegps/MultipleRoutesInfo;->setRoute(Ljava/util/List;)V

    invoke-virtual {v5, v3, v4}, Lproject/listick/fakegps/MultipleRoutesInfo;->setDistance(D)V

    invoke-virtual {v5, v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeed(I)V

    invoke-virtual {v5, v1}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeedDiff(I)V

    invoke-virtual {v5, v1}, Lproject/listick/fakegps/MultipleRoutesInfo;->setStartingPauseTime(I)V

    sget-object v1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$502(Lproject/listick/fakegps/Presenter/MapsPresenter;Z)Z

    sput-wide p2, Lproject/listick/fakegps/SpoofingPlaceInfo;->sourceLat:D

    sput-wide p4, Lproject/listick/fakegps/SpoofingPlaceInfo;->sourceLng:D

    sput-wide p6, Lproject/listick/fakegps/SpoofingPlaceInfo;->destLat:D

    sput-wide p8, Lproject/listick/fakegps/SpoofingPlaceInfo;->destLng:D

    sput-object v2, Lproject/listick/fakegps/SpoofingPlaceInfo;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    new-instance v6, Lproject/listick/fakegps/AsyncGeocoder;

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v6, v1}, Lproject/listick/fakegps/AsyncGeocoder;-><init>(Landroid/app/Activity;)V

    new-instance v11, Lproject/listick/fakegps/Presenter/MapsPresenter$4$1;

    invoke-direct {v11, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$4$1;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter$4;)V

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lproject/listick/fakegps/AsyncGeocoder;->getLocationAddress(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->getWhereToAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lproject/listick/fakegps/SpoofingPlaceInfo;->destAddress:Ljava/lang/String;

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->getWhereToAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lproject/listick/fakegps/MultipleRoutesInfo;->setAddress(Ljava/lang/String;)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1, v5}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$600(Lproject/listick/fakegps/Presenter/MapsPresenter;Lproject/listick/fakegps/MultipleRoutesInfo;)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchToPreRouteMode()V

    sget-object v1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x7

    move-wide/from16 v7, p10

    invoke-static/range {v2 .. v11}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->startActivity(Landroid/app/Activity;DDDIZI)V

    :cond_0
    iget-object v1, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$300(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public onRouteError(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;DDDDD",
            "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120098

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800df

    invoke-static {v0, v1, v2}, Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p12}, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->onRouteBuilt(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method public prepare()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->val$builder:Lproject/listick/fakegps/RouteBuilder;

    new-instance v2, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter$4;Lproject/listick/fakegps/RouteBuilder;)V

    invoke-interface {v0, v2}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->inflateProgressLayout(Landroid/view/View$OnClickListener;)V

    return-void
.end method
