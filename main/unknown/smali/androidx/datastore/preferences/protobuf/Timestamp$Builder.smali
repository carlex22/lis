.class public final Landroidx/datastore/preferences/protobuf/Timestamp$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Timestamp.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/TimestampOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Timestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Timestamp;",
        "Landroidx/datastore/preferences/protobuf/Timestamp$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/TimestampOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Timestamp;->access$000()Landroidx/datastore/preferences/protobuf/Timestamp;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Timestamp$1;)V
    .registers 2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNanos()Landroidx/datastore/preferences/protobuf/Timestamp$Builder;
    .registers 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Timestamp;->access$400(Landroidx/datastore/preferences/protobuf/Timestamp;)V

    return-object p0
.end method

.method public clearSeconds()Landroidx/datastore/preferences/protobuf/Timestamp$Builder;
    .registers 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Timestamp;->access$200(Landroidx/datastore/preferences/protobuf/Timestamp;)V

    return-object p0
.end method

.method public getNanos()I
    .registers 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Timestamp;->getNanos()I

    move-result v0

    return v0
.end method

.method public getSeconds()J
    .registers 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Timestamp;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public setNanos(I)Landroidx/datastore/preferences/protobuf/Timestamp$Builder;
    .registers 3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Timestamp;->access$300(Landroidx/datastore/preferences/protobuf/Timestamp;I)V

    return-object p0
.end method

.method public setSeconds(J)Landroidx/datastore/preferences/protobuf/Timestamp$Builder;
    .registers 4

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Timestamp$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Timestamp;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Timestamp;->access$100(Landroidx/datastore/preferences/protobuf/Timestamp;J)V

    return-object p0
.end method
