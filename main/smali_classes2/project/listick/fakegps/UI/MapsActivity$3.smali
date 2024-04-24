.class Lproject/listick/fakegps/UI/MapsActivity$3;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/MapsActivity;->unlockSearchView()V
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

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 11

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MapsActivity;->access$300(Lproject/listick/fakegps/UI/MapsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "whereTo"

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/MapsActivity;->access$400(Lproject/listick/fakegps/UI/MapsActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/MapsActivity;->access$500(Lproject/listick/fakegps/UI/MapsActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/MapsActivity;->access$500(Lproject/listick/fakegps/UI/MapsActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    iget-object v1, p0, Lproject/listick/fakegps/UI/MapsActivity$3;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lproject/listick/fakegps/UI/SearchActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;DDZLandroid/os/Bundle;)V

    return-void
.end method
