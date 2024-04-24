.class public final synthetic Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;Ljava/util/List;Landroid/widget/ListView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;

    iput-object p2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1$$ExternalSyntheticLambda0;->f$2:Landroid/widget/ListView;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v0 .. v7}, Lproject/listick/fakegps/UI/SelectPointActivity$4$1$1;->lambda$onSuccess$0$project-listick-fakegps-UI-SelectPointActivity$4$1$1(Ljava/util/List;Landroid/widget/ListView;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
