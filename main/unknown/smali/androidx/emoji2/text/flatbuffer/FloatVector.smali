.class public final Landroidx/emoji2/text/flatbuffer/FloatVector;
.super Landroidx/emoji2/text/flatbuffer/BaseVector;
.source "FloatVector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/BaseVector;-><init>()V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/FloatVector;
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Landroidx/emoji2/text/flatbuffer/FloatVector;->__reset(IILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public get(I)F
    .registers 3

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/FloatVector;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/FloatVector;->__element(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p1

    return p1
.end method
