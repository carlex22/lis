.class Lproject/listick/fakegps/MultipleRoutesInfo$1;
.super Ljava/lang/Object;
.source "MultipleRoutesInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/MultipleRoutesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lproject/listick/fakegps/MultipleRoutesInfo;",
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

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/MultipleRoutesInfo$1;->createFromParcel(Landroid/os/Parcel;)Lproject/listick/fakegps/MultipleRoutesInfo;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lproject/listick/fakegps/MultipleRoutesInfo;
    .registers 3

    new-instance v0, Lproject/listick/fakegps/MultipleRoutesInfo;

    invoke-direct {v0, p1}, Lproject/listick/fakegps/MultipleRoutesInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/MultipleRoutesInfo$1;->newArray(I)[Lproject/listick/fakegps/MultipleRoutesInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lproject/listick/fakegps/MultipleRoutesInfo;
    .registers 2

    new-array p1, p1, [Lproject/listick/fakegps/MultipleRoutesInfo;

    return-object p1
.end method
