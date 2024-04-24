.class Lproject/listick/fakegps/UI/MapsActivity$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "MapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/MapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/MapsActivity;

.field final synthetic val$getLocation:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/MapsActivity;Lcom/google/android/material/button/MaterialButton;)V
    .registers 3

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    iput-object p2, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->val$getLocation:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 6

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->val$getLocation:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MapsActivity;->access$100(Lproject/listick/fakegps/UI/MapsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/CardView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MapsActivity;->access$200(Lproject/listick/fakegps/UI/MapsActivity;)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3

    const/4 p1, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$2;->this$0:Lproject/listick/fakegps/UI/MapsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/MapsActivity;->access$100(Lproject/listick/fakegps/UI/MapsActivity;)Landroidx/cardview/widget/CardView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/CardView;->setAlpha(F)V

    :cond_0
    return-void
.end method
