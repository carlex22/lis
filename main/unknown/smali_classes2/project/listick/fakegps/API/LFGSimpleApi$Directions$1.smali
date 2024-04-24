.class Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->downloadRoute(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/API/LFGSimpleApi$Directions;

.field final synthetic val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;

.field final synthetic val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/API/LFGSimpleApi$Directions;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->this$0:Lproject/listick/fakegps/API/LFGSimpleApi$Directions;

    iput-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    iput-object p3, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 4

    const-string p1, "RouteBuilder"

    const-string v0, "onFailure: "

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->error:Ljava/lang/String;

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    const/4 p2, -0x1

    iput p2, p1, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-interface {p1, p2}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;->onResult(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "error_code"

    const-string v0, "error_text"

    const-string v1, "onResponse: "

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    const-string v2, "RouteBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->error:Ljava/lang/String;

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-interface {p1, p2}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;->onResult(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    return-void

    :cond_0
    const-string p1, "routes"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "geometry"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->decodePolyline(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->result:Ljava/util/ArrayList;

    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    iget-object v1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->this$0:Lproject/listick/fakegps/API/LFGSimpleApi$Directions;

    const-string v2, "distance"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions;->access$002(Lproject/listick/fakegps/API/LFGSimpleApi$Directions;D)D

    move-result-wide v1

    iput-wide v1, v0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->distance:D

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    iput p2, p1, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "project.listick.fakegps"

    const/4 v0, 0x0

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    const/4 v0, -0x4

    iput v0, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->code:I

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;->error:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$1;->val$response:Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;

    invoke-interface {p1, p2}, Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsCallback;->onResult(Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;)V

    return-void
.end method
