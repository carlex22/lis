.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mSatellites:[Landroid/location/GpsSatellite;

.field private mTimeToFirstFix:I


# direct methods
.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    new-instance v0, Landroid/location/GpsStatus$1;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Landroid/location/GpsSatellite;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Landroid/location/GpsSatellite;-><init>(I)V

    aput-object v2, v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/location/GpsStatus;)[Landroid/location/GpsSatellite;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    return-object p0
.end method


# virtual methods
.method public getMaxSatellites()I
    .registers 2

    const/16 v0, 0xff

    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getTimeToFirstFix()I
    .registers 2

    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method setStatus(I[I[F[F[FIII)V
    .registers 16

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroid/location/GpsSatellite;->mValid:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_5

    aget v2, p2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    shl-int v4, v3, v2

    if-ltz v2, :cond_4

    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget-object v2, v5, v2

    iput-boolean v3, v2, Landroid/location/GpsSatellite;->mValid:Z

    aget v5, p3, v1

    iput v5, v2, Landroid/location/GpsSatellite;->mSnr:F

    aget v5, p4, v1

    iput v5, v2, Landroid/location/GpsSatellite;->mElevation:F

    aget v5, p5, v1

    iput v5, v2, Landroid/location/GpsSatellite;->mAzimuth:F

    and-int v5, p6, v4

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    move v5, v0

    :goto_2
    iput-boolean v5, v2, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    and-int v5, p7, v4

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_3

    :cond_2
    move v5, v0

    :goto_3
    iput-boolean v5, v2, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    and-int/2addr v4, p8

    if-eqz v4, :cond_3

    goto :goto_4

    :cond_3
    move v3, v0

    :goto_4
    iput-boolean v3, v2, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .registers 5

    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    move-result v0

    iput v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/location/GpsStatus;->mSatellites:[Landroid/location/GpsSatellite;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setTimeToFirstFix(I)V
    .registers 2

    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return-void
.end method
