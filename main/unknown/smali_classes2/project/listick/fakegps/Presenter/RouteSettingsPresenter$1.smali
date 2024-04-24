.class Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$1;
.super Ljava/lang/Object;
.source "RouteSettingsPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-static {p2}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->asInterface(Landroid/os/IBinder;)Lproject/listick/fakegps/Services/ISpooferService;

    move-result-object p1

    sput-object p1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    :try_start_0
    sget-object p1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    sget-object p2, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {p1, p2}, Lproject/listick/fakegps/Services/ISpooferService;->attachRoutes(Ljava/util/List;)V
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

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x0

    sput-object p1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    return-void
.end method
