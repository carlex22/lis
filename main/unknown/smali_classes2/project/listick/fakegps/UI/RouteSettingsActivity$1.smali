.class Lproject/listick/fakegps/UI/RouteSettingsActivity$1;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "RouteSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/RouteSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSingleClick$0()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$onSingleClick$1()V
    .registers 0

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 10

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$000(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$000(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$100(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$100(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$200(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$300(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, p1

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$200(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/UI/RouteSettingsActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0, v1}, Lproject/listick/fakegps/UI/UIEffects$TextView;->attachErrorWithShake(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    move v5, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$300(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/UI/RouteSettingsActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, v1}, Lproject/listick/fakegps/UI/UIEffects$TextView;->attachErrorWithShake(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_1
    move v6, v2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$500(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    move-result-object v2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$000(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$100(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$400(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    invoke-virtual/range {v2 .. v7}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->onContinueClick(IIFFZ)V

    :cond_2
    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$500(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$200(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$300(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->saveElevation(FF)V

    return-void
.end method
