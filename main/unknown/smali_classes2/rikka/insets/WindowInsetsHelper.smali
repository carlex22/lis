.class public Lrikka/insets/WindowInsetsHelper;
.super Ljava/lang/Object;
.source "WindowInsetsHelper.kt"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/insets/WindowInsetsHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWindowInsetsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowInsetsHelper.kt\nrikka/insets/WindowInsetsHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,330:1\n1#2:331\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 F2\u00020\u0001:\u0001FB\'\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\u00a4\u0001\u0010-\u001a\u0002H.\"\u0004\u0008\u0000\u0010.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\u00052\u007f\u00102\u001a{\u0012\u0013\u0012\u001100\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(/\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(6\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(8\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u00084\u0012\u0008\u00085\u0012\u0004\u0008\u0008(9\u0012\u0004\u0012\u0002H.03j\u0008\u0012\u0004\u0012\u0002H.`:H\u0003\u00a2\u0006\u0002\u0010;J\u0010\u0010<\u001a\u00020,2\u0006\u0010=\u001a\u00020,H\u0002J\u0018\u0010>\u001a\u00020,2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u00020,H\u0016J(\u0010?\u001a\u00020@2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0016J(\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0016J(\u0010D\u001a\u00020@2\u0006\u00106\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u00108\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0016J(\u0010E\u001a\u00020@2\u0006\u0010B\u001a\u00020\u00052\u0006\u00107\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR\u001a\u0010\u0019\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\r\"\u0004\u0008\u001b\u0010\u000fR\u001a\u0010\u001c\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001a\u0010\u001f\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000fR\u001a\u0010\"\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\r\"\u0004\u0008$\u0010\u000fR\u001a\u0010%\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\r\"\u0004\u0008\'\u0010\u000fR\u001a\u0010(\u001a\u00020\u0005X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\r\"\u0004\u0008*\u0010\u000fR\u0010\u0010+\u001a\u0004\u0018\u00010,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lrikka/insets/WindowInsetsHelper;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "view",
        "Landroid/view/View;",
        "fitSystemWindows",
        "",
        "layout_fitsSystemWindowsInsets",
        "consumeSystemWindows",
        "(Landroid/view/View;III)V",
        "initialMargin",
        "",
        "initialMarginBottom",
        "getInitialMarginBottom$insets_release",
        "()I",
        "setInitialMarginBottom$insets_release",
        "(I)V",
        "initialMarginEnd",
        "getInitialMarginEnd$insets_release",
        "setInitialMarginEnd$insets_release",
        "initialMarginLeft",
        "getInitialMarginLeft$insets_release",
        "setInitialMarginLeft$insets_release",
        "initialMarginRight",
        "getInitialMarginRight$insets_release",
        "setInitialMarginRight$insets_release",
        "initialMarginStart",
        "getInitialMarginStart$insets_release",
        "setInitialMarginStart$insets_release",
        "initialMarginTop",
        "getInitialMarginTop$insets_release",
        "setInitialMarginTop$insets_release",
        "initialPaddingBottom",
        "getInitialPaddingBottom$insets_release",
        "setInitialPaddingBottom$insets_release",
        "initialPaddingLeft",
        "getInitialPaddingLeft$insets_release",
        "setInitialPaddingLeft$insets_release",
        "initialPaddingRight",
        "getInitialPaddingRight$insets_release",
        "setInitialPaddingRight$insets_release",
        "initialPaddingTop",
        "getInitialPaddingTop$insets_release",
        "setInitialPaddingTop$insets_release",
        "lastInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "applyInsets",
        "T",
        "insets",
        "Landroidx/core/graphics/Insets;",
        "fit",
        "callback",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "left",
        "top",
        "right",
        "bottom",
        "Lrikka/insets/ApplyInsetsCallback;",
        "(Landroidx/core/graphics/Insets;ILkotlin/jvm/functions/Function5;)Ljava/lang/Object;",
        "applyWindowInsets",
        "windowInsets",
        "onApplyWindowInsets",
        "setInitialMargin",
        "",
        "setInitialMarginRelative",
        "start",
        "end",
        "setInitialPadding",
        "setInitialPaddingRelative",
        "Companion",
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


# static fields
.field public static final Companion:Lrikka/insets/WindowInsetsHelper$Companion;

.field private static final LISTENER:Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;


# instance fields
.field private final consumeSystemWindows:I

.field private final fitSystemWindows:I

.field private initialMargin:Z

.field private initialMarginBottom:I

.field private initialMarginEnd:I

.field private initialMarginLeft:I

.field private initialMarginRight:I

.field private initialMarginStart:I

.field private initialMarginTop:I

.field private initialPaddingBottom:I

.field private initialPaddingLeft:I

.field private initialPaddingRight:I

.field private initialPaddingTop:I

.field private lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field private final layout_fitsSystemWindowsInsets:I

