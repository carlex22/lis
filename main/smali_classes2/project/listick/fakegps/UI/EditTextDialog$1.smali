.class Lproject/listick/fakegps/UI/EditTextDialog$1;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "EditTextDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/EditTextDialog;->show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/EditTextDialog;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/EditTextDialog;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$1;->this$0:Lproject/listick/fakegps/UI/EditTextDialog;

    iput-object p2, p0, Lproject/listick/fakegps/UI/EditTextDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method
