.class public Lproject/listick/fakegps/MockLocProvider;
.super Ljava/lang/Object;
.source "MockLocProvider.java"


# static fields
.field private static final GPS_PROVIDER:Ljava/lang/String; = "gps"

.field private static ILocationManager:Landroid/location/ILocationManager; = null

.field private static final NETWORK_PROVIDER:Ljava/lang/String; = "network"

.field private static gpsLocation:Landroid/location/Location;

.field private static isMockLocationsEnabled:Z

.field private static isSystemApp:Z

.field private static locationManager:Landroid/location/LocationManager;

.field private static networkLocation:Landroid/location/Location;

.field private static random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTime()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lproject/listick/fakegps/MockLocProvider;->random:Ljava/util/Random;

    const/16 v3, 0x101

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static initTestProvider()V
    .registers 17

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    sput-object v0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    new-instance v0, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    sput-object v0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lproject/listick/fakegps/MockLocProvider;->isMockLocationsEnabled:Z

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lproject/listick/fakegps/MockLocProvider;->isSystemApp:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lproject/listick/fakegps/MockLocProvider;->random:Ljava/util/Random;

    sget-boolean v0, Lproject/listick/fakegps/MockLocProvider;->isMockLocationsEnabled:Z

    const/4 v3, 0x0

    const-string v4, "project.listick.fakegps"

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v6, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string v7, "gps"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x3

    const/16 v16, 0x1

    invoke-virtual/range {v6 .. v16}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1, v5}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    sget-object v6, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string v7, "network"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v6 .. v16}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2, v5}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lproject/listick/fakegps/MockLocProvider;->isSystemApp:Z

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "android.location.LocationManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mService"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v1, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/ILocationManager;

    sput-object v0, Lproject/listick/fakegps/MockLocProvider;->ILocationManager:Landroid/location/ILocationManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    :cond_1
    :goto_1
    return-void
.end method

.method public static removeProviders()V
    .registers 3

    sget-boolean v0, Lproject/listick/fakegps/MockLocProvider;->isMockLocationsEnabled:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "project.listick.fakegps"

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return-void
.end method

.method public static reportLocation(DDFFFF)V
    .registers 9

    :try_start_0
    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p4}, Landroid/location/Location;->setAccuracy(F)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_0

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-virtual {p0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :cond_0
    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    float-to-double p1, p7

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p5}, Landroid/location/Location;->setBearing(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p6}, Landroid/location/Location;->setSpeed(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p1

    invoke-virtual {p0, p6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const v0, 0x40666666    # 3.6f

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x7

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    sget-boolean p0, Lproject/listick/fakegps/MockLocProvider;->isSystemApp:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lproject/listick/fakegps/MockLocProvider;->isMockLocationsEnabled:Z

    if-nez p0, :cond_1

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->ILocationManager:Landroid/location/ILocationManager;

    sget-object p1, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "project.listick.fakegps"

    const/4 p2, 0x0

    :cond_1
    :goto_0
    return-void
.end method

.method public static setGpsProvider(DDFFFF)V
    .registers 10

    const v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    const v0, 0x40666666    # 3.6f

    div-float v0, p5, v0

    sget-object v1, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v1, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    float-to-double p1, p7

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p4}, Landroid/location/Location;->setBearing(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p6}, Landroid/location/Location;->setAccuracy(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeed(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "bearing: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " speed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " accuracy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " altitude: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MockLocProvider"

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p1

    invoke-virtual {p0, p6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const v0, 0x40666666    # 3.6f

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x7

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :try_start_0
    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string p1, "gps"

    sget-object p2, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "project.listick.fakegps"

    const/4 p2, 0x0

    :goto_0
    return-void
.end method

.method public static setGpsProvider1(DDFFFF)V
    .registers 10

    const v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    const v0, 0x40666666    # 3.6f

    div-float v0, p5, v0

    sget-object v1, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {v1, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    float-to-double p1, p7

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p4}, Landroid/location/Location;->setBearing(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p6}, Landroid/location/Location;->setAccuracy(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeed(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "bearing: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " speed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " accuracy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " altitude: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MockLocProvider"

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p1

    invoke-virtual {p0, p6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const v0, 0x40666666    # 3.6f

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x7

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :try_start_0
    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string p1, "network"

    sget-object p2, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "project.listick.fakegps"

    const/4 p2, 0x0

    :goto_0
    return-void
.end method

.method public static setGpsProvider2(DDFFFF)V
    .registers 10

    const v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    const v0, 0x40666666    # 3.6f

    div-float v0, p5, v0

    sget-object v1, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {v1, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    float-to-double p1, p7

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p4}, Landroid/location/Location;->setBearing(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p6}, Landroid/location/Location;->setAccuracy(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeed(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "bearing: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " speed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " accuracy: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " altitude: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MockLocProvider"

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    sub-float/2addr p6, p1

    invoke-virtual {p0, p6}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const v0, 0x40666666    # 3.6f

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x7

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :try_start_0
    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string p1, "fused"

    sget-object p2, Lproject/listick/fakegps/MockLocProvider;->gpsLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "project.listick.fakegps"

    const/4 p2, 0x0

    :goto_0
    return-void
.end method

.method public static setNetworkProvider(DDFFF)V
    .registers 8

    sget-object v0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setLatitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p2, p3}, Landroid/location/Location;->setLongitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setTime(J)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p5}, Landroid/location/Location;->setBearing(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    float-to-double p1, p6

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-virtual {p0, p4}, Landroid/location/Location;->setAccuracy(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x2

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    const v0, 0x40666666    # 3.6f

    div-float v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const-wide/16 p2, 0x7

    const-wide/high16 p4, 0x4010000000000000L    # 4.0

    invoke-virtual {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    :try_start_0
    sget-object p0, Lproject/listick/fakegps/MockLocProvider;->locationManager:Landroid/location/LocationManager;

    const-string p1, "network"

    sget-object p2, Lproject/listick/fakegps/MockLocProvider;->networkLocation:Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "project.listick.fakegps"

    const/4 p2, 0x0

    :goto_0
    return-void
.end method
