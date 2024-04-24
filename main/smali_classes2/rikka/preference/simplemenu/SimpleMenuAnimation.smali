.class Lrikka/preference/simplemenu/SimpleMenuAnimation;
.super Ljava/lang/Object;
.source "SimpleMenuAnimation.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createBoundsAnimator(Lrikka/preference/simplemenu/PropertyHolder;IIIILandroid/graphics/Rect;)Landroid/animation/Animator;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "width",
            "height",
            "centerX",
            "centerY",
            "start"
        }
    .end annotation

    sub-int v0, p1, p3

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p2, p4

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1, p2, p3, p4}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->getBounds(IIII)[Landroid/graphics/Rect;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p3, p1, p2

    const/4 p4, 0x1

    aget-object p1, p1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x1000

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x96

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-object v2, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;->BOUNDS:Landroid/util/Property;

    new-instance v3, Lrikka/preference/simplemenu/RectEvaluator;

    invoke-direct {v3, p1}, Lrikka/preference/simplemenu/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/Rect;

    aput-object p5, p1, p2

    aput-object p3, p1, p4

    invoke-static {p0, v2, v3, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object p0
.end method

.method private static createElevationAnimator(Landroid/view/View;F)Landroid/animation/Animator;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "elevation"
        }
    .end annotation

    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-instance v1, Landroid/animation/FloatEvaluator;

    invoke-direct {v1}, Landroid/animation/FloatEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Float;

    neg-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private static getBounds(IIII)[Landroid/graphics/Rect;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "centerX",
            "centerY"
        }
    .end annotation

    sub-int v0, p0, p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v1, p1, p3

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, p2, v0

    add-int/2addr p2, v0

    sub-int v0, p3, v1

    add-int/2addr p3, v1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v0, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/graphics/Rect;

    aput-object v1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    return-object p0
.end method

.method private static startChild(Landroid/view/View;JI)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "child",
            "delay",
            "translationY"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v1, [F

    int-to-float p3, p3

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput v0, v3, p3

    const-string v0, "translationY"

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v5, 0x113

    invoke-virtual {p0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v2, v1, v4

    aput-object p0, v1, p3

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static startEnterAnimation(Lrikka/preference/simplemenu/CustomBoundsDrawable;Landroid/view/View;IIIILandroid/graphics/Rect;III)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "background",
            "view",
            "width",
            "height",
            "centerX",
            "centerY",
            "start",
            "itemHeight",
            "elevation",
            "selectedIndex"
        }
    .end annotation

    new-instance v0, Lrikka/preference/simplemenu/PropertyHolder;

    invoke-direct {v0, p0, p1}, Lrikka/preference/simplemenu/PropertyHolder;-><init>(Lrikka/preference/simplemenu/CustomBoundsDrawable;Landroid/view/View;)V

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->createBoundsAnimator(Lrikka/preference/simplemenu/PropertyHolder;IIIILandroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object p0

    int-to-float p2, p8

    invoke-static {p1, p2}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->createElevationAnimator(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object p2

    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/animation/Animator;

    const/4 p5, 0x0

    aput-object p0, p4, p5

    const/4 p6, 0x1

    aput-object p2, p4, p6

    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    move p0, p5

    :goto_0
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p0, p3, :cond_2

    sub-int p3, p9, p0

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    mul-int/lit8 p4, p4, 0x1e

    int-to-long v0, p4

    const-wide/16 v2, 0x0

    add-long/2addr v2, v0

    if-nez p3, :cond_0

    move p4, p5

    goto :goto_2

    :cond_0
    int-to-double v0, p7

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v4

    double-to-int p4, v0

    if-gez p3, :cond_1

    const/4 p3, -0x1

    goto :goto_1

    :cond_1
    move p3, p6

    :goto_1
    mul-int/2addr p4, p3

    :goto_2
    invoke-static {p2, v2, v3, p4}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->startChild(Landroid/view/View;JI)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
