.class public final Landroid/location/Geofence;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Geofence;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_HORIZONTAL_CIRCLE:I = 0x1


# instance fields
.field private final mLatitude:D

.field private final mLongitude:D

.field private final mRadius:F

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/Geofence$1;

    invoke-direct {v0}, Landroid/location/Geofence$1;-><init>()V

    sput-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(DDF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Landroid/location/Geofence;->checkRadius(F)V

    invoke-static {p1, p2, p3, p4}, Landroid/location/Geofence;->checkLatLong(DD)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/location/Geofence;->mType:I

    iput-wide p1, p0, Landroid/location/Geofence;->mLatitude:D

    iput-wide p3, p0, Landroid/location/Geofence;->mLongitude:D

    iput p5, p0, Landroid/location/Geofence;->mRadius:F

    return-void
.end method

.method static synthetic access$000(I)V
    .registers 1

    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    return-void
.end method

.method private static checkLatLong(DD)V
    .registers 6

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_1

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpl-double p0, p2, p0

    if-gtz p0, :cond_0

    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p2, p0

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid longitude: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "invalid latitude: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static checkRadius(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid radius: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkType(I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createCircle(DDF)Landroid/location/Geofence;
    .registers 12

    new-instance v6, Landroid/location/Geofence;

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/location/Geofence;-><init>(DDF)V

    return-object v6
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Landroid/location/Geofence;->checkType(I)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "CIRCLE"

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Landroid/location/Geofence;

    if-nez v1, :cond_2

    return v0

    :cond_2
    check-cast p1, Landroid/location/Geofence;

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    iget v2, p1, Landroid/location/Geofence;->mRadius:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    return v0

    :cond_3
    iget-wide v1, p0, Landroid/location/Geofence;->mLatitude:D

    iget-wide v3, p1, Landroid/location/Geofence;->mLatitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iget-wide v1, p0, Landroid/location/Geofence;->mLongitude:D

    iget-wide v3, p1, Landroid/location/Geofence;->mLongitude:D

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget v1, p0, Landroid/location/Geofence;->mType:I

    iget p1, p1, Landroid/location/Geofence;->mType:I

    if-eq v1, p1, :cond_6

    return v0

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    return-wide v0
.end method

.method public getRadius()F
    .registers 2

    iget v0, p0, Landroid/location/Geofence;->mRadius:F

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/location/Geofence;->mType:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/location/Geofence;->mType:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/Geofence;->mType:I

    invoke-static {v1}, Landroid/location/Geofence;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/Geofence;->mRadius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Geofence[%s %.6f, %.6f %.0fm]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget p2, p0, Landroid/location/Geofence;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Geofence;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Geofence;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget p2, p0, Landroid/location/Geofence;->mRadius:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
