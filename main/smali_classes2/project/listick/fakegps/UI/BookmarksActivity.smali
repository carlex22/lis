.class public Lproject/listick/fakegps/UI/BookmarksActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BookmarksActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/BookmarksImpl$UI;


# static fields
.field public static final BOOKMARKS_REQUEST_CODE:I = 0x4

.field public static final ROUTE:I = 0x1

.field public static final STATIC:I


# instance fields
.field private mBlankView:Landroid/view/View;

.field private mBookmarksList:Landroid/widget/ListView;

.field private mBookmarksTab:Landroid/widget/TextView;

.field private mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-BookmarksActivity(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0901ab

    if-eq p1, v0, :cond_1

    const v0, 0x7f0901f7

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onStaticSpoofList()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onRouteSpoofList()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$1$project-listick-fakegps-UI-BookmarksActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    invoke-virtual {p1, p3}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onItemSelected(I)V

    return-void
.end method

.method synthetic lambda$onCreate$2$project-listick-fakegps-UI-BookmarksActivity(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/BookmarksActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->setContentView(I)V

    new-instance p1, Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    invoke-direct {p1, p0, p0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;-><init>(Landroid/content/Context;Lproject/listick/fakegps/Contract/BookmarksImpl$UI;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    const p1, 0x7f090110

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    const p1, 0x7f090061

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBlankView:Landroid/view/View;

    const p1, 0x7f090064

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksTab:Landroid/widget/TextView;

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090159

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/BookmarksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/BookmarksActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    new-instance v1, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/UI/BookmarksActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/BookmarksActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/BookmarksActivity;->showBlankFragment()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->onActivityLoad()V

    return-void
.end method

.method public setCurrentTab(I)V
    .registers 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksTab:Landroid/widget/TextView;

    const v0, 0x7f120188

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->setCurrentTab(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksTab:Landroid/widget/TextView;

    const v0, 0x7f120169

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mPresenter:Lproject/listick/fakegps/Presenter/BookmarksPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/BookmarksPresenter;->setCurrentTab(I)V

    :goto_0
    return-void
.end method

.method public showBlankFragment()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBlankView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showListView()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBlankView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showRouteBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Landroid/widget/ArrayAdapter;

    const p2, 0x1090003

    invoke-direct {p1, p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object p2, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/BookmarksActivity;->showListView()V

    return-void
.end method

.method public showStaticBookmarks(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Landroid/widget/ArrayAdapter;

    const p2, 0x1090003

    invoke-direct {p1, p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object p2, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksList:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity;->mBookmarksTab:Landroid/widget/TextView;

    const p2, 0x7f120188

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/BookmarksActivity;->showListView()V

    return-void
.end method
