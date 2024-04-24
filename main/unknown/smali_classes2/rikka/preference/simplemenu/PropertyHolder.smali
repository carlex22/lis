.class Lrikka/preference/simplemenu/PropertyHolder;
.super Ljava/lang/Object;
.source "PropertyHolder.java"


# instance fields
.field private final mBackground:Lrikka/preference/simplemenu/CustomBoundsDrawable;

.field private final mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lrikka/preference/simplemenu/CustomBoundsDrawable;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "background",
            "contentView"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/preference/simplemenu/PropertyHolder;->mBackground:Lrikka/preference/simplemenu/CustomBoundsDrawable;

    iput-object p2, p0, Lrikka/preference/simplemenu/PropertyHolder;->mContentView:Landroid/view/View;

    return-void
.end method

.method private getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/PropertyHolder;->mBackground:Lrikka/preference/simplemenu/CustomBoundsDrawable;

    return-object v0
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    invoke-direct {p0}, Lrikka/preference/simplemenu/PropertyHolder;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/PropertyHolder;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0}, Lrikka/preference/simplemenu/PropertyHolder;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->setCustomBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/PropertyHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method
