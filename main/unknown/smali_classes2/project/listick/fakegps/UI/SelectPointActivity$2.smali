.class Lproject/listick/fakegps/UI/SelectPointActivity$2;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "SelectPointActivity.java"


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

.field final synthetic val$sourceLat:D

.field final synthetic val$sourceLong:D


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity;DD)V
    .registers 6

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    iput-wide p2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->val$sourceLat:D

    iput-wide p4, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->val$sourceLong:D

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$000(Lproject/listick/fakegps/UI/SelectPointActivity;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120190

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$000(Lproject/listick/fakegps/UI/SelectPointActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$002(Lproject/listick/fakegps/UI/SelectPointActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$000(Lproject/listick/fakegps/UI/SelectPointActivity;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$002(Lproject/listick/fakegps/UI/SelectPointActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    const-class v1, Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "org_lat"

    iget-wide v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->val$sourceLat:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "org_lng"

    iget-wide v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->val$sourceLong:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    const-string v2, "latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    const-string v2, "longitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$000(Lproject/listick/fakegps/UI/SelectPointActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$2;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-virtual {p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->finish()V

    return-void
.end method
