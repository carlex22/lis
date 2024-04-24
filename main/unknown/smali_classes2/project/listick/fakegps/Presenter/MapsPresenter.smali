.class public Lproject/listick/fakegps/Presenter/MapsPresenter;
.super Ljava/lang/Object;
.source "MapsPresenter.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/MapsImpl$PresenterImpl;


# static fields
.field public static final UPDATE_UI_ACTION:Ljava/lang/String; = "project.listick.fakegps.actionservice.daemons.update_speedbar_ui"


# instance fields
.field private currentLocation:Lproject/listick/fakegps/CurrentLocation;

.field private final filter:Landroid/content/IntentFilter;

.field private isRoute:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mDistance:D

.field private final mMap:Lorg/osmdroid/views/MapView;

.field private final mMarkerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;

.field private final mServiceControl:Lproject/listick/fakegps/MainServiceControl;

.field private final mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

.field private final spoofingPlaceInfo:Lproject/listick/fakegps/SpoofingPlaceInfo;

.field private final updateUIReciver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    const-wide/high16 v0, 0x0

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    new-instance v0, Lproject/listick/fakegps/Model/MapsModel;

    invoke-direct {v0, p1, p2}, Lproject/listick/fakegps/Model/MapsModel;-><init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mModel:Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;

    iput-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    move-object v0, p2

    check-cast v0, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    new-instance v0, Lproject/listick/fakegps/MainServiceControl;

    invoke-direct {v0, p2}, Lproject/listick/fakegps/MainServiceControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mServiceControl:Lproject/listick/fakegps/MainServiceControl;

    new-instance v0, Lproject/listick/fakegps/SpoofingPlaceInfo;

    invoke-direct {v0, p1}, Lproject/listick/fakegps/SpoofingPlaceInfo;-><init>(Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->spoofingPlaceInfo:Lproject/listick/fakegps/SpoofingPlaceInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMarkerList:Ljava/util/List;

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->filter:Landroid/content/IntentFilter;

    const-string v0, "project.listick.fakegps.actionservice.daemons.update_speedbar_ui"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lproject/listick/fakegps/Presenter/MapsPresenter$2;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$2;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->updateUIReciver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p2, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/Presenter/MapsPresenter;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/Presenter/MapsPresenter;)Lorg/osmdroid/views/MapView;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method static synthetic access$418(Lproject/listick/fakegps/Presenter/MapsPresenter;D)D
    .registers 5

    iget-wide v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    return-wide v0
.end method

.method static synthetic access$502(Lproject/listick/fakegps/Presenter/MapsPresenter;Z)Z
    .registers 2

    iput-boolean p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    return p1
.end method

.method static synthetic access$600(Lproject/listick/fakegps/Presenter/MapsPresenter;Lproject/listick/fakegps/MultipleRoutesInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->setRouteOriginDestMarkers(Lproject/listick/fakegps/MultipleRoutesInfo;)V

    return-void
.end method

.method private addInBookmarks()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isFixedSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f120022

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Landroid/widget/EditText;)V

    const v0, 0x7f120149

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private buildRoute(DDDDLandroid/content/Intent;)V
    .registers 25

    move-object v0, p0

    move-object/from16 v1, p9

    const-string v2, "captcha_result"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v2, v0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const-string v3, "dst_addr"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setWhereToAddress(Ljava/lang/String;)V

    sget-object v2, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-object v13, v2

    check-cast v13, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    new-instance v2, Lproject/listick/fakegps/RouteBuilder;

    iget-object v4, v0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    move-object v3, v2

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    invoke-direct/range {v3 .. v14}, Lproject/listick/fakegps/RouteBuilder;-><init>(Landroid/app/Activity;DDDDLproject/listick/fakegps/Enumerations/ERouteTransport;Ljava/lang/String;)V

    new-instance v3, Lproject/listick/fakegps/Presenter/MapsPresenter$4;

    invoke-direct {v3, p0, v2, v1}, Lproject/listick/fakegps/Presenter/MapsPresenter$4;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Lproject/listick/fakegps/RouteBuilder;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Lproject/listick/fakegps/RouteBuilder;->build(Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;)V

    return-void
.end method

