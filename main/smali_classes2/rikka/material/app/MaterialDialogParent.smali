.class public interface abstract Lrikka/material/app/MaterialDialogParent;
.super Ljava/lang/Object;
.source "MaterialDialogParent.kt"

# interfaces
.implements Lrikka/material/app/BackFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/material/app/MaterialDialogParent$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0017J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0003H\u0017J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0017J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0017J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0017J\u0008\u0010\u0011\u001a\u00020\u0003H\u0017J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0005H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lrikka/material/app/MaterialDialogParent;",
        "Lrikka/material/app/BackFragment;",
        "closeDialogOptionsMenu",
        "",
        "hasDialogOptionsMenu",
        "",
        "invalidateDialogOptionsMenu",
        "onCreateDialogOptionsMenu",
        "menu",
        "Landroid/view/Menu;",
        "inflater",
        "Landroid/view/MenuInflater;",
        "onDialogOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "onDialogOptionsMenuClosed",
        "onPrepareDialogOptionsMenu",
        "openDialogOptionsMenu",
        "setHasDialogOptionsMenu",
        "hasMenu",
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


# virtual methods
.method public abstract closeDialogOptionsMenu()V
.end method

.method public abstract hasDialogOptionsMenu()Z
.end method

.method public abstract invalidateDialogOptionsMenu()V
.end method

.method public abstract onCreateDialogOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end method

.method public abstract onDialogOptionsItemSelected(Landroid/view/MenuItem;)Z
.end method

.method public abstract onDialogOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method public abstract onPrepareDialogOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract openDialogOptionsMenu()V
.end method

.method public abstract setHasDialogOptionsMenu(Z)V
.end method
