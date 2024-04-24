.class Lproject/listick/fakegps/UI/EditTextDialog$2;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/EditTextDialog;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .registers 4

    iput-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->this$0:Lproject/listick/fakegps/UI/EditTextDialog;

    iput-object p2, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->this$0:Lproject/listick/fakegps/UI/EditTextDialog;

    invoke-static {p1}, Lproject/listick/fakegps/UI/EditTextDialog;->access$000(Lproject/listick/fakegps/UI/EditTextDialog;)Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;->getDialogResult(Ljava/lang/String;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void
.end method
