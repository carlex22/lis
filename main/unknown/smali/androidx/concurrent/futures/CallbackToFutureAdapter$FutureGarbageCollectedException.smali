.class final Landroidx/concurrent/futures/CallbackToFutureAdapter$FutureGarbageCollectedException;
.super Ljava/lang/Throwable;
.source "CallbackToFutureAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FutureGarbageCollectedException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method
