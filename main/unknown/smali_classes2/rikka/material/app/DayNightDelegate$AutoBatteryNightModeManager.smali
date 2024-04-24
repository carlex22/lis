.class Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;
.super Lrikka/material/app/DayNightDelegate$AutoNightModeManager;
.source "DayNightDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/material/app/DayNightDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBatteryNightModeManager"
.end annotation


# instance fields
.field private final mPowerManager:Landroid/os/PowerManager;

.field final synthetic this$0:Lrikka/material/app/DayNightDelegate;


# direct methods
.method constructor <init>(Lrikka/material/app/DayNightDelegate;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;->this$0:Lrikka/material/app/DayNightDelegate;

    invoke-direct {p0, p1}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;-><init>(Lrikka/material/app/DayNightDelegate;)V

    const-string p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .registers 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public getApplyableNightMode()I
    .registers 2

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public onChange()V
    .registers 2

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoBatteryNightModeManager;->this$0:Lrikka/material/app/DayNightDelegate;

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate;->applyDayNight()V

    return-void
.end method
