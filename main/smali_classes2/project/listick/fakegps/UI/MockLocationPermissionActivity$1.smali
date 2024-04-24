.class Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "MockLocationPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSingleClick$1(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSingleClick$0$project-listick-fakegps-UI-MockLocationPermissionActivity$1(ILandroid/content/DialogInterface;I)V
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    const p2, 0x7f1200fd

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    const p2, 0x7f12014a

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    const p2, 0x7f12002b

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$onSingleClick$2$project-listick-fakegps-UI-MockLocationPermissionActivity$1(Landroid/content/DialogInterface;I)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-virtual {p2, p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onSingleClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-virtual {p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "development_settings_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lproject/listick/fakegps/ROMUtils;->getVendorUI()I

    move-result p1

    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    iget-object v2, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-direct {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12007b

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    const v3, 0x7f12007d

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    const v3, 0x7f12007c

    :goto_0
    invoke-virtual {v2, v3}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;I)V

    const p1, 0x7f12014d

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda1;-><init>()V

    const v1, 0x7f120031

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    new-instance v0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;)V

    const v1, 0x7f12014c

    invoke-virtual {p1, v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    const v0, 0x7f0800ac

    invoke-virtual {p1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->this$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;->access$000(Lproject/listick/fakegps/UI/MockLocationPermissionActivity;)Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MockLocationPermissionPresenter;->onDeveloperSettings()V

    :goto_1
    return-void
.end method
