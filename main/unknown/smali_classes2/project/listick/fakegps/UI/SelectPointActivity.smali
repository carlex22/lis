.class public Lproject/listick/fakegps/UI/SelectPointActivity;
.super Lproject/listick/fakegps/UI/Edge2EdgeActivity;
.source "SelectPointActivity.java"


# instance fields
.field private address:Ljava/lang/String;

.field private addressLabel:Landroid/widget/EditText;

.field private geocoder:Lproject/listick/fakegps/AsyncGeocoder;

.field private mKeyboard:Landroid/view/inputmethod/InputMethodManager;

.field private mapView:Lorg/osmdroid/views/MapView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/SelectPointActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->address:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lproject/listick/fakegps/UI/SelectPointActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->address:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/SelectPointActivity;)Lorg/osmdroid/views/MapView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/UI/SelectPointActivity;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/UI/SelectPointActivity;)Lproject/listick/fakegps/AsyncGeocoder;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->geocoder:Lproject/listick/fakegps/AsyncGeocoder;

    return-object p0
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    check-cast p0, Landroid/widget/EditText;

    const p1, 0x7f120088

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$2(Landroid/widget/TextView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$5(Landroid/widget/ListView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onCreate$6(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;ILandroid/widget/RelativeLayout;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 8

    invoke-virtual {p5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p4

    invoke-virtual {p5}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lproject/listick/fakegps/ImageUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    add-int/2addr p2, p4

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p5}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-SelectPointActivity(Landroid/view/View;)V
    .registers 7

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lproject/listick/fakegps/MapUtil;->parseCoordinates(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->geocoder:Lproject/listick/fakegps/AsyncGeocoder;

    new-instance v1, Lproject/listick/fakegps/UI/SelectPointActivity$1;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$1;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V

    invoke-virtual {v0, p1, v1}, Lproject/listick/fakegps/AsyncGeocoder;->getFromAddress(Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mKeyboard:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SelectPointActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method synthetic lambda$onCreate$3$project-listick-fakegps-UI-SelectPointActivity(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SelectPointActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$4$project-listick-fakegps-UI-SelectPointActivity()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mKeyboard:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->setContentView(I)V

    const p1, 0x7f09011b

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/osmdroid/views/MapView;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    new-instance p1, Lproject/listick/fakegps/MapLoader;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/MapLoader;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Lproject/listick/fakegps/MapLoader;->load(Lorg/osmdroid/views/MapView;Landroid/widget/TextView;)V

    new-instance p1, Lproject/listick/fakegps/AsyncGeocoder;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/AsyncGeocoder;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->geocoder:Lproject/listick/fakegps/AsyncGeocoder;

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/SelectPointActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mKeyboard:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SelectPointActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "latitude"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v0, "longitude"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v0, "open_search"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0901b8

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901be

    invoke-virtual {p0, v2}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    iget-object v2, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v2

    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v2, v3}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v2, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v2

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-interface {v2, v3, v4}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$2;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lproject/listick/fakegps/UI/SelectPointActivity$2;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;DD)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda2;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v1, Lorg/osmdroid/events/DelayedMapListener;

    new-instance v2, Lproject/listick/fakegps/UI/SelectPointActivity$3;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$3;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V

    const-wide/16 v3, 0x64

    invoke-direct {v1, v2, v3, v4}, Lorg/osmdroid/events/DelayedMapListener;-><init>(Lorg/osmdroid/events/MapListener;J)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/MapView;->addMapListener(Lorg/osmdroid/events/MapListener;)V

    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0901c6

    invoke-virtual {p0, v1}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09005c

    invoke-virtual {p0, v3}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    new-instance v3, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {p1, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance p1, Lproject/listick/fakegps/AsyncGeocoder;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/AsyncGeocoder;-><init>(Landroid/app/Activity;)V

    const v3, 0x7f0901a1

    invoke-virtual {p0, v3}, Lproject/listick/fakegps/UI/SelectPointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iget-object v4, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->addressLabel:Landroid/widget/EditText;

    new-instance v5, Lproject/listick/fakegps/UI/SelectPointActivity$4;

    invoke-direct {v5, p0, p1, v3}, Lproject/listick/fakegps/UI/SelectPointActivity$4;-><init>(Lproject/listick/fakegps/UI/SelectPointActivity;Lproject/listick/fakegps/AsyncGeocoder;Landroid/widget/ListView;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    new-instance v4, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda5;-><init>(Landroid/widget/ListView;)V

    invoke-virtual {p1, v4}, Lorg/osmdroid/views/MapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v3, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, v2, v0, p1, v1}, Lproject/listick/fakegps/UI/SelectPointActivity$$ExternalSyntheticLambda6;-><init>(Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;ILandroid/widget/RelativeLayout;)V

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onDestroy()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onDetach()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onPause()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onResume()V

    iget-object v0, p0, Lproject/listick/fakegps/UI/SelectPointActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->onResume()V

    return-void
.end method
