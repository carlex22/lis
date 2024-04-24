.class public Lproject/listick/fakegps/UI/PermissionsActivity;
.super Landroid/app/Activity;
.source "PermissionsActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/PermissionsImpl$UI;


# static fields
.field public static final PERMISSION_REQUEST_CODE:I = 0x0

.field private static final TIME_INTERVAL:I = 0x7d0


# instance fields
.field private mBackPressed:J

.field private mRequestPermissions:Lcom/google/android/material/button/MaterialButton;

.field private presenter:Lproject/listick/fakegps/Presenter/PermissionsPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/PermissionsActivity;)Lproject/listick/fakegps/Presenter/PermissionsPresenter;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->presenter:Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    return-object p0
.end method


# virtual methods
.method synthetic lambda$showErrorOnButton$0$project-listick-fakegps-UI-PermissionsActivity()V
    .registers 5

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/PermissionsActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/PermissionsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/PermissionsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .registers 5

    iget-wide v0, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->mBackPressed:J

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/PermissionsActivity;->finishAffinity()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lproject/listick/fakegps/UI/PermissionsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120081

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/PermissionsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->mBackPressed:J

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/PermissionsActivity;->setContentView(I)V

    const p1, 0x7f09006b

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/PermissionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->mRequestPermissions:Lcom/google/android/material/button/MaterialButton;

    new-instance p1, Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;-><init>(Lproject/listick/fakegps/Contract/PermissionsImpl$UI;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->presenter:Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->onActivityLoad()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->mRequestPermissions:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lproject/listick/fakegps/UI/PermissionsActivity$1;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/PermissionsActivity$1;-><init>(Lproject/listick/fakegps/UI/PermissionsActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    if-nez p1, :cond_1

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->presenter:Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->onPermissionGranted()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->presenter:Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->onPermissionDenied()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showErrorOnButton()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/PermissionsActivity;->mRequestPermissions:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/PermissionsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/PermissionsActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/PermissionsActivity;)V

    invoke-static {p0, v0, v1}, Lproject/listick/fakegps/UI/UIEffects$Button;->attachErrorWithShake(Landroid/content/Context;Lcom/google/android/material/button/MaterialButton;Ljava/lang/Runnable;)V

    return-void
.end method
