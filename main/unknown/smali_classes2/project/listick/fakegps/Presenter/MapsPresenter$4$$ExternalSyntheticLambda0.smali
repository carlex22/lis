.class public final synthetic Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/Presenter/MapsPresenter$4;

.field public final synthetic f$1:Lproject/listick/fakegps/RouteBuilder;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter$4;Lproject/listick/fakegps/RouteBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter$4;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;->f$1:Lproject/listick/fakegps/RouteBuilder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter$4;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$4$$ExternalSyntheticLambda0;->f$1:Lproject/listick/fakegps/RouteBuilder;

    invoke-virtual {v0, v1, p1}, Lproject/listick/fakegps/Presenter/MapsPresenter$4;->lambda$prepare$0$project-listick-fakegps-Presenter-MapsPresenter$4(Lproject/listick/fakegps/RouteBuilder;Landroid/view/View;)V

    return-void
.end method
