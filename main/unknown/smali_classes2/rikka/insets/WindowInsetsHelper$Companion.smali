.class public final Lrikka/insets/WindowInsetsHelper$Companion;
.super Ljava/lang/Object;
.source "WindowInsetsHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/insets/WindowInsetsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J0\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0007R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lrikka/insets/WindowInsetsHelper$Companion;",
        "",
        "()V",
        "LISTENER",
        "Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;",
        "getLISTENER$annotations",
        "getLISTENER",
        "()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;",
        "attach",
        "",
        "view",
        "Landroid/view/View;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "edgeToEdge",
        "",
        "fitsSystemWindowsInsets",
        "",
        "layout_fitsSystemWindowsInsets",
        "consumeSystemWindowsInsets",
        "insets_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lrikka/insets/WindowInsetsHelper$Companion;-><init>()V

    return-void
.end method

.method private static final attach$getBooleanOrReference(Landroid/content/res/TypedArray;Landroid/view/View;IZ)Z
    .registers 6

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static final attach$getIntOrReference(Landroid/content/res/TypedArray;Landroid/view/View;II)I
    .registers 6

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic getLISTENER$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final attach(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lrikka/insets/R$styleable;->WindowInsetsHelper:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v0, "view.context.obtainStyle\u2026WindowInsetsHelper, 0, 0)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lrikka/insets/R$styleable;->WindowInsetsHelper_edgeToEdge:I

    invoke-static {p2, p1, v0, v2}, Lrikka/insets/WindowInsetsHelper$Companion;->attach$getBooleanOrReference(Landroid/content/res/TypedArray;Landroid/view/View;IZ)Z

    move-result v5

    sget v0, Lrikka/insets/R$styleable;->WindowInsetsHelper_fitsSystemWindowsInsets:I

    invoke-static {p2, p1, v0, v2}, Lrikka/insets/WindowInsetsHelper$Companion;->attach$getIntOrReference(Landroid/content/res/TypedArray;Landroid/view/View;II)I

    move-result v6

    sget v0, Lrikka/insets/R$styleable;->WindowInsetsHelper_layout_fitsSystemWindowsInsets:I

    invoke-static {p2, p1, v0, v2}, Lrikka/insets/WindowInsetsHelper$Companion;->attach$getIntOrReference(Landroid/content/res/TypedArray;Landroid/view/View;II)I

    move-result v7

    sget v0, Lrikka/insets/R$styleable;->WindowInsetsHelper_consumeSystemWindowsInsets:I

    invoke-static {p2, p1, v0, v2}, Lrikka/insets/WindowInsetsHelper$Companion;->attach$getIntOrReference(Landroid/content/res/TypedArray;Landroid/view/View;II)I

    move-result v8

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lrikka/insets/WindowInsetsHelper$Companion;->attach(Landroid/view/View;ZIII)V

    return-void
.end method

.method public final attach(Landroid/view/View;ZIII)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    or-int/lit16 p2, p2, 0x100

    or-int/lit16 p2, p2, 0x400

    or-int/lit16 p2, p2, 0x200

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    if-nez p5, :cond_1

    return-void

    :cond_1
    new-instance p2, Lrikka/insets/WindowInsetsHelper;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lrikka/insets/WindowInsetsHelper;-><init>(Landroid/view/View;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p3, p2

    check-cast p3, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    sget p3, Lrikka/insets/R$id;->tag_rikka_material_WindowInsetsHelper:I

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Lrikka/insets/WindowInsetsHelper$Companion$attach$1;

    invoke-direct {p2}, Lrikka/insets/WindowInsetsHelper$Companion$attach$1;-><init>()V

    check-cast p2, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    return-void
.end method

.method public final getLISTENER()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;
    .registers 2

    invoke-static {}, Lrikka/insets/WindowInsetsHelper;->access$getLISTENER$cp()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    move-result-object v0

    return-object v0
.end method
