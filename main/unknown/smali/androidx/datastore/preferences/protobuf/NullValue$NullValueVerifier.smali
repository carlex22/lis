.class final Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;
.super Ljava/lang/Object;
.source "NullValue.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/NullValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullValueVerifier"
.end annotation


# static fields
.field static final INSTANCE:Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/NullValue$NullValueVerifier;->INSTANCE:Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .registers 2

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/NullValue;->forNumber(I)Landroidx/datastore/preferences/protobuf/NullValue;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
