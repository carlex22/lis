.class public final Landroidx/datastore/preferences/protobuf/Duration$Builder;
.super Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;
.source "Duration.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/DurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/Duration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder<",
        "Landroidx/datastore/preferences/protobuf/Duration;",
        "Landroidx/datastore/preferences/protobuf/Duration$Builder;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/DurationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Duration;->access$000()Landroidx/datastore/preferences/protobuf/Duration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$Builder;-><init>(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/Duration$1;)V
    .registers 2

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/Duration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNanos()Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .registers 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Duration$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Duration;->access$400(Landroidx/datastore/preferences/protobuf/Duration;)V

    return-object p0
.end method

.method public clearSeconds()Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .registers 2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Duration$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Duration;->access$200(Landroidx/datastore/preferences/protobuf/Duration;)V

    return-object p0
.end method

.method public getNanos()I
    .registers 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Duration;->getNanos()I

    move-result v0

    return v0
.end method

.method public getSeconds()J
    .registers 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/Duration;->getSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public setNanos(I)Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .registers 3

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Duration$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p1}, Landroidx/datastore/preferences/protobuf/Duration;->access$300(Landroidx/datastore/preferences/protobuf/Duration;I)V

    return-object p0
.end method

.method public setSeconds(J)Landroidx/datastore/preferences/protobuf/Duration$Builder;
    .registers 4

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Duration$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Duration$Builder;->instance:Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    check-cast v0, Landroidx/datastore/preferences/protobuf/Duration;

    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/Duration;->access$100(Landroidx/datastore/preferences/protobuf/Duration;J)V

    return-object p0
.end method
