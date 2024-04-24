.class Landroid/location/LocationManager$GpsStatusListenerTransport;
.super Landroid/location/IGpsStatusListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/GpsStatus$Listener;

.field private mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .registers 3

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    new-instance p1, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {p1, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .registers 3

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    new-instance p1, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    invoke-direct {p1, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$300(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .registers 1

    iget-object p0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object p0
.end method

.method static synthetic access$500(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .registers 1

    iget-object p0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    return-object p0
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v0}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    new-instance v2, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 p2, 0x3e8

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p3, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-static {v1}, Landroid/location/LocationManager;->access$200(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    move-result-object v2

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[FIII)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v3, v0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
