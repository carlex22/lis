.class public Lproject/listick/fakegps/MultipleRoutesInfo;
.super Ljava/lang/Object;
.source "MultipleRoutesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lproject/listick/fakegps/MultipleRoutesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mDistance:D

.field private mElevation:F

.field private mElevationDiff:F

.field private mPauseSeconds:I

.field private mRoute:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeed:I

.field private mSpeedDiff:I

.field private mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

.field private final originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lproject/listick/fakegps/MultipleRoutesInfo$1;

    invoke-direct {v0}, Lproject/listick/fakegps/MultipleRoutesInfo$1;-><init>()V

    sput-object v0, Lproject/listick/fakegps/MultipleRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    invoke-direct {v0}, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    const/4 v0, -0x1

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    invoke-direct {v0}, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;-><init>()V

    iput-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    const/4 v0, -0x1

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mDistance:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    iput-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mDistance:D

    return-wide v0
.end method

.method public getElevation()F
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    return v0
.end method

.method public getElevationDiff()F
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    return v0
.end method

.method public getRoute()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRouteMarker(Landroid/content/Context;)Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;
    .registers 7

    new-instance p1, Lproject/listick/fakegps/RouteMarker;

    sget-object v0, Lproject/listick/fakegps/RouteMarker$Type;->SOURCE:Lproject/listick/fakegps/RouteMarker$Type;

    invoke-direct {p1, v0}, Lproject/listick/fakegps/RouteMarker;-><init>(Lproject/listick/fakegps/RouteMarker$Type;)V

    iget-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    iget-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v2, v3, v0, v1}, Lproject/listick/fakegps/RouteMarker;->setPosition(DD)V

    new-instance v0, Lproject/listick/fakegps/RouteMarker;

    sget-object v1, Lproject/listick/fakegps/RouteMarker$Type;->DEST:Lproject/listick/fakegps/RouteMarker$Type;

    invoke-direct {v0, v1}, Lproject/listick/fakegps/RouteMarker;-><init>(Lproject/listick/fakegps/RouteMarker$Type;)V

    iget-object v1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v3}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lproject/listick/fakegps/RouteMarker;->setPosition(DD)V

    iget-object v1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    iput-object p1, v1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->origin:Lproject/listick/fakegps/RouteMarker;

    iget-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    iput-object v0, p1, Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;->dest:Lproject/listick/fakegps/RouteMarker;

    iget-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->originAndDestMarkers:Lproject/listick/fakegps/RouteMarker$OriginAndDestMarker;

    return-object p1
.end method

.method public getSpeed()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    return v0
.end method

.method public getSpeedDiff()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    return v0
.end method

.method public getStartingPauseTime()I
    .registers 2

    iget v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    return v0
.end method

.method public getTransport()Lproject/listick/fakegps/Enumerations/ERouteTransport;
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setDistance(D)V
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mDistance:D

    return-void
.end method

.method public setElevation(F)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    return-void
.end method

.method public setElevationDiff(F)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    return-void
.end method

.method public setRoute(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    return-void
.end method

.method public setSpeed(I)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    return-void
.end method

.method public setSpeedDiff(I)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    return-void
.end method

.method public setStartingPauseTime(I)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    return-void
.end method

.method public setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mRoute:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mPauseSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mSpeedDiff:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevation:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mElevationDiff:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object p2, p0, Lproject/listick/fakegps/MultipleRoutesInfo;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
