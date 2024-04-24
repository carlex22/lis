.class public Lrikka/material/app/MaterialDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MaterialDialog.kt"

# interfaces
.implements Lrikka/material/app/TranslucentSystemBars;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0012\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0010\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010!\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\"\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006#"
    }
    d2 = {
        "Lrikka/material/app/MaterialDialog;",
        "Landroidx/appcompat/app/AppCompatDialog;",
        "Lrikka/material/app/TranslucentSystemBars;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "cancelable",
        "",
        "cancelListener",
        "Landroid/content/DialogInterface$OnCancelListener;",
        "(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V",
        "parent",
        "Lrikka/material/app/MaterialDialogParent;",
        "getParent",
        "()Lrikka/material/app/MaterialDialogParent;",
        "setParent",
        "(Lrikka/material/app/MaterialDialogParent;)V",
        "onBackPressed",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "onMenuItemSelected",
        "featureId",
        "item",
        "Landroid/view/MenuItem;",
        "onOptionsItemSelected",
        "onOptionsMenuClosed",
        "onPrepareOptionsMenu",
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


# instance fields
.field private parent:Lrikka/material/app/MaterialDialogParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public final getParent()Lrikka/material/app/MaterialDialogParent;
    .registers 2

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    return-object v0
.end method

.method public onApplyTranslucentSystemBars()V
    .registers 1

    invoke-static {p0}, Lrikka/material/app/TranslucentSystemBars$DefaultImpls;->onApplyTranslucentSystemBars(Lrikka/material/app/TranslucentSystemBars;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 4

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrikka/material/app/MaterialDialogParent;->onBackPressed()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    instance-of v0, p1, Lrikka/material/app/TranslucentSystemBars;

    if-eqz v0, :cond_2

    const-string v0, "null cannot be cast to non-null type rikka.material.app.TranslucentSystemBars"

    if-eqz p1, :cond_1

    check-cast p1, Lrikka/material/app/TranslucentSystemBars;

    invoke-interface {p1}, Lrikka/material/app/TranslucentSystemBars;->shouldApplyTranslucentSystemBars()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    if-eqz p1, :cond_0

    check-cast p1, Lrikka/material/app/TranslucentSystemBars;

    invoke-interface {p1}, Lrikka/material/app/TranslucentSystemBars;->onApplyTranslucentSystemBars()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->shouldApplyTranslucentSystemBars()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->onApplyTranslucentSystemBars()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrikka/material/app/MaterialDialogParent;->hasDialogOptionsMenu()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const-string v3, "delegate.menuInflater"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lrikka/material/app/MaterialDialogParent;->onCreateDialogOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_1
    return v2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 5

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lrikka/material/app/MaterialDialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lrikka/material/app/MaterialDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x102002c

    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lrikka/material/app/MaterialDialog;->onBackPressed()V

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrikka/material/app/MaterialDialogParent;->hasDialogOptionsMenu()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lrikka/material/app/MaterialDialogParent;->onDialogOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrikka/material/app/MaterialDialogParent;->hasDialogOptionsMenu()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lrikka/material/app/MaterialDialogParent;->onDialogOptionsMenuClosed(Landroid/view/Menu;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrikka/material/app/MaterialDialogParent;->hasDialogOptionsMenu()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    iget-object v0, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lrikka/material/app/MaterialDialogParent;->onPrepareDialogOptionsMenu(Landroid/view/Menu;)V

    :cond_1
    return v2
.end method

.method public final setParent(Lrikka/material/app/MaterialDialogParent;)V
    .registers 2

    iput-object p1, p0, Lrikka/material/app/MaterialDialog;->parent:Lrikka/material/app/MaterialDialogParent;

    return-void
.end method

.method public shouldApplyTranslucentSystemBars()Z
    .registers 2

    invoke-static {p0}, Lrikka/material/app/TranslucentSystemBars$DefaultImpls;->shouldApplyTranslucentSystemBars(Lrikka/material/app/TranslucentSystemBars;)Z

    move-result v0

    return v0
.end method
