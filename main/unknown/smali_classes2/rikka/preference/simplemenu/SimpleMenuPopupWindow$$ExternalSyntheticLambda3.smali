.class public final synthetic Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/graphics/Rect;

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;IIIILandroid/graphics/Rect;III)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iput p2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$1:I

    iput p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$3:I

    iput p5, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$4:I

    iput-object p6, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iput p7, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$6:I

    iput p8, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$7:I

    iput p9, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iget v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$1:I

    iget v2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$3:I

    iget v4, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$4:I

    iget-object v5, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$5:Landroid/graphics/Rect;

    iget v6, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$6:I

    iget v7, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$7:I

    iget v8, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->lambda$showPopupMenu$3$rikka-preference-simplemenu-SimpleMenuPopupWindow(IIIILandroid/graphics/Rect;III)V

    return-void
.end method
