.class public final Lcom/google/android/gms/internal/location/zzbf;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-location@@20.0.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/location/zzbf;",
            ">;"
        }
    .end annotation
.end field

.field static final zza:Ljava/util/List;


# instance fields
.field final zzb:Lcom/google/android/gms/location/LocationRequest;

.field final zzc:Ljava/util/List;

.field final zzd:Ljava/lang/String;

.field final zze:Z

.field final zzf:Z

.field final zzg:Z

.field final zzh:Ljava/lang/String;

.field final zzi:Z

.field zzj:Z

.field final zzk:Ljava/lang/String;

.field zzl:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/location/zzbf;->zza:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/location/zzbg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/location/zzbg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/location/zzbf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V
    .registers 13

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/location/zzbf;->zze:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/location/zzbf;->zzf:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/location/zzbf;->zzg:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    iput-boolean p9, p0, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/internal/location/zzbf;->zzl:J

    return-void
.end method

.method public static zzc(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/location/zzbf;
    .registers 15

    new-instance p0, Lcom/google/android/gms/internal/location/zzbf;

    invoke-static {}, Lcom/google/android/gms/internal/location/zzbx;->zzk()Lcom/google/android/gms/internal/location/zzbx;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/location/zzbf;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;Ljava/lang/String;ZZZLjava/lang/String;ZZLjava/lang/String;J)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/location/zzbf;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/location/zzbf;

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zze:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zze:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzf:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzf:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzg:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzg:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " moduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " contextAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " forceCoarseLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzg:Z

    if-eqz v1, :cond_3

    const-string v1, " exemptFromBackgroundThrottle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    if-eqz v1, :cond_4

    const-string v1, " locationSettingsIgnored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    if-eqz v1, :cond_5

    const-string v1, " inaccurateLocationsDelayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 p2, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzd:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zze:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x8

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzf:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzg:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzh:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xb

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xc

    iget-boolean v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzk:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xe

    iget-wide v1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzl:J

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzl:J

    return-wide v0
.end method

.method public final zzb()Lcom/google/android/gms/location/LocationRequest;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method public final zzd(Z)Lcom/google/android/gms/internal/location/zzbf;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzj:Z

    return-object p0
.end method

.method public final zze(J)Lcom/google/android/gms/internal/location/zzbf;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/location/LocationRequest;->getInterval()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/location/zzbf;->zzl:J

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p2}, Lcom/google/android/gms/location/LocationRequest;->getInterval()J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzbf;->zzb:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p2}, Lcom/google/android/gms/location/LocationRequest;->getMaxWaitTime()J

    move-result-wide v2

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "could not set max age when location batching is requested, interval="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "maxWaitTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzf()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzc:Ljava/util/List;

    return-object v0
.end method

.method public final zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/location/zzbf;->zzi:Z

    return v0
.end method
