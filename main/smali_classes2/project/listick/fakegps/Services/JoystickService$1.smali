.class Lproject/listick/fakegps/Services/JoystickService$1;
.super Ljava/lang/Object;
.source "JoystickService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Services/JoystickService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Services/JoystickService;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Services/JoystickService;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/JoystickService;->access$100(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/Randomizer;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$000(Lproject/listick/fakegps/Services/JoystickService;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/Randomizer;->getAccuracy(F)F

    move-result v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$100(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/Randomizer;

    move-result-object v1

    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v1, v2, v3}, Lproject/listick/fakegps/Randomizer;->getElevation(FF)F

    move-result v10

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$200(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v2

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$300(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v4

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$400(Lproject/listick/fakegps/Services/JoystickService;)F

    move-result v7

    move v6, v0

    move v8, v10

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$200(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v2

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$300(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v4

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$400(Lproject/listick/fakegps/Services/JoystickService;)F

    move-result v6

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$500(Lproject/listick/fakegps/Services/JoystickService;)I

    move-result v1

    int-to-float v7, v1

    move v8, v0

    move v9, v10

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider(DDFFFF)V

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider1(DDFFFF)V

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/JoystickService;->access$600(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/JoystickService;->access$600(Lproject/listick/fakegps/Services/JoystickService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object v2

    iget-object v3, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/JoystickService;->access$200(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v3

    iget-object v5, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/JoystickService;->access$300(Lproject/listick/fakegps/Services/JoystickService;)D

    move-result-wide v5

    iget-object v7, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v7}, Lproject/listick/fakegps/Services/JoystickService;->access$400(Lproject/listick/fakegps/Services/JoystickService;)F

    move-result v8

    iget-object v7, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v7}, Lproject/listick/fakegps/Services/JoystickService;->access$500(Lproject/listick/fakegps/Services/JoystickService;)I

    move-result v7

    int-to-float v9, v7

    move v7, v0

    invoke-virtual/range {v2 .. v10}, Lproject/listick/fakegps/FusedLocationsProvider;->build(DDFFFF)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v1, v0}, Lproject/listick/fakegps/FusedLocationsProvider;->spoof(Landroid/location/Location;)V

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/JoystickService;->access$800(Lproject/listick/fakegps/Services/JoystickService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    iget-object v1, v1, Lproject/listick/fakegps/Services/JoystickService;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lproject/listick/fakegps/Services/JoystickService$1;->this$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/JoystickService;->access$700(Lproject/listick/fakegps/Services/JoystickService;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
