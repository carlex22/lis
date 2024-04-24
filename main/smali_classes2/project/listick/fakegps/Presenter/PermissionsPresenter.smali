.class public Lproject/listick/fakegps/Presenter/PermissionsPresenter;
.super Ljava/lang/Object;
.source "PermissionsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/PermissionsImpl$Presenter;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mUserInterface:Lproject/listick/fakegps/Contract/PermissionsImpl$UI;


# direct methods
.method public constructor <init>(Lproject/listick/fakegps/Contract/PermissionsImpl$UI;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/PermissionsImpl$UI;

    return-void
.end method

.method private requestPermissions()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onActivityLoad()V
    .registers 1

    return-void
.end method

.method public onPermissionDenied()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/PermissionsImpl$UI;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/PermissionsImpl$UI;->showErrorOnButton()V

    return-void
.end method

.method public onPermissionGranted()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPermissionRequest()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->requestPermissions()V

    return-void
.end method
