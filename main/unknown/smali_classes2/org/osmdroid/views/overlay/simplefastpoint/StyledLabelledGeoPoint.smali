.class public Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;
.super Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
.source "StyledLabelledGeoPoint.java"


# instance fields
.field mPointStyle:Landroid/graphics/Paint;

.field mTextStyle:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .registers 10

    invoke-direct/range {p0 .. p7}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDDLjava/lang/String;)V

    iput-object p8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    iput-object p9, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .registers 8

    invoke-direct/range {p0 .. p5}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(DDLjava/lang/String;)V

    iput-object p6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    iput-object p7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/GeoPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;)V

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

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/util/GeoPoint;
    .registers 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;
    .registers 2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;
    .registers 12

    new-instance v10, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getAltitude()D

    move-result-wide v5

    iget-object v7, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mLabel:Ljava/lang/String;

    iget-object v8, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    iget-object v9, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;-><init>(DDDLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    return-object v10
.end method

.method public getPointStyle()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTextStyle()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setPointStyle(Landroid/graphics/Paint;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mPointStyle:Landroid/graphics/Paint;

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Paint;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->mTextStyle:Landroid/graphics/Paint;

    return-void
.end method
