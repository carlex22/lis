.class public Lproject/listick/fakegps/Services/FixedSpooferService;
.super Landroid/app/Service;
.source "FixedSpooferService.java"


# instance fields
.field private geoPoint:Lorg/osmdroid/util/GeoPoint;

.field private isMockLocationsEnabled:Z

.field private isSystemApp:Z

.field private mAccuracy:F

.field private mBearing:F

.field private mDeviation:Z

.field private mElevation:F

.field private mElevationDiff:F

.field private mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mLatitude:D

.field private mLongitude:D

.field private mUpdateService:Landroid/content/BroadcastReceiver;

.field private mUpdatesDelay:I

.field mainStaticRunnable:Ljava/lang/Runnable;

.field mainStaticThread:Ljava/lang/Thread;

.field private rAccuracy:F

.field private rBearing:F


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lproject/listick/fakegps/Services/FixedSpooferService$2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Services/FixedSpooferService$2;-><init>(Lproject/listick/fakegps/Services/FixedSpooferService;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/Services/FixedSpooferService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$002(Lproject/listick/fakegps/Services/FixedSpooferService;D)D
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$100(Lproject/listick/fakegps/Services/FixedSpooferService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$1000(Lproject/listick/fakegps/Services/FixedSpooferService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lproject/listick/fakegps/Services/FixedSpooferService;D)D
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$1100(Lproject/listick/fakegps/Services/FixedSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->isMockLocationsEnabled:Z

    return p0
.end method

.method static synthetic access$1200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    return-object p0
.end method

.method static synthetic access$1300(Lproject/listick/fakegps/Services/FixedSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->isSystemApp:Z

    return p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lorg/osmdroid/util/GeoPoint;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->geoPoint:Lorg/osmdroid/util/GeoPoint;

    return-object p0
.end method

.method static synthetic access$202(Lproject/listick/fakegps/Services/FixedSpooferService;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->geoPoint:Lorg/osmdroid/util/GeoPoint;

    return-object p1
.end method

.method static synthetic access$300(Lproject/listick/fakegps/Services/FixedSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mDeviation:Z

    return p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/Services/FixedSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rBearing:F

    return p0
.end method

.method static synthetic access$402(Lproject/listick/fakegps/Services/FixedSpooferService;F)F
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rBearing:F

    return p1
.end method

.method static synthetic access$416(Lproject/listick/fakegps/Services/FixedSpooferService;F)F
    .registers 3

    iget v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rBearing:F

    add-float/2addr v0, p1

    iput v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rBearing:F

    return v0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/Services/FixedSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mBearing:F

    return p0
.end method

.method static synthetic access$600(Lproject/listick/fakegps/Services/FixedSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mElevation:F

    return p0
.end method

.method static synthetic access$700(Lproject/listick/fakegps/Services/FixedSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rAccuracy:F

    return p0
.end method

.method static synthetic access$702(Lproject/listick/fakegps/Services/FixedSpooferService;F)F
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->rAccuracy:F

    return p1
.end method

.method static synthetic access$800(Lproject/listick/fakegps/Services/FixedSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mAccuracy:F

    return p0
.end method

.method static synthetic access$900(Lproject/listick/fakegps/Services/FixedSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdatesDelay:I

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->stopForeground(Z)V

    :try_start_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdateService:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "project.listick.fakegps"

    const/4 v2, 0x0

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    invoke-static {p0}, Lproject/listick/fakegps/MainServiceControl;->startServiceForeground(Landroid/app/Service;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lproject/listick/fakegps/FusedLocationsProvider;

    invoke-direct {p2, p0}, Lproject/listick/fakegps/FusedLocationsProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    invoke-static {p0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->isMockLocationsEnabled:Z

    invoke-static {p0}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->isSystemApp:Z

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->initTestProvider()V

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-virtual {p2, v0, v1, v2, v3}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide p2

    double-to-float p2, p2

    iput p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mBearing:F

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getAccuracy(Landroid/content/Context;)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mAccuracy:F

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getUpdatesDelay(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdatesDelay:I

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getLocationError(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mDeviation:Z

    const-string p2, "latitude"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p2

    iput-wide p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLatitude:D

    const-string p2, "longitude"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p2

    iput-wide p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLongitude:D

    const-string p2, "elevation"

    const/high16 p3, 0x43450000    # 197.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mElevation:F

    const-string p2, "elevation_diff"

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mElevationDiff:F

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    iget-wide p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLatitude:D

    iget-wide v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mLongitude:D

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->geoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p1

    sget-object p2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mainStaticRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    new-instance p1, Lproject/listick/fakegps/Services/FixedSpooferService$1;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Services/FixedSpooferService$1;-><init>(Lproject/listick/fakegps/Services/FixedSpooferService;)V

    iput-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdateService:Landroid/content/BroadcastReceiver;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    const-string p3, "project.listick.fakegps.actionservice.daemons.ctrl"

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdateService:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lproject/listick/fakegps/Services/FixedSpooferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService;->mUpdateService:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lproject/listick/fakegps/Services/FixedSpooferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
