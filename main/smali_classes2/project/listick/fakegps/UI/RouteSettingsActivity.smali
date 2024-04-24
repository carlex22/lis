.class public Lproject/listick/fakegps/UI/RouteSettingsActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "RouteSettingsActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;


# instance fields
.field private differenceField:Landroid/widget/EditText;

.field private elevation:Landroid/widget/EditText;

.field private elevationDiff:Landroid/widget/EditText;

.field private mClosedRoute:Landroid/widget/CheckBox;

.field private mContinue:Lcom/google/android/material/button/MaterialButton;

.field private mDestTimerMinutes:I

.field private mDestTimerSeconds:I

.field private mDetectingAltitude:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private mLatestPointDelayContainer:Landroid/view/View;

.field private mLatestPointDelayTimer:Landroid/widget/TextView;

.field private mOriginTimerMinutes:I

.field private mOriginTimerSeconds:I

.field private mPauseAtStartingContainer:Landroid/view/View;

.field private mPauseAtStartingTimer:Landroid/widget/TextView;

.field private mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

.field private speedField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->speedField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->differenceField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevation:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevationDiff:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mClosedRoute:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/UI/RouteSettingsActivity;)Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    return-object p0
.end method

.method static synthetic lambda$pushDifferenceError$4()V
    .registers 0

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;DDDIZI)V
    .registers 12

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "distance"

    invoke-virtual {p1, p2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "add_more_route"

    invoke-virtual {p1, p2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "caller"

    invoke-virtual {p1, p2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p9}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public addMoreRoute()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mClosedRoute:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getDestTimerMinutes()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDestTimerMinutes:I

    return v0
.end method

.method public getDestTimerSeconds()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDestTimerSeconds:I

    return v0
.end method

.method public getElevation(FF)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevation:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevationDiff:Landroid/widget/EditText;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getOriginTimerMinutes()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mOriginTimerMinutes:I

    return v0
.end method

.method public getOriginTimerSeconds()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mOriginTimerSeconds:I

    return v0
.end method

.method public getSpeed(I)V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->speedField:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getSpeedDifference(I)V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->differenceField:Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-RouteSettingsActivity(IILjava/lang/String;)V
    .registers 4

    iput p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mOriginTimerMinutes:I

    iput p2, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mOriginTimerSeconds:I

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingTimer:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$project-listick-fakegps-UI-RouteSettingsActivity(Landroid/view/View;)V
    .registers 3

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog;

    new-instance v0, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-direct {p1, p0, v0}, Lproject/listick/fakegps/UI/TimePickerDialog;-><init>(Landroid/content/Context;Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;)V

    invoke-virtual {p1}, Lproject/listick/fakegps/UI/TimePickerDialog;->show()V

    return-void
.end method

.method synthetic lambda$onCreate$2$project-listick-fakegps-UI-RouteSettingsActivity(IILjava/lang/String;)V
    .registers 4

    iput p2, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDestTimerMinutes:I

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayTimer:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreate$3$project-listick-fakegps-UI-RouteSettingsActivity(Landroid/view/View;)V
    .registers 4

    new-instance p1, Lproject/listick/fakegps/UI/TimePickerDialog;

    new-instance v0, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-direct {p1, p0, v0}, Lproject/listick/fakegps/UI/TimePickerDialog;-><init>(Landroid/content/Context;Lproject/listick/fakegps/UI/TimePickerDialog$TimePickerImpl;)V

    const v0, 0x7f120077

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lproject/listick/fakegps/UI/TimePickerDialog;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p1, "captcha_result"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-virtual {p2, p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->onChallengePassed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->stopAltitudeDetection()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->setElevation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->onAltitudeDetermined(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAltitudeDetermined(ZZ)V
    .registers 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->callOnClick()Z

    const v0, 0x7f120029

    goto :goto_0

    :cond_0
    const v0, 0x7f120028

    :goto_0
    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800eb

    invoke-static {p0, v0, v1}, Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09005b

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0094

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->setContentView(I)V

    const p1, 0x7f09008d

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iput-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    const p1, 0x7f09005c

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0901de

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->speedField:Landroid/widget/EditText;

    const v0, 0x7f0901e1

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->differenceField:Landroid/widget/EditText;

    const v0, 0x7f0900c4

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevation:Landroid/widget/EditText;

    const v0, 0x7f0900c7

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevationDiff:Landroid/widget/EditText;

    const v0, 0x7f090084

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mClosedRoute:Landroid/widget/CheckBox;

    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDetectingAltitude:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayContainer:Landroid/view/View;

    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayTimer:Landroid/widget/TextView;

    const v0, 0x7f090187

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingContainer:Landroid/view/View;

    const v0, 0x7f090183

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingTimer:Landroid/widget/TextView;

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDetectingAltitude:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    const v0, 0x7f0901e2

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901e0

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2}, Lproject/listick/fakegps/AppPreferences;->getUnitName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;-><init>(Lproject/listick/fakegps/Contract/RouteSettingsImpl$UI;)V

    iput-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$1;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lproject/listick/fakegps/UI/RouteSettingsActivity$2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$2;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingTimer:Landroid/widget/TextView;

    new-instance v0, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayTimer:Landroid/widget/TextView;

    new-instance v0, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/UI/RouteSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->onActivityLoad()V

    return-void
.end method

.method public pushDifferenceError()V
    .registers 3

    const v0, 0x7f12007f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->differenceField:Landroid/widget/EditText;

    new-instance v1, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lproject/listick/fakegps/UI/UIEffects$TextView;->attachErrorWithShake(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFixedMode()V
    .registers 4

    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090221

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120182

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mClosedRoute:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setJoystickMode()V
    .registers 4

    const v0, 0x7f0901e4

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090221

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1200be

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0901df

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mClosedRoute:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mPauseAtStartingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mLatestPointDelayContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startAltitudeDetection()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f120079

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDetectingAltitude:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    return-void
.end method

.method public stopAltitudeDetection()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mContinue:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f120065

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->mDetectingAltitude:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/RouteSettingsActivity;->elevation:Landroid/widget/EditText;

    const v1, 0x7f01000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
