.class Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapTileFileStorageProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;-><init>(Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->onMediaMounted()V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase$MyBroadcastReceiver;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;

    invoke-virtual {p1}, Lorg/osmdroid/tileprovider/modules/MapTileFileStorageProviderBase;->onMediaUnmounted()V

    :cond_1
    :goto_0
    return-void
.end method
