.class Lproject/listick/fakegps/UI/RouteSettingsActivity$2;
.super Lproject/listick/fakegps/OnSingleClickListener;
.source "RouteSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/UI/RouteSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$2;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-direct {p0}, Lproject/listick/fakegps/OnSingleClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity$2;->this$0:Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-static {p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->access$500(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->onCancelClick()V

    return-void
.end method
