.class public abstract Lrikka/core/app/ForegroundIntentService;
.super Landroid/app/IntentService;
.source "ForegroundIntentService.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getForegroundServiceNotificationId()I
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lrikka/core/app/ForegroundIntentService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lrikka/core/app/ForegroundIntentService;->onCreateNotificationChannel(Landroid/app/NotificationManager;)V

    :cond_0
    invoke-virtual {p0}, Lrikka/core/app/ForegroundIntentService;->getForegroundServiceNotificationId()I

    move-result v0

    invoke-virtual {p0}, Lrikka/core/app/ForegroundIntentService;->onStartForeground()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lrikka/core/app/ForegroundIntentService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public abstract onCreateNotificationChannel(Landroid/app/NotificationManager;)V
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    invoke-virtual {p0}, Lrikka/core/app/ForegroundIntentService;->onStopForeground()V

    return-void
.end method

.method public abstract onStartForeground()Landroid/app/Notification;
.end method

.method public onStopForeground()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrikka/core/app/ForegroundIntentService;->stopForeground(Z)V

    return-void
.end method
