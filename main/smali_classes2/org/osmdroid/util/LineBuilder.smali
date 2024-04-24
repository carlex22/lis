.class public abstract Lorg/osmdroid/util/LineBuilder;
.super Ljava/lang/Object;
.source "LineBuilder.java"

# interfaces
.implements Lorg/osmdroid/util/PointAccepter;


# instance fields
.field private mIndex:I

.field private final mLines:[F


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [F

    iput-object p1, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    return-void
.end method

.method private innerFlush()V
    .registers 2

    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/LineBuilder;->flush()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return-void
.end method


# virtual methods
.method public add(JJ)V
    .registers 8

    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    iget v1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    long-to-float p1, p1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    long-to-float p2, p3

    aput p2, v0, v2

    array-length p2, v0

    if-lt p1, p2, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    :cond_0
    return-void
.end method

.method public end()V
    .registers 1

    invoke-direct {p0}, Lorg/osmdroid/util/LineBuilder;->innerFlush()V

    return-void
.end method

.method public abstract flush()V
.end method

.method public getLines()[F
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/util/LineBuilder;->mLines:[F

    return-object v0
.end method

.method public getSize()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return v0
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/LineBuilder;->mIndex:I

    return-void
.end method
