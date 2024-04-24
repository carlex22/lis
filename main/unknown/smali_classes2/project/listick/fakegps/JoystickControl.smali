.class public Lproject/listick/fakegps/JoystickControl;
.super Ljava/lang/Object;
.source "JoystickControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final JOYSTICK_MAX_SPEED:Ljava/lang/String; = "joystick_max_speed"

.field public static final JOYSTICK_PREFERENCES:Ljava/lang/String; = "joystick_preferences"


# instance fields
.field private angle:I

.field private centerX:I

.field private centerY:I

.field private container:Landroid/view/View;

.field private containerRadius:I

.field private direction:I

.field private fingerHold:Z

.field private final handler:Landroid/os/Handler;

.field private mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

.field private strength:I

.field private viewRadius:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/JoystickControl;->handler:Landroid/os/Handler;

    new-instance v0, Lproject/listick/fakegps/JoystickControl$1;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/JoystickControl$1;-><init>(Lproject/listick/fakegps/JoystickControl;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/JoystickControl;)Z
    .registers 1

    iget-boolean p0, p0, Lproject/listick/fakegps/JoystickControl;->fingerHold:Z

    return p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/JoystickControl;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/JoystickControl;->direction:I

    return p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/JoystickControl;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/JoystickControl;->strength:I

    return p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/JoystickControl;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/JoystickControl;->angle:I

    return p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/JoystickControl;)Lproject/listick/fakegps/Interfaces/IJoystickListener;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/JoystickControl;->mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

    return-object p0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/JoystickControl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/JoystickControl;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private calculateAngle(IIII)I
    .registers 7

    sub-int/2addr p1, p2

    sub-int/2addr p3, p4

    int-to-double p2, p3

    int-to-double v0, p1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method

.method private calculateStrength(DI)I
    .registers 8

    int-to-double v0, p3

    cmpg-double p3, p1, v0

    if-gtz p3, :cond_0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v2

    div-double/2addr p1, v0

    double-to-int p1, p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v1, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v4

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    add-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    int-to-float p2, p2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    iget v1, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    sub-int v2, v0, v1

    sub-int v1, v0, v1

    mul-int/2addr v2, v1

    iget v1, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    sub-int v4, p2, v1

    sub-int v1, p2, v1

    mul-int/2addr v4, v1

    add-int/2addr v2, v4

    int-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iget v4, p0, Lproject/listick/fakegps/JoystickControl;->containerRadius:I

    iget v6, p0, Lproject/listick/fakegps/JoystickControl;->viewRadius:I

    sub-int/2addr v4, v6

    int-to-double v6, v4

    cmpl-double v6, v1, v6

    if-lez v6, :cond_1

    iget v6, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    sub-int/2addr v0, v6

    mul-int/2addr v0, v4

    int-to-double v7, v0

    div-double/2addr v7, v1

    int-to-double v9, v6

    add-double/2addr v7, v9

    double-to-int v0, v7

    iget v6, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    sub-int/2addr p2, v6

    mul-int/2addr p2, v4

    int-to-double v7, p2

    div-double/2addr v7, v1

    int-to-double v9, v6

    add-double/2addr v7, v9

    double-to-int p2, v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, p2

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    iget v6, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    iget v7, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    invoke-direct {p0, v0, v6, p2, v7}, Lproject/listick/fakegps/JoystickControl;->calculateAngle(IIII)I

    move-result p2

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->angle:I

    invoke-direct {p0, v1, v2, v4}, Lproject/listick/fakegps/JoystickControl;->calculateStrength(DI)I

    move-result p2

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->strength:I

    iput v5, p0, Lproject/listick/fakegps/JoystickControl;->direction:I

    iput-boolean v3, p0, Lproject/listick/fakegps/JoystickControl;->fingerHold:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iput-boolean v5, p0, Lproject/listick/fakegps/JoystickControl;->fingerHold:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    iget-object p2, p0, Lproject/listick/fakegps/JoystickControl;->container:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->containerRadius:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v4

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->viewRadius:I

    iget-object p2, p0, Lproject/listick/fakegps/JoystickControl;->container:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v4

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->centerX:I

    iget-object p2, p0, Lproject/listick/fakegps/JoystickControl;->container:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/2addr p2, v4

    iput p2, p0, Lproject/listick/fakegps/JoystickControl;->centerY:I

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f866666    # 1.05f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return v3
.end method

.method setContainer(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/JoystickControl;->container:Landroid/view/View;

    return-void
.end method

.method setOnMoveListener(Lproject/listick/fakegps/Interfaces/IJoystickListener;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/JoystickControl;->mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

    return-void
.end method
