.class public abstract Lproject/listick/fakegps/Services/ISpooferService$Stub;
.super Landroid/os/Binder;
.source "ISpooferService.java"

# interfaces
.implements Lproject/listick/fakegps/Services/ISpooferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Services/ISpooferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "project.listick.fakegps.Services.ISpooferService"

.field static final TRANSACTION_attachRoutes:I = 0x1

.field static final TRANSACTION_getRoutes:I = 0x4

.field static final TRANSACTION_isPaused:I = 0x3

.field static final TRANSACTION_setPause:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "project.listick.fakegps.Services.ISpooferService"

    invoke-virtual {p0, p0, v0}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lproject/listick/fakegps/Services/ISpooferService;
    .registers 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "project.listick.fakegps.Services.ISpooferService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lproject/listick/fakegps/Services/ISpooferService;

    if-eqz v1, :cond_1

    check-cast v0, Lproject/listick/fakegps/Services/ISpooferService;

    return-object v0

    :cond_1
    new-instance v0, Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;

    invoke-direct {v0, p0}, Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lproject/listick/fakegps/Services/ISpooferService;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;->sDefaultImpl:Lproject/listick/fakegps/Services/ISpooferService;

    return-object v0
.end method

.method public static setDefaultImpl(Lproject/listick/fakegps/Services/ISpooferService;)Z
    .registers 2

    sget-object v0, Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;->sDefaultImpl:Lproject/listick/fakegps/Services/ISpooferService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lproject/listick/fakegps/Services/ISpooferService$Stub$Proxy;->sDefaultImpl:Lproject/listick/fakegps/Services/ISpooferService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    const/4 v0, 0x1

    const-string v1, "project.listick.fakegps.Services.ISpooferService"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->getRoutes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->isPaused()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->setPause(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lproject/listick/fakegps/MultipleRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/Services/ISpooferService$Stub;->attachRoutes(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0
.end method
