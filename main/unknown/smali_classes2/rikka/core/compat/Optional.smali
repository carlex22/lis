.class public Lrikka/core/compat/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lrikka/core/compat/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/core/compat/Optional<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/core/compat/Optional;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrikka/core/compat/Optional;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lrikka/core/compat/Optional;->EMPTY:Lrikka/core/compat/Optional;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    return-void
.end method

.method public static empty()Lrikka/core/compat/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrikka/core/compat/Optional<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lrikka/core/compat/Optional;->EMPTY:Lrikka/core/compat/Optional;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lrikka/core/compat/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrikka/core/compat/Optional<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lrikka/core/compat/Optional;

    invoke-direct {v0, p0}, Lrikka/core/compat/Optional;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lrikka/core/compat/Optional;->empty()Lrikka/core/compat/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/util/concurrent/Callable;)Lrikka/core/compat/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lrikka/core/compat/Optional<",
            "TT;>;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lrikka/core/compat/Optional;->of(Ljava/lang/Object;)Lrikka/core/compat/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static safeList(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lrikka/core/compat/Optional;->of(Ljava/lang/Object;)Lrikka/core/compat/Optional;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrikka/core/compat/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public filter(Lrikka/core/compat/Predicate;)Lrikka/core/compat/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrikka/core/compat/Predicate<",
            "-TT;>;)",
            "Lrikka/core/compat/Optional<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Lrikka/core/compat/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-static {}, Lrikka/core/compat/Optional;->empty()Lrikka/core/compat/Optional;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public ifNotNull(Lrikka/core/compat/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrikka/core/compat/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lrikka/core/compat/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isPresent()Z
    .registers 2

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public map(Lrikka/core/compat/Function;)Lrikka/core/compat/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrikka/core/compat/Function<",
            "-TT;TR;>;)",
            "Lrikka/core/compat/Optional<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lrikka/core/compat/Optional;->empty()Lrikka/core/compat/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, v0}, Lrikka/core/compat/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lrikka/core/compat/Optional;->of(Ljava/lang/Object;)Lrikka/core/compat/Optional;

    move-result-object p1

    return-object p1
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public orElse(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lrikka/core/compat/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
