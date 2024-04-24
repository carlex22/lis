.class public Lrikka/material/internal/ThemedAppCompatDialogFragment;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "ThemedAppCompatDialogFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006R\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\tH\u0015\u00a8\u0006\u0012"
    }
    d2 = {
        "Lrikka/material/internal/ThemedAppCompatDialogFragment;",
        "Landroidx/appcompat/app/AppCompatDialogFragment;",
        "()V",
        "onApplyUserThemeResource",
        "",
        "theme",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "context",
        "Landroid/content/Context;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDialogCreated",
        "dialog",
        "onDialogShow",
        "setupDialog",
        "material_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$pFUuue6lTY6NU6HuPxMW4JPuazI(Lrikka/material/internal/ThemedAppCompatDialogFragment;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-static {p0, p1}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->setupDialog$lambda-0(Lrikka/material/internal/ThemedAppCompatDialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method

.method private static final setupDialog$lambda-0(Lrikka/material/internal/ThemedAppCompatDialogFragment;Landroid/content/DialogInterface;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    check-cast p1, Lrikka/material/app/MaterialDialog;

    check-cast p1, Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->onDialogShow(Landroid/app/Dialog;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type rikka.material.app.MaterialDialog"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onApplyUserThemeResource(Landroid/content/res/Resources$Theme;)V
    .registers 3

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/app/Dialog;

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->getTheme()I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->onCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->setupDialog(Landroid/app/Dialog;)V

    invoke-virtual {p0, v0, p1}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->onDialogCreated(Landroid/app/Dialog;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const-string v1, "dialog.context.theme"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lrikka/material/internal/ThemedAppCompatDialogFragment;->onApplyUserThemeResource(Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public onDialogCreated(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 3

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogShow(Landroid/app/Dialog;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected setupDialog(Landroid/app/Dialog;)V
    .registers 3

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrikka/material/internal/ThemedAppCompatDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lrikka/material/internal/ThemedAppCompatDialogFragment$$ExternalSyntheticLambda0;-><init>(Lrikka/material/internal/ThemedAppCompatDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method
