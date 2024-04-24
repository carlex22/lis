.class public Lproject/listick/fakegps/RouteMarker;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "RouteMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/RouteMarker$Type;,
        Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;
    }
.end annotation


# instance fields
.field private point:Landroid/graphics/Point;

.field private position:Lorg/osmdroid/util/GeoPoint;

.field private type:Lproject/listick/fakegps/RouteMarker$Type;


# direct methods
.method public constructor <init>(Lproject/listick/fakegps/RouteMarker$Type;)V
    .registers 3

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/RouteMarker;->point:Landroid/graphics/Point;

    iput-object p1, p0, Lproject/listick/fakegps/RouteMarker;->type:Lproject/listick/fakegps/RouteMarker$Type;

    return-void
.end method

.method private getBitmapByType(Lproject/listick/fakegps/RouteMarker$Type;)Landroid/graphics/Bitmap;
    .registers 3

    sget-object v0, Lproject/listick/fakegps/RouteMarker$Type;->SOURCE:Lproject/listick/fakegps/RouteMarker$Type;

    if-ne p1, v0, :cond_0

    const p1, 0x7f08015e

    goto :goto_0

    :cond_0
    const p1, 0x7f0800a2

    :goto_0
    invoke-static {p1}, Lproject/listick/fakegps/ImageUtils;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private setSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .registers 6

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    iget-object p3, p0, Lproject/listick/fakegps/RouteMarker;->position:Lorg/osmdroid/util/GeoPoint;

    iget-object v0, p0, Lproject/listick/fakegps/RouteMarker;->point:Landroid/graphics/Point;

    invoke-virtual {p2, p3, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object p2, p0, Lproject/listick/fakegps/RouteMarker;->type:Lproject/listick/fakegps/RouteMarker$Type;

    invoke-direct {p0, p2}, Lproject/listick/fakegps/RouteMarker;->getBitmapByType(Lproject/listick/fakegps/RouteMarker$Type;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lproject/listick/fakegps/RouteMarker;->setSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p3, p0, Lproject/listick/fakegps/RouteMarker;->point:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget-object v0, p0, Lproject/listick/fakegps/RouteMarker;->point:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setPosition(DD)V
    .registers 6

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lproject/listick/fakegps/RouteMarker;->position:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method
