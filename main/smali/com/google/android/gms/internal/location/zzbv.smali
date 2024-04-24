.class final Lcom/google/android/gms/internal/location/zzbv;
.super Lcom/google/android/gms/internal/location/zzbt;
.source "com.google.android.gms:play-services-location@@20.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/location/zzbx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzbx;I)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/location/zzbx;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/location/zzbt;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbv;->zza:Lcom/google/android/gms/internal/location/zzbx;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbv;->zza:Lcom/google/android/gms/internal/location/zzbx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/location/zzbx;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
