.class Lproject/listick/fakegps/Presenter/MapsPresenter$3;
.super Ljava/lang/Object;
.source "MapsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/MapsPresenter;->onMapDrag()V
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

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddressShimmer(Z)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$100(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 4
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

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v1

    invoke-interface {v1, v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddressShimmer(Z)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$3;->this$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    move-result-object v0

    invoke-interface {v0, p1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddress(Ljava/lang/String;)V

    return-void
.end method
