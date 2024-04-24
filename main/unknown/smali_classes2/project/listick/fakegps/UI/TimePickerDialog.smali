.class public Lproject/listick/fakegps/UI/TimePickerDialog;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private final mListener:Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mListener:Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/TimePickerDialog;)V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/UI/TimePickerDialog;->hideKeyboard()V

    return-void
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/TimePickerDialog;)Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mListener:Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/UI/TimePickerDialog;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private hideKeyboard()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$show$0(Landroid/view/View;Z)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    check-cast p0, Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$show$1(Landroid/view/View;Z)V
    .registers 2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    check-cast p0, Landroid/widget/EditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$show$2$project-listick-fakegps-UI-TimePickerDialog(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Lproject/listick/fakegps/UI/TimePickerDialog;->hideKeyboard()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public show()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lproject/listick/fakegps/UI/TimePickerDialog;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0c00a0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f090215

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f090137

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f0901c7

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iget-object v4, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f09006a

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090072

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const-string v6, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v6

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v6

    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog$1;

    invoke-direct {p1, p0, v2, v3}, Lproject/listick/fakegps/UI/TimePickerDialog$1;-><init>(Lproject/listick/fakegps/UI/TimePickerDialog;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/UI/TimePickerDialog$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/TimePickerDialog;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/TimePickerDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
