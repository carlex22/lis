.class public Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "HEREWeGoTileSource.java"


# static fields
.field private static final APPCODE:Ljava/lang/String; = "HEREWEGO_APPCODE"

.field private static final COPYRIGHT:Ljava/lang/String; = "\u00a9 1987 - 2019 HERE. All rights reserved."

.field private static final HEREWEGO_APPID:Ljava/lang/String; = "HEREWEGO_APPID"

.field private static final HEREWEGO_DOMAIN_OVERRIDE:Ljava/lang/String; = "HEREWEGO_OVERRIDE"

.field private static final HEREWEGO_MAPID:Ljava/lang/String; = "HEREWEGO_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private appCode:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private domainOverride:Ljava/lang/String;

.field private herewegoMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "https://3.{domain}/maptile/2.1/maptile/newest/"

    const-string v1, "https://4.{domain}/maptile/2.1/maptile/newest/"

    const-string v2, "https://1.{domain}/maptile/2.1/maptile/newest/"

    const-string v3, "https://2.{domain}/maptile/2.1/maptile/newest/"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    const-string v1, "herewego"

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    const-string v1, "herewego"

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveAppId(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveAppCode(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveDomainOverride(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "herewego"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 14

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hybrid.day"

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    const-string p1, "aerial.maps.cit.api.here.com"

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 p6, 0x1

    new-array v6, p6, [Ljava/lang/String;

    const/4 p6, 0x0

    aput-object p7, v6, p6

    const-string v7, "\u00a9 1987 - 2017 HERE. All rights reserved."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hybrid.day"

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    const-string p1, "aerial.maps.cit.api.here.com"

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "herewego"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x14

    const/16 v6, 0x100

    const-string v7, ".png"

    sget-object v8, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v9, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    iput-object p2, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    iput-object p3, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    return-void
.end method

.method private retrieveDomainOverride(Landroid/content/Context;)V
    .registers 3

    const-string v0, "HEREWEGO_OVERRIDE"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getHerewegoMapId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{domain}"

    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getHerewegoMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getTileSizePixels()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/png8?app_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&app_code="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getAppCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&lg=pt-BR"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final retrieveAppCode(Landroid/content/Context;)V
    .registers 3

    const-string v0, "HEREWEGO_APPCODE"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    return-void
.end method

.method public final retrieveAppId(Landroid/content/Context;)V
    .registers 3

    const-string v0, "HEREWEGO_APPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .registers 3

    const-string v0, "HEREWEGO_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    return-void
.end method

.method public setDomainOverride(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    return-void
.end method

.method public setHereWeGoMapid(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "herewego"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mName:Ljava/lang/String;

    return-void
.end method
