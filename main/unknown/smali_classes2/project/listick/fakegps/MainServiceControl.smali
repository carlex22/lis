.class public Lproject/listick/fakegps/MainServiceControl;
.super Ljava/lang/Object;
.source "MainServiceControl.java"


# static fields
.field public static final SERVICE_CONTROL_ACTION:Ljava/lang/String; = "project.listick.fakegps.actionservice.daemons.ctrl"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/MainServiceControl;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "project.listick.fakegps.actionservice.daemons.ctrl"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static isFixedSpoofingServiceRunning(Landroid/content/Context;)Z
    .registers 2

    const-class v0, Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {p0, v0}, Lproject/listick/fakegps/PermissionManager;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isJoystickSpoofingRunning(Landroid/content/Context;)Z
    .registers 2

    const-class v0, Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {p0, v0}, Lproject/listick/fakegps/PermissionManager;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static isRouteSpoofingServiceRunning(Landroid/content/Context;)Z
    .registers 2

    const-class v0, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p0, v0}, Lproject/listick/fakegps/PermissionManager;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static startServiceForeground(Landroid/app/Service;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const-string v3, "project.listick.fakegps_SPOOFING_STATUS"

    if-lt v0, v1, :cond_0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const v4, 0x7f120146

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f0800dc

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f12002c

    invoke-virtual {p0, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f120147

    invoke-virtual {p0, v2}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x2

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public isPaused(Lproject/listick/fakegps/Services/ISpooferService;)Z
    .registers 4

    :try_start_0
    invoke-interface {p1}, Lproject/listick/fakegps/Services/ISpooferService;->isPaused()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "project.listick.fakegps"

    const/4 v1, 0x0

    const/4 p1, 0x0

    return p1
.end method

.method public sendNewCoordinates(DD)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "project.listick.fakegps.actionservice.daemons.ctrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p1, "longitude"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object p1, p0, Lproject/listick/fakegps/MainServiceControl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPause(Lproject/listick/fakegps/Services/ISpooferService;Z)V
    .registers 4

    :try_start_0
    invoke-interface {p1, p2}, Lproject/listick/fakegps/Services/ISpooferService;->setPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "project.listick.fakegps"

    const/4 v0, 0x0

    :goto_0
    return-void
.end method
