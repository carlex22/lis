.class final Lcom/google/android/gms/location/zzi;
.super Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;
.source "com.google.android.gms:play-services-location@@20.0.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/location/zzi;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/IStatusCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/location/zzi;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
