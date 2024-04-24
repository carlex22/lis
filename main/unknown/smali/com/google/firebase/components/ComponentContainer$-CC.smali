.class public final synthetic Lcom/google/firebase/components/ComponentContainer$-CC;
.super Ljava/lang/Object;
.source "ComponentContainer.java"


# direct methods
.method public static $default$get(Lcom/google/firebase/components/ComponentContainer;Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;
    .registers 2

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static $default$get(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->get(Lcom/google/firebase/components/Qualified;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static $default$getDeferred(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Deferred;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getDeferred(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public static $default$getProvider(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->getProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public static $default$setOf(Lcom/google/firebase/components/ComponentContainer;Lcom/google/firebase/components/Qualified;)Ljava/util/Set;
    .registers 2

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public static $default$setOf(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Ljava/util/Set;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOf(Lcom/google/firebase/components/Qualified;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static $default$setOfProvider(Lcom/google/firebase/components/ComponentContainer;Ljava/lang/Class;)Lcom/google/firebase/inject/Provider;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/components/Qualified;->unqualified(Ljava/lang/Class;)Lcom/google/firebase/components/Qualified;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/components/ComponentContainer;->setOfProvider(Lcom/google/firebase/components/Qualified;)Lcom/google/firebase/inject/Provider;

    move-result-object p1

    return-object p1
.end method
