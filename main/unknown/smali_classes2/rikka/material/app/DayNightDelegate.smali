.class public Lrikka/material/app/DayNightDelegate;
.super Ljava/lang/Object;
.source "DayNightDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;,
        Lrikka/material/app/DayNightDelegate$AutoTimeNightModeManager;,
        Lrikka/material/app/DayNightDelegate$AutoNightModeManager;,
        Lrikka/material/app/DayNightDelegate$NightMode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "rikka:local_night_mode"

.field public static final MODE_NIGHT_AUTO_BATTERY:I = 0x3

.field public static final MODE_NIGHT_AUTO_TIME:I = 0x0

.field public static final MODE_NIGHT_FOLLOW_SYSTEM:I = -0x1

.field public static final MODE_NIGHT_NO:I = 0x1

.field public static final MODE_NIGHT_UNSPECIFIED:I = -0x64

.field public static final MODE_NIGHT_YES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DayNightDelegate"

.field private static sApplicationContext:Landroid/content/Context; = null

.field private static sDefaultNightMode:I = -0x64


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

.field private mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

.field private mContext:Landroid/content/Context;

.field private mLocalNightMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lrikka/material/app/DayNightDelegate;->getDefaultNightMode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lrikka/material/app/DayNightDelegate;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    iput p2, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    return-void
.end method

.method static synthetic access$000(Lrikka/material/app/DayNightDelegate;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cleanupAutoManagers()V
    .registers 2

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->cleanup()V

    :cond_0
    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->cleanup()V

    :cond_1
    return-void
.end method

.method private ensureAutoManagers()V
    .registers 3

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate;->calculateNightMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoTimeNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->isListening()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoTimeNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->setup()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lrikka/material/app/DayNightDelegate;->mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->cleanup()V

    :cond_1
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoBatteryNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->isListening()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoBatteryNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->setup()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->cleanup()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lrikka/material/app/DayNightDelegate;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAutoBatteryNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;
    .registers 3

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-nez v0, :cond_0

    new-instance v0, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;

    iget-object v1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;-><init>(Lrikka/material/app/DayNightDelegate;Landroid/content/Context;)V

    iput-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    :cond_0
    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoBatteryNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    return-object v0
.end method

.method private getAutoTimeNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;
    .registers 3

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    if-nez v0, :cond_0

    new-instance v0, Lrikka/material/app/DayNightDelegate$AutoTimeNightModeManager;

    iget-object v1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lrikka/material/internal/TwilightManager;->getInstance(Landroid/content/Context;)Lrikka/material/internal/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lrikka/material/app/DayNightDelegate$AutoTimeNightModeManager;-><init>(Lrikka/material/app/DayNightDelegate;Lrikka/material/internal/TwilightManager;)V

    iput-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    :cond_0
    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mAutoTimeNightModeManager:Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    return-object v0
.end method

.method public static getDefaultNightMode()I
    .registers 1

    sget v0, Lrikka/material/app/DayNightDelegate;->sDefaultNightMode:I

    return v0
.end method

.method private mapNightMode(I)I
    .registers 4

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoBatteryNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->getAutoTimeNightModeManager()Lrikka/material/app/DayNightDelegate$AutoNightModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->getApplyableNightMode()I

    move-result p1

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method private mapNightModeToFlag(I)I
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-static {}, Lrikka/material/app/DayNightDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lrikka/material/app/DayNightDelegate;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    return p1

    :cond_0
    const-string p1, "DayNightDelegate"

    const-string v0, "mapNightModeToFlag() | ApplicationContext not set"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 p1, 0x20

    return p1

    :cond_2
    return v1
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lrikka/material/app/DayNightDelegate;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static setDefaultNightMode(I)V
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "DayNightDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget v0, Lrikka/material/app/DayNightDelegate;->sDefaultNightMode:I

    if-eq v0, p0, :cond_1

    sput p0, Lrikka/material/app/DayNightDelegate;->sDefaultNightMode:I

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldRecreateOnNightModeChange()Z
    .registers 7

    iget-boolean v0, p0, Lrikka/material/app/DayNightDelegate;->mApplyDayNightCalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DayNightDelegate"

    const-string v3, "Exception while getting ActivityInfo"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    return v1
.end method

.method private updateForNightMode(Landroid/content/Context;I)Z
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    invoke-direct {p0, p2}, Lrikka/material/app/DayNightDelegate;->mapNightModeToFlag(I)I

    move-result p2

    if-eq v2, p2, :cond_2

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->shouldRecreateOnNightModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    or-int/2addr p2, v1

    iput p2, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public applyDayNight()V
    .registers 3

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate;->calculateNightMode()I

    move-result v0

    invoke-direct {p0, v0}, Lrikka/material/app/DayNightDelegate;->mapNightMode(I)I

    move-result v0

    iget-object v1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lrikka/material/app/DayNightDelegate;->updateForNightMode(Landroid/content/Context;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/material/app/DayNightDelegate;->mApplyDayNightCalled:Z

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;Landroid/content/res/Configuration;)V
    .registers 5

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate;->calculateNightMode()I

    move-result p1

    invoke-direct {p0, p1}, Lrikka/material/app/DayNightDelegate;->mapNightMode(I)I

    move-result p1

    invoke-direct {p0, p1}, Lrikka/material/app/DayNightDelegate;->mapNightModeToFlag(I)I

    move-result p1

    iget v1, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    or-int/2addr p1, v1

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    iput-object v0, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lrikka/material/app/DayNightDelegate;->mApplyDayNightCalled:Z

    return-void
.end method

.method public calculateNightMode()I
    .registers 3

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lrikka/material/app/DayNightDelegate;->getDefaultNightMode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getLocalNightMode()I
    .registers 2

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    return v0
.end method

.method public isDayNightChanged()Z
    .registers 3

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate;->calculateNightMode()I

    move-result v0

    invoke-direct {p0, v0}, Lrikka/material/app/DayNightDelegate;->mapNightMode(I)I

    move-result v0

    invoke-direct {p0, v0}, Lrikka/material/app/DayNightDelegate;->mapNightModeToFlag(I)I

    move-result v0

    iget-object v1, p0, Lrikka/material/app/DayNightDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_0

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "rikka:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lrikka/material/app/DayNightDelegate;->setLocalNightMode(I)V

    :cond_0
    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->ensureAutoManagers()V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->cleanupAutoManagers()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v1, "rikka:local_night_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setLocalNightMode(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lrikka/material/app/DayNightDelegate;->setLocalNightMode(IZ)V

    return-void
.end method

.method public setLocalNightMode(IZ)V
    .registers 4

    iget v0, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lrikka/material/app/DayNightDelegate;->mLocalNightMode:I

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lrikka/material/app/DayNightDelegate;->ensureAutoManagers()V

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate;->applyDayNight()V

    :cond_0
    return-void
.end method
