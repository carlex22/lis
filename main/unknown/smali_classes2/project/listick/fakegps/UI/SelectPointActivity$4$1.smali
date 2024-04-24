.class Lproject/listick/fakegps/UI/SelectPointActivity$4$1;
.super Ljava/util/TimerTask;
.source "SelectPointActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SelectPointActivity$4;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

.field final synthetic val$s:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity$4;Landroid/text/Editable;)V
    .registers 3

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iput-object p2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->val$s:Landroid/text/Editable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->val$s:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geocode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->val$s:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Autocomplete"

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v1, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsGeocoder:Lproject/listick/fakegps/AsyncGeocoder;

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->val$s:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v3

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;->this$1:Lproject/listick/fakegps/UI/SelectPointActivity$4;

    iget-object v0, v0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v5

    new-instance v7, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;

    invoke-direct {v7, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity$4$1;)V

    invoke-virtual/range {v1 .. v7}, Lproject/listick/fakegps/AsyncGeocoder;->autocomplete(Ljava/lang/String;DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    return-void
.end method
