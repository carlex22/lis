.class public Lproject/listick/fakegps/Presenter/SplashPresenter;
.super Ljava/lang/Object;
.source "SplashPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/SplashImpl$Presenter;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lproject/listick/fakegps/Contract/SplashImpl$UI;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/SplashPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private hideSplash()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SplashPresenter;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/SplashPresenter;->mActivity:Landroid/app/Activity;

    const-class v3, Lproject/listick/fakegps/UI/MapsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/SplashPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onAppLoad()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/SplashPresenter;->hideSplash()V

    return-void
.end method
