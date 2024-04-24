.class public Lrikka/core/util/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/core/util/AppNameComparator$InfoProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrikka/core/util/AppNameComparator$InfoProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mLabelComparator:Lrikka/core/util/LabelComparator;


# direct methods
.method public constructor <init>(Lrikka/core/util/AppNameComparator$InfoProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrikka/core/util/AppNameComparator$InfoProvider<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    new-instance p1, Lrikka/core/util/LabelComparator;

    invoke-direct {p1}, Lrikka/core/util/LabelComparator;-><init>()V

    iput-object p1, p0, Lrikka/core/util/AppNameComparator;->mLabelComparator:Lrikka/core/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lrikka/core/util/AppNameComparator;->mLabelComparator:Lrikka/core/util/LabelComparator;

    iget-object v1, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v1, p1}, Lrikka/core/util/AppNameComparator$InfoProvider;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v2, p2}, Lrikka/core/util/AppNameComparator$InfoProvider;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrikka/core/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v0, p1}, Lrikka/core/util/AppNameComparator$InfoProvider;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v1, p2}, Lrikka/core/util/AppNameComparator$InfoProvider;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    iget-object v1, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v1, p1}, Lrikka/core/util/AppNameComparator$InfoProvider;->getUserId(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    iget-object v0, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v0, p1}, Lrikka/core/util/AppNameComparator$InfoProvider;->getUserId(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lrikka/core/util/AppNameComparator;->mInfoProvider:Lrikka/core/util/AppNameComparator$InfoProvider;

    invoke-interface {v0, p2}, Lrikka/core/util/AppNameComparator$InfoProvider;->getUserId(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
