.class Lproject/listick/fakegps/JoystickOverlay$1;
.super Ljava/lang/Object;
.source "JoystickOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/JoystickOverlay;->drawOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lproject/listick/fakegps/JoystickOverlay;

.field final synthetic val$joystickPrefs:Landroid/content/SharedPreferences;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/JoystickOverlay;Landroid/view/WindowManager$LayoutParams;Landroid/content/SharedPreferences;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->this$0:Lproject/listick/fakegps/JoystickOverlay;

    iput-object p2, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput-object p3, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$joystickPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->this$0:Lproject/listick/fakegps/JoystickOverlay;

    invoke-static {p1}, Lproject/listick/fakegps/JoystickOverlay;->access$100(Lproject/listick/fakegps/JoystickOverlay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lproject/listick/fakegps/JoystickOverlay$1;->this$0:Lproject/listick/fakegps/JoystickOverlay;

    invoke-static {p2}, Lproject/listick/fakegps/JoystickOverlay;->access$000(Lproject/listick/fakegps/JoystickOverlay;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v0

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$joystickPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    const-string v1, "screen_x"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string v1, "screen_y"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    :cond_2
    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialX:I

    iget-object p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lproject/listick/fakegps/JoystickOverlay$1;->initialTouchY:F

    return v0
.end method
