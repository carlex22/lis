.class Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;
.super Ljava/lang/Object;
.source "LayoutInflaterFactory.java"


# static fields
.field public static final INSTANCE:Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;

.field private static final classPrefixList:[Ljava/lang/String;

.field private static final constructorMap:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final constructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->constructorSignature:[Ljava/lang/Class;

    const-string v0, "android.view."

    const-string v1, "android.webkit."

    const-string v2, "android.widget."

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->classPrefixList:[Ljava/lang/String;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->constructorMap:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;

    invoke-direct {v0}, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;-><init>()V

    sput-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->INSTANCE:Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/view/View;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;
        }
    .end annotation

    sget-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->constructorMap:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p4, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p4, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p4

    const-class v1, Landroid/view/View;

    invoke-virtual {p4, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p4

    sget-object v1, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->constructorSignature:[Ljava/lang/Class;

    invoke-virtual {p4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p1, p4, v2

    aput-object p3, p4, p2

    invoke-virtual {v1, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 9

    const-string v0, "view"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    check-cast p2, Ljava/lang/String;

    const-string p2, "class"

    invoke-interface {p3, v1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const/16 v0, 0x2e

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v2, v0, :cond_1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v1}, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->classPrefixList:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    invoke-direct {p0, p1, p2, p3, v4}, Lrikka/layoutinflater/view/LayoutInflaterFactoryDefaultImpl;->createViewByPrefix(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object v1
.end method
