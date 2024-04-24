.class Lproject/listick/fakegps/UI/PrettyToast$1;
.super Ljava/lang/Object;
.source "PrettyToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inflatedView:Landroid/view/View;

.field final synthetic val$toast:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$inflatedView:Landroid/view/View;

    iput-object p3, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$toast:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAnimationEnd$0$project-listick-fakegps-UI-PrettyToast$1(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const v0, 0x7f01003a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/UI/PrettyToast$1$1;

    invoke-direct {v1, p0, p1, p2}, Lproject/listick/fakegps/UI/PrettyToast$1$1;-><init>(Lproject/listick/fakegps/UI/PrettyToast$1;Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$inflatedView:Landroid/view/View;

    iget-object v2, p0, Lproject/listick/fakegps/UI/PrettyToast$1;->val$toast:Landroid/view/View;

    new-instance v3, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1, v2}, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/PrettyToast$1;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
