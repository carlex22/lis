.class public abstract Lorg/osmdroid/views/overlay/milestones/MilestoneLister;
.super Ljava/lang/Object;
.source "MilestoneLister.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mDistances:[D

.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private final mMilestones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    return-void
.end method

.method public static getOrientation(JJJJ)D
    .registers 9

    cmp-long v0, p0, p4

    if-nez v0, :cond_2

    cmp-long p0, p2, p6

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    if-lez p0, :cond_1

    const-wide p0, -0x3fa9800000000000L    # -90.0

    return-wide p0

    :cond_1
    const-wide p0, 0x4056800000000000L    # 90.0

    return-wide p0

    :cond_2
    sub-long/2addr p6, p2

    long-to-double p2, p6

    sub-long p6, p4, p0

    long-to-double p6, p6

    div-double/2addr p2, p6

    cmp-long p0, p4, p0

    const/4 p1, 0x0

    if-gez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    move p0, p1

    :goto_0
    const-wide p4, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    invoke-static {p2, p3}, Ljava/lang/Math;->atan(D)D

    move-result-wide p2

    mul-double/2addr p2, p4

    if-eqz p0, :cond_4

    const/16 p1, 0xb4

    :cond_4
    int-to-double p0, p1

    add-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public add(JJ)V
    .registers 15

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v0, Lorg/osmdroid/util/PointL;->y:J

    move-object v1, p0

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v1 .. v9}, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->add(JJJJ)V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    :goto_0
    return-void
.end method

.method protected abstract add(JJJJ)V
.end method

.method protected add(Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V
    .registers 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public end()V
    .registers 1

    return-void
.end method

.method protected getDistance(I)D
    .registers 5

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mDistances:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getMilestones()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/milestones/MilestoneStep;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    return-object v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mMilestones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mFirst:Z

    return-void
.end method

.method public setDistances([D)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLister;->mDistances:[D

    return-void
.end method
