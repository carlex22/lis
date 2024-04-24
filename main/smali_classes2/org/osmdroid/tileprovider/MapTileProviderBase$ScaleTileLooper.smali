.class abstract Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.super Lorg/osmdroid/util/TileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ScaleTileLooper"
.end annotation


# instance fields
.field private isWorth:Z

.field protected mDebugPaint:Landroid/graphics/Paint;

.field protected mDestRect:Landroid/graphics/Rect;

.field protected mDiff:I

.field protected final mNewTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mOldTileZoomLevel:I

.field protected mSrcRect:Landroid/graphics/Rect;

.field protected mTileSize:I

.field protected mTileSize_2:I

.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method protected abstract computeTile(JII)V
.end method

.method public finaliseLoop()V
    .registers 5

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->putScaledTileIntoCache(JLandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleTile(JII)V
    .registers 6

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->isWorth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->computeTile(JII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "OsmDroid"

    const-string p2, "OutOfMemoryError rescaling cache"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public initialiseLoop()V
    .registers 3

    invoke-super {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileZoomLevel:I

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mOldTileZoomLevel:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDiff:I

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize:I

    shr-int/2addr v1, v0

    iput v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize_2:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->isWorth:Z

    return-void
.end method

.method public loop(DLorg/osmdroid/util/RectL;DI)V
    .registers 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mSrcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDestRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    invoke-static {p4, p5}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result p4

    iput p4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mOldTileZoomLevel:I

    iput p6, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mTileSize:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->loop(DLorg/osmdroid/util/RectL;)V

    return-void
.end method

.method protected putScaledTileIntoCache(JLandroid/graphics/Bitmap;)V
    .registers 7

    new-instance v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    invoke-direct {v0, p3}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v2, -0x3

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->putTileIntoCache(JLandroid/graphics/drawable/Drawable;I)V

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Created scaled tile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OsmDroid"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string p2, "scaled"

    iget-object p3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;->mDebugPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
