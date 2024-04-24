.class Lrikka/core/widget/SearchViewHelper$1;
.super Ljava/lang/Object;
.source "SearchViewHelper.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/core/widget/SearchViewHelper;->onCreateOptionsMenu(Lrikka/core/widget/SearchViewCallback;Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrikka/core/widget/SearchViewHelper;

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$o:Lrikka/core/widget/SearchViewCallback;


# direct methods
.method constructor <init>(Lrikka/core/widget/SearchViewHelper;Lrikka/core/widget/SearchViewCallback;Landroid/view/Menu;)V
    .registers 4

    iput-object p1, p0, Lrikka/core/widget/SearchViewHelper$1;->this$0:Lrikka/core/widget/SearchViewHelper;

    iput-object p2, p0, Lrikka/core/widget/SearchViewHelper$1;->val$o:Lrikka/core/widget/SearchViewCallback;

    iput-object p3, p0, Lrikka/core/widget/SearchViewHelper$1;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 5

    iget-object p1, p0, Lrikka/core/widget/SearchViewHelper$1;->val$o:Lrikka/core/widget/SearchViewCallback;

    invoke-interface {p1}, Lrikka/core/widget/SearchViewCallback;->onSearchCollapse()V

    iget-object p1, p0, Lrikka/core/widget/SearchViewHelper$1;->this$0:Lrikka/core/widget/SearchViewHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lrikka/core/widget/SearchViewHelper;->access$002(Lrikka/core/widget/SearchViewHelper;Z)Z

    iget-object p1, p0, Lrikka/core/widget/SearchViewHelper$1;->this$0:Lrikka/core/widget/SearchViewHelper;

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$1;->val$menu:Landroid/view/Menu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lrikka/core/widget/SearchViewHelper;->access$100(Lrikka/core/widget/SearchViewHelper;Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return v2
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$1;->val$o:Lrikka/core/widget/SearchViewCallback;

    invoke-interface {v0}, Lrikka/core/widget/SearchViewCallback;->onSearchExpand()V

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$1;->this$0:Lrikka/core/widget/SearchViewHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lrikka/core/widget/SearchViewHelper;->access$002(Lrikka/core/widget/SearchViewHelper;Z)Z

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$1;->this$0:Lrikka/core/widget/SearchViewHelper;

    iget-object v2, p0, Lrikka/core/widget/SearchViewHelper$1;->val$menu:Landroid/view/Menu;

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Lrikka/core/widget/SearchViewHelper;->access$100(Lrikka/core/widget/SearchViewHelper;Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return v1
.end method
