.class public abstract Lcom/google/android/gms/internal/measurement/zzif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.1.1"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzif;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzid;->zza:Lcom/google/android/gms/internal/measurement/zzid;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzig;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzig;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Object;
.end method

.method public abstract zzb()Z
.end method
