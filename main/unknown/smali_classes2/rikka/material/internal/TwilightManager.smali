.class public Lrikka/material/internal/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/material/internal/TwilightManager$TwilightState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TwilightManager"

.field private static sInstance:Lrikka/material/internal/TwilightManager; = null

.field private static sSunrise:I = 0x168

.field private static sSunset:I = 0x528


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTwilightState:Lrikka/material/internal/TwilightManager$TwilightState;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrikka/material/internal/TwilightManager$TwilightState;

    invoke-direct {v0}, Lrikka/material/internal/TwilightManager$TwilightState;-><init>()V

    iput-object v0, p0, Lrikka/material/internal/TwilightManager;->mTwilightState:Lrikka/material/internal/TwilightManager$TwilightState;

    iput-object p1, p0, Lrikka/material/internal/TwilightManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lrikka/material/internal/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lrikka/material/internal/TwilightManager;
    .registers 3

    sget-object v0, Lrikka/material/internal/TwilightManager;->sInstance:Lrikka/material/internal/TwilightManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lrikka/material/internal/TwilightManager;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Lrikka/material/internal/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Lrikka/material/internal/TwilightManager;->sInstance:Lrikka/material/internal/TwilightManager;

    :cond_0
    sget-object p0, Lrikka/material/internal/TwilightManager;->sInstance:Lrikka/material/internal/TwilightManager;

    return-object p0
.end method

.method private getLastKnownLocation()Landroid/location/Location;
    .registers 7

    iget-object v0, p0, Lrikka/material/internal/TwilightManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-direct {p0, v0}, Lrikka/material/internal/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lrikka/material/internal/TwilightManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "gps"

    invoke-direct {p0, v1}, Lrikka/material/internal/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lrikka/material/internal/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrikka/material/internal/TwilightManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "TwilightManager"

    const-string v1, "Failed to get last known location"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private isStateValid()Z
    .registers 5

    iget-object v0, p0, Lrikka/material/internal/TwilightManager;->mTwilightState:Lrikka/material/internal/TwilightManager$TwilightState;

    iget-wide v0, v0, Lrikka/material/internal/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setInstance(Lrikka/material/internal/TwilightManager;)V
    .registers 1

    sput-object p0, Lrikka/material/internal/TwilightManager;->sInstance:Lrikka/material/internal/TwilightManager;

    return-void
.end method

.method public static setSunrise(I)V
    .registers 1

    sput p0, Lrikka/material/internal/TwilightManager;->sSunrise:I

    return-void
.end method

.method public static setSunset(I)V
    .registers 1

    sput p0, Lrikka/material/internal/TwilightManager;->sSunset:I

    return-void
.end method

.method private updateState(Landroid/location/Location;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lrikka/material/internal/TwilightManager;->mTwilightState:Lrikka/material/internal/TwilightManager$TwilightState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lrikka/material/internal/TwilightCalculator;->getInstance()Lrikka/material/internal/TwilightCalculator;

    move-result-object v11

    const-wide/32 v12, 0x5265c00

    sub-long v3, v9, v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-object v2, v11

    invoke-virtual/range {v2 .. v8}, Lrikka/material/internal/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v14, v11, Lrikka/material/internal/TwilightCalculator;->sunset:J

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    move-wide v3, v9

    invoke-virtual/range {v2 .. v8}, Lrikka/material/internal/TwilightCalculator;->calculateTwilight(JDD)V

    iget v2, v11, Lrikka/material/internal/TwilightCalculator;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    iget-wide v5, v11, Lrikka/material/internal/TwilightCalculator;->sunrise:J

    iget-wide v3, v11, Lrikka/material/internal/TwilightCalculator;->sunset:J

    add-long/2addr v12, v9

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v2, v11

    move-wide/from16 v20, v14

    move-wide v14, v3

    move-wide v3, v12

    move-wide v12, v5

    move-wide/from16 v5, v16

    move v0, v7

    move-wide/from16 v7, v18

    invoke-virtual/range {v2 .. v8}, Lrikka/material/internal/TwilightCalculator;->calculateTwilight(JDD)V

    iget-wide v2, v11, Lrikka/material/internal/TwilightCalculator;->sunrise:J

    const-wide/16 v4, -0x1

    cmp-long v6, v12, v4

    if-eqz v6, :cond_4

    cmp-long v4, v14, v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    cmp-long v4, v9, v14

    const-wide/16 v5, 0x0

    if-lez v4, :cond_2

    add-long/2addr v5, v2

    goto :goto_1

    :cond_2
    cmp-long v4, v9, v12

    if-lez v4, :cond_3

    add-long/2addr v5, v14

    goto :goto_1

    :cond_3
    add-long/2addr v5, v12

    :goto_1
    const-wide/32 v7, 0xea60

    add-long/2addr v5, v7

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/32 v4, 0x2932e00

    add-long v5, v9, v4

    :goto_3
    iput-boolean v0, v1, Lrikka/material/internal/TwilightManager$TwilightState;->isNight:Z

    move-wide/from16 v7, v20

    iput-wide v7, v1, Lrikka/material/internal/TwilightManager$TwilightState;->yesterdaySunset:J

    iput-wide v12, v1, Lrikka/material/internal/TwilightManager$TwilightState;->todaySunrise:J

    iput-wide v14, v1, Lrikka/material/internal/TwilightManager$TwilightState;->todaySunset:J

    iput-wide v2, v1, Lrikka/material/internal/TwilightManager$TwilightState;->tomorrowSunrise:J

    iput-wide v5, v1, Lrikka/material/internal/TwilightManager$TwilightState;->nextUpdate:J

    return-void
.end method


# virtual methods
.method public isNight()Z
    .registers 4

    iget-object v0, p0, Lrikka/material/internal/TwilightManager;->mTwilightState:Lrikka/material/internal/TwilightManager$TwilightState;

    invoke-direct {p0}, Lrikka/material/internal/TwilightManager;->isStateValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lrikka/material/internal/TwilightManager$TwilightState;->isNight:Z

    return v0

    :cond_0
    invoke-direct {p0}, Lrikka/material/internal/TwilightManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lrikka/material/internal/TwilightManager;->updateState(Landroid/location/Location;)V

    iget-boolean v0, v0, Lrikka/material/internal/TwilightManager$TwilightState;->isNight:Z

    return v0

    :cond_1
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v0

    sget v0, Lrikka/material/internal/TwilightManager;->sSunrise:I

    if-lt v1, v0, :cond_3

    sget v0, Lrikka/material/internal/TwilightManager;->sSunset:I

    if-lt v1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
