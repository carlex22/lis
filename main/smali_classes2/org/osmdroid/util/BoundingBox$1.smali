.class Lorg/osmdroid/util/BoundingBox$1;
.super Ljava/lang/Object;
.source "BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/util/BoundingBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/osmdroid/util/BoundingBox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/BoundingBox$1;->createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;
    .registers 2

    invoke-static {p1}, Lorg/osmdroid/util/BoundingBox;->access$000(Landroid/os/Parcel;)Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/BoundingBox$1;->newArray(I)[Lorg/osmdroid/util/BoundingBox;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/osmdroid/util/BoundingBox;
    .registers 2

    new-array p1, p1, [Lorg/osmdroid/util/BoundingBox;

    return-object p1
.end method
