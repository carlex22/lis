.class Lrikka/core/widget/SearchViewHelper$2;
.super Ljava/lang/Object;
.source "SearchViewHelper.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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

.field final synthetic val$o:Lrikka/core/widget/SearchViewCallback;


# direct methods
.method constructor <init>(Lrikka/core/widget/SearchViewHelper;Lrikka/core/widget/SearchViewCallback;)V
    .registers 3

    iput-object p1, p0, Lrikka/core/widget/SearchViewHelper$2;->this$0:Lrikka/core/widget/SearchViewHelper;

    iput-object p2, p0, Lrikka/core/widget/SearchViewHelper$2;->val$o:Lrikka/core/widget/SearchViewCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$2;->val$o:Lrikka/core/widget/SearchViewCallback;

    invoke-interface {v0, p1}, Lrikka/core/widget/SearchViewCallback;->onSearchTextChange(Ljava/lang/String;)V

    iget-object v0, p0, Lrikka/core/widget/SearchViewHelper$2;->this$0:Lrikka/core/widget/SearchViewHelper;

    invoke-static {v0, p1}, Lrikka/core/widget/SearchViewHelper;->access$202(Lrikka/core/widget/SearchViewHelper;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
