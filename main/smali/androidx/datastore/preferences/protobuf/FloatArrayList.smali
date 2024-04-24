.class final Landroidx/datastore/preferences/protobuf/FloatArrayList;
.super Landroidx/datastore/preferences/protobuf/AbstractProtobufList;
.source "FloatArrayList.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$FloatList;
.implements Ljava/util/RandomAccess;
.implements Landroidx/datastore/preferences/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/datastore/preferences/protobuf/AbstractProtobufList<",
        "Ljava/lang/Float;",
        ">;",
        "Landroidx/datastore/preferences/protobuf/Internal$FloatList;",
        "Ljava/util/RandomAccess;",
        "Landroidx/datastore/preferences/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Landroidx/datastore/preferences/protobuf/FloatArrayList;


# instance fields
.field private array:[F

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [F

    invoke-direct {v0, v2, v1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;-><init>([FI)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->EMPTY_LIST:Landroidx/datastore/preferences/protobuf/FloatArrayList;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->makeImmutable()V

    return-void
.end method

.method constructor <init>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;-><init>([FI)V

    return-void
.end method

.method private constructor <init>([FI)V
    .registers 3

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    iput p2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    return-void
.end method

.method private addFloat(IF)V
    .registers 7

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    :goto_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aput p2, v0, p1

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Landroidx/datastore/preferences/protobuf/FloatArrayList;
    .registers 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->EMPTY_LIST:Landroidx/datastore/preferences/protobuf/FloatArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .registers 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Float;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->addFloat(IF)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->add(ILjava/lang/Float;)V

    return-void
.end method

.method public add(Ljava/lang/Float;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->addFloat(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->add(Ljava/lang/Float;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    iget v0, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    add-int/2addr v2, v0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    array-length v3, v0

    if-le v2, v3, :cond_2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    :cond_2
    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    iget v4, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public addFloat(F)V
    .registers 6

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroidx/datastore/preferences/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget v2, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    move v1, v3

    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Float;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->get(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(I)F
    .registers 3

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$FloatList;
    .registers 4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/FloatArrayList;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    invoke-direct {v0, p1, v1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;-><init>([FI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->mutableCopyWithCapacity(I)Landroidx/datastore/preferences/protobuf/Internal$FloatList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Float;
    .registers 6

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->remove(I)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected removeRange(II)V
    .registers 5

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    iget v1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    iget p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->modCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Float;)Ljava/lang/Float;
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->setFloat(IF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->set(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)F
    .registers 5

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIsMutable()V

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/FloatArrayList;->ensureIndexInRange(I)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->array:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroidx/datastore/preferences/protobuf/FloatArrayList;->size:I

    return v0
.end method
