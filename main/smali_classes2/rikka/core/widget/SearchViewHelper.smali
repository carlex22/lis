.class public Lrikka/core/widget/SearchViewHelper;
.super Ljava/lang/Object;
.source "SearchViewHelper.java"


# static fields
.field private static final IS_SEARCHING_TAG:Ljava/lang/String; = "searchViewHelper:isSearching"

.field private static final KEYWORD_TAG:Ljava/lang/String; = "searchViewHelper:keyword"


# instance fields
.field private mId:I

.field private mIsSearching:Z

.field private mKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lrikka/core/widget/SearchViewHelper;Z)Z
    .registers 2

    iput-boolean p1, p0, Lrikka/core/widget/SearchViewHelper;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$100(Lrikka/core/widget/SearchViewHelper;Landroid/view/Menu;Landroid/view/MenuItem;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lrikka/core/widget/SearchViewHelper;->setMenuItemsVisibility(Landroid/view/Menu;Landroid/view/MenuItem;Z)V

    return-void
.end method

.method static synthetic access$202(Lrikka/core/widget/SearchViewHelper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lrikka/core/widget/SearchViewHelper;->mKeyword:Ljava/lang/String;

    return-object p1
.end method

.method public static create(Landroid/os/Bundle;I)Lrikka/core/widget/SearchViewHelper;
    .registers 3

    new-instance v0, Lrikka/core/widget/SearchViewHelper;

    invoke-direct {v0}, Lrikka/core/widget/SearchViewHelper;-><init>()V

    invoke-virtual {v0, p0, p1}, Lrikka/core/widget/SearchViewHelper;->onCreate(Landroid/os/Bundle;I)V

    return-object v0
.end method

.method private setMenuItemsVisibility(Landroid/view/Menu;Landroid/view/MenuItem;Z)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eq v1, p2, :cond_0

    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;I)V
    .registers 3

    iput p2, p0, Lrikka/core/widget/SearchViewHelper;->mId:I

    if-eqz p1, :cond_0

    const-string p2, "searchViewHelper:keyword"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lrikka/core/widget/SearchViewHelper;->mKeyword:Ljava/lang/String;

    const-string p2, "searchViewHelper:isSearching"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lrikka/core/widget/SearchViewHelper;->mIsSearching:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lrikka/core/widget/SearchViewCallback;Landroid/view/Menu;)V
    .registers 7

    iget v0, p0, Lrikka/core/widget/SearchViewHelper;->mId:I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lrikka/core/widget/SearchViewHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lrikka/core/widget/SearchViewHelper$1;-><init>(Lrikka/core/widget/SearchViewHelper;Lrikka/core/widget/SearchViewCallback;Landroid/view/Menu;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p2

    instance-of v1, p2, Landroid/widget/SearchView;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-eqz v1, :cond_0

    check-cast p2, Landroid/widget/SearchView;

    invoke-virtual {p2, v3}, Landroid/widget/SearchView;->setMaxWidth(I)V

    new-instance v1, Lrikka/core/widget/SearchViewHelper$2;

    invoke-direct {v1, p0, p1}, Lrikka/core/widget/SearchViewHelper$2;-><init>(Lrikka/core/widget/SearchViewHelper;Lrikka/core/widget/SearchViewCallback;)V

    invoke-virtual {p2, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-boolean p1, p0, Lrikka/core/widget/SearchViewHelper;->mIsSearching:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrikka/core/widget/SearchViewHelper;->mKeyword:Ljava/lang/String;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-virtual {p2, p1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    instance-of v1, p2, Landroidx/appcompat/widget/SearchView;

    if-eqz v1, :cond_1

    check-cast p2, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    new-instance v1, Lrikka/core/widget/SearchViewHelper$3;

    invoke-direct {v1, p0, p1}, Lrikka/core/widget/SearchViewHelper$3;-><init>(Lrikka/core/widget/SearchViewHelper;Lrikka/core/widget/SearchViewCallback;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    iget-boolean p1, p0, Lrikka/core/widget/SearchViewHelper;->mIsSearching:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lrikka/core/widget/SearchViewHelper;->mKeyword:Ljava/lang/String;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "searchViewHelper:keyword"

    iget-object v1, p0, Lrikka/core/widget/SearchViewHelper;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "searchViewHelper:isSearching"

    iget-boolean v1, p0, Lrikka/core/widget/SearchViewHelper;->mIsSearching:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
