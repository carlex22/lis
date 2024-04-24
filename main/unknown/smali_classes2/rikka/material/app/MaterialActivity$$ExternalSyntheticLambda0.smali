.class public final synthetic Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/Window;

.field public final synthetic f$1:Landroid/content/res/Resources$Theme;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/Window;

    iput-object p2, p0, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;->f$0:Landroid/view/Window;

    iget-object v1, p0, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/res/Resources$Theme;

    invoke-static {v0, v1}, Lrikka/material/app/MaterialActivity;->$r8$lambda$VZLGQC8C40u55jDZdPbeL1nzhBA(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V

    return-void
.end method
