.class public Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/API/LFGSimpleApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Elevation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;
    }
.end annotation


# instance fields
.field private final mCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method private getElevationServiceURL(DD)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.openrouteservice.org/elevation/point?format_out=point&api_key=5b3ce3597851110001cf6248c8a113724e2a4ace9ca97d8082bf1942&geometry="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getElevation(DDLjava/lang/String;Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;)V
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "challenge_result"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p5, "application/json; charset=utf-8"

    invoke-static {p5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p5

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;->getElevationServiceURL(DD)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-static {}, Lproject/listick/fakegps/WebClient;->getInstance()Lproject/listick/fakegps/WebClient;

    move-result-object p2

    new-instance p3, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;

    invoke-direct {p3, p0, p6}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;-><init>(Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;)V

    invoke-virtual {p2, p1, p3}, Lproject/listick/fakegps/WebClient;->makeRequest(Lokhttp3/Request;Lokhttp3/Callback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
