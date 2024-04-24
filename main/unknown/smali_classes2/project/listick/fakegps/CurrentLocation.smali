.class public Lproject/listick/fakegps/CurrentLocation;
.super Ljava/lang/Object;
.source "CurrentLocation.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/location/LocationListener;


# static fields
.field private static final TWO_MINUTES:I = 0x1d4c0


# instance fields
.field private final apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final context:Landroid/content/Context;

.field private final lm:Landroid/location/LocationManager;

.field private location:Landroid/location/Location;

.field private final mMyLocationPoint:Lproject/listick/fakegps/MyLocationPoint;

.field private final mapView:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/CurrentLocation;->mapView:Lorg/osmdroid/views/MapView;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    new-instance p2, Lproject/listick/fakegps/MyLocationPoint;

    invoke-direct {p2}, Lproject/listick/fakegps/MyLocationPoint;-><init>()V

    iput-object p2, p0, Lproject/listick/fakegps/CurrentLocation;->mMyLocationPoint:Lproject/listick/fakegps/MyLocationPoint;

    new-instance p2, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    invoke-virtual {p0}, Lproject/listick/fakegps/CurrentLocation;->registerUpdates()V

    return-void
.end method

.method public static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .registers 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1d4c0

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const-wide/32 v5, -0x1d4c0

    cmp-long v5, v1, v5

    if-gez v5, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-lez v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz v5, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_6

    move v3, v0

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    if-gez v2, :cond_7

    move v5, v0

    goto :goto_4

    :cond_7
    move v5, v4

    :goto_4
    const/16 v6, 0xc8

    if-le v2, v6, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lproject/listick/fakegps/CurrentLocation;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz v5, :cond_9

    return v0

    :cond_9
    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    return v0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->location:Landroid/location/Location;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public getLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->location:Landroid/location/Location;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 4

    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/CurrentLocation;->onLocationChanged(Landroid/location/Location;)V

    iget-object p1, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
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

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->apiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lproject/listick/fakegps/CurrentLocation;->location:Landroid/location/Location;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->mMyLocationPoint:Lproject/listick/fakegps/MyLocationPoint;

    iget-object v2, p0, Lproject/listick/fakegps/CurrentLocation;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-virtual {v1, v2, v0, v3, p1}, Lproject/listick/fakegps/MyLocationPoint;->updateMyLocationPoint(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;FF)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public registerUpdates()V
    .registers 8

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    const-string v2, "passive"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_2
    return-void
.end method

.method public removeUpdates()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/CurrentLocation;->lm:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
