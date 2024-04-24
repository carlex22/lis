.class public final Lrikka/material/app/ToolbarTitleAlignmentFix;
.super Ljava/lang/Object;
.source "ToolbarTitleAlignmentFix.kt"

# interfaces
.implements Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J2\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lrikka/material/app/ToolbarTitleAlignmentFix;",
        "Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;",
        "()V",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "parent",
        "name",
        "",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
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
.field public static final Companion:Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;

.field private static final LISTENER:Lrikka/material/app/ToolbarTitleAlignmentFix;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lrikka/material/app/ToolbarTitleAlignmentFix;->Companion:Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;

    new-instance v0, Lrikka/material/app/ToolbarTitleAlignmentFix;

    invoke-direct {v0}, Lrikka/material/app/ToolbarTitleAlignmentFix;-><init>()V

    sput-object v0, Lrikka/material/app/ToolbarTitleAlignmentFix;->LISTENER:Lrikka/material/app/ToolbarTitleAlignmentFix;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLISTENER$cp()Lrikka/material/app/ToolbarTitleAlignmentFix;
    .registers 1

    sget-object v0, Lrikka/material/app/ToolbarTitleAlignmentFix;->LISTENER:Lrikka/material/app/ToolbarTitleAlignmentFix;

    return-object v0
.end method

.method public static final getLISTENER()Lrikka/material/app/ToolbarTitleAlignmentFix;
    .registers 1

    sget-object v0, Lrikka/material/app/ToolbarTitleAlignmentFix;->Companion:Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;

    invoke-virtual {v0}, Lrikka/material/app/ToolbarTitleAlignmentFix$Companion;->getLISTENER()Lrikka/material/app/ToolbarTitleAlignmentFix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "name"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "attrs"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Landroidx/appcompat/R$dimen;->abc_action_bar_content_inset_with_nav:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    :cond_0
    return-void
.end method
