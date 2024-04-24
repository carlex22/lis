.class public final synthetic Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/LocationMarker;

.field public final synthetic f$1:Landroid/graphics/Matrix;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/LocationMarker;Landroid/graphics/Matrix;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/LocationMarker;

    iput-object p2, p0, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/LocationMarker;

    iget-object v1, p0, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/LocationMarker;->lambda$setBearing$1$project-listick-fakegps-LocationMarker(Landroid/graphics/Matrix;)V

    return-void
.end method
