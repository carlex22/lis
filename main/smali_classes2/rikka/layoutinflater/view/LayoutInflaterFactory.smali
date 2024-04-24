.class public Lrikka/layoutinflater/view/LayoutInflaterFactory;
.super Ljava/lang/Object;
.source "LayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;
    }
.end annotation


# instance fields
.field private final appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

.field private final onViewCreatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrikka/layoutinflater/view/LayoutInflaterFactory;-><init>(Landroidx/appcompat/app/AppCompatDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onViewCreatedListeners:Ljava/util/List;

    iput-object p1, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-void
.end method


# virtual methods
.method public final addOnViewCreatedListener(Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;)Lrikka/layoutinflater/view/LayoutInflaterFactory;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onViewCreatedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final varargs addOnViewCreatedListeners([Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;)Lrikka/layoutinflater/view/LayoutInflaterFactory;
    .registers 3

    iget-object v0, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onViewCreatedListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 12

    iget-object v0, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->appCompatDelegate:Landroidx/appcompat/app/AppCompatDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    sget-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->INSTANCE:Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;

    invoke-virtual {v0, p3, p2, p4}, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onViewCreated(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_2
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14

    iget-object v0, p0, Lrikka/layoutinflater/view/LayoutInflaterFactory;->onViewCreatedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lrikka/layoutinflater/view/LayoutInflaterFactory$OnViewCreatedListener;->onViewCreated(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method
