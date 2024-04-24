.class public Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;
.super Ljava/lang/Object;
.source "RouteSettingsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/RouteSettingsImpl$Presenter;


# static fields
.field public static final ADD_MORE_ROUTE:Ljava/lang/String; = "add_more_route"

.field public static final ANOTHER_ROUTE_ADDED:I = 0x7

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final ELEVATION_DIFF:Ljava/lang/String; = "elevation_diff"

.field public static final FIXED_SPOOFER:I = 0x0

.field public static final JOYSTICK_SPOOFER:I = 0x2

.field public static final KEY_CALLER:Ljava/lang/String; = "caller"

.field public static final ROUTE_SPOOFER:I = 0x1

.field public static final SPEED_DIFF:Ljava/lang/String; = "difference"

.field public static final TAG:Ljava/lang/String; = "project.listick.fakegps.Presenter.RouteSettingsPresenter"

.field public static mServiceConnection:Landroid/content/ServiceConnection;

.field public static sService:Lproject/listick/fakegps/Services/ISpooferService;


# instance fields
.field private elevation:F

.field private elevationDiff:F

.field private isClosedRoute:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mAddMoreRoutes:Z

.field private final mCaller:I

.field private final mSettingsPreferences:Landroid/content/SharedPreferences;

.field private final mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$1;

    invoke-direct {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$1;-><init>()V

    sput-object v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "fakegps_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "caller"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mCaller:I

    const-string v4, "add_more_route"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mAddMoreRoutes:Z

    if-nez v3, :cond_0

    iput-boolean v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mAddMoreRoutes:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->setJoystickMode()V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;F)F
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    return p1
.end method

