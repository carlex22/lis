.class Landroid/location/LocationManager$ListenerTransport$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$ListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/LocationListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$ListenerTransport;

.field final synthetic val$this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Looper;Landroid/location/LocationManager;)V
    .registers 4

    iput-object p1, p0, Landroid/location/LocationManager$ListenerTransport$2;->this$1:Landroid/location/LocationManager$ListenerTransport;

    iput-object p3, p0, Landroid/location/LocationManager$ListenerTransport$2;->val$this$0:Landroid/location/LocationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$ListenerTransport$2;->this$1:Landroid/location/LocationManager$ListenerTransport;

    invoke-static {v0, p1}, Landroid/location/LocationManager$ListenerTransport;->access$000(Landroid/location/LocationManager$ListenerTransport;Landroid/os/Message;)V

    return-void
.end method
