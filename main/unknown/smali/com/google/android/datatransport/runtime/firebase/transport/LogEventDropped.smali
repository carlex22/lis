.class public final Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;
.super Ljava/lang/Object;
.source "LogEventDropped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;,
        Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;


# instance fields
.field private final events_dropped_count_:J

.field private final reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    return-void
.end method

.method constructor <init>(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->events_dropped_count_:J

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;
    .registers 1

    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;
    .registers 1

    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getEventsDroppedCount()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->events_dropped_count_:J

    return-wide v0
.end method

.method public getReason()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .registers 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->reason_:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object v0
.end method
