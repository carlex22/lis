.class Landroidx/appcompat/app/AppCompatDelegate$Api33Impl;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static localeManagerGetApplicationLocales(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 1

    check-cast p0, Landroid/app/LocaleManager;

    invoke-virtual {p0}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method static localeManagerSetApplicationLocales(Ljava/lang/Object;Landroid/os/LocaleList;)V
    .registers 2

    check-cast p0, Landroid/app/LocaleManager;

    invoke-virtual {p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Landroid/os/LocaleList;)V

    return-void
.end method
