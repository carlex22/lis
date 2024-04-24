.class public Lproject/listick/fakegps/Presenter/SearchPresenter;
.super Ljava/lang/Object;
.source "SearchPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/SearchImpl$Presenter;


# static fields
.field private static final DESTINATION:I = 0x1

.field public static final OPEN_SEARCH:Ljava/lang/String; = "open_search"

.field private static final ORIGIN:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDestAddress:Ljava/lang/String;

.field private mDestLat:D

.field private mDestLong:D

.field private mOriginAddress:Ljava/lang/String;

.field private mOriginLat:D

.field private mOriginLong:D

.field private mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

.field private mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

.field private preparedForFinish:Z


# direct methods
.method public constructor <init>(Lproject/listick/fakegps/Contract/SearchImpl$UI;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLat:D

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLong:D

    return-void
.end method

.method private getOriginAddress()V
    .registers 7

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    const-string v2, "org_addr"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->setDestAddress(Ljava/lang/String;)V

    const-string v2, "My location"

    invoke-interface {v1, v2}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->setOriginAddress(Ljava/lang/String;)V

    const-string v1, "latitude"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLat:D

    const-string v1, "longitude"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLong:D

    return-void
.end method

.method private showOnMap(I)V
    .registers 12

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latitude"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v6, "longitude"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const-class v9, Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "open_search"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityLoad()V
    .registers 2

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->getOriginAddress()V

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onTransportChanged(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x2

    const-string v0, "address"

    const-string v1, "longitude"

    const-string v2, "latitude"

    const-wide/16 v3, 0x0

    if-ne p1, p2, :cond_0

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLat:D

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLong:D

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestAddress:Ljava/lang/String;

    iget-object p2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    invoke-interface {p2, p1}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->setDestAddress(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3, v2, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginLat:D

    invoke-virtual {p3, v1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    iput-wide p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginLong:D

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginAddress:Ljava/lang/String;

    iget-object p2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    invoke-interface {p2, p1}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->setOriginAddress(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onContinue()V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "org_lat"

    iget-wide v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginLat:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v2, "start"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "org_lng"

    iget-wide v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginLong:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "org_addr"

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mOriginAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLat:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLong:D

    cmpl-double v3, v5, v3

    if-eqz v3, :cond_0

    const-string v3, "dst_lat"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "dst_lng"

    iget-wide v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestLong:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v1, "dst_addr"

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method

.method public onDestination()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->showOnMap(I)V

    return-void
.end method

.method public onOrigin()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->showOnMap(I)V

    return-void
.end method

.method public onTransportChanged(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 3

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    invoke-interface {v0, p1}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->removeTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/SearchImpl$UI;

    invoke-interface {v0, p1}, Lproject/listick/fakegps/Contract/SearchImpl$UI;->setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method public selectOnMap()V
    .registers 11

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "latitude"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v6, "longitude"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lproject/listick/fakegps/Presenter/SearchPresenter;->mActivity:Landroid/app/Activity;

    const-class v9, Lproject/listick/fakegps/UI/SelectPointActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
