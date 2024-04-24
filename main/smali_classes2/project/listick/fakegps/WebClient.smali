.class public Lproject/listick/fakegps/WebClient;
.super Ljava/lang/Object;
.source "WebClient.java"


# static fields
.field private static final sInstance:Lproject/listick/fakegps/WebClient;


# instance fields
.field private final mWebClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lproject/listick/fakegps/WebClient;

    invoke-direct {v0}, Lproject/listick/fakegps/WebClient;-><init>()V

    sput-object v0, Lproject/listick/fakegps/WebClient;->sInstance:Lproject/listick/fakegps/WebClient;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/WebClient;->mWebClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static getInstance()Lproject/listick/fakegps/WebClient;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/WebClient;->sInstance:Lproject/listick/fakegps/WebClient;

    return-object v0
.end method


# virtual methods
.method public makeRequest(Lokhttp3/Request;Lokhttp3/Callback;)V
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/WebClient;->mWebClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
