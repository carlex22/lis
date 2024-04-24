.class public Lproject/listick/fakegps/Randomizer;
.super Ljava/lang/Object;
.source "Randomizer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccuracy(F)F
    .registers 7

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    float-to-double v2, p1

    add-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method

.method public getArrayRunSpeed(II)I
    .registers 5

    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_0

    mul-int/2addr p1, v0

    div-int/2addr p2, v0

    mul-int/lit16 p2, p2, 0xe10

    div-int/2addr p1, p2

    return p1

    :cond_0
    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p2, v0

    const/high16 v1, 0x45610000    # 3600.0f

    div-float/2addr v1, p2

    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    float-to-int p1, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public getElevation(FF)F
    .registers 6

    sub-float v0, p1, p2

    add-float/2addr p1, p2

    sub-float/2addr p1, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v1, p1

    double-to-int p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v0

    return p1
.end method

.method public getRandomSpeed(II)I
    .registers 6

    sub-int v0, p1, p2

    int-to-float v0, v0

    add-int/2addr p1, p2

    int-to-float p1, p1

    sub-float/2addr p1, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v1, p1

    float-to-double p1, v0

    add-double/2addr v1, p1

    double-to-int p1, v1

    return p1
.end method
