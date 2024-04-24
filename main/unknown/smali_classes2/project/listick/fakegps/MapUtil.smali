.class public Lproject/listick/fakegps/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field public static pointsBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPolylines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Polyline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lproject/listick/fakegps/MapUtil;->sPolylines:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static douglasPeucker(Ljava/util/List;IID)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;IID)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double/2addr v7, v5

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v1, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v15

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v17

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v19

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v21

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v12}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v23

    invoke-static/range {v13 .. v24}, Lproject/listick/fakegps/Geometry;->perpendicularDistance(DDDDDD)D

    move-result-wide v12

    cmpl-double v14, v12, v10

    if-lez v14, :cond_0

    move v9, v6

    move-wide v10, v12

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    cmpl-double v6, v10, v7

    if-lez v6, :cond_2

    invoke-static {v0, v1, v9, v3, v4}, Lproject/listick/fakegps/MapUtil;->douglasPeucker(Ljava/util/List;IID)V

    invoke-static {v0, v9, v2, v3, v4}, Lproject/listick/fakegps/MapUtil;->douglasPeucker(Ljava/util/List;IID)V

    goto :goto_1

    :cond_2
    sub-int v2, v5, v1

    if-lez v2, :cond_3

    sget-object v2, Lproject/listick/fakegps/MapUtil;->resultList:Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lproject/listick/fakegps/MapUtil;->resultList:Ljava/util/ArrayList;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v2, Lproject/listick/fakegps/MapUtil;->resultList:Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public static drawPath(Lorg/osmdroid/views/MapView;Ljava/util/List;)D
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)D"
        }
    .end annotation

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0604e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lproject/listick/fakegps/ImageUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Lorg/osmdroid/views/overlay/Polyline;

    invoke-direct {v2}, Lorg/osmdroid/views/overlay/Polyline;-><init>()V

    sget-object v3, Lproject/listick/fakegps/MapUtil;->sPolylines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Lorg/osmdroid/views/overlay/Polyline;->setPoints(Ljava/util/List;)V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Polyline;->getDistance()D

    move-result-wide p0

    return-wide p0
.end method

.method public static optimizePoly(D)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lproject/listick/fakegps/MapUtil;->resultList:Ljava/util/ArrayList;

    sget-object v0, Lproject/listick/fakegps/MapUtil;->pointsBackup:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v1, v2, p0, p1}, Lproject/listick/fakegps/MapUtil;->douglasPeucker(Ljava/util/List;IID)V

    sget-object p0, Lproject/listick/fakegps/MapUtil;->resultList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static parseCoordinates(Ljava/lang/String;)Lorg/osmdroid/util/GeoPoint;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "[,\\s]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double p0, v0, v4

    if-ltz p0, :cond_1

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double p0, v0, v4

    if-gtz p0, :cond_1

    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double p0, v2, v4

    if-ltz p0, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double p0, v2, v4

    if-gtz p0, :cond_0

    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120068

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lproject/listick/fakegps/FakeGPSApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120067

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeLatestRoute(Lorg/osmdroid/views/MapView;)V
    .registers 4

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lproject/listick/fakegps/MapUtil;->sPolylines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->invalidate()V

    return-void
.end method
