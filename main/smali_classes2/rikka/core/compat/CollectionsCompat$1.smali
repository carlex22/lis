.class Lrikka/core/compat/CollectionsCompat$1;
.super Ljava/lang/Object;
.source "CollectionsCompat.java"

# interfaces
.implements Lrikka/core/compat/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/core/compat/CollectionsCompat;->cloneArrayList(Ljava/util/Collection;)Lrikka/core/compat/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrikka/core/compat/Function<",
        "Ljava/util/Collection<",
        "TE;>;",
        "Ljava/util/ArrayList<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lrikka/core/compat/CollectionsCompat$1;->apply(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
