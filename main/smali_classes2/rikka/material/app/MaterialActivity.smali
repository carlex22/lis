.class public Lrikka/material/app/MaterialActivity;
.super Lrikka/material/internal/ThemedAppCompatActivity;
.source "MaterialActivity.kt"

# interfaces
.implements Lrikka/material/app/TranslucentSystemBars;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0017J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lrikka/material/app/MaterialActivity;",
        "Lrikka/material/internal/ThemedAppCompatActivity;",
        "Lrikka/material/app/TranslucentSystemBars;",
        "()V",
        "onApplyTranslucentSystemBars",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateLayoutInflaterFactory",
        "Lrikka/layoutinflater/view/LayoutInflaterFactory;",
        "onInstallViewFactory",
        "layoutInflater",
        "Landroid/view/LayoutInflater;",
        "shouldApplyTranslucentSystemBars",
        "",
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


# direct methods
.method public static synthetic $r8$lambda$VZLGQC8C40u55jDZdPbeL1nzhBA(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-static {p0, p1}, Lrikka/material/app/MaterialActivity;->onApplyTranslucentSystemBars$lambda-1(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onApplyTranslucentSystemBars$lambda-1(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x28

    int-to-float v2, v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lrikka/material/R$attr;->navigationBarDividerColor:I

    invoke-static {p1, v0}, Lrikka/core/res/ResourcesKt;->resolveColor(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarDividerColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onApplyTranslucentSystemBars()V
    .registers 5

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lrikka/material/app/MaterialActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/Window;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "from(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrikka/material/app/MaterialActivity;->onInstallViewFactory(Landroid/view/LayoutInflater;)V

    invoke-super {p0, p1}, Lrikka/material/internal/ThemedAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->shouldApplyTranslucentSystemBars()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->onApplyTranslucentSystemBars()V

    :cond_0
    return-void
.end method

.method public onCreateLayoutInflaterFactory()Lrikka/layoutinflater/view/LayoutInflaterFactory;
    .registers 6

    new-instance v0, Lrikka/layoutinflater/view/LayoutInflaterFactory;

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-direct {v0, v1}, Lrikka/layoutinflater/view/LayoutInflaterFactory;-><init>(Landroidx/appcompat/app/AppCompatDelegate;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    sget-object v2, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    invoke-virtual {v2}, Lrikka/insets/WindowInsetsHelper$Companion;->getLISTENER()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lrikka/material/app/ToolbarTitleAlignmentFix;->Companion:Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;

    invoke-virtual {v2}, Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;->getLISTENER()Lrikka/material/app/ToolbarTitleAlignmentFix;

    move-result-object v2

    check-cast v2, Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lrikka/layoutinflater/view/LayoutInflaterFactory;->addOnViewCreatedListeners([Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;)Lrikka/layoutinflater/view/LayoutInflaterFactory;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    new-array v1, v4, [Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    invoke-static {}, Lrikka/core/res/ResourcesCompatLayoutInflaterListener;->getInstance()Lrikka/core/res/ResourcesCompatLayoutInflaterListener;

    move-result-object v2

    check-cast v2, Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lrikka/layoutinflater/view/LayoutInflaterFactory;->addOnViewCreatedListeners([Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;)Lrikka/layoutinflater/view/LayoutInflaterFactory;

    :cond_0
    return-object v0
.end method

.method public onInstallViewFactory(Landroid/view/LayoutInflater;)V
    .registers 3

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrikka/material/app/MaterialActivity;->onCreateLayoutInflaterFactory()Lrikka/layoutinflater/view/LayoutInflaterFactory;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method

.method public shouldApplyTranslucentSystemBars()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
