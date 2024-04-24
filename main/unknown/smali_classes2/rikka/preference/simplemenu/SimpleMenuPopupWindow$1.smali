.class Lrikka/preference/simplemenu/SimpleMenuPopupWindow$1;
.super Landroid/view/ViewOutlineProvider;
.source "SimpleMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/preference/simplemenu/SimpleMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;


# direct methods
.method constructor <init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$1;->this$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "outline"
        }
    .end annotation

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$1;->this$0:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object p1

    invoke-virtual {p1, p2}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
