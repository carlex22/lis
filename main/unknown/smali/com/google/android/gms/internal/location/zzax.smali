.class final Lcom/google/android/gms/internal/location/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@20.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/location/LocationAvailability;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzay;Lcom/google/android/gms/location/LocationAvailability;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Lcom/google/android/gms/location/LocationAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic notifyListener(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/location/LocationCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzax;->zza:Lcom/google/android/gms/location/LocationAvailability;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationCallback;->onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V

    return-void
.end method

.method public final onNotifyListenerFailed()V
    .registers 1

    return-void
.end method
