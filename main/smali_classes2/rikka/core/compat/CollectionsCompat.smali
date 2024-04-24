.class public final Lrikka/core/compat/CollectionsCompat;
.super Ljava/lang/Object;
.source "CollectionsCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allMatch(Ljava/util/Collection;Lrikka/core/compat/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lrikka/core/compat/Predicate<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrikka/core/compat/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static anyMatch(Ljava/util/Collection;Lrikka/core/compat/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lrikka/core/compat/Predicate<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrikka/core/compat/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static cloneArrayList(Ljava/util/Collection;)Lrikka/core/compat/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lrikka/core/compat/Optional<",
            "Ljava/util/ArrayList<",
            "TE;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lrikka/core/compat/Optional;->of(Ljava/lang/Object;)Lrikka/core/compat/Optional;

    move-result-object p0

    new-instance v0, Lrikka/core/compat/CollectionsCompat$1;

    invoke-direct {v0}, Lrikka/core/compat/CollectionsCompat$1;-><init>()V

    invoke-virtual {p0, v0}, Lrikka/core/compat/Optional;->map(Lrikka/core/compat/Function;)Lrikka/core/compat/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static filterTo(Ljava/util/Collection;Ljava/util/Collection;Lrikka/core/compat/Predicate;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "T::",
            "Ljava/util/Collection<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;TT;",
            "Lrikka/core/compat/Predicate<",
            "TE;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lrikka/core/compat/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static filterToList(Ljava/util/Collection;Lrikka/core/compat/Predicate;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lrikka/core/compat/Predicate<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Lrikka/core/compat/CollectionsCompat;->filterTo(Ljava/util/Collection;Ljava/util/Collection;Lrikka/core/compat/Predicate;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static mapTo(Ljava/util/Collection;Ljava/util/Collection;Lrikka/core/compat/Function;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "T::",
            "Ljava/util/Collection<",
            "TD;>;>(",
            "Ljava/util/Collection<",
            "TE;>;TT;",
            "Lrikka/core/compat/Function<",
            "TE;TD;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lrikka/core/compat/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static mapToList(Ljava/util/Collection;Lrikka/core/compat/Function;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lrikka/core/compat/Function<",
            "TE;TD;>;)",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0, p1}, Lrikka/core/compat/CollectionsCompat;->mapTo(Ljava/util/Collection;Ljava/util/Collection;Lrikka/core/compat/Function;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static noneMatch(Ljava/util/Collection;Lrikka/core/compat/Predicate;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lrikka/core/compat/Predicate<",
            "TE;>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lrikka/core/compat/CollectionsCompat;->anyMatch(Ljava/util/Collection;Lrikka/core/compat/Predicate;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
