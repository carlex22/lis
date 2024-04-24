.class public Lproject/listick/fakegps/LocationOperations;
.super Ljava/lang/Object;
.source "LocationOperations.java"


# static fields
.field public static final FIXED_SETTINGS_REQUEST_CODE:I = 0x5

.field public static final JOYSTICK_SETTINGS_REQUEST_CODE:I = 0xa

.field public static final ROUTE_SETTINGS_REQUEST_CODE:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviate(Lorg/osmdroid/util/GeoPoint;F)Lorg/osmdroid/util/GeoPoint;
    .registers 12

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide v1, 0x4056800000000000L    # 90.0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const-wide v5, 0x4066800000000000L    # 180.0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v2

    float-to-double v4, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x40fb207000000000L    # 111111.0

    div-double v6, v8, v6

    div-double v6, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    add-double/2addr v6, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    sub-double v6, v0, v6

    :goto_0
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr v8, v0

    div-double/2addr v4, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v4, v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadLocalRandom;->nextBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p0

    add-double/2addr v4, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p0

    sub-double v4, p0, v4

    :goto_1
    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p0, v6, v7, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p0
.end method


# virtual methods
.method public startSpoofing(Lorg/osmdroid/util/GeoPoint;DLandroid/app/Activity;I)V
    .registers 22

    move-object/from16 v10, p4

    move/from16 v11, p5

    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    move v9, v1

    const/4 v1, 0x0

    if-ne v11, v0, :cond_1

    sget-object v2, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v2}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    :goto_1
    if-ne v11, v0, :cond_2

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    sput-wide v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->latitude:D

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    sput-wide v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->longtiude:D

    const/4 v8, 0x0

    move-object/from16 v0, p4

    move-wide v1, v2

    move-wide v3, v4

    move-wide/from16 v5, p2

    move/from16 v7, p5

    invoke-static/range {v0 .. v9}, Lproject/listick/fakegps/UI/RouteSettingsActivity;->startActivity(Landroid/app/Activity;DDDIZI)V

    if-nez v11, :cond_3

    new-instance v0, Lproject/listick/fakegps/AsyncGeocoder;

    invoke-direct {v0, v10}, Lproject/listick/fakegps/AsyncGeocoder;-><init>(Landroid/app/Activity;)V

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v13

    new-instance v15, Lproject/listick/fakegps/LocationOperations$1;

    move-object/from16 v1, p0

    invoke-direct {v15, v1, v10}, Lproject/listick/fakegps/LocationOperations$1;-><init>(Lproject/listick/fakegps/LocationOperations;Landroid/app/Activity;)V

    move-object v10, v0

    invoke-virtual/range {v10 .. v15}, Lproject/listick/fakegps/AsyncGeocoder;->getLocationAddress(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    goto :goto_3

    :cond_3
    move-object/from16 v1, p0

    :goto_3
    return-void
.end method
