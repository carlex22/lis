.class public Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
.super Ljava/lang/Object;
.source "ImageryMetaDataResource.java"


# static fields
.field private static final COPYRIGHT:Ljava/lang/String; = "copyright"

.field private static final IMAGE_HEIGHT:Ljava/lang/String; = "imageHeight"

.field private static final IMAGE_URL:Ljava/lang/String; = "imageUrl"

.field private static final IMAGE_URL_SUBDOMAINS:Ljava/lang/String; = "imageUrlSubdomains"

.field private static final IMAGE_WIDTH:Ljava/lang/String; = "imageWidth"

.field private static final ZOOM_MAX:Ljava/lang/String; = "ZoomMax"

.field private static final ZOOM_MIN:Ljava/lang/String; = "ZoomMin"


# instance fields
.field public copyright:Ljava/lang/String;

.field public m_imageHeight:I

.field public m_imageUrl:Ljava/lang/String;

.field public m_imageUrlSubdomains:[Ljava/lang/String;

.field public m_imageWidth:I

.field public m_isInitialised:Z

.field private m_subdomainsCounter:I

.field public m_zoomMax:I

.field public m_zoomMin:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    const/16 v0, 0x16

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    return-void
.end method

.method public static getDefaultInstance()Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .registers 1

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    return-object v0
.end method

.method public static getInstanceFromJSON(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;-><init>()V

    if-eqz p0, :cond_6

    const-string v1, "copyright"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->copyright:Ljava/lang/String;

    const-string p1, "imageHeight"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageHeight:I

    :cond_0
    const-string p1, "imageWidth"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageWidth:I

    :cond_1
    const-string p1, "ZoomMin"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMin:I

    :cond_2
    const-string p1, "ZoomMax"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_zoomMax:I

    :cond_3
    const-string p1, "imageUrl"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string v1, ".*?\\{.*?\\}.*?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    const-string v1, "\\{.*?\\}"

    const-string v2, "%s"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrl:Ljava/lang/String;

    :cond_4
    const-string p1, "imageUrlSubdomains"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v1, p1, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iput-boolean p1, v0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_isInitialised:Z

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "JSON to parse is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized getSubDomain()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_imageUrlSubdomains:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    aget-object v2, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/tileprovider/tilesource/bing/ImageryMetaDataResource;->m_subdomainsCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_2
    :goto_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
