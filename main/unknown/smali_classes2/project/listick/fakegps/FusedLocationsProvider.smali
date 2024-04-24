.class public Lproject/listick/fakegps/FusedLocationsProvider;
.super Ljava/lang/Object;
.source "FusedLocationsProvider.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field private final apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final context:Landroid/content/Context;

.field private final location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/FusedLocationsProvider;->context:Landroid/content/Context;

    new-instance v0, Landroid/location/Location;

    const-string v1, "fused"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/FusedLocationsProvider;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method


# virtual methods
.method public build(DDFFFFF)Landroid/location/Location;
    .registers 11

    const v0, 0x40666666    # 3.6f

    div-float/2addr p7, v0

    const v0, 0x40000000    # 2.0f

    div-float/2addr p7, v0

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p7}, Landroid/location/Location;->setSpeed(F)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p5}, Landroid/location/Location;->setAccuracy(F)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p8}, Landroid/location/Location;->setSpeedAccuracy(F)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p9}, Landroid/location/Location;->setVerticalAccuracy(F)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p10}, Landroid/location/Location;->setBearing(F)V

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->location:Landroid/location/Location;

    invoke-virtual {v0, p11}, Landroid/location/Location;->setBearingAccuracy(F)V

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "project.listick.fakegps"

    const/4 v1, 0x0

    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

.method public spoof(Landroid/location/Location;)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->setMockMode(Z)Lcom/google/android/gms/tasks/Task;

    iget-object v0, p0, Lproject/listick/fakegps/FusedLocationsProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/location/LocationServices;->getFusedLocationProviderClient(Landroid/content/Context;)Lcom/google/android/gms/location/FusedLocationProviderClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->setMockLocation(Landroid/location/Location;)Lcom/google/android/gms/tasks/Task;

    :cond_1
    return-void
.end method
