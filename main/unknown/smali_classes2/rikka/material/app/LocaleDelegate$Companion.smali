.class public final Lrikka/material/app/LocaleDelegate$Companion;
.super Ljava/lang/Object;
.source "LocaleDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/material/app/LocaleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lrikka/material/app/LocaleDelegate$Companion;",
        "",
        "()V",
        "defaultLocale",
        "Ljava/util/Locale;",
        "getDefaultLocale$annotations",
        "getDefaultLocale",
        "()Ljava/util/Locale;",
        "setDefaultLocale",
        "(Ljava/util/Locale;)V",
        "systemLocale",
        "getSystemLocale$annotations",
        "getSystemLocale",
        "setSystemLocale",
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
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lrikka/material/app/LocaleDelegate$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getDefaultLocale$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getSystemLocale$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDefaultLocale()Ljava/util/Locale;
    .registers 2

    invoke-static {}, Lrikka/material/app/LocaleDelegate;->access$getDefaultLocale$cp()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final getSystemLocale()Ljava/util/Locale;
    .registers 2

    invoke-static {}, Lrikka/material/app/LocaleDelegate;->access$getSystemLocale$cp()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final setDefaultLocale(Ljava/util/Locale;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrikka/material/app/LocaleDelegate;->access$setDefaultLocale$cp(Ljava/util/Locale;)V

    return-void
.end method

.method public final setSystemLocale(Ljava/util/Locale;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lrikka/material/app/LocaleDelegate;->access$setSystemLocale$cp(Ljava/util/Locale;)V

    return-void
.end method
