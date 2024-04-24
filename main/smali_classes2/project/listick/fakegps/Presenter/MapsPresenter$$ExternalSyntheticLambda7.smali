.class public final synthetic Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:D

.field public final synthetic f$3:D

.field public final synthetic f$4:Landroidx/core/app/ActivityOptionsCompat;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Ljava/lang/String;DDLandroidx/core/app/ActivityOptionsCompat;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$2:D

    iput-wide p5, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$3:D

    iput-object p7, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$4:Landroidx/core/app/ActivityOptionsCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$0:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$2:D

    iget-wide v4, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$3:D

    iget-object v6, p0, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;->f$4:Landroidx/core/app/ActivityOptionsCompat;

    invoke-virtual/range {v0 .. v6}, Lproject/listick/fakegps/Presenter/MapsPresenter;->lambda$onAddMoreRoute$2$project-listick-fakegps-Presenter-MapsPresenter(Ljava/lang/String;DDLandroidx/core/app/ActivityOptionsCompat;)V

    return-void
.end method
