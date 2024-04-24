.class Lorg/osmdroid/util/ListPointL$1;
.super Ljava/lang/Object;
.source "ListPointL.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/util/ListPointL;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/osmdroid/util/PointL;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lorg/osmdroid/util/ListPointL;


# direct methods
.method constructor <init>(Lorg/osmdroid/util/ListPointL;)V
    .registers 2

    iput-object p1, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    iget-object v1, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    invoke-static {v1}, Lorg/osmdroid/util/ListPointL;->access$000(Lorg/osmdroid/util/ListPointL;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/osmdroid/util/ListPointL$1;->next()Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/osmdroid/util/PointL;
    .registers 4

    iget-object v0, p0, Lorg/osmdroid/util/ListPointL$1;->this$0:Lorg/osmdroid/util/ListPointL;

    iget v1, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/ListPointL$1;->mIndex:I

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/ListPointL;->get(I)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
