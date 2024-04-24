.class Lproject/listick/fakegps/UI/TimePickerDialog$1;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/TimePickerDialog;->show(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/TimePickerDialog;

.field final synthetic val$et_minutes:Landroid/widget/EditText;

.field final synthetic val$et_seconds:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/TimePickerDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    iput-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->this$0:Lproject/listick/fakegps/UI/TimePickerDialog;

    iput-object p2, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->val$et_minutes:Landroid/widget/EditText;

    iput-object p3, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->val$et_seconds:Landroid/widget/EditText;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 10

    iget-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->val$et_minutes:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->val$et_seconds:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    move p1, v2

    move v0, p1

    :goto_1
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_7

    if-le p1, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->this$0:Lproject/listick/fakegps/UI/TimePickerDialog;

    invoke-static {v1}, Lproject/listick/fakegps/UI/TimePickerDialog;->access$000(Lproject/listick/fakegps/UI/TimePickerDialog;)V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "%d:%d"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    if-ge p1, v4, :cond_4

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "0%d:%d"

    invoke-static {v1, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-ge v0, v4, :cond_5

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "%d:0%d"

    invoke-static {v1, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-ge p1, v4, :cond_6

    if-ge v0, v4, :cond_6

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const-string v2, "0%d:0%d"

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    iget-object v2, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->this$0:Lproject/listick/fakegps/UI/TimePickerDialog;

    invoke-static {v2}, Lproject/listick/fakegps/UI/TimePickerDialog;->access$100(Lproject/listick/fakegps/UI/TimePickerDialog;)Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;->onTimePicked(IILjava/lang/String;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog$1;->this$0:Lproject/listick/fakegps/UI/TimePickerDialog;

    invoke-static {p1}, Lproject/listick/fakegps/UI/TimePickerDialog;->access$200(Lproject/listick/fakegps/UI/TimePickerDialog;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    :cond_7
    :goto_2
    return-void
.end method
