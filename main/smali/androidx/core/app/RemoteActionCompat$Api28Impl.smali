.class Landroidx/core/app/RemoteActionCompat$Api28Impl;
.super Ljava/lang/Object;
.source "RemoteActionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/RemoteActionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api28Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setShouldShowIcon(Landroid/app/RemoteAction;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    return-void
.end method

.method static shouldShowIcon(Landroid/app/RemoteAction;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/app/RemoteAction;->shouldShowIcon()Z

    move-result p0

    return p0
.end method
