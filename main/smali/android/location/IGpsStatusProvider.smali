.class public interface abstract Landroid/location/IGpsStatusProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusProvider$Stub;,
        Landroid/location/IGpsStatusProvider$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
