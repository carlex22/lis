.class Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;
.super Ljava/lang/Object;
.source "RouteSettingsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->findElevation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRequestError$1$project-listick-fakegps-Presenter-RouteSettingsPresenter$2()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-result-object v0

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->stopAltitudeDetection()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->onAltitudeDetermined(ZZ)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-virtual {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->setElevation()V

    return-void
.end method

.method synthetic lambda$onRequestSuccess$0$project-listick-fakegps-Presenter-RouteSettingsPresenter$2(F)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-result-object v0

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->stopAltitudeDetection()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$300(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)F

    move-result v1

    invoke-interface {v0, p1, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->getElevation(FF)V

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$200(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;->onAltitudeDetermined(ZZ)V

    return-void
.end method

.method public onCaptchaResult()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$100(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v2}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$100(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lproject/listick/fakegps/UI/CaptchaActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onRequestError()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$100(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestSuccess(F)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0, p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$002(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;F)F

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->this$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-static {v0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->access$100(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;F)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
