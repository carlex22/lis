.class public final Lcom/google/android/material/color/utilities/TemperatureCache;
.super Ljava/lang/Object;
.source "TemperatureCache.java"


# instance fields
.field private final input:Lcom/google/android/material/color/utilities/Hct;

.field private precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

.field private precomputedHctsByHue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field private precomputedHctsByTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field private precomputedTempsByHct:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/utilities/Hct;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    return-void
.end method

.method private getColdest()Lcom/google/android/material/color/utilities/Hct;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method private getHctsByHue()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    :goto_0
    const-wide v3, 0x4076800000000000L    # 360.0

    cmpg-double v3, v1, v3

    if-gtz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v5

    iget-object v3, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v7

    move-wide v3, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByHue:Ljava/util/List;

    return-object v0
.end method

.method private getHctsByTemp()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/color/utilities/TemperatureCache;)V

    new-instance v2, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/TemperatureCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedHctsByTemp:Ljava/util/List;

    return-object v0
.end method

.method private getTempsByHct()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/material/color/utilities/Hct;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    invoke-static {v2}, Lcom/google/android/material/color/utilities/TemperatureCache;->rawTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedTempsByHct:Ljava/util/Map;

    return-object v1
.end method

.method private getWarmest()Lcom/google/android/material/color/utilities/Hct;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByTemp()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    return-object v0
.end method

.method private static isBetween(DDD)Z
    .registers 9

    cmpg-double v0, p2, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    cmpg-double p2, p2, p0

    if-gtz p2, :cond_0

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    cmpg-double p2, p2, p0

    if-lez p2, :cond_2

    cmpg-double p0, p0, p4

    if-gtz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public static rawTemperature(Lcom/google/android/material/color/utilities/Hct;)D
    .registers 8

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->labFromArgb(I)[D

    move-result-object p0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v1

    aget-wide v3, p0, v3

    aget-wide v5, p0, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    const-wide v5, 0x3ff11eb851eb851fL    # 1.07

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    add-double/2addr v3, v0

    return-wide v3
.end method


# virtual methods
.method public getAnalogousColors()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/TemperatureCache;->getAnalogousColors(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnalogousColors(II)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v4}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v12, v8

    move v11, v10

    :goto_0
    const/16 v14, 0x168

    if-ge v11, v14, :cond_0

    add-int v14, v3, v11

    invoke-static {v14}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v14}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v14

    sub-double v5, v14, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    add-double/2addr v12, v5

    add-int/lit8 v11, v11, 0x1

    move-wide v5, v14

    goto :goto_0

    :cond_0
    int-to-double v5, v2

    div-double/2addr v12, v5

    invoke-virtual {v0, v4}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v4

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v2, :cond_5

    add-int v15, v3, v11

    invoke-static {v15}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v6}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v16

    sub-double v4, v16, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v8, v4

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v12

    cmpl-double v4, v8, v4

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v10

    :goto_2
    const/4 v5, 0x1

    :goto_3
    if-eqz v4, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_3

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v5

    int-to-double v14, v4

    mul-double/2addr v14, v12

    cmpl-double v4, v8, v14

    if-ltz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    move v4, v10

    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/16 v14, 0x168

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x168

    if-le v11, v4, :cond_4

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_5

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    move v14, v4

    move-wide/from16 v4, v16

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x1

    :goto_6
    add-int/lit8 v5, v3, 0x1

    if-ge v4, v5, :cond_8

    rsub-int/lit8 v5, v4, 0x0

    :goto_7
    if-gez v5, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_7

    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v5, v6

    :cond_7
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v2, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    sub-int/2addr v1, v3

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    move v4, v3

    :goto_8
    add-int/lit8 v6, v1, 0x1

    if-ge v4, v6, :cond_b

    move v5, v4

    :goto_9
    if-gez v5, :cond_9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_9

    :cond_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v5, v6

    :cond_a
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/color/utilities/Hct;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_b
    return-object v2
.end method

.method public getComplement()Lcom/google/android/material/color/utilities/Hct;
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v14, v1, v10

    iget-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    move-wide v4, v8

    move-wide v6, v12

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/color/utilities/TemperatureCache;->isBetween(DDD)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide/from16 v16, v12

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v8

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide v8, v12

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/color/utilities/Hct;

    iget-object v2, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->input:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v0, v2}, Lcom/google/android/material/color/utilities/TemperatureCache;->getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D

    move-result-wide v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v18, v12, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/16 v4, 0x0

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    :goto_2
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpg-double v2, v22, v2

    if-gtz v2, :cond_5

    mul-double v2, v12, v22

    add-double v2, v16, v2

    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v24

    move-wide/from16 v2, v24

    move-wide/from16 v4, v16

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/color/utilities/TemperatureCache;->isBetween(DDD)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getHctsByHue()Ljava/util/List;

    move-result-object v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    sub-double/2addr v3, v10

    div-double/2addr v3, v14

    sub-double v3, v18, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v3, v20

    if-gez v5, :cond_4

    move-object v1, v2

    move-wide/from16 v20, v3

    :cond_4
    :goto_3
    add-double v22, v22, v12

    goto :goto_2

    :cond_5
    iput-object v1, v0, Lcom/google/android/material/color/utilities/TemperatureCache;->precomputedComplement:Lcom/google/android/material/color/utilities/Hct;

    return-object v1
.end method

.method public getRelativeTemperature(Lcom/google/android/material/color/utilities/Hct;)D
    .registers 8

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getWarmest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getColdest()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double p1, v0, v4

    if-nez p1, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0

    :cond_0
    div-double/2addr v2, v0

    return-wide v2
.end method

.method synthetic lambda$getHctsByTemp$0$com-google-android-material-color-utilities-TemperatureCache(Lcom/google/android/material/color/utilities/Hct;)Ljava/lang/Double;
    .registers 3

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getTempsByHct()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    return-object p1
.end method