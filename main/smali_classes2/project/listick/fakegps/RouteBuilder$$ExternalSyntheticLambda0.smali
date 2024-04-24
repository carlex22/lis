.class public final synthetic Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/RouteBuilder;

.field public final synthetic f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/RouteBuilder;Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/RouteBuilder;

    iput-object p2, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;->f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;

    return-void
.end method


# virtual methods
.method public final onResult(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/RouteBuilder;

    iget-object v1, p0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;->f$1:Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;

    invoke-virtual {v0, v1, p1}, Lproject/listick/fakegps/RouteBuilder;->lambda$build$2$project-listick-fakegps-RouteBuilder(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    return-void
.end method
