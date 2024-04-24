.class public Lproject/listick/fakegps/Model/MapsModel;
.super Ljava/lang/Object;
.source "MapsModel.java"

# interfaces
.implements Lproject/listick/fakegps/Contract/MapsImpl$ModelImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMap:Lorg/osmdroid/views/MapView;

.field private mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/Model/MapsModel;->mMap:Lorg/osmdroid/views/MapView;

    iput-object p2, p0, Lproject/listick/fakegps/Model/MapsModel;->mContext:Landroid/content/Context;

    check-cast p2, Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    iput-object p2, p0, Lproject/listick/fakegps/Model/MapsModel;->mUserInterface:Lproject/listick/fakegps/Contract/MapsImpl$UIImpl;

    return-void
.end method


# virtual methods
.method public getPermissions()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Model/MapsModel;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Lproject/listick/fakegps/PermissionManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Model/MapsModel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lproject/listick/fakegps/Model/MapsModel;->mContext:Landroid/content/Context;

    const-class v3, Lproject/listick/fakegps/UI/PermissionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public moveCameraToLastLocation()V
    .registers 8

    iget-object v0, p0, Lproject/listick/fakegps/Model/MapsModel;->mContext:Landroid/content/Context;

    const-string v1, "location_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Model/MapsModel;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    const-string v3, "latitude"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-double v5, v3

    const-string v3, "longitude"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v5, v6, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    iget-object v1, p0, Lproject/listick/fakegps/Model/MapsModel;->mMap:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    const-string v2, "zoom"

    const/high16 v3, 0x40400000    # 3.0f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v2, v0

    invoke-interface {v1, v2, v3}, Lorg/osmdroid/api/IMapController;->setZoom(D)D

    return-void
.end method
