.class public final Landroidx/core/view/ScaleGestureDetectorCompat;
.super Ljava/lang/Object;
.source "ScaleGestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z
    .registers 1

    invoke-static {p0}, Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public static isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p0, Landroid/view/ScaleGestureDetector;

    invoke-static {p0}, Landroidx/core/view/ScaleGestureDetectorCompat;->isQuickScaleEnabled(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public static setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/view/ScaleGestureDetectorCompat$Api19Impl;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    return-void
.end method

.method public static setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p0, Landroid/view/ScaleGestureDetector;

    invoke-static {p0, p1}, Landroidx/core/view/ScaleGestureDetectorCompat;->setQuickScaleEnabled(Landroid/view/ScaleGestureDetector;Z)V

    return-void
.end method
