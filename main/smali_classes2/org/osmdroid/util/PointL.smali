.class public Lorg/osmdroid/util/PointL;
.super Ljava/lang/Object;
.source "PointL.java"


# instance fields
.field public x:J

.field public y:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/osmdroid/util/PointL;->x:J

    iput-wide p3, p0, Lorg/osmdroid/util/PointL;->y:J

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/PointL;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/PointL;->set(Lorg/osmdroid/util/PointL;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/osmdroid/util/PointL;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/osmdroid/util/PointL;

    iget-wide v3, p0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v5, p1, Lorg/osmdroid/util/PointL;->x:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lorg/osmdroid/util/PointL;->y:J

    iget-wide v5, p1, Lorg/osmdroid/util/PointL;->y:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final offset(JJ)V
    .registers 7

    iget-wide v0, p0, Lorg/osmdroid/util/PointL;->x:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide p1, p0, Lorg/osmdroid/util/PointL;->y:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/osmdroid/util/PointL;->y:J

    return-void
.end method

.method public set(JJ)V
    .registers 5

    iput-wide p1, p0, Lorg/osmdroid/util/PointL;->x:J

    iput-wide p3, p0, Lorg/osmdroid/util/PointL;->y:J

    return-void
.end method

.method public set(Lorg/osmdroid/util/PointL;)V
    .registers 4

    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->x:J

    iput-wide v0, p0, Lorg/osmdroid/util/PointL;->x:J

    iget-wide v0, p1, Lorg/osmdroid/util/PointL;->y:J

    iput-wide v0, p0, Lorg/osmdroid/util/PointL;->y:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointL("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/osmdroid/util/PointL;->x:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/osmdroid/util/PointL;->y:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
