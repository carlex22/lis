.class public Lorg/osmdroid/views/drawing/OsmPath;
.super Landroid/graphics/Path;
.source "OsmPath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;


# instance fields
.field private mLastZoomLevel:D

.field protected final mReferencePoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .registers 6

    iget-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget-object v2, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object p1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/views/drawing/OsmPath;->offset(FF)V

    return-void
.end method
