.class public final synthetic Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;

    iput p2, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;

    iget v1, p0, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lproject/listick/fakegps/UI/MockLocationPermissionActivity$1;->lambda$onSingleClick$0$project-listick-fakegps-UI-MockLocationPermissionActivity$1(ILandroid/content/DialogInterface;I)V

    return-void
.end method
