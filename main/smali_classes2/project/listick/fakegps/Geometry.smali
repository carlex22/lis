.class public Lproject/listick/fakegps/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/Geometry$Distance;,
        Lproject/listick/fakegps/Geometry$Unit;,
        Lproject/listick/fakegps/Geometry$Speed;,
        Lproject/listick/fakegps/Geometry$UnitCast;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAirPressure(F)D
    .registers 5

    const/4 v0, 0x0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, -0x402dd23a3bc0ee6eL    # -0.28404373326

    mul-double/2addr v2, v0

    const-wide v0, 0x40a2b78ae8e1d649L    # 2395.771308

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x40f8bcd000000000L    # 101325.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static cast(Lproject/listick/fakegps/Geometry$Unit;IID)D
    .registers 6

    sget-object v0, Lproject/listick/fakegps/Geometry$Unit;->SPEED:Lproject/listick/fakegps/Geometry$Unit;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    invoke-static {p3, p4}, Lproject/listick/fakegps/Geometry$Speed;->kilometersToMeters(D)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p3
.end method

.method public static distance(DDDDI)D
    .registers 11

    cmpl-double v0, p0, p4

    if-nez v0, :cond_0

    cmpl-double v0, p2, p6

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    sub-double/2addr p2, p6

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p6, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr p6, p0

    invoke-static {p6, p7}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, p2

    const-wide p2, 0x3ff26c8b43958106L    # 1.1515

    mul-double/2addr p0, p2

    const-wide p2, 0x3ff9bfdf7e8038a0L    # 1.609344

    mul-double/2addr p0, p2

    if-nez p8, :cond_1

    invoke-static {p0, p1}, Lproject/listick/fakegps/Geometry$Distance;->kilometersToMeters(D)D

    move-result-wide p0

    :cond_1
    const/4 p2, 0x2

    if-ne p8, p2, :cond_2

    invoke-static {p0, p1}, Lproject/listick/fakegps/Geometry$Distance;->kilometersToMiles(D)D

    move-result-wide p0

    :cond_2
    return-wide p0
.end method

.method private static distanceBetweenPoints(DDDD)D
    .registers 8

    sub-double/2addr p0, p4

    invoke-static {p0, p1}, Lproject/listick/fakegps/Geometry;->sqr(D)D

    move-result-wide p0

    sub-double/2addr p2, p6

    invoke-static {p2, p3}, Lproject/listick/fakegps/Geometry;->sqr(D)D

    move-result-wide p2

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static distanceToSegmentSquared(DDDDDD)D
    .registers 24

    invoke-static/range {p4 .. p11}, Lproject/listick/fakegps/Geometry;->distanceBetweenPoints(DDDD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    invoke-static/range {p0 .. p7}, Lproject/listick/fakegps/Geometry;->distanceBetweenPoints(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    sub-double v4, p0, p4

    sub-double v6, p8, p4

    mul-double/2addr v4, v6

    sub-double v8, p2, p6

    sub-double v10, p10, p6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    div-double/2addr v4, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_1

    invoke-static/range {p0 .. p7}, Lproject/listick/fakegps/Geometry;->distanceBetweenPoints(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_2

    move-wide v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/Geometry;->distanceBetweenPoints(DDDD)D

    move-result-wide v0

    return-wide v0

    :cond_2
    mul-double/2addr v6, v4

    add-double v0, p4, v6

    mul-double/2addr v4, v10

    add-double v2, p6, v4

    move-wide/from16 p4, p0

    move-wide/from16 p6, p2

    move-wide/from16 p8, v0

    move-wide/from16 p10, v2

    invoke-static/range {p4 .. p11}, Lproject/listick/fakegps/Geometry;->distanceBetweenPoints(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getAngle(DDDDDD)D
    .registers 22

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    invoke-static/range {v0 .. v7}, Lproject/listick/fakegps/Geometry;->getAzimuth(DDDD)D

    move-result-wide v0

    move-wide/from16 v2, p8

    move-wide/from16 v4, p10

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/Geometry;->getAzimuth(DDDD)D

    move-result-wide v2

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v0, v4, v0

    :cond_0
    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public static getAzimuth(DDDD)D
    .registers 8

    sub-double/2addr p4, p0

    sub-double/2addr p6, p2

    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, p2

    const-wide p2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, p2

    return-wide p0
.end method

.method static perpendicularDistance(DDDDDD)D
    .registers 12

    invoke-static/range {p0 .. p11}, Lproject/listick/fakegps/Geometry;->distanceToSegmentSquared(DDDDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static sqr(D)D
    .registers 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    return-wide p0
.end method
