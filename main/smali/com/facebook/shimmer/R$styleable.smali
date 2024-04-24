.class public final Lcom/facebook/shimmer/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/shimmer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ShimmerFrameLayout:[I

.field public static final ShimmerFrameLayout_shimmer_auto_start:I = 0x0

.field public static final ShimmerFrameLayout_shimmer_base_alpha:I = 0x1

.field public static final ShimmerFrameLayout_shimmer_base_color:I = 0x2

.field public static final ShimmerFrameLayout_shimmer_clip_to_children:I = 0x3

.field public static final ShimmerFrameLayout_shimmer_colored:I = 0x4

.field public static final ShimmerFrameLayout_shimmer_direction:I = 0x5

.field public static final ShimmerFrameLayout_shimmer_dropoff:I = 0x6

.field public static final ShimmerFrameLayout_shimmer_duration:I = 0x7

.field public static final ShimmerFrameLayout_shimmer_fixed_height:I = 0x8

.field public static final ShimmerFrameLayout_shimmer_fixed_width:I = 0x9

.field public static final ShimmerFrameLayout_shimmer_height_ratio:I = 0xa

.field public static final ShimmerFrameLayout_shimmer_highlight_alpha:I = 0xb

.field public static final ShimmerFrameLayout_shimmer_highlight_color:I = 0xc

.field public static final ShimmerFrameLayout_shimmer_intensity:I = 0xd

.field public static final ShimmerFrameLayout_shimmer_repeat_count:I = 0xe

.field public static final ShimmerFrameLayout_shimmer_repeat_delay:I = 0xf

.field public static final ShimmerFrameLayout_shimmer_repeat_mode:I = 0x10

.field public static final ShimmerFrameLayout_shimmer_shape:I = 0x11

.field public static final ShimmerFrameLayout_shimmer_tilt:I = 0x12

.field public static final ShimmerFrameLayout_shimmer_width_ratio:I = 0x13


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/shimmer/R$styleable;->ShimmerFrameLayout:[I

    return-void

    :array_0
    .array-data 4
        0x7f040424
        0x7f040425
        0x7f040426
        0x7f040427
        0x7f040428
        0x7f040429
        0x7f04042a
        0x7f04042b
        0x7f04042c
        0x7f04042d
        0x7f04042e
        0x7f04042f
        0x7f040430
        0x7f040431
        0x7f040432
        0x7f040433
        0x7f040434
        0x7f040435
        0x7f040436
        0x7f040437
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
