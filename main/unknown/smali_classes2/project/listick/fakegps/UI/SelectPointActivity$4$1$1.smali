.class Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;
.super Ljava/lang/Object;
.source "SelectPointActivity.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity$4$1;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSuccess$0$project-listick-fakegps-UI-SelectPointActivity$4$1$1(Ljava/util/List;Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/location/Address;

    invoke-virtual {p3}, Landroid/location/Address;->getLatitude()D

    move-result-wide p3

    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide p5

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, p3, p4, p5, p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object p3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object p3, p3, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object p3, p3, Lproject/listick/fakegps/UI/SelectPointActivity$4;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p3}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object p3

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p3

    const-wide/high16 p4, 0x4031000000000000L    # 17.0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    const-wide/16 p5, 0x3e8

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p3, p1, p4, p5}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public onError()V
    .registers 1

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

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object v3, v3, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v3, v3, Lproject/listick/fakegps/UI/SelectPointActivity$4;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    const v4, 0x1090003

    invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsList:Landroid/widget/ListView;

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->this$2:Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    iget-object v1, v1, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v1, v1, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsList:Landroid/widget/ListView;

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;Ljava/util/List;Landroid/widget/ListView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
