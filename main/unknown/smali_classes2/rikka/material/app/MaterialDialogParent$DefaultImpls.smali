.class public final Lrikka/material/app/MaterialDialogParent$DefaultImpls;
.super Ljava/lang/Object;
.source "MaterialDialogParent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/material/app/MaterialDialogParent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static closeDialogOptionsMenu(Lrikka/material/app/MaterialDialogParent;)V
    .registers 1

    return-void
.end method

.method public static invalidateDialogOptionsMenu(Lrikka/material/app/MaterialDialogParent;)V
    .registers 1

    return-void
.end method

.method public static onBackPressed(Lrikka/material/app/MaterialDialogParent;)Z
    .registers 1

    check-cast p0, Lrikka/material/app/BackFragment;

    invoke-static {p0}, Lrikka/material/app/BackFragment$DefaultImpls;->onBackPressed(Lrikka/material/app/BackFragment;)Z

    move-result p0

    return p0
.end method

.method public static onCreateDialogOptionsMenu(Lrikka/material/app/MaterialDialogParent;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inflater"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onDialogOptionsItemSelected(Lrikka/material/app/MaterialDialogParent;Landroid/view/MenuItem;)Z
    .registers 2

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onDialogOptionsMenuClosed(Lrikka/material/app/MaterialDialogParent;Landroid/view/Menu;)V
    .registers 2

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onPrepareDialogOptionsMenu(Lrikka/material/app/MaterialDialogParent;Landroid/view/Menu;)V
    .registers 2

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static openDialogOptionsMenu(Lrikka/material/app/MaterialDialogParent;)V
    .registers 1

    return-void
.end method
