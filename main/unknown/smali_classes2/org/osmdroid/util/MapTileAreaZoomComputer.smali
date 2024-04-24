.class public Lorg/osmdroid/util/MapTileAreaZoomComputer;
.super Ljava/lang/Object;
.source "MapTileAreaZoomComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mZoomDelta:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .registers 9

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {p2}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    add-int/2addr v1, v0

    if-ltz v1, :cond_4

    sget v0, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    if-gtz v0, :cond_3

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v0

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v2, v0, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v0

    iget v3, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v3, v3

    shr-int v3, v0, v3

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v0

    iget v4, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v4, v4

    shr-int v4, v0, v4

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    iget v0, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v0, v0

    shr-int v5, p1, v0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object p2

    :cond_3
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v0

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v2, v0, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v0

    iget v3, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v3, v0, v3

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr v0, v4

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr p1, v0

    add-int/lit8 v5, p1, -0x1

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    return-object p2

    :cond_4
    :goto_1
    invoke-virtual {p2}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    return-object p2
.end method
