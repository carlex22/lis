.class public final synthetic Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda5;->f$0:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda5;->f$0:Landroid/widget/ListView;

    invoke-static {v0, p1, p2}, Lproject/listick/fakegps/UI/SelectPointActivity;->lambda$onCreate$5(Landroid/widget/ListView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
