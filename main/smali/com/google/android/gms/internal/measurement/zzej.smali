.class public final Lcom/google/android/gms/internal/measurement/zzej;
.super Lcom/google/android/gms/internal/measurement/zzke;
.source "com.google.android.gms:play-services-measurement@@21.1.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlm;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzej;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/gms/internal/measurement/zzkl;

.field private zzi:Z

.field private zzj:Lcom/google/android/gms/internal/measurement/zzeq;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzej;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzej;->zza:Lcom/google/android/gms/internal/measurement/zzej;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/zzke;->zzbJ(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/zzke;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzke;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzej;->zzbD()Lcom/google/android/gms/internal/measurement/zzkl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/measurement/zzei;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzej;->zza:Lcom/google/android/gms/internal/measurement/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzke;->zzbx()Lcom/google/android/gms/internal/measurement/zzka;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzei;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/android/gms/internal/measurement/zzej;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzej;->zza:Lcom/google/android/gms/internal/measurement/zzej;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/measurement/zzej;Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zze:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzg:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/measurement/zzej;ILcom/google/android/gms/internal/measurement/zzel;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzke;->zzbE(Lcom/google/android/gms/internal/measurement/zzkl;)Lcom/google/android/gms/internal/measurement/zzkl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzkl;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzkl;->size()I

    move-result v0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzf:I

    return v0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/measurement/zzel;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/measurement/zzkl;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzel;

    return-object p1
.end method

.method public final zzf()Lcom/google/android/gms/internal/measurement/zzeq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzj:Lcom/google/android/gms/internal/measurement/zzeq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzeq;->zzb()Lcom/google/android/gms/internal/measurement/zzeq;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzh:Lcom/google/android/gms/internal/measurement/zzkl;

    return-object v0
.end method

.method public final zzk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzk:Z

    return v0
.end method

.method protected final zzl(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/zzej;->zza:Lcom/google/android/gms/internal/measurement/zzej;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzei;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/zzei;-><init>(Lcom/google/android/gms/internal/measurement/zzef;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzej;

    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/zzej;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/measurement/zzel;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzej;->zza:Lcom/google/android/gms/internal/measurement/zzej;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzej;->zzbI(Lcom/google/android/gms/internal/measurement/zzll;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzm()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzl:Z

    return v0
.end method

.method public final zzn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zzm:Z

    return v0
.end method

.method public final zzo()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzp()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzq()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzej;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
