.class public Lrikka/material/internal/ThemedAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ThemedAppCompatActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0014J\n\u0010\u0014\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0015\u001a\u00020\u0011H\u0002J$\u0010\u0016\u001a\u00020\u00112\n\u0010\u0017\u001a\u00060\u0018R\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0014J\u001c\u0010\u001e\u001a\u00020\u00112\n\u0010\u0017\u001a\u00060\u0018R\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001dH\u0016J\u0008\u0010 \u001a\u00020\u0011H\u0002J\u0012\u0010!\u001a\u00020\u00112\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u0008\u0010$\u001a\u00020\u0011H\u0014J\u0008\u0010%\u001a\u00020\u0011H\u0014J\u0010\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020#H\u0014J\u0008\u0010(\u001a\u00020\u001dH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lrikka/material/internal/ThemedAppCompatActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "dayNightDelegate",
        "Lrikka/material/app/DayNightDelegate;",
        "getDayNightDelegate",
        "()Lrikka/material/app/DayNightDelegate;",
        "dayNightDelegate$delegate",
        "Lkotlin/Lazy;",
        "localeDelegate",
        "Lrikka/material/app/LocaleDelegate;",
        "getLocaleDelegate",
        "()Lrikka/material/app/LocaleDelegate;",
        "localeDelegate$delegate",
        "userThemeKey",
        "",
        "attachBaseContext",
        "",
        "newBase",
        "Landroid/content/Context;",
        "computeUserThemeKey",
        "fixWindowFlags",
        "onApplyThemeResource",
        "theme",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "resid",
        "",
        "first",
        "",
        "onApplyUserThemeResource",
        "isDecorView",
        "onApplyUserThemeResourceForDecorView",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "respectDefaultNightMode",
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


# instance fields
.field private final dayNightDelegate$delegate:Lkotlin/Lazy;

.field private final localeDelegate$delegate:Lkotlin/Lazy;

.field private userThemeKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    sget-object v0, Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;->INSTANCE:Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->localeDelegate$delegate:Lkotlin/Lazy;

    new-instance v0, Lrikka/material/internal/ThemedAppCompatActivity$dayNightDelegate$2;

    invoke-direct {v0, p0}, Lrikka/material/internal/ThemedAppCompatActivity$dayNightDelegate$2;-><init>(Lrikka/material/internal/ThemedAppCompatActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->dayNightDelegate$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final fixWindowFlags()V
    .registers 6

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10104e0

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Lrikka/material/internal/ThemedAppCompatActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const-string v3, "obtainStyledAttributes(i\u2026tr.windowLightStatusBar))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, -0x2001

    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-lt v2, v3, :cond_2

    new-array v1, v1, [I

    const v2, 0x101056c

    aput v2, v1, v4

    invoke-virtual {p0, v1}, Lrikka/material/internal/ThemedAppCompatActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "obtainStyledAttributes(i\u2026indowLightNavigationBar))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x11

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private final getLocaleDelegate()Lrikka/material/app/LocaleDelegate;
    .registers 2

    iget-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->localeDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/material/app/LocaleDelegate;

    return-object v0
.end method

.method private final onApplyUserThemeResourceForDecorView()V
    .registers 3

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrikka/material/internal/ThemedAppCompatActivity;->onApplyUserThemeResource(Landroid/content/res/Resources$Theme;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 5

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getLocaleDelegate()Lrikka/material/app/LocaleDelegate;

    move-result-object v1

    const-string v2, "configuration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lrikka/material/app/LocaleDelegate;->updateConfiguration(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lrikka/material/app/DayNightDelegate;->attachBaseContext(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public computeUserThemeKey()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDayNightDelegate()Lrikka/material/app/DayNightDelegate;
    .registers 2

    iget-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->dayNightDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrikka/material/app/DayNightDelegate;

    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 6

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :goto_0
    invoke-virtual {p0, p1, v1}, Lrikka/material/internal/ThemedAppCompatActivity;->onApplyUserThemeResource(Landroid/content/res/Resources$Theme;Z)V

    sget p2, Lrikka/material/R$style;->ThemeOverlay:I

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onApplyUserThemeResource(Landroid/content/res/Resources$Theme;Z)V
    .registers 3

    const-string p2, "theme"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getLocaleDelegate()Lrikka/material/app/LocaleDelegate;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lrikka/material/app/LocaleDelegate;->onCreate(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrikka/material/app/DayNightDelegate;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->fixWindowFlags()V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->computeUserThemeKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->userThemeKey:Ljava/lang/String;

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->onApplyUserThemeResourceForDecorView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    invoke-direct {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getLocaleDelegate()Lrikka/material/app/LocaleDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/LocaleDelegate;->isLocaleChanged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate;->isDayNightChanged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->respectDefaultNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lrikka/material/app/DayNightDelegate;->calculateNightMode()I

    move-result v0

    invoke-static {}, Lrikka/material/app/DayNightDelegate;->getDefaultNightMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lrikka/material/internal/ThemedAppCompatActivity;->userThemeKey:Ljava/lang/String;

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->computeUserThemeKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->recreate()V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity;->getDayNightDelegate()Lrikka/material/app/DayNightDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrikka/material/app/DayNightDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public respectDefaultNightMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
