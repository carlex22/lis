.class public final synthetic Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/RouteBuilder;

.field public final synthetic f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;

.field public final synthetic f$2:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/RouteBuilder;Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/RouteBuilder;

    iput-object p2, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;

    iput-object p3, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$2:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/RouteBuilder;

    iget-object v1, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;

    iget-object v2, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;->f$2:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/RouteBuilder;->lambda$build$0$project-listick-fakegps-RouteBuilder(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    return-void
.end method
