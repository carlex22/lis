.class Lproject/listick/fakegps/Presenter/MapsPresenter$4$1;
.super Ljava/lang/Object;
.source "MapsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/MapsPresenter$4;->onRouteBuilt(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lproject/listick/fakegps/Presenter/MapsPresenter$4;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter$4;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$1;->this$1:Lproject/listick/fakegps/Presenter/MapsPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$1;->this$1:Lproject/listick/fakegps/Presenter/MapsPresenter$4;

    iget-object v0, v0, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$100(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120099

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->originAddress:Ljava/lang/String;

    sput-object v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lproject/listick/fakegps/SpoofingPlaceInfo;->originAddress:Ljava/lang/String;

    sput-object p1, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    return-void
.end method
