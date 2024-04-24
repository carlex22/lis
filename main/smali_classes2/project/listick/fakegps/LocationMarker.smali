.class public Lproject/listick/fakegps/LocationMarker;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "LocationMarker.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private geoPoint:Lorg/osmdroid/util/GeoPoint;

.field private final mDrawPixel:Landroid/graphics/Point;

.field private mFixedIcon:Landroid/graphics/Bitmap;

.field private mRouteIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mDrawPixel:Landroid/graphics/Point;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/LocationMarker;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .registers 8

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p3

    iget-object v0, p0, Lproject/listick/fakegps/LocationMarker;->geoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lproject/listick/fakegps/LocationMarker;->mDrawPixel:Landroid/graphics/Point;

    invoke-virtual {p3, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lproject/listick/fakegps/LocationMarker;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lproject/listick/fakegps/LocationMarker;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method

.method synthetic lambda$new$0$project-listick-fakegps-LocationMarker()V
    .registers 4

    const v0, 0x7f0800ec

    invoke-static {v0}, Lproject/listick/fakegps/ImageUtils;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mFixedIcon:Landroid/graphics/Bitmap;

    const v0, 0x7f0800ba

    invoke-static {v0}, Lproject/listick/fakegps/ImageUtils;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mRouteIcon:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lproject/listick/fakegps/ImageUtils;->convertDpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lproject/listick/fakegps/LocationMarker;->mFixedIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lproject/listick/fakegps/LocationMarker;->mFixedIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lproject/listick/fakegps/LocationMarker;->mRouteIcon:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mRouteIcon:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mFixedIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic lambda$setBearing$1$project-listick-fakegps-LocationMarker(Landroid/graphics/Matrix;)V
    .registers 9

    iget-object v0, p0, Lproject/listick/fakegps/LocationMarker;->mRouteIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lproject/listick/fakegps/LocationMarker;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method setBearing(F)V
    .registers 6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lproject/listick/fakegps/LocationMarker$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/LocationMarker;Landroid/graphics/Matrix;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setPosition(Lorg/osmdroid/util/GeoPoint;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/LocationMarker;->geoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method
