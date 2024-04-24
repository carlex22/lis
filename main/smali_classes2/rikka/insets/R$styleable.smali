.class public final Lrikka/insets/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrikka/insets/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final WindowInsetsHelper:[I

.field public static final WindowInsetsHelper_consumeSystemWindowsInsets:I = 0x0

.field public static final WindowInsetsHelper_edgeToEdge:I = 0x1

.field public static final WindowInsetsHelper_fitsSystemWindowsInsets:I = 0x2

.field public static final WindowInsetsHelper_layout_fitsSystemWindowsInsets:I = 0x3


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lrikka/insets/R$styleable;->WindowInsetsHelper:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040131
        0x7f0401a0
        0x7f0401e8
        0x7f0402b1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
