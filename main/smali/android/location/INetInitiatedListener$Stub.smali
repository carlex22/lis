.class public abstract Landroid/location/INetInitiatedListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/location/INetInitiatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/INetInitiatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INetInitiatedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.INetInitiatedListener"

.field static final TRANSACTION_sendNiResponse:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.INetInitiatedListener"

    invoke-virtual {p0, p0, v0}, Landroid/location/INetInitiatedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/INetInitiatedListener;
    .registers 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.location.INetInitiatedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/INetInitiatedListener;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/location/INetInitiatedListener;

    return-object v0

    :cond_1
    new-instance v0, Landroid/location/INetInitiatedListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/location/INetInitiatedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.location.INetInitiatedListener"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/location/INetInitiatedListener$Stub;->sendNiResponse(II)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method