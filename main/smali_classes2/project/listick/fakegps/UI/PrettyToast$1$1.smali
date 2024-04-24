.class Lproject/listick/fakegps/UI/PrettyToast$1$1;
.super Ljava/lang/Object;
.source "PrettyToast.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/PrettyToast$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/PrettyToast$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$inflatedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/PrettyToast$1;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/UI/PrettyToast$1$1;->this$0:Lproject/listick/fakegps/UI/PrettyToast$1;

    iput-object p2, p0, Lproject/listick/fakegps/UI/PrettyToast$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lproject/listick/fakegps/UI/PrettyToast$1$1;->val$inflatedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/PrettyToast$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lproject/listick/fakegps/UI/PrettyToast$1$1;->val$inflatedView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

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
