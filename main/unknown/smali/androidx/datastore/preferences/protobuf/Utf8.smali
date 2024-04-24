.class final Landroidx/datastore/preferences/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/Utf8$DecodeUtil;,
        Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;,
        Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;,
        Landroidx/datastore/preferences/protobuf/Utf8$Processor;,
        Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;
    }
.end annotation


# static fields
.field private static final ASCII_MASK_LONG:J = -0x7f7f7f7f7f7f7f80L

.field public static final COMPLETE:I = 0x0

.field public static final MALFORMED:I = -0x1

.field static final MAX_BYTES_PER_CHAR:I = 0x3

.field private static final UNSAFE_COUNT_ASCII_THRESHOLD:I = 0x10

.field private static final processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/datastore/preferences/protobuf/Android;->isOnAndroidDevice()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnsafeProcessor;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;-><init>()V

    :goto_0
    sput-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)I
    .registers 2

    invoke-static {p0, p1}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100([BII)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(I)I
    .registers 1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;II)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8;->estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;III)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method static decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decodeUtf8([BII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encode(Ljava/lang/CharSequence;[BII)I
    .registers 5

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;[BII)I

    move-result p0

    return p0
.end method

.method static encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Landroidx/datastore/preferences/protobuf/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-lt v2, v0, :cond_3

    return v2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static estimateConsecutiveAscii(Ljava/nio/ByteBuffer;II)I
    .registers 8

    add-int/lit8 p2, p2, -0x7

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    const-wide v3, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private static incompleteStateFor(I)I
    .registers 2

    const/16 v0, -0xc

    if-le p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method private static incompleteStateFor(II)I
    .registers 3

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static incompleteStateFor(III)I
    .registers 4

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x10

    xor-int/2addr p0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method private static incompleteStateFor(Ljava/nio/ByteBuffer;III)I
    .registers 6

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p3

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p3, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    invoke-static {p1, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method private static incompleteStateFor([BII)I
    .registers 6

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    sub-int/2addr p2, p1

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    aget-byte p2, p0, p1

    add-int/2addr p1, v1

    aget-byte p0, p0, p1

    invoke-static {v0, p2, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/Utf8;->incompleteStateFor(I)I

    move-result p0

    return p0
.end method

.method static isValidUtf8(Ljava/nio/ByteBuffer;)Z
    .registers 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->isValidUtf8(Ljava/nio/ByteBuffer;II)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([B)Z
    .registers 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method public static isValidUtf8([BII)Z
    .registers 4

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->isValidUtf8([BII)Z

    move-result p0

    return p0
.end method

.method static partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I
    .registers 5

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(ILjava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 5

    sget-object v0, Landroidx/datastore/preferences/protobuf/Utf8;->processor:Landroidx/datastore/preferences/protobuf/Utf8$Processor;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/Utf8$Processor;->partialIsValidUtf8(I[BII)I

    move-result p0

    return p0
.end method