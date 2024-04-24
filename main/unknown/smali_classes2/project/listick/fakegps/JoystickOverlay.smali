.class public Lproject/listick/fakegps/JoystickOverlay;
.super Ljava/lang/Object;
.source "JoystickOverlay.java"


# static fields
.field public static final ACTION_OVERLAYS_PERMISSION:I = 0x3

.field private static final SCREEN_X:Ljava/lang/String; = "screen_x"

.field private static final SCREEN_Y:Ljava/lang/String; = "screen_y"


# instance fields
.field private final context:Landroid/content/Context;

.field private mFloatingView:Landroid/view/View;

.field private final mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lproject/listick/fakegps/Interfaces/IJoystickListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/JoystickOverlay;->context:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/JoystickOverlay;->mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/JoystickOverlay;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/JoystickOverlay;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/JoystickOverlay;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method


# virtual methods
.method public drawOverlay()V
    .registers 15

    iget-object v0, p0, Lproject/listick/fakegps/JoystickOverlay;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x7d2

    const/16 v6, 0x8

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x7f6

    const/16 v12, 0x8

    const/4 v13, -0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :goto_0
    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->context:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/JoystickOverlay;->context:Landroid/content/Context;

    const v1, 0x7f120191

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v2, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    const v2, 0x7f090086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    const v3, 0x7f09013f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    new-instance v4, Lproject/listick/fakegps/JoystickControl;

    invoke-direct {v4}, Lproject/listick/fakegps/JoystickControl;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v4, v3}, Lproject/listick/fakegps/JoystickControl;->setContainer(Landroid/view/View;)V

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->mListener:Lproject/listick/fakegps/Interfaces/IJoystickListener;

    invoke-virtual {v4, v1}, Lproject/listick/fakegps/JoystickControl;->setOnMoveListener(Lproject/listick/fakegps/Interfaces/IJoystickListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->context:Landroid/content/Context;

    const-string v3, "joystick_preferences"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "screen_x"

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "screen_y"

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    new-instance v3, Lproject/listick/fakegps/JoystickOverlay$1;

    invoke-direct {v3, p0, v0, v1}, Lproject/listick/fakegps/JoystickOverlay$1;-><init>(Lproject/listick/fakegps/JoystickOverlay;Landroid/view/WindowManager$LayoutParams;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public removeViews()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/JoystickOverlay;->mFloatingView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
