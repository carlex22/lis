.class public abstract Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.super Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;
.source "OnlineTileSourceBase.java"


# instance fields
.field private final mBaseUrls:[Ljava/lang/String;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;

.field private final mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 17

    new-instance v8, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-direct {v8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;)V
    .registers 16

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/BitmapTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    iput-object p8, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Ljava/util/concurrent/Semaphore;

    invoke-virtual {p8}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->getMaxConcurrent()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    :goto_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->random:Ljava/util/Random;

    iget-object v2, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mBaseUrls:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mTileSourcePolicy:Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    return-object v0
.end method

.method public abstract getTileURLString(J)Ljava/lang/String;
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->mSemaphore:Ljava/util/concurrent/Semaphore;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
