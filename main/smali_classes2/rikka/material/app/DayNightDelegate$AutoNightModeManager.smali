.class abstract Lrikka/material/app/DayNightDelegate$AutoNightModeManager;
.super Ljava/lang/Object;
.source "DayNightDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/material/app/DayNightDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lrikka/material/app/DayNightDelegate;


# direct methods
.method constructor <init>(Lrikka/material/app/DayNightDelegate;)V
    .registers 2

    iput-object p1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->this$0:Lrikka/material/app/DayNightDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanup()V
    .registers 3

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->this$0:Lrikka/material/app/DayNightDelegate;

    invoke-static {v0}, Lrikka/material/app/DayNightDelegate;->access$000(Lrikka/material/app/DayNightDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method abstract createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
.end method

.method abstract getApplyableNightMode()I
.end method

.method isListening()Z
    .registers 2

    iget-object v0, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract onChange()V
.end method

.method setup()V
    .registers 4

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->cleanup()V

    invoke-virtual {p0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    new-instance v1, Lrikka/material/app/DayNightDelegate$AutoNightModeManager$1;

    invoke-direct {v1, p0}, Lrikka/material/app/DayNightDelegate$AutoNightModeManager$1;-><init>(Lrikka/material/app/DayNightDelegate$AutoNightModeManager;)V

    iput-object v1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->this$0:Lrikka/material/app/DayNightDelegate;

    invoke-static {v1}, Lrikka/material/app/DayNightDelegate;->access$000(Lrikka/material/app/DayNightDelegate;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lrikka/material/app/DayNightDelegate$AutoNightModeManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method
