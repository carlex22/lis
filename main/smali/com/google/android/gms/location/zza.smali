.class final Lcom/google/android/gms/location/zza;
.super Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
.source "com.google.android.gms:play-services-location@@20.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 14

    check-cast p4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    new-instance p4, Lcom/google/android/gms/internal/location/zzbe;

    const-string v6, "activity_recognition"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/location/zzbe;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;Ljava/lang/String;)V

    return-object p4
.end method
