.class public final synthetic Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/timepicker/RadialViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/timepicker/RadialViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/timepicker/RadialViewGroup;

    invoke-virtual {v0}, Lcom/google/android/material/timepicker/RadialViewGroup;->updateLayoutParams()V

    return-void
.end method
