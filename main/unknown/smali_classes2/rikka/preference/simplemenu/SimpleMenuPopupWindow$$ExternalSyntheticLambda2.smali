.class public final synthetic Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iput p2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iget v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, v2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->lambda$showPopupMenu$2$rikka-preference-simplemenu-SimpleMenuPopupWindow(II)V

    return-void
.end method