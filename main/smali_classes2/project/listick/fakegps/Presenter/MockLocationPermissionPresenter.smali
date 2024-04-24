.class public Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;
.super Ljava/lang/Object;
.source "MockLocationPermissionPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/MockLocationPermissionImpl$Presenter;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private openDeveloperSettings()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "project.listick.fakegps"

    const/4 v2, 0x0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f12007a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onContinue()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onDeveloperSettings()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->openDeveloperSettings()V

    return-void
.end method
