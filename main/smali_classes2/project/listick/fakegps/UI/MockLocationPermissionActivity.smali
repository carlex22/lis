.class public Lproject/listick/fakegps/UI/MockLocationPermissionActivity;
.super Landroid/app/Activity;
.source "MockLocationPermissionActivity.java"


# static fields
.field public static final CALLER_JOYSTICK:I = 0x2

.field public static final CALLER_NONE:I = 0x1

.field public static final KEY_CALLER:Ljava/lang/String; = "caller"

.field public static final ML_GRANTED_REQUEST_CODE:I = 0x8


# instance fields
.field private caller:I

.field private isInitialized:Z

.field private presenter:Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->isInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/MockLocationPermissionActivity;)Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->presenter:Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-MockLocationPermissionActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->presenter:Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->onContinue()V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->setResult(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001f

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->setContentView(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->isInitialized:Z

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "caller"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->caller:I

    new-instance p1, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->presenter:Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;

    const p1, 0x7f0900f9

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;-><init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->isInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->caller:I

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->setResult(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->finish()V

    :cond_0
    return-void
.end method
