.class public final Lcom/google/android/material/color/utilities/PointProviderLab;
.super Ljava/lang/Object;
.source "PointProviderLab.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/PointProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public distance([D[D)D
    .registers 10

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-double/2addr v1, v3

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    aget-wide v5, p2, v0

    sub-double/2addr v3, v5

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    aget-wide p1, p2, v0

    sub-double/2addr v5, p1

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    return-wide v1
.end method

.method public fromInt(I)[D
    .registers 6

    invoke-static {p1}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    aget-wide v2, p1, v1

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public toInt([D)I
    .registers 9

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    invoke-static/range {v1 .. v6}, Lcom/google/android/material/color/utilities/ColorUtils;->argbFromLab(DDD)I

    move-result p1

    return p1
.end method
