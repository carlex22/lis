.class Lproject/listick/fakegps/UI/SelectPointActivity$4;
.super Ljava/lang/Object;
.source "SelectPointActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SelectPointActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

.field private timer:Ljava/util/Timer;

.field final synthetic val$promptsGeocoder:Lproject/listick/fakegps/AsyncGeocoder;

.field final synthetic val$promptsList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity;Lproject/listick/fakegps/AsyncGeocoder;Landroid/widget/ListView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->this$0:Lproject/listick/fakegps/UI/SelectPointActivity;

    iput-object p2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsGeocoder:Lproject/listick/fakegps/AsyncGeocoder;

    iput-object p3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->val$promptsList:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 6

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4;->timer:Ljava/util/Timer;

    new-instance v1, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;

    invoke-direct {v1, p0, p1}, Lproject/listick/fakegps/UI/SelectPointActivity$4$1;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity$4;Landroid/text/Editable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
