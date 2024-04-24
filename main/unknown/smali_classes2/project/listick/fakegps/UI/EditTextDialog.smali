.class public Lproject/listick/fakegps/UI/EditTextDialog;
.super Ljava/lang/Object;
.source "EditTextDialog.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final editTextDialogImpl:Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/EditTextDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/UI/EditTextDialog;->editTextDialogImpl:Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/EditTextDialog;)Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/EditTextDialog;->editTextDialogImpl:Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;

    return-object p0
.end method


# virtual methods
.method public show(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lproject/listick/fakegps/UI/EditTextDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v1, 0x7f090221

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090215

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090216

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f09006a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090073

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lproject/listick/fakegps/UI/EditTextDialog$1;

    invoke-direct {p1, p0, v0}, Lproject/listick/fakegps/UI/EditTextDialog$1;-><init>(Lproject/listick/fakegps/UI/EditTextDialog;Landroid/app/Dialog;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lproject/listick/fakegps/UI/EditTextDialog$2;

    invoke-direct {p1, p0, v3, v0}, Lproject/listick/fakegps/UI/EditTextDialog$2;-><init>(Lproject/listick/fakegps/UI/EditTextDialog;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
