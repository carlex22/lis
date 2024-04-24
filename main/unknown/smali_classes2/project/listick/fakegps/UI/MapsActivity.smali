.class public Lproject/listick/fakegps/UI/MapsActivity;
.super Lproject/listick/fakegps/UI/Edge2EdgeActivity;
.source "MapsActivity.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private mActiveRouteLayout:Landroidx/cardview/widget/CardView;

.field private mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

.field private mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private mDistanceInfo:Landroid/widget/TextView;

.field private mDoneContainer:Lcom/google/android/material/button/MaterialButton;

.field private mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field private mEditContainer:Lcom/google/android/material/button/MaterialButton;

.field private mLocationDisabledHintView:Landroid/widget/TextView;

.field private mMap:Lorg/osmdroid/views/MapView;

.field private mMenuIcon:Landroid/widget/ImageView;

.field private mNavigationView:Lcom/google/android/material/navigation/NavigationView;

.field private mPauseContainer:Lcom/google/android/material/button/MaterialButton;

.field private mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

.field private mProgressDialog:Landroid/view/View;

.field private mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

.field private mRestoreLocation:Lcom/google/android/material/button/MaterialButton;

.field private mSearchLayout:Landroid/widget/TextView;

.field private mSourceAddress:Landroid/widget/TextView;

.field private mSpeedInfo:Landroid/widget/TextView;

.field private mStartJoystick:Lcom/google/android/material/button/MaterialButton;

.field private mStopContainer:Lcom/google/android/material/button/MaterialButton;

