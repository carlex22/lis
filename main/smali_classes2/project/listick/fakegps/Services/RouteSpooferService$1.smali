.class Lproject/listick/fakegps/Services/RouteSpooferService$1;
.super Lproject/listick/fakegps/Services/ISpooferService$Stub;
.source "RouteSpooferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Services/RouteSpooferService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Services/RouteSpooferService;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Services/RouteSpooferService;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {p0}, Lproject/listick/fakegps/Services/ISpooferService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public attachRoutes(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$000(Lproject/listick/fakegps/Services/RouteSpooferService;Ljava/util/List;Z)V

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v7

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-static {p1, v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$102(Lproject/listick/fakegps/Services/RouteSpooferService;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    iget-object p1, p1, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object v0, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    iget-object p1, p1, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    iget-object p1, p1, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$300(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    iget-object v0, v0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$400(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lproject/listick/fakegps/Services/RouteSpooferService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Services/RouteSpooferService$1$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Services/RouteSpooferService$1;)V

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$500(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getRoutes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$700(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$attachRoutes$0$project-listick-fakegps-Services-RouteSpooferService$1()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$402(Lproject/listick/fakegps/Services/RouteSpooferService;Z)Z

    return-void
.end method

.method public setPause(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$1;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0, p1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$602(Lproject/listick/fakegps/Services/RouteSpooferService;Z)Z

    return-void
.end method
