.class public interface abstract Lorg/osmdroid/tileprovider/modules/IFilesystemCache;
.super Ljava/lang/Object;
.source "IFilesystemCache.java"


# virtual methods
.method public abstract exists(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
.end method

.method public abstract getExpirationTimestamp(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/lang/Long;
.end method

.method public abstract loadTile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onDetach()V
.end method

.method public abstract remove(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Z
.end method

.method public abstract saveFile(Lorg/osmdroid/tileprovider/tilesource/ITileSource;JLjava/io/InputStream;Ljava/lang/Long;)Z
.end method
