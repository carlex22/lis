.class Lproject/listick/fakegps/j/b$a;
.super Ljava/lang/Object;
.source "OpenRouteService.java"

# interfaces
.implements Lproject/listick/fakegps/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/j/b;->a(DDLproject/listick/fakegps/j/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lproject/listick/fakegps/j/c;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/j/b;Lproject/listick/fakegps/j/c;)V
    .registers 3

    iput-object p2, p0, Lproject/listick/fakegps/j/b$a;->a:Lproject/listick/fakegps/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/j/b$a;->a:Lproject/listick/fakegps/j/c;

    invoke-interface {v0}, Lproject/listick/fakegps/j/c;->a()V

    return-void
.end method

.method public b(Lf/c0;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lf/c0;->C()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lproject/listick/fakegps/j/b$a;->a()V

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "geometry"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float p1, v0

    iget-object v0, p0, Lproject/listick/fakegps/j/b$a;->a:Lproject/listick/fakegps/j/c;

    invoke-interface {v0, p1}, Lproject/listick/fakegps/j/c;->b(F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    invoke-virtual {p0}, Lproject/listick/fakegps/j/b$a;->a()V

    :goto_1
    return-void
.end method
