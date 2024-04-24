.class public Lorg/osmdroid/views/overlay/Polyline;
.super Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.source "Polyline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polyline$OnClickListener;
    }
.end annotation


# instance fields
.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;ZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method protected click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-nez v0, :cond_0

    invoke-virtual {p0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result p1

    return p1
.end method

.method public getColor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDistance()D
    .registers 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->getActualPoints()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWidth()F
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .registers 4

    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .registers 2

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    return-void
.end method

.method public setColor(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    return-void
.end method

.method public setWidth(F)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
