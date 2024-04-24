.class public Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
.super Lorg/osmdroid/util/GeoPoint;
.source "LabelledGeoPoint.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;

    invoke-direct {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    iput-object p7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V
    .registers 10

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/util/GeoPoint;
    .registers 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
    .registers 10

    new-instance v8, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-object v8
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
