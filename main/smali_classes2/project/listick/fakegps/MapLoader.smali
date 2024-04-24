.class public Lproject/listick/fakegps/MapLoader;
.super Ljava/lang/Object;
.source "MapLoader.java"


# static fields
.field public static final DEFAULT_TILES:I = 0x0

.field public static final DEFAULT_TILE_PROVIDER:Ljava/lang/String; = "default_tile_provider"

.field public static final MIN_ZOOM_LVL:D = 15.0

.field public static final OPTIMIZED_ZOOM_LVL:D = 17.0

.field public static final WIKIMEDIA_TILES:I = 0x1

.field public static final ZOOM_ANIMATION_SPEED:J = 0x3e8L


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public load(Lorg/osmdroid/views/MapView;Landroid/widget/TextView;)V
    .registers 14

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setUserAgentValue(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "mapkit"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidBasePath(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "maptile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/osmdroid/config/IConfigurationProvider;->setOsmdroidTileCache(Ljava/io/File;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/osmdroid/views/MapView;->setMultiTouchControls(Z)V

    sget-object v1, Lorg/osmdroid/tileprovider/tilesource/TileSourceFactory;->MAPNIK:Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    iget-object v1, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lproject/listick/fakegps/AppPreferences;->getMapTileProvider(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    new-instance v1, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;

    const-string v3, "Wikimedia"

    const/4 v4, 0x1

    const/16 v5, 0x13

    const/16 v6, 0x100

    const-string v7, ".png"

    const-string v2, "https://maps.wikimedia.org/osm-intl/"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "Wikimedia maps | Map data \u00a9 OpenStreetMap contributors"

    new-instance v10, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    const/16 v2, 0xf

    invoke-direct {v10, v0, v2}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>(II)V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lorg/osmdroid/tileprovider/tilesource/XYTileSource;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    invoke-virtual {p1, v1}, Lorg/osmdroid/views/MapView;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    const v2, 0x7f12019c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lproject/listick/fakegps/MapLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x30

    const/16 v0, 0x20

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object p2

    invoke-interface {p2}, Lorg/osmdroid/views/overlay/OverlayManager;->getTilesOverlay()Lorg/osmdroid/views/overlay/TilesOverlay;

    move-result-object p2

    sget-object v0, Lorg/osmdroid/views/overlay/TilesOverlay;->INVERT_COLORS:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getZoomController()Lorg/osmdroid/views/CustomZoomButtonsController;

    move-result-object p2

    sget-object v0, Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;->NEVER:Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;

    invoke-virtual {p2, v0}, Lorg/osmdroid/views/CustomZoomButtonsController;->setVisibility(Lorg/osmdroid/views/CustomZoomButtonsController$Visibility;)V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/osmdroid/views/MapView;->setMinZoomLevel(Ljava/lang/Double;)V

    return-void
.end method
