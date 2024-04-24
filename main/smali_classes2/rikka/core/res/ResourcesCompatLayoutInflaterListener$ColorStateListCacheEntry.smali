.class Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheEntry;
.super Ljava/lang/Object;
.source "ResourcesCompatLayoutInflaterListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/core/res/ResourcesCompatLayoutInflaterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListCacheEntry"
.end annotation


# instance fields
.field final mConfiguration:Landroid/content/res/Configuration;

.field final mValue:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheEntry;->mValue:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lrikka/core/res/ResourcesCompatLayoutInflaterListener$ColorStateListCacheEntry;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method
