.class public final synthetic Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/AsyncGeocoder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lproject/listick/fakegps/AsyncGeocoder$Callback;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/AsyncGeocoder;Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$0:Lproject/listick/fakegps/AsyncGeocoder;

    iput-object p2, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$2:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$0:Lproject/listick/fakegps/AsyncGeocoder;

    iget-object v1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;->f$2:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/AsyncGeocoder;->lambda$getFromAddress$1$project-listick-fakegps-AsyncGeocoder(Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    return-void
.end method
