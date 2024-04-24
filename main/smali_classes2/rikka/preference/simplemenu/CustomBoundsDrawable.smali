.class Lrikka/preference/simplemenu/CustomBoundsDrawable;
.super Lrikka/preference/simplemenu/DrawableWrapper;
.source "CustomBoundsDrawable.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrappedDrawable"
        }
    .end annotation

    invoke-direct {p0, p1}, Lrikka/preference/simplemenu/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    return-void
.end method

.method public setCustomBounds(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->setBounds(IIII)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setCustomBounds(Landroid/graphics/Rect;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->setCustomBounds(IIII)V

    return-void
.end method
