.class public Lproject/listick/fakegps/j/a;
.super Ljava/lang/Object;
.source "OpenRouteService.java"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(DDDDLproject/listick/fakegps/r/b;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lproject/listick/fakegps/j/a;->a:D

    iput-wide p3, p0, Lproject/listick/fakegps/j/a;->b:D

    iput-wide p5, p0, Lproject/listick/fakegps/j/a;->c:D

    iput-wide p7, p0, Lproject/listick/fakegps/j/a;->d:D

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lh/b/f/f;",
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

    new-instance v5, Lh/b/f/f;

    int-to-double v8, v4

    div-double v15, v8, v12

    int-to-double v8, v6

    div-double v17, v8, v12

    int-to-double v8, v7

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double v19, v8, v11

    move-object v14, v5

    invoke-direct/range {v14 .. v20}, Lh/b/f/f;-><init>(DDD)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_5

    :cond_3
    move v9, v10

    goto :goto_4

    :cond_4
    new-instance v5, Lh/b/f/f;

    int-to-double v10, v4

    div-double v22, v10, v12

    int-to-double v10, v6

    div-double v24, v10, v12

    const-wide/high16 v26, -0x3e20000000000000L    # -2.147483648E9

    move-object/from16 v21, v5

    invoke-direct/range {v21 .. v27}, Lh/b/f/f;-><init>(DDD)V

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

.method private d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.openrouteservice.org/v2/directions/driving-car/json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lh/b/f/f;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "routes"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lproject/listick/fakegps/j/a;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "distance"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .registers 10

    new-instance v0, Lproject/listick/fakegps/n$d;

    invoke-direct {p0}, Lproject/listick/fakegps/j/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lproject/listick/fakegps/n$d;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lproject/listick/fakegps/j/a;->b:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-wide v7, p0, Lproject/listick/fakegps/j/a;->a:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lproject/listick/fakegps/j/a;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v6

    iget-wide v4, p0, Lproject/listick/fakegps/j/a;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v7

    aput-object v2, v3, v7

    const-string v2, "coordinates"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

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
    const-string v1, "Authorization"

    const-string v3, "5b3ce3597851110001cf6248f9453cbecd3a4291932064fcd9a87f38"

    invoke-virtual {v0, v1, v3}, Lproject/listick/fakegps/n$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v3, "application/json, application/geo+json, application/gpx+xml, img/png; charset=utf-8"

    invoke-virtual {v0, v1, v3}, Lproject/listick/fakegps/n$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v3}, Lproject/listick/fakegps/n$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lproject/listick/fakegps/n$d;->c(Lorg/json/JSONObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "elevation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lproject/listick/fakegps/n$d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