.method static synthetic access$100(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    return p0
.end method

.method private checkDifference(II)Z
    .registers 4

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->pushDifferenceError()V

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private findElevation(Ljava/lang/String;)V
    .registers 13

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {p1}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v2

    double-to-float p1, v2

    iput p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    float-to-double v2, p1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    iget v3, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-interface {v0, p1, v3}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getElevation(FF)V

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {p1, v1, v2}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->onAltitudeDetermined(ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    iget v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-interface {v0, p1, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getElevation(FF)V

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {p1, v2, v2}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->onAltitudeDetermined(ZZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latitude"

    const-wide v2, -0x3fc86bfd2dbafd75L    # -23.578168050621155

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v1, "longitude"

    const-wide v2, -0x3fb8ab1ea19ee810L    # -46.66312770596403

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "elevation_diff"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->startAltitudeDetection()V

    new-instance v4, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v4, v0}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;-><init>(Ljava/io/File;)V

    new-instance v10, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;

    invoke-direct {v10, p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;-><init>(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)V

    move-object v9, p1

    invoke-virtual/range {v4 .. v10}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;->getElevation(DDLjava/lang/String;Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;)V

    return-void
.end method

.method private startMocking()V
    .registers 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v3, "speed"

    const/16 v4, 0x3c

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v5, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v6, "speed_difference"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lproject/listick/fakegps/AppPreferences;->getTrafficSide(Landroid/content/Context;)I

    move-result v6

    iget-object v8, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v8}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getOriginTimerMinutes()I

    move-result v8

    iget-object v9, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v9}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getOriginTimerSeconds()I

    move-result v9

    mul-int/2addr v8, v4

    add-int/2addr v9, v8

    mul-int/lit16 v9, v9, 0x3e8

    iget-boolean v8, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mAddMoreRoutes:Z

    const/4 v10, -0x1

    if-eqz v8, :cond_0

    sget-object v1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v1, v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeed(I)V

    invoke-virtual {v1, v5}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeedDiff(I)V

    invoke-virtual {v1, v9}, Lproject/listick/fakegps/MultipleRoutesInfo;->setStartingPauseTime(I)V

    iget v2, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-virtual {v1, v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->setElevation(F)V

    iget v2, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-virtual {v1, v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->setElevationDiff(F)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v10}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v8, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v8}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getDestTimerMinutes()I

    move-result v8

    iget-object v11, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    invoke-interface {v11}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getDestTimerSeconds()I

    move-result v11

    mul-int/2addr v8, v4

    add-int/2addr v11, v8

    mul-int/lit16 v11, v11, 0x3e8

    iget v4, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mCaller:I

    const-string v8, "dest_timeout"

    const-string v12, "origin_timeout"

    const-string v13, "elevation_diff"

    const-string v14, "elevation"

    const/4 v15, 0x1

    move/from16 v16, v11

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    if-ne v4, v15, :cond_1

    const-string v4, "distance"

    invoke-virtual {v1, v4, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lproject/listick/fakegps/AppPreferences;->getAccuracy(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    iget-object v15, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Lproject/listick/fakegps/AppPreferences;->getUpdatesDelay(Landroid/content/Context;)I

    move-result v15

    iget-object v7, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lproject/listick/fakegps/AppPreferences;->getLocationError(Landroid/content/Context;)Z

    move-result v7

    move/from16 v18, v15

    iget-object v15, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result v15

    move/from16 v19, v15

    iget-object v15, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v15}, Lproject/listick/fakegps/AppPreferences;->getBrakeAtTurning(Landroid/content/Context;)Z

    move-result v15

    move/from16 v20, v15

    sget-object v15, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    move/from16 v21, v7

    const/4 v7, 0x0

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v15, v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeed(I)V

    sget-object v15, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v15, v5}, Lproject/listick/fakegps/MultipleRoutesInfo;->setSpeedDiff(I)V

    sget-object v15, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lproject/listick/fakegps/MultipleRoutesInfo;

    iget v7, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v15, v7}, Lproject/listick/fakegps/MultipleRoutesInfo;->setElevation(F)V

    sget-object v7, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lproject/listick/fakegps/MultipleRoutesInfo;

    iget v15, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-virtual {v7, v15}, Lproject/listick/fakegps/MultipleRoutesInfo;->setElevationDiff(F)V

    new-instance v7, Landroid/content/Intent;

    iget-object v15, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    move/from16 v17, v1

    const-class v1, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {v7, v15, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    iget v2, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    iget v2, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-virtual {v1, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "closed_route_motion_invert"

    iget-boolean v3, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->isClosedRoute:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "difference"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    move/from16 v3, v16

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "traffic_side"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "accuracy"

    move/from16 v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deviation"

    move/from16 v3, v21

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_unit"

    move/from16 v3, v19

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "brake_at_turning"

    move/from16 v3, v20

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "updates_delay"

    move/from16 v3, v18

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_1
    move/from16 v3, v16

    const-string v5, "longitude"

    const-string v6, "latitude"

    if-nez v4, :cond_2

    move/from16 v16, v3

    invoke-virtual {v1, v6, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v1, v5, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    iget-object v7, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    const-class v15, Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {v4, v7, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v2

    iget v3, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    invoke-virtual {v2, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    move/from16 v11, v16

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    iget v3, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    invoke-virtual {v2, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v4, v3, :cond_3

    invoke-virtual {v1, v6, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-virtual {v1, v5, v10, v11}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v9, Landroid/content/Intent;

    iget-object v10, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    const-class v11, Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v9, v6, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "joystick_max_speed"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    :goto_0
    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object v1, v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static unbindService()V
    .registers 3

    :try_start_0
    sget-object v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    if-eqz v0, :cond_0

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityLoad()V
    .registers 2

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->prepareUi()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lproject/listick/fakegps/AppPreferences;->getAutoAltitude(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->findElevation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->setElevation()V

    :goto_0
    return-void
.end method

.method public onCancelClick()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onChallengePassed(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->findElevation(Ljava/lang/String;)V

    return-void
.end method

.method public onContinueClick(IIFFZ)V
    .registers 8

    iget-boolean v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mAddMoreRoutes:Z

    if-nez v0, :cond_0

    iget v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mCaller:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->saveSpeedSettings(II)V

    invoke-virtual {p0, p3, p4}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->saveElevation(FF)V

    iput-boolean p5, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->isClosedRoute:Z

    :cond_0
    iget p3, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mCaller:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    invoke-direct {p0, p1, p2}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->checkDifference(II)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->startMocking()V

    :cond_2
    return-void
.end method

.method public prepareUi()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v2, "speed"

    const/16 v3, 0x3c

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getSpeed(I)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v2, "speed_difference"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getSpeedDifference(I)V

    return-void
.end method

.method public saveElevation(FF)V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "elevation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "elevation_diff"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveSpeedSettings(II)V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "speed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "speed_difference"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setElevation()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "elevation"

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mSettingsPreferences:Landroid/content/SharedPreferences;

    const-string v1, "elevation_diff"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevationDiff:F

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    iget v2, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->elevation:F

    invoke-interface {v1, v2, v0}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getElevation(FF)V

    return-void
.end method
