.class public final synthetic Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;

    iput p2, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;

    iget v1, p0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2$$ExternalSyntheticLambda1;->f$1:F

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter$2;->lambda$onRequestSuccess$0$project-listick-fakegps-Presenter-RouteSettingsPresenter$2(F)V

    return-void
.end method
