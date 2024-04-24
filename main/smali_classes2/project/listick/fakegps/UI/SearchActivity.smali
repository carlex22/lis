.class public Lproject/listick/fakegps/UI/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/SearchImpl$UI;


# static fields
.field public static final ACTIVITY_REQUEST_CODE:I = 0x1

.field public static final ADD_MORE_ROUTE:Ljava/lang/String; = "add_more_route"


# instance fields
.field private cyclingSegment:Landroid/widget/ImageView;

.field private destAddress:Landroid/widget/EditText;

.field private drivingSegment:Landroid/widget/ImageView;

.field private originAddress:Landroid/widget/EditText;

.field private presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

.field private walkingSegment:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/SearchActivity;)Lproject/listick/fakegps/Presenter/SearchPresenter;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    return-object p0
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;DDZLandroid/os/Bundle;)V
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lproject/listick/fakegps/UI/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org_addr"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "latitude"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "add_more_route"

    invoke-virtual {p1, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p7}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onTransportChanged(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->CYCLING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onTransportChanged(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method synthetic lambda$onCreate$2$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->WALKING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onTransportChanged(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onDestination()V

    :cond_0
    return p2
.end method

.method synthetic lambda$onCreate$4$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onOrigin()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$5$project-listick-fakegps-UI-SearchActivity(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->setReturnSharedElementTransition()V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->finishAfterTransition()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->setReturnSharedElementTransition()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0096

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->setContentView(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance p1, Lproject/listick/fakegps/Presenter/SearchPresenter;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/Presenter/SearchPresenter;-><init>(Lproject/listick/fakegps/Contract/SearchImpl$UI;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    const p1, 0x7f090179

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->originAddress:Landroid/widget/EditText;

    const p1, 0x7f0900a9

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->destAddress:Landroid/widget/EditText;

    const p1, 0x7f090233

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->drivingSegment:Landroid/widget/ImageView;

    const p1, 0x7f090232

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->cyclingSegment:Landroid/widget/ImageView;

    const p1, 0x7f090234

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->walkingSegment:Landroid/widget/ImageView;

    const p1, 0x7f0901cb

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7f090162

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lproject/listick/fakegps/UI/SearchActivity;->drivingSegment:Landroid/widget/ImageView;

    new-instance v2, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/UI/SearchActivity;->cyclingSegment:Landroid/widget/ImageView;

    new-instance v2, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/UI/SearchActivity;->walkingSegment:Landroid/widget/ImageView;

    new-instance v2, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/UI/SearchActivity;->destAddress:Landroid/widget/EditText;

    new-instance v2, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lproject/listick/fakegps/UI/SearchActivity;->originAddress:Landroid/widget/EditText;

    new-instance v2, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lproject/listick/fakegps/UI/SearchActivity$1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/SearchActivity$1;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lproject/listick/fakegps/UI/SearchActivity$2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/SearchActivity$2;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/SearchActivity$$ExternalSyntheticLambda5;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->presenter:Lproject/listick/fakegps/Presenter/SearchPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/SearchPresenter;->onActivityLoad()V

    return-void
.end method

.method public removeTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->drivingSegment:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->cyclingSegment:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->walkingSegment:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDestAddress(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/UI/SearchActivity;->destAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOriginAddress(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/UI/SearchActivity;->originAddress:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setReturnSharedElementTransition()V
    .registers 3

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    new-instance v1, Lproject/listick/fakegps/UI/SearchActivity$3;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/SearchActivity$3;-><init>(Lproject/listick/fakegps/UI/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    move-result-object v0

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSharedElementExitTransition(Landroid/transition/Transition;)V

    return-void
.end method

.method public setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 4

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const v1, 0x7f080165

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->drivingSegment:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->CYCLING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->cyclingSegment:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->WALKING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lproject/listick/fakegps/UI/SearchActivity;->walkingSegment:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method
