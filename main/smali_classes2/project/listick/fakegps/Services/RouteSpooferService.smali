.class public Lproject/listick/fakegps/Services/RouteSpooferService;
.super Landroid/app/Service;
.source "RouteSpooferService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/Services/RouteSpooferService$SourceData;,
        Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;
    }
.end annotation


# static fields
.field public static final KEY_ACCURACY:Ljava/lang/String; = "accuracy"

.field public static final KEY_BRAKE_AT_TURNING:Ljava/lang/String; = "brake_at_turning"

.field public static final KEY_DEFAULT_UNIT:Ljava/lang/String; = "default_unit"

.field public static final KEY_DEVIATION:Ljava/lang/String; = "deviation"

.field public static final KEY_UPDATES_DELAY:Ljava/lang/String; = "updates_delay"

.field public static final UI_PASSED_DISTANCE:Ljava/lang/String; = "ui_passed_distance"

.field public static final UI_SPEED_KEY:Ljava/lang/String; = "ui_speed_key"

.field public static final UI_TOTAL_DISTANCE:Ljava/lang/String; = "ui_total_distance"


# instance fields
.field private isClosedRoute:Z

.field private isMockLocationsEnabled:Z

.field private isPaused:Z

.field private isSystemApp:Z

.field private mAccuracy:F

.field private mBearing:F

.field private mBrakeAtTurning:Z

.field private mCurrentStep:Lorg/osmdroid/util/GeoPoint;

.field private mDefaultUnit:I

.field private mDestDelay:I

.field private mDeviation:Z

.field private mElevation:F

.field private mElevationDiff:F

.field private mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

.field private mHandler:Landroid/os/Handler;

.field private mOriginDelay:I

.field private mPassedDistance:D

.field private mRandomizer:Lproject/listick/fakegps/Randomizer;

.field private mRouteSlice:I

.field private mRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSlices:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mSpeedDiff:I

.field private mSpoofRoute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalDistance:D

.field private mTrafficSide:I

.field private mUpdateUI:Landroid/content/Intent;

.field private mUpdatesDelay:I

.field mainRouteRunnable:Ljava/lang/Runnable;

.field mainRouteThread:Ljava/lang/Thread;

