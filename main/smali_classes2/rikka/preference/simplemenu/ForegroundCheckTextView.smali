.class public Lrikka/preference/simplemenu/ForegroundCheckTextView;
.super Landroidx/appcompat/widget/AppCompatCheckedTextView;
.source "ForegroundCheckTextView.java"


# instance fields
.field private mForeground:Landroid/graphics/drawable/Drawable;

.field mForegroundBoundsChanged:Z

.field private mForegroundGravity:I

.field protected mForegroundInPadding:Z

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mSelfBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mOverlayBounds:Landroid/graphics/Rect;

    const/16 v0, 0x77

    iput v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundInPadding:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    invoke-direct {p0, p1, p2, p3}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    sget-object v0, Lrikka/preference/simplemenu/R$styleable;->ForegroundCheckTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lrikka/preference/simplemenu/R$styleable;->ForegroundCheckTextView_android_foregroundGravity:I

    iget p3, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    sget p2, Lrikka/preference/simplemenu/R$styleable;->ForegroundCheckTextView_android_foreground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    sget p2, Lrikka/preference/simplemenu/R$styleable;->ForegroundCheckTextView_foregroundInsidePadding:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundInPadding:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    iget-object v2, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mSelfBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mOverlayBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget-boolean v6, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundInPadding:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget v1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v1, v4, v5, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->drawableStateChanged()V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundGravity()I
    .registers 2

    iget v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onLayout(ZIIII)V

    iget-boolean p2, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundBoundsChanged:Z

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_4

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->setWillNotDraw(Z)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    iget v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->setWillNotDraw(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->requestLayout()V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setForegroundGravity(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "foregroundGravity"
        }
    .end annotation

    iget v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    :cond_1
    iput p1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForegroundGravity:I

    const/16 v0, 0x77

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_2
    invoke-virtual {p0}, Lrikka/preference/simplemenu/ForegroundCheckTextView;->requestLayout()V

    :cond_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckedTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrikka/preference/simplemenu/ForegroundCheckTextView;->mForeground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