.field private final view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$U1YL0D-Oru12z_AEtbmKn5RR_t8(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->LISTENER$lambda-3(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/insets/WindowInsetsHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrikka/insets/WindowInsetsHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    new-instance v0, Lrikka/insets/WindowInsetsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lrikka/insets/WindowInsetsHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lrikka/insets/WindowInsetsHelper;->LISTENER:Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->fitSystemWindows:I

    iput p3, p0, Lrikka/insets/WindowInsetsHelper;->layout_fitsSystemWindowsInsets:I

    iput p4, p0, Lrikka/insets/WindowInsetsHelper;->consumeSystemWindows:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingTop:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingRight:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingBottom:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;-><init>(Landroid/view/View;III)V

    return-void
.end method

.method private static final LISTENER$lambda-3(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string p1, "view"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_2"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_3"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "attrs"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    invoke-virtual {p1, p0, p4}, Lrikka/insets/WindowInsetsHelper$Companion;->attach(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getLISTENER$cp()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;
    .registers 1

    sget-object v0, Lrikka/insets/WindowInsetsHelper;->LISTENER:Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    return-object v0
.end method

.method private final applyInsets(Landroidx/core/graphics/Insets;ILkotlin/jvm/functions/Function5;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/core/graphics/Insets;",
            "I",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Landroidx/core/graphics/Insets;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "+TT;>;)TT;"
        }
    .end annotation

    const/high16 v0, 0x800000

    and-int v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_0

    move-object v0, p0

    move v1, v3

    goto :goto_0

    :cond_0
    move-object v0, p0

    move v1, v2

    :goto_0
    iget-object v4, v0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, p2, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    and-int/lit8 v6, p2, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    if-eqz v1, :cond_b

    const v1, 0x800003

    and-int v7, p2, v1

    if-ne v7, v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    const v7, 0x800005

    and-int v8, p2, v7

    if-ne v8, v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move v7, v2

    :goto_5
    if-nez v4, :cond_6

    if-nez v1, :cond_7

    :cond_6
    if-eqz v4, :cond_8

    if-eqz v7, :cond_8

    :cond_7
    move v8, v3

    goto :goto_6

    :cond_8
    move v8, v2

    :goto_6
    if-nez v4, :cond_9

    if-nez v7, :cond_a

    :cond_9
    if-eqz v4, :cond_d

    if-eqz v1, :cond_d

    :cond_a
    :goto_7
    move v2, v3

    goto :goto_9

    :cond_b
    and-int/lit8 v1, p2, 0x3

    const/4 v4, 0x3

    if-ne v1, v4, :cond_c

    move v8, v3

    goto :goto_8

    :cond_c
    move v8, v2

    :goto_8
    const/4 v1, 0x5

    and-int/lit8 v4, p2, 0x5

    if-ne v4, v1, :cond_d

    goto :goto_7

    :cond_d
    :goto_9
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    invoke-interface/range {v9 .. v14}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private final applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->fitSystemWindows:I

    const-string v1, "windowInsets.systemWindowInsets"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingLeft:I

    iget v3, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingTop:I

    iget v4, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingRight:I

    iget v5, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingBottom:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lrikka/insets/WindowInsetsHelper;->fitSystemWindows:I

    new-instance v4, Lrikka/insets/ApplyInsets;

    invoke-direct {v4, v0}, Lrikka/insets/ApplyInsets;-><init>(Landroid/graphics/Rect;)V

    check-cast v4, Lkotlin/jvm/functions/Function5;

    invoke-direct {p0, v2, v3, v4}, Lrikka/insets/WindowInsetsHelper;->applyInsets(Landroidx/core/graphics/Insets;ILkotlin/jvm/functions/Function5;)Ljava/lang/Object;

    iget-object v2, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->layout_fitsSystemWindowsInsets:I

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMargin:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    iput v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginLeft:I

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_3
    move-object v0, v3

    :goto_2
    if-nez v0, :cond_4

    move v0, v2

    goto :goto_3

    :cond_4
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_3
    iput v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_5
    move-object v0, v3

    :goto_4
    if-nez v0, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_5
    iput v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginRight:I

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_7

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_7
    move-object v0, v3

    :goto_6
    if-nez v0, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_7
    iput v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_9

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_9
    move-object v0, v3

    :goto_8
    if-nez v0, :cond_a

    move v0, v2

    goto :goto_9

    :cond_a
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    :goto_9
    iput v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginStart:I

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_b

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_b
    if-nez v3, :cond_c

    goto :goto_a

    :cond_c
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    :goto_a
    iput v2, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMargin:Z

    :cond_d
    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->layout_fitsSystemWindowsInsets:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginLeft:I

    iget v4, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    iget v5, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginRight:I

    iget v6, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_e
    new-instance v0, Landroid/graphics/Rect;

    iget v3, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginStart:I

    iget v4, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    iget v5, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginEnd:I

    iget v6, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_b
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p0, Lrikka/insets/WindowInsetsHelper;->layout_fitsSystemWindowsInsets:I

    new-instance v5, Lrikka/insets/ApplyInsets;

    invoke-direct {v5, v0}, Lrikka/insets/ApplyInsets;-><init>(Landroid/graphics/Rect;)V

    check-cast v5, Lkotlin/jvm/functions/Function5;

    invoke-direct {p0, v3, v4, v5}, Lrikka/insets/WindowInsetsHelper;->applyInsets(Landroidx/core/graphics/Insets;ILkotlin/jvm/functions/Function5;)Ljava/lang/Object;

    iget-object v3, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_10

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v5, p0, Lrikka/insets/WindowInsetsHelper;->layout_fitsSystemWindowsInsets:I

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_f

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_c

    :cond_f
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_c
    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->consumeSystemWindows:I

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lrikka/insets/WindowInsetsHelper;->consumeSystemWindows:I

    new-instance v2, Lrikka/insets/ConsumeInsets;

    invoke-direct {v2}, Lrikka/insets/ConsumeInsets;-><init>()V

    check-cast v2, Lkotlin/jvm/functions/Function5;

    invoke-direct {p0, v0, v1, v2}, Lrikka/insets/WindowInsetsHelper;->applyInsets(Landroidx/core/graphics/Insets;ILkotlin/jvm/functions/Function5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/graphics/Insets;

    goto :goto_d

    :cond_11
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v1, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    const-string v0, "Builder(windowInsets)\n  \u2026ets)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final attach(Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lrikka/insets/WindowInsetsHelper$Companion;->attach(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final attach(Landroid/view/View;ZIII)V
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lrikka/insets/WindowInsetsHelper$Companion;->attach(Landroid/view/View;ZIII)V

    return-void
.end method

.method public static final getLISTENER()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;
    .registers 1

    sget-object v0, Lrikka/insets/WindowInsetsHelper;->Companion:Lrikka/insets/WindowInsetsHelper$Companion;

    invoke-virtual {v0}, Lrikka/insets/WindowInsetsHelper$Companion;->getLISTENER()Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getInitialMarginBottom$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    return v0
.end method

.method public final getInitialMarginEnd$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginEnd:I

    return v0
.end method

.method public final getInitialMarginLeft$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginLeft:I

    return v0
.end method

.method public final getInitialMarginRight$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginRight:I

    return v0
.end method

.method public final getInitialMarginStart$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginStart:I

    return v0
.end method

.method public final getInitialMarginTop$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    return v0
.end method

.method public final getInitialPaddingBottom$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingBottom:I

    return v0
.end method

.method public final getInitialPaddingLeft$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingLeft:I

    return v0
.end method

.method public final getInitialPaddingRight$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingRight:I

    return v0
.end method

.method public final getInitialPaddingTop$insets_release()I
    .registers 2

    iget v0, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingTop:I

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lrikka/insets/WindowInsetsHelper;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    iput-object p2, p0, Lrikka/insets/WindowInsetsHelper;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {p0, p2}, Lrikka/insets/WindowInsetsHelper;->applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public setInitialMargin(IIII)V
    .registers 5

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginLeft:I

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    iput p3, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginRight:I

    iput p4, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    iget-object p1, p0, Lrikka/insets/WindowInsetsHelper;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lrikka/insets/WindowInsetsHelper;->applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :goto_0
    return-void
.end method

.method public final setInitialMarginBottom$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    return-void
.end method

.method public final setInitialMarginEnd$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginEnd:I

    return-void
.end method

.method public final setInitialMarginLeft$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginLeft:I

    return-void
.end method

.method public setInitialMarginRelative(IIII)V
    .registers 5

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginStart:I

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    iput p3, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginEnd:I

    iput p4, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginBottom:I

    iget-object p1, p0, Lrikka/insets/WindowInsetsHelper;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lrikka/insets/WindowInsetsHelper;->applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :goto_0
    return-void
.end method

.method public final setInitialMarginRight$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginRight:I

    return-void
.end method

.method public final setInitialMarginStart$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginStart:I

    return-void
.end method

.method public final setInitialMarginTop$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialMarginTop:I

    return-void
.end method

.method public setInitialPadding(IIII)V
    .registers 5

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingLeft:I

    iput p2, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingTop:I

    iput p3, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingRight:I

    iput p4, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingBottom:I

    iget-object p1, p0, Lrikka/insets/WindowInsetsHelper;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lrikka/insets/WindowInsetsHelper;->applyWindowInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    :goto_0
    return-void
.end method

.method public final setInitialPaddingBottom$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingBottom:I

    return-void
.end method

.method public final setInitialPaddingLeft$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingLeft:I

    return-void
.end method

.method public setInitialPaddingRelative(IIII)V
    .registers 7

    iget-object v0, p0, Lrikka/insets/WindowInsetsHelper;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p3, p2, p1, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialPadding(IIII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lrikka/insets/WindowInsetsHelper;->setInitialPadding(IIII)V

    :goto_1
    return-void
.end method

.method public final setInitialPaddingRight$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingRight:I

    return-void
.end method

.method public final setInitialPaddingTop$insets_release(I)V
    .registers 2

    iput p1, p0, Lrikka/insets/WindowInsetsHelper;->initialPaddingTop:I

    return-void
.end method
