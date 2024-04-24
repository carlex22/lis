.class public Lproject/listick/fakegps/UI/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/SplashImpl$UI;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lproject/listick/fakegps/Presenter/SplashPresenter;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Presenter/SplashPresenter;-><init>(Lproject/listick/fakegps/Contract/SplashImpl$UI;)V

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/SplashPresenter;->onAppLoad()V

    return-void
.end method
