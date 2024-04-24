.class public Lrikka/core/compat/OptionalInt;
.super Ljava/lang/Object;
.source "OptionalInt.java"


# static fields
.field public static final EMPTY:Lrikka/core/compat/OptionalInt;


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/core/compat/OptionalInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrikka/core/compat/OptionalInt;-><init>(Ljava/lang/Integer;)V

    sput-object v0, Lrikka/core/compat/OptionalInt;->EMPTY:Lrikka/core/compat/OptionalInt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/compat/OptionalInt;->value:Ljava/lang/Integer;

    return-void
.end method

.method public static of(I)Lrikka/core/compat/OptionalInt;
    .registers 2

    new-instance v0, Lrikka/core/compat/OptionalInt;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p0}, Lrikka/core/compat/OptionalInt;-><init>(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lrikka/core/compat/OptionalInt;
    .registers 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lrikka/core/compat/OptionalInt;->of(I)Lrikka/core/compat/OptionalInt;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lrikka/core/compat/OptionalInt;->EMPTY:Lrikka/core/compat/OptionalInt;

    return-object p0
.end method


# virtual methods
.method public getAsInt()I
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrikka/core/compat/OptionalInt;->orElse(I)I

    move-result v0

    return v0
.end method

.method public orElse(I)I
    .registers 3

    iget-object v0, p0, Lrikka/core/compat/OptionalInt;->value:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method
