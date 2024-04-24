.class public final Lrikka/core/content/pm/PackageInfoKt;
.super Ljava/lang/Object;
.source "PackageInfo.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackageInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackageInfo.kt\nrikka/core/content/pm/PackageInfoKt\n+ 2 BuildUtils.kt\nrikka/core/util/BuildUtils\n*L\n1#1,13:1\n23#2:14\n*S KotlinDebug\n*F\n+ 1 PackageInfo.kt\nrikka/core/content/pm/PackageInfoKt\n*L\n9#1:14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "longVersionCodeCompat",
        "",
        "Landroid/content/pm/PackageInfo;",
        "getLongVersionCodeCompat$annotations",
        "(Landroid/content/pm/PackageInfo;)V",
        "getLongVersionCodeCompat",
        "(Landroid/content/pm/PackageInfo;)J",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getLongVersionCodeCompat(Landroid/content/pm/PackageInfo;)J
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lrikka/core/util/BuildUtils;->INSTANCE:Lrikka/core/util/BuildUtils;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    :goto_1
    return-wide v0
.end method

.method public static synthetic getLongVersionCodeCompat$annotations(Landroid/content/pm/PackageInfo;)V
    .registers 1

    return-void
.end method
