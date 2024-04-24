.class Lproject/listick/fakegps/UI/BookmarkDialog$1;
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


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/BookmarkDialog;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$1;->this$0:Lproject/listick/fakegps/UI/BookmarkDialog;

    iput-object p2, p0, Lproject/listick/fakegps/UI/BookmarkDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
