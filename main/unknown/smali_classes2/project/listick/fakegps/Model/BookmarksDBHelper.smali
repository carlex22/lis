.class public Lproject/listick/fakegps/Model/BookmarksDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BookmarksDBHelper.java"


# static fields
.field public static final BOOKMARKS_DB:Ljava/lang/String; = "bookmarks"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final KEY_ADDRESS:Ljava/lang/String; = "dest_address"

.field public static final KEY_COORDINATES:Ljava/lang/String; = "coordinates"

.field public static final KEY_DEST_ADDRESS:Ljava/lang/String; = "address"

.field public static final KEY_DEST_LATIUTDE:Ljava/lang/String; = "destLat"

.field public static final KEY_DEST_LONGITUDE:Ljava/lang/String; = "destLng"

.field public static final KEY_LABEL:Ljava/lang/String; = "label"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_ORIGIN_LATIUTDE:Ljava/lang/String; = "originLat"

.field public static final KEY_ORIGIN_LONGITUDE:Ljava/lang/String; = "originLng"

.field public static final KEY_ROWID:Ljava/lang/String; = "id"

.field public static final KEY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final ROUTES_TABLE:Ljava/lang/String; = "routes"

.field public static final STATIC_TABLE:Ljava/lang/String; = "static"

.field public static final TRANSPORT_BIKE:I = 0x1

.field public static final TRANSPORT_CAR:I = 0x0

.field public static final TRANSPORT_WALK:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lproject/listick/fakegps/Model/BookmarksDBHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "create table static (id integer primary key, latitude FLOAT, longitude FLOAT, dest_address TEXT, label TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table routes (id integer primary key, coordinates TEXT, address TEXT, dest_address TEXT, label TEXT, transport INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    if-le p3, p2, :cond_0

    const-string p2, "ALTER TABLE routes ADD COLUMN coordinates TEXT"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public saveBookmark(Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "dest_address"

    if-nez p1, :cond_0

    sget-wide v2, Lproject/listick/fakegps/SpoofingPlaceInfo;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-wide v2, Lproject/listick/fakegps/SpoofingPlaceInfo;->longtiude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "longitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    sget-object v2, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v5}, Lproject/listick/fakegps/MultipleRoutesInfo;->getRoute()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/util/GeoPoint;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "&"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v5}, Lproject/listick/fakegps/MultipleRoutesInfo;->getTransport()Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-result-object v5

    invoke-virtual {v5}, Lproject/listick/fakegps/Enumerations/ERouteTransport;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {v4}, Lproject/listick/fakegps/MultipleRoutesInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lproject/listick/fakegps/RouteManager;->getLatestElement()I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-virtual {p1}, Lproject/listick/fakegps/MultipleRoutesInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lproject/listick/fakegps/Model/BookmarksDBHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "coordinates"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "transport"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "label"

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lproject/listick/fakegps/Model/BookmarksDBHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lproject/listick/fakegps/MainServiceControl;->isRouteSpoofingServiceRunning(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lproject/listick/fakegps/Model/BookmarksDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "routes"

    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lproject/listick/fakegps/Model/BookmarksDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v1, "static"

    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_1
    return-void
.end method
