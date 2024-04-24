.class public final synthetic Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;->f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    iput-object p2, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;->f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    iget-object v1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lproject/listick/fakegps/AsyncGeocoder;->lambda$getLocationAddress$2(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V

    return-void
.end method
