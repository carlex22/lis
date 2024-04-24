.class public Lproject/listick/fakegps/Services/JoystickService;
.super Landroid/app/Service;
.source "JoystickService.java"


# instance fields
.field private accuracy:I

.field private bearing:F

.field private fusedProvider:Lproject/listick/fakegps/FusedLocationsProvider;

.field private handler:Landroid/os/Handler;

.field private latitude:D

.field private longitude:D

.field private overlay:Lproject/listick/fakegps/JoystickOverlay;

.field private randomizer:Lproject/listick/fakegps/Randomizer;

.field runnable:Ljava/lang/Runnable;

.field private speed:I

.field spooferThread:Ljava/lang/Thread;

.field private step:D

.field private updatesDelay:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lproject/listick/fakegps/Services/JoystickService$1;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Services/JoystickService$1;-><init>(Lproject/listick/fakegps/Services/JoystickService;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->runnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->spooferThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/Services/JoystickService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/JoystickService;->accuracy:I

    return p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/Randomizer;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/JoystickService;->randomizer:Lproject/listick/fakegps/Randomizer;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/Services/JoystickService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->latitude:D

    return-wide v0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/Services/JoystickService;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->longitude:D

    return-wide v0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/Services/JoystickService;)F
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/JoystickService;->bearing:F

    return p0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/Services/JoystickService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/JoystickService;->speed:I

    return p0
.end method

.method static synthetic access$600(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/FusedLocationsProvider;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/JoystickService;->fusedProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    return-object p0
.end method

.method static synthetic access$700(Lproject/listick/fakegps/Services/JoystickService;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/Services/JoystickService;->updatesDelay:I

    return p0
.end method

.method static synthetic access$800(Lproject/listick/fakegps/Services/JoystickService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Services/JoystickService;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-Services-JoystickService(III)V
    .registers 8

    add-int/lit8 p1, p3, 0x5a

    int-to-float p1, p1

    iput p1, p0, Lproject/listick/fakegps/Services/JoystickService;->bearing:F

    neg-int p1, p3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lproject/listick/fakegps/Services/JoystickService;->step:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lproject/listick/fakegps/Services/JoystickService;->longitude:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->longitude:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iget-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->step:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->latitude:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lproject/listick/fakegps/Services/JoystickService;->latitude:D

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lproject/listick/fakegps/JoystickOverlay;

    new-instance v1, Lproject/listick/fakegps/Services/JoystickService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/Services/JoystickService$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Services/JoystickService;)V

    invoke-direct {v0, p0, v1}, Lproject/listick/fakegps/JoystickOverlay;-><init>(Landroid/content/Context;Lproject/listick/fakegps/Interfaces/IJoystickListener;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->overlay:Lproject/listick/fakegps/JoystickOverlay;

    invoke-virtual {v0}, Lproject/listick/fakegps/JoystickOverlay;->drawOverlay()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->spooferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService;->runnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->overlay:Lproject/listick/fakegps/JoystickOverlay;

    invoke-virtual {v0}, Lproject/listick/fakegps/JoystickOverlay;->removeViews()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->initTestProvider()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->handler:Landroid/os/Handler;

    const-string v0, "latitude"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, p0, Lproject/listick/fakegps/Services/JoystickService;->latitude:D

    const-string v0, "longitude"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/Services/JoystickService;->longitude:D

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getAccuracy(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/JoystickService;->accuracy:I

    new-instance v0, Lproject/listick/fakegps/FusedLocationsProvider;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/FusedLocationsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->fusedProvider:Lproject/listick/fakegps/FusedLocationsProvider;

    new-instance v0, Lproject/listick/fakegps/Randomizer;

    invoke-direct {v0}, Lproject/listick/fakegps/Randomizer;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->randomizer:Lproject/listick/fakegps/Randomizer;

    const-string v0, "joystick_max_speed"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/Services/JoystickService;->speed:I

    const-wide v1, 0x3e7ad7f29abcaf48L    # 1.0E-7

    int-to-double v3, v0

    mul-double/2addr v1, v3

    iput-wide v1, p0, Lproject/listick/fakegps/Services/JoystickService;->step:D

    const/16 v0, 0x1f4

    iput v0, p0, Lproject/listick/fakegps/Services/JoystickService;->updatesDelay:I

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->spooferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->spooferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->spooferThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
