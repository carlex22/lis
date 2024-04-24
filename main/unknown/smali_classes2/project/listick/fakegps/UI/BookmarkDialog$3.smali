.class Lproject/listick/fakegps/UI/BookmarkDialog$3;
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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$isRoute:Z


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/BookmarkDialog;ZLandroid/app/Dialog;)V
    .registers 4

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    iput-boolean p2, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->val$isRoute:Z

    iput-object p3, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {p1}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$800(Lproject/listick/fakegps/UI/BookmarkDialog;)Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    invoke-static {v0}, Lproject/listick/fakegps/UI/BookmarkDialog;->access$700(Lproject/listick/fakegps/UI/BookmarkDialog;)I

    move-result v0

    iget-boolean v1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->val$isRoute:Z

    invoke-interface {p1, v0, v1}, Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;->onBookmarkRemoved(IZ)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
