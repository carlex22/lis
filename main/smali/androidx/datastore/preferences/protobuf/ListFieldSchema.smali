.class abstract Landroidx/datastore/preferences/protobuf/ListFieldSchema;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;,
        Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;
    }
.end annotation


# static fields
.field private static final FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field private static final LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    new-instance v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/ListFieldSchema$1;)V
    .registers 2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;-><init>()V

    return-void
.end method

.method static full()Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .registers 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->FULL_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-object v0
.end method

.method static lite()Landroidx/datastore/preferences/protobuf/ListFieldSchema;
    .registers 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->LITE_INSTANCE:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    return-object v0
.end method


# virtual methods
.method abstract makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method abstract mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
