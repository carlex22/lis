.class public Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;
.super Ljava/lang/Object;
.source "GpsMyLocationProvider.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
.implements Landroid/location/LocationListener;


# instance fields
.field private final locationSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

.field private mLocation:Landroid/location/Location;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateMinDistance:F

.field private mLocationUpdateMinTime:J

.field private mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    new-instance v0, Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-direct {v0}, Lorg/osmdroid/util/NetworkLocationIgnorer;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    const-string v1, "location"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string p1, "gps"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string p1, "network"

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addLocationSource(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearLocationSources()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->stopLocationProvider()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLocationSources()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    return-object v0
.end method

.method public getLocationUpdateMinDistance()F
    .registers 2

    iget v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    return v0
.end method

.method public getLocationUpdateMinTime()J
    .registers 3

    iget-wide v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    return-wide v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    if-nez v0, :cond_0

    const-string p1, "OsmDroid"

    const-string v0, "GpsMyLocation provider, mIgnore is null, unexpected. Location update will be ignored"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mIgnorer:Lorg/osmdroid/util/NetworkLocationIgnorer;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/NetworkLocationIgnorer;->shouldIgnore(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    :cond_3
    :goto_0
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

.method public setLocationUpdateMinDistance(F)V
    .registers 2

    iput p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    return-void
.end method

.method public setLocationUpdateMinTime(J)V
    .registers 3

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    return-void
.end method

.method public startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .registers 11

    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->locationSources:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    iget-wide v5, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinTime:J

    iget v7, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationUpdateMinDistance:F

    move-object v4, v2

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to attach listener for location provider "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " check permissions?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OsmDroid"

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return v1
.end method

.method public stopLocationProvider()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mMyLocationConsumer:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OsmDroid"

    const-string v2, "Unable to deattach location listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
