.class final Lrikka/insets/ApplyInsets;
.super Ljava/lang/Object;
.source "WindowInsetsHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function5<",
        "Landroidx/core/graphics/Insets;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002{\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u0003\u0012\u0008\u0008\u0004\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\u000b0\u0001j\u0008\u0012\u0004\u0012\u00020\u000b`\u000cB\r\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ1\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0096\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lrikka/insets/ApplyInsets;",
        "Lkotlin/Function5;",
        "Landroidx/core/graphics/Insets;",
        "Lkotlin/ParameterName;",
        "name",
        "insets",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "",
        "Lrikka/insets/ApplyInsetsCallback;",
        "out",
        "Landroid/graphics/Rect;",
        "(Landroid/graphics/Rect;)V",
        "invoke",
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


# instance fields
.field private final out:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/insets/ApplyInsets;->out:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    move-object v1, p1

    check-cast v1, Landroidx/core/graphics/Insets;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lrikka/insets/ApplyInsets;->invoke(Landroidx/core/graphics/Insets;ZZZZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public invoke(Landroidx/core/graphics/Insets;ZZZZ)V
    .registers 9

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/insets/ApplyInsets;->out:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget p2, p1, Landroidx/core/graphics/Insets;->left:I

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lrikka/insets/ApplyInsets;->out:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eqz p3, :cond_1

    iget p3, p1, Landroidx/core/graphics/Insets;->top:I

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_1
    add-int/2addr v0, p3

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lrikka/insets/ApplyInsets;->out:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->right:I

    if-eqz p4, :cond_2

    iget p4, p1, Landroidx/core/graphics/Insets;->right:I

    goto :goto_2

    :cond_2
    move p4, v2

    :goto_2
    add-int/2addr p3, p4

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lrikka/insets/ApplyInsets;->out:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    if-eqz p5, :cond_3

    iget v2, p1, Landroidx/core/graphics/Insets;->bottom:I

    :cond_3
    add-int/2addr p3, v2

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
