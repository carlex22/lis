.class public Lorg/osmdroid/util/SideOptimizationPointAccepter;
.super Ljava/lang/Object;
.source "SideOptimizationPointAccepter.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# static fields
.field private static final STATUS_DIFFERENT:I = 0x0

.field private static final STATUS_SAME_X:I = 0x1

.field private static final STATUS_SAME_Y:I = 0x2


# instance fields
.field private mFirst:Z

.field private final mLatestPoint:Lorg/osmdroid/util/PointL;

.field private mMax:J

.field private mMin:J

.field private final mPointAccepter:Lorg/osmdroid/util/PointAccepter;

.field private final mStartPoint:Lorg/osmdroid/util/PointL;

.field private mStatus:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/util/PointAccepter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iput-object p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    return-void
.end method

.method private addToAccepter(JJ)V
    .registers 6

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointAccepter;->add(JJ)V

    return-void
.end method

.method private flushSides()V
    .registers 9

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->x:J

    :goto_0
    iget-wide v6, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v2, v6, v2

    if-gez v2, :cond_2

    invoke-direct {p0, v6, v7, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_2
    iget-wide v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_3
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->x:J

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5

    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    iget-object v4, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-wide v4, v4, Lorg/osmdroid/util/PointL;->y:J

    :goto_1
    iget-wide v6, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v2, v6, v2

    if-gez v2, :cond_6

    invoke-direct {p0, v0, v1, v6, v7}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_6
    iget-wide v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_7

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_7
    iget-object v2, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v2, v2, Lorg/osmdroid/util/PointL;->y:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .registers 7

    iget-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_4

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v0, p3

    if-lez v0, :cond_2

    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    :cond_2
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_8

    iput-wide p3, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->y:J

    cmp-long v0, v0, p3

    if-nez v0, :cond_7

    iget v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_5

    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    :cond_5
    iget-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_8

    iput-wide p1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iput v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStartPoint:Lorg/osmdroid/util/PointL;

    iget-object v1, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMin:J

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    iget-wide v0, v0, Lorg/osmdroid/util/PointL;->x:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mMax:J

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->addToAccepter(JJ)V

    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mLatestPoint:Lorg/osmdroid/util/PointL;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/PointL;->set(JJ)V

    return-void
.end method

.method public end()V
    .registers 2

    invoke-direct {p0}, Lorg/osmdroid/util/SideOptimizationPointAccepter;->flushSides()V

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->end()V

    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mFirst:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mStatus:I

    iget-object v0, p0, Lorg/osmdroid/util/SideOptimizationPointAccepter;->mPointAccepter:Lorg/osmdroid/util/PointAccepter;

    invoke-interface {v0}, Lorg/osmdroid/util/PointAccepter;->init()V

    return-void
.end method
