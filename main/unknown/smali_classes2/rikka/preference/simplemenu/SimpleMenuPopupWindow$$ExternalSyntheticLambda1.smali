.class public final synthetic Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;


# direct methods
.method public synthetic constructor <init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda1;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda1;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->lambda$show$0$rikka-preference-simplemenu-SimpleMenuPopupWindow()V

    return-void
.end method