.field private mWhereTo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/MapsActivity;)Lproject/listick/fakegps/Presenter/MapsPresenter;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/MapsActivity;)Landroidx/cardview/widget/CardView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mActiveRouteLayout:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/UI/MapsActivity;)Lcom/google/android/material/button/MaterialButton;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRestoreLocation:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/UI/MapsActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/UI/MapsActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSourceAddress:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/UI/MapsActivity;)Lorg/osmdroid/views/MapView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method static synthetic lambda$alertDialog$12(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$alertDialog$13(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$inflateProgressLayout$17(Landroid/view/View;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public alertDialog(Ljava/lang/String;Landroid/text/Spanned;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .registers 10

    new-instance p3, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda12;

    invoke-direct {p3}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda12;-><init>()V

    new-instance p7, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f1302f9

    invoke-direct {p7, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p7, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p6, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public alertDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .registers 10

    new-instance p3, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda11;

    invoke-direct {p3}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda11;-><init>()V

    new-instance p7, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v0, 0x7f1302f9

    invoke-direct {p7, p0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p7, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p6, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setIcon(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public arrivedRoute()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->callOnClick()Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getWhereToAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mWhereTo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public inflateProgressLayout(Landroid/view/View$OnClickListener;)V
    .registers 7

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c0095

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lproject/listick/fakegps/UI/MapsActivity;->mProgressDialog:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lproject/listick/fakegps/UI/MapsActivity;->mProgressDialog:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v2, 0x7f090072

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mProgressDialog:Landroid/view/View;

    const v0, 0x7f090113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f060031

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method synthetic lambda$lockSearchView$15$project-listick-fakegps-UI-MapsActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleStop()V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method

.method synthetic lambda$lockSearchView$16$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 11

    new-instance v5, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    const p1, 0x7f120196

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f12016d

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const p1, 0x7f12018a

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p1, 0x7f12004a

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x7f0800de

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lproject/listick/fakegps/UI/MapsActivity;->alertDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handlePause()V

    return-void
.end method

.method synthetic lambda$onCreate$1$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$10$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onCurrentLocationClick()V

    return-void
.end method

.method synthetic lambda$onCreate$11$project-listick-fakegps-UI-MapsActivity(Lcom/google/android/material/button/MaterialButton;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8

    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p2

    invoke-virtual {p3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMenuIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const v1, 0x7f0901c1

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v1, 0x1cd

    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    const p1, 0x7f090043

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0, v0}, Lcom/google/android/material/navigation/NavigationView;->setPadding(IIII)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mLocationDisabledHintView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, v0, p2, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p3}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$onCreate$2$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onMenu()V

    return-void
.end method

.method synthetic lambda$onCreate$3$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onRouteRemove()V

    return-void
.end method

.method synthetic lambda$onCreate$4$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->changePoint()V

    return-void
.end method

.method synthetic lambda$onCreate$5$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method synthetic lambda$onCreate$6$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleStop()V

    return-void
.end method

.method synthetic lambda$onCreate$7$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    const-string v1, "whereTo"

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onAddMoreRoute(Landroidx/core/app/ActivityOptionsCompat;)V

    return-void
.end method

.method synthetic lambda$onCreate$8$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleClear()V

    return-void
.end method

.method synthetic lambda$onCreate$9$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->startJoystickActivity()V

    return-void
.end method

.method synthetic lambda$setLocationDisabledNotification$14$project-listick-fakegps-UI-MapsActivity(Landroid/view/View;)V
    .registers 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lproject/listick/fakegps/UI/MapsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public lockSearchView()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda10;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0, p3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSearchResult(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->switchToRouteMode()V

    iget-object v2, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeLatestRoute()V

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->switchToJoystickMode()V

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0, p3, p2}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onBookmarkResult(Landroid/content/Intent;I)V

    :cond_5
    const/16 p3, 0x8

    if-ne p1, p3, :cond_7

    const/4 p1, 0x2

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->startJoystickActivity()V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    new-instance p2, Lorg/osmdroid/util/GeoPoint;

    iget-object p3, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p3

    invoke-interface {p3}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    iget-object p3, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p3

    invoke-interface {p3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V

    :cond_7
    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p1, v0}, Lproject/listick/fakegps/PermissionManager;->isServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    :cond_0
    const p1, 0x7f13000e

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->setTheme(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->recreate()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->setContentView(I)V

    const p1, 0x7f09011b

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/MapView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    new-instance p1, Lproject/listick/fakegps/MapLoader;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/MapLoader;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lproject/listick/fakegps/MapLoader;->load(Lorg/osmdroid/views/MapView;Landroid/widget/TextView;)V

    new-instance p1, Lproject/listick/fakegps/Presenter/MapsPresenter;

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-direct {p1, v0, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    const p1, 0x7f0900e2

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0901f9

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0901e3

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSpeedInfo:Landroid/widget/TextView;

    const v0, 0x7f0900b2

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDistanceInfo:Landroid/widget/TextView;

    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mEditContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0901f3

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRestoreLocation:Lcom/google/android/material/button/MaterialButton;

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda14;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mWhereTo:Landroid/widget/TextView;

    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mActiveRouteLayout:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0901cf

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMenuIcon:Landroid/widget/ImageView;

    const v0, 0x7f0900d6

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSourceAddress:Landroid/widget/TextView;

    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x7f090160

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    const v0, 0x7f09018c

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mLocationDisabledHintView:Landroid/widget/TextView;

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    new-instance v1, Lorg/osmdroid/events/DelayedMapListener;

    new-instance v2, Lproject/listick/fakegps/UI/MapsActivity$1;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/MapsActivity$1;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    const-wide/16 v3, 0x64

    invoke-direct {v1, v2, v3, v4}, Lorg/osmdroid/events/DelayedMapListener;-><init>(Lorg/osmdroid/events/MapListener;J)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->addMapListener(Lorg/osmdroid/events/MapListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda17;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMenuIcon:Landroid/widget/ImageView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mEditContainer:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda5;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda6;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRestoreLocation:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda7;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda8;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda15;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->unlockSearchView()V

    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda16;-><init>(Lproject/listick/fakegps/UI/MapsActivity;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$2;

    invoke-direct {v1, p0, p1}, Lproject/listick/fakegps/UI/MapsActivity$2;-><init>(Lproject/listick/fakegps/UI/MapsActivity;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mBottomSheet:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mActiveRouteLayout:Landroidx/cardview/widget/CardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setAlpha(F)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRestoreLocation:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setAlpha(F)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onActivityLoad()V

    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0, v3}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSearchResult(Landroid/content/Intent;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onDestroy()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onDestroy()V

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0, p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onItem(Landroid/view/MenuItem;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onPause()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-string v1, "latitude"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "longitude"

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v4, v5, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onResume()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPresenter:Lproject/listick/fakegps/Presenter/MapsPresenter;

    invoke-virtual {v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    const-string v1, "latitude"

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "longitude"

    invoke-interface {v0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public openMenu(Z)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const v0, 0x800005

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    :goto_0
    return-void
.end method

.method public removeMenuItem(I)V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mNavigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public removeProgressLayout()V
    .registers 3

    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mProgressDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const v1, 0x7f0604d1

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setEnabled(Z)V

    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSourceAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAddressShimmer(Z)V
    .registers 3

    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->showShimmer(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->hideShimmer()V

    :goto_0
    return-void
.end method

.method public setLocationDisabledNotification(I)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mLocationDisabledHintView:Landroid/widget/TextView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$$ExternalSyntheticLambda9;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mLocationDisabledHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->requestApplyInsets()V

    return-void
.end method

.method public setPauseState(Z)V
    .registers 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0800dd

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f120165

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0800db

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setIconResource(I)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f120157

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    :goto_0
    return-void
.end method

.method public setWhereToAddress(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mWhereTo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchNonSpoofingMode()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSpeedInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2}, Lproject/listick/fakegps/AppPreferences;->getUnitName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDistanceInfo:Landroid/widget/TextView;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mEditContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->requestApplyInsets()V

    const v0, 0x7f12019a

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/MapsActivity;->setWhereToAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->unlockSearchView()V

    invoke-static {p0}, Lproject/listick/fakegps/LocationServices;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/MapsActivity;->setLocationDisabledNotification(I)V

    :cond_0
    return-void
.end method

.method public switchToFixedMode()V
    .registers 4

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->finish()V

    return-void
.end method

.method public switchToJoystickMode()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->lockSearchView()V

    invoke-static {p0}, Lproject/listick/fakegps/LocationServices;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lproject/listick/fakegps/UI/MapsActivity;->setLocationDisabledNotification(I)V

    :cond_0
    return-void
.end method

.method public switchToPreRouteMode()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    const/16 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->lockSearchView()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->requestApplyInsets()V

    invoke-static {p0}, Lproject/listick/fakegps/LocationServices;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/MapsActivity;->setLocationDisabledNotification(I)V

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->callOnClick()Z

    return-void
.end method

.method public switchToRouteMode()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSpeedInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0, v2}, Lproject/listick/fakegps/AppPreferences;->getUnitName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDistanceInfo:Landroid/widget/TextView;

    const-string v1, "0/0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDoneContainer:Lcom/google/android/material/button/MaterialButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mPauseContainer:Lcom/google/android/material/button/MaterialButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStopContainer:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mAddMoreRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mStartJoystick:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mRemoveRoute:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/MapsActivity;->lockSearchView()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->requestApplyInsets()V

    invoke-static {p0}, Lproject/listick/fakegps/LocationServices;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lproject/listick/fakegps/UI/MapsActivity;->setLocationDisabledNotification(I)V

    :cond_0
    return-void
.end method

.method public unlockSearchView()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSearchLayout:Landroid/widget/TextView;

    new-instance v1, Lproject/listick/fakegps/UI/MapsActivity$3;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/MapsActivity$3;-><init>(Lproject/listick/fakegps/UI/MapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateRouteInfo(IDD)V
    .registers 11

    invoke-static {p0}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0, v0}, Lproject/listick/fakegps/AppPreferences;->getUnitName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    const-string p2, "%.2f"

    invoke-static {v2, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, v4, p3

    invoke-static {v2, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lproject/listick/fakegps/UI/MapsActivity;->mSpeedInfo:Landroid/widget/TextView;

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p3

    aput-object v0, v1, v3

    const-string p1, "%d %s"

    invoke-static {p5, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/MapsActivity;->mDistanceInfo:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
