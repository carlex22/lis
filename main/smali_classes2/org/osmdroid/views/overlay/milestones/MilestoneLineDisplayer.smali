.class public Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;
.super Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;
.source "MilestoneLineDisplayer.java"


# instance fields
.field private mFirst:Z

.field private final mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

.field private mPreviousX:J

.field private mPreviousY:J


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/osmdroid/views/overlay/milestones/MilestoneDisplayer;-><init>(DZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mFirst:Z

    new-instance v0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer$1;

    const/16 v1, 0x100

    invoke-direct {v0, p0, v1}, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer$1;-><init>(Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LineDrawer;->setPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic access$002(Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mFirst:Z

    return p1
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/milestones/MilestoneStep;)V
    .registers 10

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getX()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/milestones/MilestoneStep;->getY()J

    move-result-wide p1

    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mFirst:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mFirst:Z

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mPreviousX:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iget-wide v4, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mPreviousY:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    iget-wide v5, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mPreviousY:J

    invoke-virtual {v4, v2, v3, v5, v6}, Lorg/osmdroid/views/overlay/LineDrawer;->add(JJ)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v2, v0, v1, p1, p2}, Lorg/osmdroid/views/overlay/LineDrawer;->add(JJ)V

    :cond_2
    :goto_0
    iput-wide v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mPreviousX:J

    iput-wide p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mPreviousY:J

    return-void
.end method

.method public drawBegin(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LineDrawer;->init()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/LineDrawer;->setCanvas(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mFirst:Z

    return-void
.end method

.method public drawEnd(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p1, p0, Lorg/osmdroid/views/overlay/milestones/MilestoneLineDisplayer;->mLineDrawer:Lorg/osmdroid/views/overlay/LineDrawer;

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/LineDrawer;->end()V

    return-void
.end method
