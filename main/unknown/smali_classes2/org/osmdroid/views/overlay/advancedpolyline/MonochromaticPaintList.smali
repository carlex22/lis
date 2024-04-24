.class public Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;
.super Ljava/lang/Object;
.source "MonochromaticPaintList.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/PaintList;


# instance fields
.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/advancedpolyline/MonochromaticPaintList;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPaint(IFFFF)Landroid/graphics/Paint;
    .registers 6

    const/4 p1, 0x0

    return-object p1
.end method
