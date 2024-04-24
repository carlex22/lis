.class public Lproject/listick/fakegps/API/LFGSimpleApi$Directions;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/API/LFGSimpleApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;,
        Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;
    }
.end annotation


# instance fields
.field private final captchaResult:Ljava/lang/String;

.field private final destlat:D

.field private final destlong:D

.field private distance:D

.field private final sourcelat:D

.field private final sourcelong:D

.field private final transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;


# direct methods
.method public constructor <init>(DDDDLproject/listick/fakegps/Enumerations/ERouteTransport;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->sourcelat:D

    iput-wide p3, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->sourcelong:D

    iput-wide p5, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->destlat:D

    iput-wide p7, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->destlong:D

    iput-object p9, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    iput-object p10, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->captchaResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lproject/listick/fakegps/API/LFGSimpleApi$Directions;D)D
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->distance:D

    return-wide p1
.end method

.method public static decodePolyline(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v2, :cond_7

    move v8, v3

    move v9, v8

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x3f

    and-int/lit8 v11, v4, 0x1f

    shl-int/2addr v11, v9

    or-int/2addr v8, v11

    add-int/lit8 v9, v9, 0x5

    const/16 v11, 0x20

    if-ge v4, v11, :cond_6

    and-int/lit8 v4, v8, 0x1

    if-eqz v4, :cond_0

    shr-int/lit8 v4, v8, 0x1

    not-int v4, v4

    goto :goto_2

    :cond_0
    shr-int/lit8 v4, v8, 0x1

    :goto_2
    add-int/2addr v4, v5

    move v5, v3

    move v8, v5

    :goto_3
    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v10, v10, -0x3f

    and-int/lit8 v12, v10, 0x1f

    shl-int/2addr v12, v8

    or-int/2addr v5, v12

    add-int/lit8 v8, v8, 0x5

    if-ge v10, v11, :cond_5

    and-int/lit8 v8, v5, 0x1

    shr-int/lit8 v5, v5, 0x1

    if-eqz v8, :cond_1

    not-int v5, v5

    :cond_1
    add-int/2addr v6, v5

    const-wide v12, 0x40f86a0000000000L    # 100000.0

    if-eqz p1, :cond_4

    move v5, v3

    move v8, v5

    :goto_4
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x3f

    and-int/lit8 v14, v9, 0x1f

    shl-int/2addr v14, v8

    or-int/2addr v5, v14

    add-int/lit8 v8, v8, 0x5

    if-ge v9, v11, :cond_3

    and-int/lit8 v8, v5, 0x1

    shr-int/lit8 v5, v5, 0x1

    if-eqz v8, :cond_2

    not-int v5, v5

    :cond_2
    add-int/2addr v7, v5

    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    int-to-double v8, v4

    div-double v15, v8, v12

    int-to-double v8, v6

    div-double v17, v8, v12

    int-to-double v8, v7

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double v19, v8, v11

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_5

    :cond_3
    move v9, v10

    goto :goto_4

    :cond_4
    new-instance v5, Lorg/osmdroid/util/GeoPoint;

    int-to-double v10, v4

    div-double v22, v10, v12

    int-to-double v10, v6

    div-double v24, v10, v12

    const-wide/high16 v26, -0x3e20000000000000L    # -2.147483648E9

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v27}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move v5, v4

    move v4, v9

    goto/16 :goto_0

    :cond_5
    move v10, v9

    goto :goto_3

    :cond_6
    move v4, v10

    goto/16 :goto_1

    :cond_7
    return-object v1
.end method

.method private getRouteBuilderUrl()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.openrouteservice.org/v2/directions/driving-car/json"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->transport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {v1}, Lproject/listick/fakegps/Enumerations/ERouteTransport;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadRoute(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;)V
    .registers 11

    new-instance v0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-direct {v0}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->sourcelong:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-wide v7, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->sourcelat:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->destlong:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v6

    iget-wide v4, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->destlat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v2, v3, v7

    const-string v2, "coordinates"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "preference"

    const-string v3, "shortest"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "elevation"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->getRouteBuilderUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v3, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v4, "Authorization"

    const-string v1, "5b3ce3597851110001cf6248c8a113724e2a4ace9ca97d8082bf1942"

    invoke-virtual {v3, v4, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-static {}, Lproject/listick/fakegps/WebClient;->getInstance()Lproject/listick/fakegps/WebClient;

    move-result-object v2

    new-instance v3, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;

    invoke-direct {v3, p0, v0, p1}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;-><init>(Lproject/listick/fakegps/API/LFGSimpleApi$Directions;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;)V

    invoke-virtual {v2, v1, v3}, Lproject/listick/fakegps/WebClient;->makeRequest(Lokhttp3/Request;Lokhttp3/Callback;)V

    return-void
.end method

.method public getDistance()D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->distance:D

    return-wide v0
.end method
