.class Lproject/listick/fakegps/Services/FixedSpooferService$2;
.super Ljava/lang/Object;
.source "FixedSpooferService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Services/FixedSpooferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/Services/FixedSpooferService;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Services/FixedSpooferService;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private deviate()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lproject/listick/fakegps/LocationOperations;->deviate(Lorg/osmdroid/util/GeoPoint;F)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-void
.end method

.method private setMockLocation(Lorg/osmdroid/util/GeoPoint;FFFF)V
    .registers 19

    move-object v0, p0

    iget-object v1, v0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$1100(Lproject/listick/fakegps/Services/FixedSpooferService;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move/from16 v6, p4

    move/from16 v7, p5

    move v8, p2

    move/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider(DDFFFF)V

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider1(DDFFFF)V

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    move v10, p2

    move/from16 v11, p4

    move/from16 v12, p3

    iget-object v1, v0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$1200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    move v7, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lproject/listick/fakegps/FusedLocationsProvider;->build(DDFFFF)Landroid/location/Location;

    move-result-object v1

    iget-object v2, v0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$1200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lproject/listick/fakegps/FusedLocationsProvider;->spoof(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$1300(Lproject/listick/fakegps/Services/FixedSpooferService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p3

    invoke-static/range {v2 .. v9}, Lproject/listick/fakegps/MockLocProvider;->reportLocation(DDFFFF)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$300(Lproject/listick/fakegps/Services/FixedSpooferService;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lproject/listick/fakegps/Services/FixedSpooferService$2;->deviate()V

    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/high16 v1, -0x3fec000000000000L    # -5.0

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$500(Lproject/listick/fakegps/Services/FixedSpooferService;)F

    move-result v2

    invoke-static {v1, v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$402(Lproject/listick/fakegps/Services/FixedSpooferService;F)F

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1, v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$416(Lproject/listick/fakegps/Services/FixedSpooferService;F)F

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$600(Lproject/listick/fakegps/Services/FixedSpooferService;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-float v5, v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    double-to-float v7, v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$800(Lproject/listick/fakegps/Services/FixedSpooferService;)F

    move-result v2

    add-float/2addr v2, v0

    invoke-static {v1, v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$702(Lproject/listick/fakegps/Services/FixedSpooferService;F)F

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$200(Lproject/listick/fakegps/Services/FixedSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v3

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$700(Lproject/listick/fakegps/Services/FixedSpooferService;)F

    move-result v4

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$400(Lproject/listick/fakegps/Services/FixedSpooferService;)F

    move-result v0

    float-to-double v0, v0

    double-to-float v6, v0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lproject/listick/fakegps/Services/FixedSpooferService$2;->setMockLocation(Lorg/osmdroid/util/GeoPoint;FFFF)V

    iget-object v0, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$1000(Lproject/listick/fakegps/Services/FixedSpooferService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$900(Lproject/listick/fakegps/Services/FixedSpooferService;)I

    move-result v2

    const/16 v3, 0x0

    if-le v2, v3, :cond_1

    iget-object v2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$900(Lproject/listick/fakegps/Services/FixedSpooferService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$900(Lproject/listick/fakegps/Services/FixedSpooferService;)I

    move-result v2

    :goto_0
    int-to-long v2, v2

    iget-object v4, p0, Lproject/listick/fakegps/Services/FixedSpooferService$2;->this$0:Lproject/listick/fakegps/Services/FixedSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/FixedSpooferService;->access$900(Lproject/listick/fakegps/Services/FixedSpooferService;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
