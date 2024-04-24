.class public Lrikka/core/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/core/os/FileUtils$ProgressListener;
    }
.end annotation


# static fields
.field private static final COPY_CHECKPOINT_BYTES:J = 0x80000L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lrikka/core/os/FileUtils;->copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/File;Ljava/io/File;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {v0, p0, p2, p3, p4}, Lrikka/core/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lrikka/core/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lrikka/core/os/PlatformFileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lrikka/core/os/FileUtils;->copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static copyInternalUserspace(Ljava/io/InputStream;Ljava/io/OutputStream;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Lrikka/core/os/FileUtils$ProgressListener;)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-long/2addr v5, v7

    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :cond_1
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    new-instance v5, Lrikka/core/os/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, p4, v3, v4}, Lrikka/core/os/FileUtils$$ExternalSyntheticLambda0;-><init>(Lrikka/core/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    move-wide v5, v1

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    new-instance p0, Lrikka/core/os/FileUtils$$ExternalSyntheticLambda1;

    invoke-direct {p0, p4, v3, v4}, Lrikka/core/os/FileUtils$$ExternalSyntheticLambda1;-><init>(Lrikka/core/os/FileUtils$ProgressListener;J)V

    invoke-interface {p3, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    return-wide v3
.end method

.method static synthetic lambda$copyInternalUserspace$0(Lrikka/core/os/FileUtils$ProgressListener;J)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lrikka/core/os/FileUtils$ProgressListener;->onProgress(J)V

    return-void
.end method

.method static synthetic lambda$copyInternalUserspace$1(Lrikka/core/os/FileUtils$ProgressListener;J)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lrikka/core/os/FileUtils$ProgressListener;->onProgress(J)V

    return-void
.end method
