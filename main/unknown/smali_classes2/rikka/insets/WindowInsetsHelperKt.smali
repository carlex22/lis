.class public final Lrikka/insets/WindowInsetsHelperKt;
.super Ljava/lang/Object;
.source "WindowInsetsHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a*\u0010\u001f\u001a\u00020 *\u00020\u00022\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001\u001a*\u0010%\u001a\u00020 *\u00020\u00022\u0006\u0010&\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\'\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001\u001a*\u0010(\u001a\u00020 *\u00020\u00022\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001\u001a*\u0010)\u001a\u00020 *\u00020\u00022\u0006\u0010&\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010\'\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0015\u0010\u0005\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004\"\u0015\u0010\u0007\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\"\u0015\u0010\t\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0004\"\u0015\u0010\u000b\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0004\"\u0015\u0010\r\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0004\"\u0015\u0010\u000f\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0004\"\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0004\"\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0004\"\u0015\u0010\u0015\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0004\"\u0015\u0010\u0017\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0004\"\u0015\u0010\u0019\u001a\u00020\u0001*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0004\"\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u001c*\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e*\u00f0\u0001\u0008\u0002\u0010*\u001a\u0004\u0008\u0000\u0010+\"q\u0012\u0013\u0012\u00110-\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(!\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u0002H+0,2q\u0012\u0013\u0012\u00110-\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(0\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(!\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u001101\u00a2\u0006\u000c\u0008.\u0012\u0008\u0008/\u0012\u0004\u0008\u0008($\u0012\u0004\u0012\u0002H+0,\u00a8\u00062"
    }
    d2 = {
        "initialMarginBottom",
        "",
        "Landroid/view/View;",
        "getInitialMarginBottom",
        "(Landroid/view/View;)I",
        "initialMarginEnd",
        "getInitialMarginEnd",
        "initialMarginLeft",
        "getInitialMarginLeft",
        "initialMarginRight",
        "getInitialMarginRight",
        "initialMarginStart",
        "getInitialMarginStart",
        "initialMarginTop",
        "getInitialMarginTop",
        "initialPaddingBottom",
        "getInitialPaddingBottom",
        "initialPaddingEnd",
        "getInitialPaddingEnd",
        "initialPaddingLeft",
        "getInitialPaddingLeft",
        "initialPaddingRight",
        "getInitialPaddingRight",
        "initialPaddingStart",
        "getInitialPaddingStart",
        "initialPaddingTop",
        "getInitialPaddingTop",
        "windowInsetsHelper",
        "Lrikka/insets/WindowInsetsHelper;",
        "getWindowInsetsHelper",
        "(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;",
        "setInitialMargin",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "setInitialMarginRelative",
        "start",
        "end",
        "setInitialPadding",
        "setInitialPaddingRelative",
        "ApplyInsetsCallback",
        "T",
        "Lkotlin/Function5;",
        "Landroidx/core/graphics/Insets;",
        "Lkotlin/ParameterName;",
        "name",
        "insets",
        "",
        "insets_release"
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
.method public static final getInitialMarginBottom(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginBottom$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialMarginEnd(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginEnd$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialMarginLeft(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginLeft$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialMarginRight(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginRight$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialMarginStart(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginStart$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialMarginTop(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialMarginTop$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingBottom(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialPaddingBottom$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingEnd(Landroid/view/View;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getInitialPaddingLeft(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getInitialPaddingRight(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingLeft(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialPaddingLeft$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingRight(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialPaddingRight$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingStart(Landroid/view/View;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getInitialPaddingRight(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getInitialPaddingLeft(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getInitialPaddingTop(Landroid/view/View;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lrikka/insets/WindowInsetsHelper;->getInitialPaddingTop$insets_release()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lrikka/insets/R$id;->tag_rikka_material_WindowInsetsHelper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lrikka/insets/WindowInsetsHelper;

    if-eqz v0, :cond_0

    check-cast p0, Lrikka/insets/WindowInsetsHelper;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final setInitialMargin(Landroid/view/View;IIII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialMargin(IIII)V

    :goto_0
    return-void
.end method

.method public static final setInitialMarginRelative(Landroid/view/View;IIII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialMarginRelative(IIII)V

    :goto_0
    return-void
.end method

.method public static final setInitialPadding(Landroid/view/View;IIII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialPadding(IIII)V

    :goto_0
    return-void
.end method

.method public static final setInitialPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lrikka/insets/WindowInsetsHelperKt;->getWindowInsetsHelper(Landroid/view/View;)Lrikka/insets/WindowInsetsHelper;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialPaddingRelative(IIII)V

    :goto_0
    return-void
.end method
