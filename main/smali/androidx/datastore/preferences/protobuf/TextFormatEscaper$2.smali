.class final Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$input:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;->val$input:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;->val$input:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/TextFormatEscaper$2;->val$input:[B

    array-length v0, v0

    return v0
.end method
