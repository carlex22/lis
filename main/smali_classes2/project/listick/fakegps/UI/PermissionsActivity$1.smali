.class Lproject/listick/fakegps/UI/PermissionsActivity$1;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "PermissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/PermissionsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/PermissionsActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/PermissionsActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity$1;->this$0:Lproject/listick/fakegps/UI/PermissionsActivity;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/PermissionsActivity$1;->this$0:Lproject/listick/fakegps/UI/PermissionsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/PermissionsActivity;->access$000(Lproject/listick/fakegps/UI/PermissionsActivity;)Lproject/listick/fakegps/Presenter/PermissionsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/PermissionsPresenter;->onPermissionRequest()V

    return-void
.end method