.method private goToCoordinates()V
    .registers 5

    new-instance v0, Lproject/listick/fakegps/UI/EditTextDialog;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v2, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda8;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/UI/EditTextDialog;-><init>(Landroid/content/Context;Lproject/listick/fakegps/Interfaces/EditTextDialogImpl;)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f1200b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f120089

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/UI/EditTextDialog;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleShareLocation()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f12006c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initSearch()V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f120099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleClear$0(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$onSpoofClick$3(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method static synthetic lambda$startJoystickActivity$8(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private openAppPreferences()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/UI/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openBookmarks()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/UI/BookmarksActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private openGpForRate()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "market://details?id=project.listick.fakegps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f120191

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "project.listick.fakegps"

    const/4 v2, 0x0

    :goto_0
    return-void
.end method

.method private openTelegramChannel()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "https://t.me/project_listick"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "org.telegram.messenger"

    invoke-static {v1}, Lproject/listick/fakegps/PermissionManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "org.telegram.messenger.web"

    invoke-static {v1}, Lproject/listick/fakegps/PermissionManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private removeRouteMarkers(I)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMarkerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMarkerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->origin:Lproject/listick/fakegps/RouteMarker;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->dest:Lproject/listick/fakegps/RouteMarker;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method private restoreSpoofingState()V
    .registers 14

    invoke-static {}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->unbindService()V

    sget-object v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/CurrentLocation;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f12006c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v0}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isFixedSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isJoystickSpoofingRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchToJoystickMode()V

    goto :goto_2

    :cond_4
    sget-object v0, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :try_start_0
    invoke-interface {v0}, Lproject/listick/fakegps/Services/ISpooferService;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-direct {p0, v2}, Lproject/listick/fakegps/Presenter/MapsPresenter;->setRouteOriginDestMarkers(Lproject/listick/fakegps/MultipleRoutesInfo;)V

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lproject/listick/fakegps/MapUtil;->drawPath(Lorg/osmdroid/views/MapView;Ljava/util/List;)D

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchToRouteMode()V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mServiceControl:Lproject/listick/fakegps/MainServiceControl;

    invoke-virtual {v2, v0}, Lproject/listick/fakegps/MainServiceControl;->isPaused(Lproject/listick/fakegps/Services/ISpooferService;)Z

    move-result v0

    invoke-interface {v1, v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setPauseState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void
.end method

.method private setRouteOriginDestMarkers(Lproject/listick/fakegps/MultipleRoutesInfo;)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRouteMarker(Landroid/content/Context;)Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMarkerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->origin:Lproject/listick/fakegps/RouteMarker;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->dest:Lproject/listick/fakegps/RouteMarker;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method private showAboutDialog()V
    .registers 14

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "<b><a href=\"https://github.com/projectlistick/listick_fake_gps\">GitHub</a></b>"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "<b><a href=\"https://t.me/project_listick\">Telegram</a></b>"

    aput-object v4, v1, v2

    const v2, 0x7f12001f

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v6

    iget-object v4, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f12001c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f080151

    invoke-interface/range {v4 .. v12}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->alertDialog(Ljava/lang/String;Landroid/text/Spanned;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method


# virtual methods
.method public changePoint()V
    .registers 6

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mServiceControl:Lproject/listick/fakegps/MainServiceControl;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lproject/listick/fakegps/MainServiceControl;->sendNewCoordinates(DD)V

    return-void
.end method

.method public destroyLocationMarker()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->onDestroy()V

    return-void
.end method

.method public getNavBarHeight()I
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "navigation_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getStatusBarHeight()I
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public handleClear()V
    .registers 10

    new-instance v7, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda5;-><init>()V

    new-instance v5, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda6;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v2, 0x7f120163

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v3, 0x7f120164

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v6, 0x7f120149

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v8, 0x7f12004a

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f0800ad

    invoke-interface/range {v0 .. v8}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->alertDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    return-void
.end method

.method public handlePause()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mServiceControl:Lproject/listick/fakegps/MainServiceControl;

    sget-object v1, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/MainServiceControl;->isPaused(Lproject/listick/fakegps/Services/ISpooferService;)Z

    move-result v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mServiceControl:Lproject/listick/fakegps/MainServiceControl;

    sget-object v2, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lproject/listick/fakegps/MainServiceControl;->setPause(Lproject/listick/fakegps/Services/ISpooferService;Z)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setPauseState(Z)V

    return-void
.end method

.method public handleStop()V
    .registers 14

    invoke-static {}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->unbindService()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isFixedSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isJoystickSpoofingRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    instance-of v2, v1, Lproject/listick/fakegps/LocationMarker;

    if-nez v2, :cond_3

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchNonSpoofingMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/CurrentLocation;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f12006c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public handleStop1()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-static {}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->unbindService()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isFixedSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isJoystickSpoofingRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    instance-of v2, v1, Lproject/listick/fakegps/LocationMarker;

    if-nez v2, :cond_3

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchNonSpoofingMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    return-void
.end method

.method synthetic lambda$addInBookmarks$5$project-listick-fakegps-Presenter-MapsPresenter(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .registers 6

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const p2, 0x7f120085

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance p2, Lproject/listick/fakegps/Model/BookmarksDBHelper;

    iget-object p3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v0, "bookmarks"

    const/4 v1, 0x2

    invoke-direct {p2, p3, v0, v1}, Lproject/listick/fakegps/Model/BookmarksDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    :try_start_0
    sget-object p3, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->sService:Lproject/listick/fakegps/Services/ISpooferService;

    invoke-interface {p3}, Lproject/listick/fakegps/Services/ISpooferService;->getRoutes()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lproject/listick/fakegps/Model/BookmarksDBHelper;->saveBookmark(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method synthetic lambda$goToCoordinates$6$project-listick-fakegps-Presenter-MapsPresenter(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {p1}, Lproject/listick/fakegps/MapUtil;->parseCoordinates(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    const-wide/high16 v1, 0x4031000000000000L    # 17.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method synthetic lambda$handleClear$1$project-listick-fakegps-Presenter-MapsPresenter(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleStop()V

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->initTestProvider()V

    invoke-static {}, Lproject/listick/fakegps/MockLocProvider;->removeProviders()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method synthetic lambda$onAddMoreRoute$2$project-listick-fakegps-Presenter-MapsPresenter(Ljava/lang/String;DDLandroidx/core/app/ActivityOptionsCompat;)V
    .registers 15

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x1

    invoke-virtual {p6}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v7}, Lproject/listick/fakegps/UI/SearchActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;DDZLandroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$onSpoofClick$4$project-listick-fakegps-Presenter-MapsPresenter(Lorg/osmdroid/util/GeoPoint;Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object p3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p3, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/Presenter/MapsPresenter;->onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V

    invoke-interface {p2}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

.method synthetic lambda$startJoystickActivity$7$project-listick-fakegps-Presenter-MapsPresenter(Landroid/content/DialogInterface;I)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x3

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public loadLocationMarker()V
    .registers 4

    new-instance v0, Lproject/listick/fakegps/CurrentLocation;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/CurrentLocation;-><init>(Landroid/content/Context;Lorg/osmdroid/views/MapView;)V

    iput-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    return-void
.end method

.method public onActivityLoad()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mModel:Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;->getPermissions()V

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->loadLocationMarker()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mModel:Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;->moveCameraToLastLocation()V

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->initSearch()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddressShimmer(Z)V

    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->restoreSpoofingState()V

    const-string v0, "org.telegram.messenger"

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const v1, 0x7f09017a

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->removeMenuItem(I)V

    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const v1, 0x7f090197

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->removeMenuItem(I)V

    :cond_1
    return-void
.end method

.method public onAddMoreRoute(Landroidx/core/app/ActivityOptionsCompat;)V
    .registers 14

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->getWhereToAddress()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v1, v2, v8}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v11, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;

    move-object v1, v11

    move-object v2, p0

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda7;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;Ljava/lang/String;DDLandroidx/core/app/ActivityOptionsCompat;)V

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onBookmarkResult(Landroid/content/Intent;I)V
    .registers 22

    move-object/from16 v10, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-object v1, v10, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleStop()V

    :cond_1
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    const-string v0, "address"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "originLat"

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v1, "originLng"

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v1, "destLat"

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v15

    const-string v1, "destLng"

    invoke-virtual {v9, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v17

    const-string v1, "transport"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    iget-object v1, v10, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->lockSearchView()V

    iget-object v1, v10, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v1, v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setWhereToAddress(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v5

    move-wide v11, v5

    move-wide v5, v15

    move-wide v13, v7

    move-wide/from16 v7, v17

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lproject/listick/fakegps/Presenter/MapsPresenter;->buildRoute(DDDDLandroid/content/Intent;)V

    iget-object v0, v10, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, v13, v14, v11, v12}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "latitude"

    invoke-virtual {v9, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v4, "longitude"

    invoke-virtual {v9, v4, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    iget-object v4, v10, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v4}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v4

    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v5, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v5, v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCurrentLocationClick()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/CurrentLocation;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    :cond_0
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    const-wide/high16 v2, 0x4031000000000000L    # 17.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "project.listick.fakegps"

    const/4 v2, 0x0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f120090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800d7

    invoke-static {v0, v1, v2}, Lproject/listick/fakegps/UI/PrettyToast;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->saveCurrentLocation()V

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->destroyLocationMarker()V

    return-void
.end method

.method public onItem(Landroid/view/MenuItem;)V
    .registers 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->handleShareLocation()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->openAppPreferences()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->openGpForRate()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->openTelegramChannel()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->goToCoordinates()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->showAboutDialog()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09000e -> :sswitch_5
        0x7f0900e5 -> :sswitch_4
        0x7f09017a -> :sswitch_3
        0x7f090197 -> :sswitch_2
        0x7f0901cf -> :sswitch_1
        0x7f0901d0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMapDrag()V
    .registers 7

    new-instance v0, Lproject/listick/fakegps/AsyncGeocoder;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lproject/listick/fakegps/AsyncGeocoder;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setAddressShimmer(Z)V

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v3}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v3

    new-instance v5, Lproject/listick/fakegps/Presenter/MapsPresenter$3;

    invoke-direct {v5, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$3;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    invoke-virtual/range {v0 .. v5}, Lproject/listick/fakegps/AsyncGeocoder;->getLocationAddress(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    return-void
.end method

.method public onMenu()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->openMenu(Z)V

    return-void
.end method

.method public onPause()V
    .registers 3

    return-void
.end method

.method public onResume()V
    .registers 5

    return-void
.end method

.method public onRouteRemove()V
    .registers 3

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeLatestRoute()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    :goto_0
    return-void
.end method

.method public onSearchResult(Landroid/content/Intent;)V
    .registers 15

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeAllRoutes()V

    const/4 v2, 0x0

    const-string v4, "start"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/CurrentLocation;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f12006c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    const-string v0, "dst_lat"

    const-wide v1, -0x3fc86bfd2dbafd75L    # -23.578168050621155

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v0, "dst_lng"

    const-wide v1, -0x3fb8ab1ea19ee810L    # -46.66312770596403

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v10

    cmpl-double v0, v8, v10

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    cmpl-double v0, v4, v1

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, p0

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lproject/listick/fakegps/Presenter/MapsPresenter;->buildRoute(DDDDLandroid/content/Intent;)V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v8, v9, v10, v11}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {p1, v0}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    :cond_3
    :goto_0
    return-void
.end method

.method public onSpoofClick(Lorg/osmdroid/util/GeoPoint;)V
    .registers 12

    invoke-static {}, Lproject/listick/fakegps/Presenter/RouteSettingsPresenter;->unbindService()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isFixedSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/MainServiceControl;->isJoystickSpoofingRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/Services/JoystickService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_2
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v2, Lproject/listick/fakegps/LocationOperations;

    invoke-direct {v2}, Lproject/listick/fakegps/LocationOperations;-><init>()V

    iget-wide v4, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    iget-object v6, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    iget-boolean v7, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lproject/listick/fakegps/LocationOperations;->startSpoofing(Lorg/osmdroid/util/GeoPoint;DLandroid/app/Activity;I)V

    :goto_1
    return-void
.end method

.method public registerLocationUpdates()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->registerUpdates()V

    return-void
.end method

.method public removeAllRoutes()V
    .registers 3

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeLatestRoute()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v0

    invoke-direct {p0, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeRouteMarkers(I)V

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->spoofingPlaceInfo:Lproject/listick/fakegps/SpoofingPlaceInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/SpoofingPlaceInfo;->removeRoute()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->switchNonSpoofingMode()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->isRoute:Z

    const-wide/high16 v0, 0x0

    iput-wide v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    :cond_2
    :goto_1
    return-void
.end method

.method public removeLatestRoute()V
    .registers 6

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-static {v0}, Lproject/listick/fakegps/MapUtil;->removeLatestRoute(Lorg/osmdroid/views/MapView;)V

    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v0

    iget-wide v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    sget-object v3, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v3}, Lproject/listick/fakegps/MultipleRoutesInfo;->getDistance()D

    move-result-wide v3

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mDistance:D

    invoke-direct {p0, v0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->removeRouteMarkers(I)V

    sget-object v1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v0

    sget-object v1, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    invoke-interface {v1, v0}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->setWhereToAddress(Ljava/lang/String;)V

    return-void
.end method

.method public removeLocationUpdates()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->removeUpdates()V

    return-void
.end method

.method public saveCurrentLocation()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Lproject/listick/fakegps/CurrentLocation;->getLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->currentLocation:Lproject/listick/fakegps/CurrentLocation;

    invoke-virtual {v0}, Lproject/listick/fakegps/CurrentLocation;->getLocation()Landroid/location/Location;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v2, "location_prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "latitude"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v0, v2

    const-string v2, "longitude"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "zoom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public sendDeviceAnalytics()V
    .registers 14

    const-string v0, "density"

    const-string v1, "densityDpi"

    const-string v2, "height"

    const-string v3, "width"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ro.product.manufacturer"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.hardware"

    sget-object v7, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "SUPPORTED_ABIS"

    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "SUPPORTED_32_BIT_ABIS"

    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "SUPPORTED_64_BIT_ABIS"

    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.codename"

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.release"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.host"

    sget-object v7, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.sdk_int"

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "ro.build.tags"

    sget-object v7, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.product.name"

    sget-object v7, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.product.brand"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.id"

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.bootloader"

    sget-object v7, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.product.model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.display.id"

    sget-object v7, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "kernel_version"

    const-string v7, "os.version"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.user"

    sget-object v7, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.product.device"

    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.fingerprint"

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.sdk"

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.product.board"

    sget-object v7, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.preview_sdk"

    sget v7, Landroid/os/Build$VERSION;->PREVIEW_SDK_INT:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.incremental"

    sget-object v7, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.version.base_os"

    sget-object v7, Landroid/os/Build$VERSION;->BASE_OS:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ro.build.date.utc"

    sget-wide v7, Landroid/os/Build;->TIME:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "radio_version"

    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v8, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v9, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v11, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v12, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    float-to-double v9, v7

    invoke-virtual {v12, v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v7, "metrics"

    invoke-virtual {v6, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v8, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v10, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v11, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    float-to-double v1, v7

    invoke-virtual {v11, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "real_metrics"

    invoke-virtual {v6, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status_bar_height"

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "navigation_bar_height"

    invoke-virtual {p0}, Lproject/listick/fakegps/Presenter/MapsPresenter;->getNavBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "system_bars"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "display_metrics"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "number_of_cores"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "cpu"

    invoke-static {}, Lproject/listick/fakegps/DeviceUtils;->getCPUInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ram"

    invoke-static {}, Lproject/listick/fakegps/DeviceUtils;->getTotalRAM()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "hardware"

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "device_info"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-static {}, Lproject/listick/fakegps/WebClient;->getInstance()Lproject/listick/fakegps/WebClient;

    move-result-object v1

    new-instance v2, Lproject/listick/fakegps/Presenter/MapsPresenter$1;

    invoke-direct {v2, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$1;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    invoke-virtual {v1, v0, v2}, Lproject/listick/fakegps/WebClient;->makeRequest(Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method public startJoystickActivity()V
    .registers 13

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isMockLocationsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "caller"

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->isSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const-class v5, Lproject/listick/fakegps/UI/MockLocationPermissionActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    new-instance v8, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/Presenter/MapsPresenter;)V

    new-instance v10, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v10}, Lproject/listick/fakegps/Presenter/MapsPresenter$$ExternalSyntheticLambda1;-><init>()V

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lproject/listick/fakegps/PermissionManager;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f120082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f120083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f1200b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mContext:Landroid/content/Context;

    const v1, 0x7f12004a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v11, 0x7f0800da

    invoke-interface/range {v3 .. v11}, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;->alertDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapCenter()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lproject/listick/fakegps/Presenter/MapsPresenter;->mActivity:Landroid/app/Activity;

    const-class v6, Lproject/listick/fakegps/UI/RouteSettingsActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "latitude"

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "longitude"

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v3, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
