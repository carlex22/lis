.class public final synthetic Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda2;->f$0:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3}, Lproject/listick/fakegps/UI/SelectPointActivity;->lambda$onCreate$2(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
