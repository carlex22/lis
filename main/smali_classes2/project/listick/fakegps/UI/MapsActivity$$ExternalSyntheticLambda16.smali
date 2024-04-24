.class public final synthetic Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/MapsActivity;

.field public final synthetic f$1:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/MapsActivity;Lcom/google/android/material/button/MaterialButton;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;->f$0:Lproject/listick/fakegps/UI/MapsActivity;

    iput-object p2, p0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;->f$1:Lcom/google/android/material/button/MaterialButton;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;->f$0:Lproject/listick/fakegps/UI/MapsActivity;

    iget-object v1, p0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;->f$1:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1, p1, p2}, Lproject/listick/fakegps/UI/MapsActivity;->lambda$onCreate$11$project-listick-fakegps-UI-MapsActivity(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
