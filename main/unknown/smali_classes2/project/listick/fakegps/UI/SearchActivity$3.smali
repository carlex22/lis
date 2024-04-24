.class Lproject/listick/fakegps/UI/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/SearchActivity;->setReturnSharedElementTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/SearchActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/SearchActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity$3;->this$0:Lproject/listick/fakegps/UI/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .registers 2

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity$3;->this$0:Lproject/listick/fakegps/UI/SearchActivity;

    const v0, 0x7f0900f1

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method
