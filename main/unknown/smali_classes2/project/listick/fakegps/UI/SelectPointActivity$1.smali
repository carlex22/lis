.class Lproject/listick/fakegps/UI/SelectPointActivity$1;
.super Ljava/lang/Object;
.source "SelectPointActivity.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


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

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$1;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$1;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    const v1, 0x7f120099

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/UI/SelectPointActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800e2

    invoke-static {v0, v1, v2}, Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 7
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

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    invoke-virtual {v1}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$1;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$200(Lproject/listick/fakegps/UI/SelectPointActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$1;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const-wide/high16 v1, 0x4031000000000000L    # 17.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    return-void
.end method
