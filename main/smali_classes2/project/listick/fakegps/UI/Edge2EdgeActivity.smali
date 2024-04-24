.class public Lproject/listick/fakegps/UI/Edge2EdgeActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "Edge2EdgeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lproject/listick/fakegps/AppWindowManager;->makeEdge2Edge(Landroid/view/Window;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lproject/listick/fakegps/AppWindowManager;->makeDarkNavbarButtons(Landroid/view/Window;I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lproject/listick/fakegps/AppWindowManager;->drawColoredIcons(Landroid/view/Window;I)V

    return-void
.end method
