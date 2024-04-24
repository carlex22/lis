.class public final synthetic Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/AsyncGeocoder;

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:Lproject/listick/fakegps/AsyncGeocoder$Callback;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/AsyncGeocoder;DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/AsyncGeocoder;

    iput-wide p2, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$1:D

    iput-wide p4, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$2:D

    iput-object p6, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$3:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/AsyncGeocoder;

    iget-wide v1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$1:D

    iget-wide v3, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$2:D

    iget-object v5, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;->f$3:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    invoke-virtual/range {v0 .. v5}, Lproject/listick/fakegps/AsyncGeocoder;->lambda$getLocationAddress$3$project-listick-fakegps-AsyncGeocoder(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    return-void
.end method
