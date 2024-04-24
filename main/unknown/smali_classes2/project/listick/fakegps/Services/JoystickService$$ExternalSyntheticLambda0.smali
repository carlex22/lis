.class public final synthetic Lproject/listick/fakegps/Services/JoystickService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lproject/listick/fakegps/Interfaces/IJoystickListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/Services/JoystickService;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/Services/JoystickService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Services/JoystickService$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/Services/JoystickService;

    return-void
.end method


# virtual methods
.method public final onJoystickMoved(III)V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Services/JoystickService$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/Services/JoystickService;

    invoke-virtual {v0, p1, p2, p3}, Lproject/listick/fakegps/Services/JoystickService;->lambda$onCreate$0$project-listick-fakegps-Services-JoystickService(III)V

    return-void
.end method
