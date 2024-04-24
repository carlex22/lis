.class Lproject/listick/fakegps/JoystickControl$1;
.super Ljava/lang/Object;
.source "JoystickControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/JoystickControl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/JoystickControl;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/JoystickControl;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v0}, Lproject/listick/fakegps/JoystickControl;->access$000(Lproject/listick/fakegps/JoystickControl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v0}, Lproject/listick/fakegps/JoystickControl;->access$400(Lproject/listick/fakegps/JoystickControl;)Lproject/listick/fakegps/Interfaces/IJoystickListener;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v1}, Lproject/listick/fakegps/JoystickControl;->access$100(Lproject/listick/fakegps/JoystickControl;)I

    move-result v1

    iget-object v2, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v2}, Lproject/listick/fakegps/JoystickControl;->access$200(Lproject/listick/fakegps/JoystickControl;)I

    move-result v2

    iget-object v3, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v3}, Lproject/listick/fakegps/JoystickControl;->access$300(Lproject/listick/fakegps/JoystickControl;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lproject/listick/fakegps/Interfaces/IJoystickListener;->onJoystickMoved(III)V

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/JoystickControl$1;->this$0:Lproject/listick/fakegps/JoystickControl;

    invoke-static {v0}, Lproject/listick/fakegps/JoystickControl;->access$500(Lproject/listick/fakegps/JoystickControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
