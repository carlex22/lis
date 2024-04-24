.class Lrikka/core/os/PlatformFileUtils;
.super Ljava/lang/Object;
.source "PlatformFileUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lrikka/core/os/PlatformFileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4}, Lrikka/core/os/PlatformFileUtils$$ExternalSyntheticLambda0;-><init>(Lrikka/core/os/FileUtils$ProgressListener;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method
