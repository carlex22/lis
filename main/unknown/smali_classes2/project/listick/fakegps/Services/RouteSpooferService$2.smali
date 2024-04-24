.class Lproject/listick/fakegps/Services/RouteSpooferService$2;
.super Ljava/lang/Object;
.source "RouteSpooferService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Services/RouteSpooferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private arrayRunIndex:I

.field private arrayRunSpeed:I

.field private brakeSpeed:I

.field private isNeedBrake:Z

.field final synthetic this$0:Lproject/listick/fakegps/Services/RouteSpooferService;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/Services/RouteSpooferService;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    return-void
.end method

.method private addTrafficSideOffset(I)V
    .registers 27

    move-object/from16 v9, p0

    move/from16 v0, p1

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v19

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v21

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2700(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    const-wide/high16 v23, 0x4039000000000000L    # 25.0

    const-string v7, "\ndistance: "

    const-string v8, "bearing: "

    const-string v5, "Listick"

    if-nez v1, :cond_0

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-wide/from16 v10, v19

    move-wide/from16 v12, v21

    invoke-static/range {v10 .. v18}, Lproject/listick/fakegps/Geometry;->distance(DDDDI)D

    move-result-wide v10

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-object v9, v5

    move-wide v5, v12

    move-object v12, v7

    move-object v13, v8

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->getNewAngle(DDDD)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-double v7, v0, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide v5, v10

    invoke-direct/range {v0 .. v8}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->bearingDistance(DDDD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    move-object/from16 v9, p0

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto/16 :goto_0

    :cond_0
    move-object v12, v7

    move-object v13, v8

    move-object v7, v5

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2700(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v14

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v16

    const/16 v18, 0x1

    move-wide/from16 v10, v19

    move-object v8, v12

    move-object v5, v13

    move-wide/from16 v12, v21

    invoke-static/range {v10 .. v18}, Lproject/listick/fakegps/Geometry;->distance(DDDDI)D

    move-result-wide v10

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v12

    iget-object v1, v9, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide/from16 v3, v21

    move-object v9, v5

    move-wide v5, v12

    move-object v13, v7

    move-object v12, v8

    move-wide v7, v14

    invoke-virtual/range {v0 .. v8}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->getNewAngle(DDDD)D

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sub-double v7, v0, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-wide v5, v10

    invoke-direct/range {v0 .. v8}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->bearingDistance(DDDD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v2, v1, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v9

    :goto_1
    return-void
.end method

.method private bearingDistance(DDDD)Lorg/osmdroid/util/GeoPoint;
    .registers 15

    invoke-virtual {p0, p1, p2}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->toRad(D)D

    move-result-wide p1

    invoke-virtual {p0, p3, p4}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->toRad(D)D

    move-result-wide p3

    const-wide v0, 0x40b8e30000000000L    # 6371.0

    div-double/2addr p5, v0

    invoke-virtual {p0, p7, p8}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->toRad(D)D

    move-result-wide p7

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p7, p8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    invoke-static {p7, p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide p7

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr p7, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr p7, v2

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    sub-double/2addr p5, p1

    invoke-static {p7, p8, p5, p6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    add-double/2addr p3, p1

    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0, v0, v1}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->toDeg(D)D

    move-result-wide p5

    invoke-virtual {p0, p3, p4}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->toDeg(D)D

    move-result-wide p2

    invoke-direct {p1, p5, p6, p2, p3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p1
.end method

.method private deviate(F)V
    .registers 5

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Lproject/listick/fakegps/LocationOperations;->deviate(Lorg/osmdroid/util/GeoPoint;F)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-void
.end method

.method private makeBrakeAtTurning()V
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget v2, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v2, v4, :cond_0

    iget-object v2, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_0
    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_1

    iget-object v1, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :cond_1
    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    iget-object v2, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v13

    iget-object v2, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v15

    invoke-static/range {v5 .. v16}, Lproject/listick/fakegps/Geometry;->getAngle(DDDDDD)D

    move-result-wide v1

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v1, v4

    iget-object v4, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$800(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v1

    double-to-int v1, v4

    iput v1, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->brakeSpeed:I

    iput-boolean v3, v0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->isNeedBrake:Z

    return-void
.end method

.method private onMockArrived(FF)Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;
    .registers 14

    new-instance v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;

    invoke-direct {v0}, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;-><init>()V

    iget v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    iput-boolean v3, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->arrived:Z

    :cond_0
    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$400(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    iget v6, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    iget v8, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2600(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v10

    invoke-static/range {v2 .. v10}, Lproject/listick/fakegps/Geometry;->distance(DDDDI)D

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2018(Lproject/listick/fakegps/Services/RouteSpooferService;D)D

    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2000(Lproject/listick/fakegps/Services/RouteSpooferService;)D

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->updateUI(FD)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2000(Lproject/listick/fakegps/Services/RouteSpooferService;)D

    move-result-wide v1

    const/4 p2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->updateUI(FD)V

    :goto_0
    iput p1, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->speed:F

    const/4 p1, 0x0

    iput-boolean p1, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->arrived:Z

    return-object v0
.end method

.method private setMockLocation(FFFF)V
    .registers 15

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2100(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move v5, p2

    move v6, p3

    move v7, p4

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move v5, p3

    move v6, p1

    move v7, p2

    move v8, p4

    invoke-static/range {v1 .. v8}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider(DDFFFF)V

    invoke-static/range {v1 .. v8}, Lproject/listick/fakegps/MockLocProvider;->setGpsProvider1(DDFFFF)V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2200(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object v1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    move v6, p2

    move v7, p3

    move v8, p1

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Lproject/listick/fakegps/FusedLocationsProvider;->build(DDFFFF)Landroid/location/Location;

    move-result-object p1

    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2200(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/FusedLocationsProvider;

    move-result-object p2

    invoke-virtual {p2, p1}, Lproject/listick/fakegps/FusedLocationsProvider;->spoof(Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2300(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    move v5, p2

    move v6, p3

    move v7, p1

    move v8, p4

    invoke-static/range {v1 .. v8}, Lproject/listick/fakegps/MockLocProvider;->reportLocation(DDFFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUI(FD)V
    .registers 6

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2600(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v0

    if-nez v0, :cond_0

    float-to-double v0, p1

    invoke-static {v0, v1}, Lproject/listick/fakegps/Geometry$Speed;->kilometersToMeters(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p1, p1

    invoke-static {p2, p3}, Lproject/listick/fakegps/Geometry$Speed;->kilometersToMeters(D)D

    move-result-wide p2

    :goto_0
    double-to-int p2, p2

    int-to-double p2, p2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2600(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    float-to-double v0, p1

    invoke-static {v0, v1}, Lproject/listick/fakegps/Geometry$Speed;->kilometersToMiles(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-float p1, p1

    invoke-static {p2, p3}, Lproject/listick/fakegps/Geometry$Speed;->kilometersToMiles(D)D

    move-result-wide p2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2800(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ui_passed_distance"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    iget-object p2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2800(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "ui_speed_key"

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {p1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2800(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lproject/listick/fakegps/Services/RouteSpooferService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getNewAngle(DDDD)D
    .registers 13

    sub-double/2addr p7, p3

    invoke-static {p7, p8}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p3, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {p5, p6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    invoke-static {p5, p6}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    invoke-static {p7, p8}, Ljava/lang/Math;->cos(D)D

    move-result-wide p5

    mul-double/2addr p1, p5

    sub-double/2addr v0, p1

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public replaceRouteSlice()V
    .registers 5

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1400(Lproject/listick/fakegps/Services/RouteSpooferService;)[Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1304(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$202(Lproject/listick/fakegps/Services/RouteSpooferService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$700(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1300(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getSpeed()I

    move-result v2

    invoke-static {v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$802(Lproject/listick/fakegps/Services/RouteSpooferService;I)I

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getSpeedDiff()I

    move-result v2

    invoke-static {v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$902(Lproject/listick/fakegps/Services/RouteSpooferService;I)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSpeed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$800(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSpeedDiff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$900(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultipleRoutesInfo"

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getElevation()F

    move-result v3

    invoke-static {v1, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1802(Lproject/listick/fakegps/Services/RouteSpooferService;F)F

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getElevationDiff()F

    move-result v3

    invoke-static {v1, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1902(Lproject/listick/fakegps/Services/RouteSpooferService;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "mElevation: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1800(Lproject/listick/fakegps/Services/RouteSpooferService;)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mElevationDiff: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1900(Lproject/listick/fakegps/Services/RouteSpooferService;)F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sleeping ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getStartingPauseTime()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getStartingPauseTime()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    const/4 v0, 0x0

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    iput v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iput-boolean v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->isNeedBrake:Z

    const-string v0, "Route slice changed"

    return-void
.end method

.method public run()V
    .registers 15

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1000(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/Randomizer;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$800(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$900(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lproject/listick/fakegps/Randomizer;->getRandomSpeed(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1000(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/Randomizer;

    move-result-object v2

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1100(Lproject/listick/fakegps/Services/RouteSpooferService;)F

    move-result v3

    invoke-virtual {v2, v3}, Lproject/listick/fakegps/Randomizer;->getAccuracy(F)F

    move-result v2

    iget-boolean v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->isNeedBrake:Z

    if-eqz v3, :cond_0

    iget v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->brakeSpeed:I

    int-to-float v0, v0

    :cond_0
    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1000(Lproject/listick/fakegps/Services/RouteSpooferService;)Lproject/listick/fakegps/Randomizer;

    move-result-object v3

    float-to-int v4, v0

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1200(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lproject/listick/fakegps/Randomizer;->getArrayRunSpeed(II)I

    move-result v3

    iput v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$400(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    add-int/2addr v3, v4

    iput v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    :cond_2
    iget v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget-object v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1300(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v3

    iget-object v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1400(Lproject/listick/fakegps/Services/RouteSpooferService;)[Ljava/util/ArrayList;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    invoke-virtual {p0}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->replaceRouteSlice()V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$300(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1200(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v3, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$900(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v3

    if-eqz v3, :cond_4

    float-to-double v3, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$900(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :cond_4
    invoke-direct {p0, v0, v2}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->onMockArrived(FF)Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;

    move-result-object v0

    iget v3, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->speed:F

    iget-object v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    iget-object v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v4}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;->setAltitude(D)V

    iget v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    add-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_5

    iget v4, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    :cond_5
    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v6

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$100(Lproject/listick/fakegps/Services/RouteSpooferService;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v5

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v8

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v10

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$200(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lproject/listick/fakegps/Geometry;->getAzimuth(DDDD)D

    move-result-wide v5

    double-to-float v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bearing: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Randomize"

    iget-boolean v6, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->arrived:Z

    if-eqz v6, :cond_6

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v5, v6, v7, v8}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v5

    double-to-float v1, v5

    iget-object v5, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v5}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1500(Lproject/listick/fakegps/Services/RouteSpooferService;)F

    move-result v5

    add-float/2addr v5, v1

    iget-wide v6, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->altitude:D

    double-to-float v1, v6

    :cond_6
    iget-object v6, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v6}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1600(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->makeBrakeAtTurning()V

    :cond_7
    iget-boolean v0, v0, Lproject/listick/fakegps/Services/RouteSpooferService$FakeRouteInfo;->arrived:Z

    if-nez v0, :cond_8

    invoke-direct {p0, v4}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->addTrafficSideOffset(I)V

    float-to-double v0, v1

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ThreadLocalRandom;->nextDouble(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    double-to-float v1, v0

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, v3, v0

    if-nez v0, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v4, v6

    add-float/2addr v5, v4

    invoke-direct {p0, v3, v2, v5, v1}, Lproject/listick/fakegps/Services/RouteSpooferService$2;->setMockLocation(FFFF)V

    if-nez v0, :cond_a

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1700(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$700(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1700(Lproject/listick/fakegps/Services/RouteSpooferService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$000(Lproject/listick/fakegps/Services/RouteSpooferService;Ljava/util/List;Z)V

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$700(Lproject/listick/fakegps/Services/RouteSpooferService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getSpeed()I

    move-result v3

    invoke-static {v2, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$802(Lproject/listick/fakegps/Services/RouteSpooferService;I)I

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getSpeedDiff()I

    move-result v3

    invoke-static {v2, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$902(Lproject/listick/fakegps/Services/RouteSpooferService;I)I

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getElevation()F

    move-result v3

    invoke-static {v2, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1802(Lproject/listick/fakegps/Services/RouteSpooferService;F)F

    iget-object v2, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-virtual {v0}, Lproject/listick/fakegps/MultipleRoutesInfo;->getElevationDiff()F

    move-result v0

    invoke-static {v2, v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1902(Lproject/listick/fakegps/Services/RouteSpooferService;F)F

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$2002(Lproject/listick/fakegps/Services/RouteSpooferService;D)D

    iput v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunSpeed:I

    iput v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->arrayRunIndex:I

    iput-boolean v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->isNeedBrake:Z

    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$300(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1200(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_a
    iget-object v0, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v0}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$300(Lproject/listick/fakegps/Services/RouteSpooferService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lproject/listick/fakegps/Services/RouteSpooferService$2;->this$0:Lproject/listick/fakegps/Services/RouteSpooferService;

    invoke-static {v1}, Lproject/listick/fakegps/Services/RouteSpooferService;->access$1200(Lproject/listick/fakegps/Services/RouteSpooferService;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_0
    return-void
.end method

.method toDeg(D)D
    .registers 5

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    return-wide p1
.end method

.method toRad(D)D
    .registers 5

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    return-wide p1
.end method