.field private waitingStart:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isClosedRoute:Z

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpoofRoute:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRoutes:Ljava/util/ArrayList;

    new-instance v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Services/RouteSpooferService$2;-><init>(Lproject/listick/fakegps/Services/RouteSpooferService;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$00(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDeviation:Z

    return p0
.end method

.method static synthetic access$000(Lproject/listick/fakegps/Services/RouteSpooferService;Ljava/util/List;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->setRoute(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mCurrentStep:Lorg/osmdroid/util/GeoPoint;

    return-object p0
.end method

.method static synthetic access$1000(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/Randomizer;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRandomizer:Lproject/listick/fakegps/Randomizer;

    return-object p0
.end method

.method static synthetic access$102(Lproject/listick/fakegps/Services/RouteSpooferService;Lorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mCurrentStep:Lorg/osmdroid/util/GeoPoint;

    return-object p1
.end method

.method static synthetic access$1100(Lproject/listick/fakegps/Services/RouteSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mAccuracy:F

    return p0
.end method

.method static synthetic access$1200(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mUpdatesDelay:I

    return p0
.end method

.method static synthetic access$1300(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    return p0
.end method

.method static synthetic access$1304(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    return v0
.end method

.method static synthetic access$1400(Lproject/listick/fakegps/Services/RouteSpooferService;)[Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lproject/listick/fakegps/Services/RouteSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mBearing:F

    return p0
.end method

.method static synthetic access$1600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mBrakeAtTurning:Z

    return p0
.end method

.method static synthetic access$1700(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isClosedRoute:Z

    return p0
.end method

.method static synthetic access$1702(Lproject/listick/fakegps/Services/RouteSpooferService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isClosedRoute:Z

    return p1
.end method

.method static synthetic access$1800(Lproject/listick/fakegps/Services/RouteSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevation:F

    return p0
.end method

.method static synthetic access$1802(Lproject/listick/fakegps/Services/RouteSpooferService;F)F
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevation:F

    return p1
.end method

.method static synthetic access$1900(Lproject/listick/fakegps/Services/RouteSpooferService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevationDiff:F

    return p0
.end method

.method static synthetic access$1902(Lproject/listick/fakegps/Services/RouteSpooferService;F)F
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevationDiff:F

    return p1
.end method

.method static synthetic access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpoofRoute:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lproject/listick/fakegps/Services/RouteSpooferService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mPassedDistance:D

    return-wide v0
.end method

.method static synthetic access$2002(Lproject/listick/fakegps/Services/RouteSpooferService;D)D
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mPassedDistance:D

    return-wide p1
.end method

.method static synthetic access$2018(Lproject/listick/fakegps/Services/RouteSpooferService;D)D
    .registers 5

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mPassedDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mPassedDistance:D

    return-wide v0
.end method

.method static synthetic access$202(Lproject/listick/fakegps/Services/RouteSpooferService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpoofRoute:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isMockLocationsEnabled:Z

    return p0
.end method

.method static synthetic access$2200(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    return-object p0
.end method

.method static synthetic access$2300(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isSystemApp:Z

    return p0
.end method

.method static synthetic access$2400(Lproject/listick/fakegps/Services/RouteSpooferService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    return-wide v0
.end method

.method static synthetic access$2600(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDefaultUnit:I

    return p0
.end method

.method static synthetic access$2700(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTrafficSide:I

    return p0
.end method

.method static synthetic access$2800(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mUpdateUI:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->waitingStart:Z

    return p0
.end method

.method static synthetic access$402(Lproject/listick/fakegps/Services/RouteSpooferService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->waitingStart:Z

    return p1
.end method

.method static synthetic access$500(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mOriginDelay:I

    return p0
.end method

.method static synthetic access$600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isPaused:Z

    return p0
.end method

.method static synthetic access$602(Lproject/listick/fakegps/Services/RouteSpooferService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isPaused:Z

    return p1
.end method

.method static synthetic access$700(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRoutes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeed:I

    return p0
.end method

.method static synthetic access$802(Lproject/listick/fakegps/Services/RouteSpooferService;I)I
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeed:I

    return p1
.end method

.method static synthetic access$900(Lproject/listick/fakegps/Services/RouteSpooferService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeedDiff:I

    return p0
.end method

.method static synthetic access$902(Lproject/listick/fakegps/Services/RouteSpooferService;I)I
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeedDiff:I

    return p1
.end method

.method private cast()V
    .registers 3

    iget v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDefaultUnit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    invoke-static {v0, v1}, Lproject/listick/fakegps/Geometry$Distance;->metersToKilometers(D)D

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    :cond_0
    iget v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDefaultUnit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    invoke-static {v0, v1}, Lproject/listick/fakegps/Geometry$Distance;->metersToMiles(D)D

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    :cond_1
    return-void
.end method

.method private castAllUnits(II)Lproject/listick/fakegps/Geometry$UnitCast;
    .registers 6

    new-instance v0, Lproject/listick/fakegps/Geometry$UnitCast;

    invoke-direct {v0}, Lproject/listick/fakegps/Geometry$UnitCast;-><init>()V

    iget v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDefaultUnit:I

    if-nez v1, :cond_0

    int-to-double v1, p1

    invoke-static {v1, v2}, Lproject/listick/fakegps/Geometry$Speed;->metersToKilometers(D)D

    move-result-wide v1

    double-to-int p1, v1

    int-to-double v1, p2

    invoke-static {v1, v2}, Lproject/listick/fakegps/Geometry$Speed;->metersToKilometers(D)D

    move-result-wide v1

    :goto_0
    double-to-int p2, v1

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    int-to-double v1, p1

    invoke-static {v1, v2}, Lproject/listick/fakegps/Geometry$Speed;->milesToKilometers(D)D

    move-result-wide v1

    double-to-int p1, v1

    int-to-double v1, p2

    invoke-static {v1, v2}, Lproject/listick/fakegps/Geometry$Speed;->milesToKilometers(D)D

    move-result-wide v1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, v0, Lproject/listick/fakegps/Geometry$UnitCast;->speed:I

    iput p2, v0, Lproject/listick/fakegps/Geometry$UnitCast;->speedDiff:I

    return-object v0
.end method

.method private setRoute(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;Z)V"
        }
    .end annotation

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRoutes:Ljava/util/ArrayList;

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/util/ArrayList;

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    move p2, p1

    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p2

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRoutes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lproject/listick/fakegps/RouteManager;->startMotion(Ljava/util/List;Ljava/util/ArrayList;)V

    iget-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isClosedRoute:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isClosedRoute:Z

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    aget-object v0, v0, p2

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSlices:[Ljava/util/ArrayList;

    iget p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRouteSlice:I

    aget-object p1, p1, p2

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpoofRoute:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 9

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lproject/listick/fakegps/Randomizer;

    invoke-direct {v0}, Lproject/listick/fakegps/Randomizer;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mRandomizer:Lproject/listick/fakegps/Randomizer;

    new-instance v0, Lproject/listick/fakegps/FusedLocationsProvider;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/FusedLocationsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mFusedLocationProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    invoke-static {p0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isMockLocationsEnabled:Z

    invoke-static {p0}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->isSystemApp:Z

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->initTestProvider()V

    const-string v0, "accuracy"

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mAccuracy:F

    const-string v0, "updates_delay"

    const/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mUpdatesDelay:I

    const-string v0, "deviation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDeviation:Z

    const-string v0, "default_unit"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mDefaultUnit:I

    const-string v0, "brake_at_turning"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mBrakeAtTurning:Z

    const-string v0, "distance"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    const-string v0, "speed"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeed:I

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    const-wide v5, 0x4066800000000000L    # 180.0

    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mBearing:F

    const-string v0, "difference"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeedDiff:I

    const-string v0, "traffic_side"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTrafficSide:I

    const-string v0, "elevation"

    const/high16 v3, 0x43450000    # 197.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevation:F

    const-string v0, "elevation_diff"

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mElevationDiff:F

    const-string v0, "origin_timeout"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mOriginDelay:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->waitingStart:Z

    iget-wide v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    sput-wide v0, Lproject/listick/fakegps/Services/RouteSpooferService$SourceData;->totalDistance:D

    const-string v0, "closed_route_motion_invert"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lproject/listick/fakegps/Services/RouteSpooferService$SourceData;->isClosedRoute:Z

    invoke-direct {p0}, Lproject/listick/fakegps/Services/RouteSpooferService;->cast()V

    iget p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeed:I

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    iput-boolean v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mBrakeAtTurning:Z

    :cond_1
    iget v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeedDiff:I

    invoke-direct {p0, p1, v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->castAllUnits(II)Lproject/listick/fakegps/Geometry$UnitCast;

    move-result-object p1

    iget v0, p1, Lproject/listick/fakegps/Geometry$UnitCast;->speed:I

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeed:I

    iget p1, p1, Lproject/listick/fakegps/Geometry$UnitCast;->speedDiff:I

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mSpeedDiff:I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mUpdateUI:Landroid/content/Intent;

    const-string v0, "project.listick.fakegps.actionservice.daemons.update_speedbar_ui"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mUpdateUI:Landroid/content/Intent;

    const-string v0, "ui_total_distance"

    iget-wide v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mTotalDistance:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    new-instance p1, Lproject/listick/fakegps/Services/RouteSpooferService$1;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Services/RouteSpooferService$1;-><init>(Lproject/listick/fakegps/Services/RouteSpooferService;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService;->mainRouteRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    invoke-static {p0}, Lproject/listick/fakegps/MainServiceControl;->startServiceForeground(Landroid/app/Service;)V

    const/4 p1, 0x1

    return p1
.end method
