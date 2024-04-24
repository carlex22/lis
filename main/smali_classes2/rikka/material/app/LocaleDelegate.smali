.class public final Lrikka/material/app/LocaleDelegate;
.super Ljava/lang/Object;
.source "LocaleDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/material/app/LocaleDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lrikka/material/app/LocaleDelegate;",
        "",
        "()V",
        "isLocaleChanged",
        "",
        "()Z",
        "locale",
        "Ljava/util/Locale;",
        "kotlin.jvm.PlatformType",
        "onCreate",
        "",
        "activity",
        "Landroid/app/Activity;",
        "updateConfiguration",
        "configuration",
        "Landroid/content/res/Configuration;",
        "Companion",
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


# static fields
.field public static final Companion:Lrikka/material/app/LocaleDelegate$Companion;

.field private static defaultLocale:Ljava/util/Locale;

.field private static systemLocale:Ljava/util/Locale;


# instance fields
.field private locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/material/app/LocaleDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrikka/material/app/LocaleDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrikka/material/app/LocaleDelegate;->Companion:Lrikka/material/app/LocaleDelegate$Companion;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lrikka/material/app/LocaleDelegate;->defaultLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lrikka/material/app/LocaleDelegate;->systemLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lrikka/material/app/LocaleDelegate;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static final synthetic access$getDefaultLocale$cp()Ljava/util/Locale;
    .registers 1

    sget-object v0, Lrikka/material/app/LocaleDelegate;->defaultLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static final synthetic access$getSystemLocale$cp()Ljava/util/Locale;
    .registers 1

    sget-object v0, Lrikka/material/app/LocaleDelegate;->systemLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public static final synthetic access$setDefaultLocale$cp(Ljava/util/Locale;)V
    .registers 1

    sput-object p0, Lrikka/material/app/LocaleDelegate;->defaultLocale:Ljava/util/Locale;

    return-void
.end method

.method public static final synthetic access$setSystemLocale$cp(Ljava/util/Locale;)V
    .registers 1

    sput-object p0, Lrikka/material/app/LocaleDelegate;->systemLocale:Ljava/util/Locale;

    return-void
.end method

.method public static final getDefaultLocale()Ljava/util/Locale;
    .registers 1

    sget-object v0, Lrikka/material/app/LocaleDelegate;->Companion:Lrikka/material/app/LocaleDelegate$Companion;

    invoke-virtual {v0}, Lrikka/material/app/LocaleDelegate$Companion;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getSystemLocale()Ljava/util/Locale;
    .registers 1

    sget-object v0, Lrikka/material/app/LocaleDelegate;->Companion:Lrikka/material/app/LocaleDelegate$Companion;

    invoke-virtual {v0}, Lrikka/material/app/LocaleDelegate$Companion;->getSystemLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final setDefaultLocale(Ljava/util/Locale;)V
    .registers 2

    sget-object v0, Lrikka/material/app/LocaleDelegate;->Companion:Lrikka/material/app/LocaleDelegate$Companion;

    invoke-virtual {v0, p0}, Lrikka/material/app/LocaleDelegate$Companion;->setDefaultLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public static final setSystemLocale(Ljava/util/Locale;)V
    .registers 2

    sget-object v0, Lrikka/material/app/LocaleDelegate;->Companion:Lrikka/material/app/LocaleDelegate$Companion;

    invoke-virtual {v0, p0}, Lrikka/material/app/LocaleDelegate$Companion;->setSystemLocale(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public final isLocaleChanged()Z
    .registers 3

    sget-object v0, Lrikka/material/app/LocaleDelegate;->defaultLocale:Ljava/util/Locale;

    iget-object v1, p0, Lrikka/material/app/LocaleDelegate;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lrikka/material/app/LocaleDelegate;->locale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    return-void
.end method

.method public final updateConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lrikka/material/app/LocaleDelegate;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lrikka/material/app/LocaleDelegate;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method
