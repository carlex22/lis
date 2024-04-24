.class public final synthetic Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/AsyncGeocoder$Callback;

    invoke-interface {v0}, Lproject/listick/fakegps/AsyncGeocoder$Callback;->onError()V

    return-void
.end method
