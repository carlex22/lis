.class final Lcom/google/android/gms/internal/measurement/zzdq;
.super Lcom/google/android/gms/internal/measurement/zzdt;
.source "com.google.android.gms:play-services-measurement-sdk-api@@21.1.1"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/measurement/zzdv;

.field final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzee;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzee;Lcom/google/android/gms/internal/measurement/zzdv;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzb:Lcom/google/android/gms/internal/measurement/zzee;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzdv;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzdt;-><init>(Lcom/google/android/gms/internal/measurement/zzee;Z)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zzb:Lcom/google/android/gms/internal/measurement/zzee;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzee;->zze(Lcom/google/android/gms/internal/measurement/zzee;)Lcom/google/android/gms/internal/measurement/zzcc;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzcc;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzdq;->zza:Lcom/google/android/gms/internal/measurement/zzdv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcc;->unregisterOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/zzci;)V

    return-void
.end method
