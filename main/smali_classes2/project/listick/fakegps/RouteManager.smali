.class public Lproject/listick/fakegps/RouteManager;
.super Ljava/lang/Object;
.source "RouteManager.java"


# static fields
.field public static routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLatestElement()I
    .registers 1

    sget-object v0, Lproject/listick/fakegps/RouteManager;->routes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private static segmentPoints(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;ILjava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "Lorg/osmdroid/util/GeoPoint;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    sub-int v4, v0, v1

    int-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v15

    new-instance v13, Lorg/osmdroid/util/GeoPoint;

    sub-double/2addr v6, v8

    mul-double/2addr v6, v4

    int-to-double v8, v0

    div-double/2addr v6, v8

    add-double v11, v2, v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v17

    sub-double v6, v6, v17

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    add-double/2addr v2, v4

    move-object v10, v13

    move-object v4, v13

    move-wide v13, v2

    invoke-direct/range {v10 .. v16}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    move-object/from16 v2, p3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static startMotion(Ljava/util/List;Ljava/util/ArrayList;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    new-array v3, v3, [F

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    move-object v13, v3

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v3, v3, v0

    float-to-int v3, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-static {v1, v4, v3, p1}, Lproject/listick/fakegps/RouteManager;->segmentPoints(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;ILjava/util/ArrayList;)V

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method
