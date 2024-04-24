.class public final synthetic Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/PrettyToast$1;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/PrettyToast$1;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/PrettyToast$1;

    iput-object p2, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iput-object p4, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/PrettyToast$1;

    iget-object v1, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    iget-object v3, p0, Lproject/listick/fakegps/UI/PrettyToast$1$$ExternalSyntheticLambda0;->f$3:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lproject/listick/fakegps/UI/PrettyToast$1;->lambda$onAnimationEnd$0$project-listick-fakegps-UI-PrettyToast$1(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
