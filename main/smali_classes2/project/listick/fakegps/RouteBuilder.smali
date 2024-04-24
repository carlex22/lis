.class public Lproject/listick/fakegps/RouteBuilder;
.super Ljava/lang/Object;
.source "RouteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RouteBuilder"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private canceled:Z

.field private final captchaResult:Ljava/lang/String;

.field private final destLat:D

.field private final destLng:D

.field private final originLat:D

.field private final originLng:D

.field private final transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;


# direct methods
.method public constructor <init>(Landroid/app/Activity;DDDDLproject/listick/fakegps/Enumerations/ERouteTransport;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/RouteBuilder;->activity:Landroid/app/Activity;

    iput-object p11, p0, Lproject/listick/fakegps/RouteBuilder;->captchaResult:Ljava/lang/String;

    iput-wide p2, p0, Lproject/listick/fakegps/RouteBuilder;->originLat:D

    iput-wide p4, p0, Lproject/listick/fakegps/RouteBuilder;->originLng:D

    iput-wide p6, p0, Lproject/listick/fakegps/RouteBuilder;->destLat:D

    iput-wide p8, p0, Lproject/listick/fakegps/RouteBuilder;->destLng:D

    iput-object p10, p0, Lproject/listick/fakegps/RouteBuilder;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lproject/listick/fakegps/RouteBuilder;->canceled:Z

    return-void
.end method


# virtual methods
.method public build(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;)V
    .registers 14

    invoke-interface {p1}, Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;->prepare()V

    new-instance v11, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;

    iget-wide v1, p0, Lproject/listick/fakegps/RouteBuilder;->originLat:D

    iget-wide v3, p0, Lproject/listick/fakegps/RouteBuilder;->originLng:D

    iget-wide v5, p0, Lproject/listick/fakegps/RouteBuilder;->destLat:D

    iget-wide v7, p0, Lproject/listick/fakegps/RouteBuilder;->destLng:D

    iget-object v9, p0, Lproject/listick/fakegps/RouteBuilder;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    iget-object v10, p0, Lproject/listick/fakegps/RouteBuilder;->captchaResult:Ljava/lang/String;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;-><init>(DDDDLproject/listick/fakegps/Enumerations/ERouteTransport;Ljava/lang/String;)V

    new-instance v0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/RouteBuilder;Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;)V

    invoke-virtual {v11, v0}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->downloadRoute(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;)V

    return-void
.end method

.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lproject/listick/fakegps/RouteBuilder;->canceled:Z

    return-void
.end method

.method synthetic lambda$build$0$project-listick-fakegps-RouteBuilder(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V
    .registers 16

    iget-object v1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    iget-wide v2, p0, Lproject/listick/fakegps/RouteBuilder;->originLat:D

    iget-wide v4, p0, Lproject/listick/fakegps/RouteBuilder;->originLng:D

    iget-wide v6, p0, Lproject/listick/fakegps/RouteBuilder;->destLat:D

    iget-wide v8, p0, Lproject/listick/fakegps/RouteBuilder;->destLng:D

    iget-wide v10, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->distance:D

    iget-object v12, p0, Lproject/listick/fakegps/RouteBuilder;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-object v0, p1

    invoke-interface/range {v0 .. v12}, Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;->onRouteBuilt(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method synthetic lambda$build$1$project-listick-fakegps-RouteBuilder(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V
    .registers 16

    iget-object v1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    iget-wide v2, p0, Lproject/listick/fakegps/RouteBuilder;->originLat:D

    iget-wide v4, p0, Lproject/listick/fakegps/RouteBuilder;->originLng:D

    iget-wide v6, p0, Lproject/listick/fakegps/RouteBuilder;->destLat:D

    iget-wide v8, p0, Lproject/listick/fakegps/RouteBuilder;->destLng:D

    iget-wide v10, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->distance:D

    iget-object v12, p0, Lproject/listick/fakegps/RouteBuilder;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-object v0, p1

    invoke-interface/range {v0 .. v12}, Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;->onRouteError(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method synthetic lambda$build$2$project-listick-fakegps-RouteBuilder(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V
    .registers 11

    iget-boolean v0, p0, Lproject/listick/fakegps/RouteBuilder;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iput-wide v1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->distance:D

    iget-object v0, p0, Lproject/listick/fakegps/RouteBuilder;->activity:Landroid/app/Activity;

    new-instance v1, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/RouteBuilder;Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    const/4 v3, -0x4

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    iget p2, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    :cond_3
    iget-object p2, p0, Lproject/listick/fakegps/RouteBuilder;->activity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    iget-object v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    iget-wide v4, p0, Lproject/listick/fakegps/RouteBuilder;->originLat:D

    iget-wide v6, p0, Lproject/listick/fakegps/RouteBuilder;->originLng:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    iget-wide v4, p0, Lproject/listick/fakegps/RouteBuilder;->destLat:D

    iget-wide v6, p0, Lproject/listick/fakegps/RouteBuilder;->destLng:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-wide v1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->distance:D

    iget-object v0, p0, Lproject/listick/fakegps/RouteBuilder;->activity:Landroid/app/Activity;

    new-instance v1, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lproject/listick/fakegps/RouteBuilder$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/RouteBuilder;Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method
