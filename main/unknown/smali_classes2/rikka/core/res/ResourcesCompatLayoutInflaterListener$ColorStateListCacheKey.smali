.class final Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;
.super Ljava/lang/Object;
.source "ResourcesCompatLayoutInflaterListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/core/res/ResourcesCompatLayoutInflaterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ColorStateListCacheKey"
.end annotation


# instance fields
.field final mResources:Landroid/content/res/Resources;

.field final mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;

    iget-object v2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    iget-object v3, p1, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-static {v2, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mResources:Landroid/content/res/Resources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheKey;->mTheme:Landroid/content/res/Resources$Theme;

    aput-object v2, v0, v1

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
