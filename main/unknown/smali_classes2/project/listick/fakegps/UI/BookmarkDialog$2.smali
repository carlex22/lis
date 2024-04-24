.class Lproject/listick/fakegps/UI/BookmarkDialog$2;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "BookmarkDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/BookmarkDialog;->show(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$isRoute:Z


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/BookmarkDialog;ZLandroid/app/Activity;Landroid/app/Dialog;)V
    .registers 5

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    iput-boolean p2, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$isRoute:Z

    iput-object p3, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 5

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$000(Lproject/listick/fakegps/UI/BookmarkDialog;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$isRoute:Z

    const-string v1, "dest_address"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$100(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$200(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$300(Lproject/listick/fakegps/UI/BookmarkDialog;)Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-result-object v0

    const-string v1, "transport"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$400(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$500(Lproject/listick/fakegps/UI/BookmarkDialog;)D

    move-result-wide v0

    const-string v2, "latitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$600(Lproject/listick/fakegps/UI/BookmarkDialog;)D

    move-result-wide v0

    const-string v2, "longitude"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
