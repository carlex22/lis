.class public final synthetic Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/LinearLayout;

.field public final synthetic f$1:Landroid/widget/RelativeLayout;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/widget/RelativeLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;ILandroid/widget/RelativeLayout;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$0:Landroid/widget/LinearLayout;

    iput-object p2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$1:Landroid/widget/RelativeLayout;

    iput p3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$2:I

    iput-object p4, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$3:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$0:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$1:Landroid/widget/RelativeLayout;

    iget v2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$2:I

    iget-object v3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;->f$3:Landroid/widget/RelativeLayout;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lproject/listick/fakegps/UI/SelectPointActivity;->lambda$onCreate$6(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;ILandroid/widget/RelativeLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method
