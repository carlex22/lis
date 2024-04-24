.class Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;->getElevation(DDLjava/lang/String;Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;

.field final synthetic val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;->this$0:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;

    iput-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .registers 3

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;

    invoke-interface {p1}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;->onRequestError()V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "error_code"

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "error_text"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_0

    const/4 p2, -0x3

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;

    invoke-interface {p1}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;->onCaptchaResult()V

    return-void

    :cond_1
    const-string p1, "geometry"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    const-string v3, "altitude"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$1;->val$callback:Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;

    invoke-interface {p2, p1}, Lproject/listick/fakegps/API/LFGSimpleApi$Elevation$ElevationCallback;->onRequestSuccess(F)V

    return-void
.end method
