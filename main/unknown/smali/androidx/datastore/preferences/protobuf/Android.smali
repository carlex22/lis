.class final Landroidx/datastore/preferences/protobuf/Android;
.super Ljava/lang/Object;
.source "Android.java"


# static fields
.field private static final IS_ROBOLECTRIC:Z

.field private static final MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Android;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    const-string v0, "org.robolectric.Robolectric"

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Android;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/datastore/preferences/protobuf/Android;->IS_ROBOLECTRIC:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getMemoryClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    return-object v0
.end method

.method static isOnAndroidDevice()Z
    .registers 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/Android;->MEMORY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Android;->IS_ROBOLECTRIC:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
