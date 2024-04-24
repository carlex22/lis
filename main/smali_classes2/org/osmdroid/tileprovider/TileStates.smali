.class public Lorg/osmdroid/tileprovider/TileStates;
.super Ljava/lang/Object;
.source "TileStates.java"


# instance fields
.field private mDone:Z

.field private mExpired:I

.field private mNotFound:I

.field private mRunAfters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScaled:I

.field private mTotal:I

.field private mUpToDate:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getExpired()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    return v0
.end method

.method public getNotFound()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return v0
.end method

.method public getRunAfters()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mRunAfters:Ljava/util/Collection;

    return-object v0
.end method

.method public getScaled()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    return v0
.end method

.method public getTotal()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    return v0
.end method

.method public getUpToDate()I
    .registers 2

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    return v0
.end method

.method public handleTile(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/osmdroid/tileprovider/ExpirableBitmapDrawable;->getState(Landroid/graphics/drawable/Drawable;)I

    move-result p1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    goto :goto_0

    :cond_4
    iget p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    :goto_0
    return-void
.end method

.method public initialiseLoop()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    iput v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    return-void
.end method

.method public isDone()Z
    .registers 2

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lorg/osmdroid/tileprovider/TileStates;->mDone:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TileStates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mUpToDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(U) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mExpired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(E) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mScaled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(S) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/osmdroid/tileprovider/TileStates;->mNotFound:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(N)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "TileStates"

    return-object v0
.end method
