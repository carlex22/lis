.class public Lproject/listick/fakegps/Geometry$Speed;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Speed"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static kilometersToMeters(D)D
    .registers 4

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static kilometersToMiles(D)D
    .registers 4

    const-wide v0, 0x3ff9be76c8b43958L    # 1.609

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static metersToKilometers(D)D
    .registers 4

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public static milesToKilometers(D)D
    .registers 4

    const-wide v0, 0x3ff9be76c8b43958L    # 1.609

    mul-double/2addr p0, v0

    return-wide p0
.end method
