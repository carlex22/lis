.class Lproject/listick/fakegps/Services/FixedSpooferService$1;
.super Landroid/content/BroadcastReceiver;
.source "FixedSpooferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Services/FixedSpooferService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Services/FixedSpooferService;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Services/FixedSpooferService;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    const-string v0, "latitude"

    invoke-static {p2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$000(Lproject/listick/fakegps/Services/FixedSpooferService;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$002(Lproject/listick/fakegps/Services/FixedSpooferService;D)D

    iget-object p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    const-string v0, "longitude"

    invoke-static {p2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$100(Lproject/listick/fakegps/Services/FixedSpooferService;)D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$102(Lproject/listick/fakegps/Services/FixedSpooferService;D)D

    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$000(Lproject/listick/fakegps/Services/FixedSpooferService;)D

    move-result-wide v0

    iget-object v2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$1;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$100(Lproject/listick/fakegps/Services/FixedSpooferService;)D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {p1, p2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$202(Lproject/listick/fakegps/Services/FixedSpooferService;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    return-void
.end method
