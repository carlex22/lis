.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field mIndex:I

.field private mSatellites:[Landroid/location/GpsSatellite;

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;[Landroid/location/GpsSatellite;)V
    .registers 3

    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Landroid/location/GpsSatellite;
    .registers 4

    :cond_0
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
