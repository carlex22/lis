.class public final synthetic Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

.field public final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Landroid/widget/EditText;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;->f$1:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lproject/listick/fakegps/Presenter/MapsPresenter;->lambda$addInBookmarks$5$project-listick-fakegps-Presenter-MapsPresenter(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
