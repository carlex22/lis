.class public Lorg/osmdroid/views/util/MyMath;
.super Ljava/lang/Object;
.source "MyMath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextSquareNumberAbove(F)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lorg/osmdroid/util/MyMath;->getNextSquareNumberAbove(F)I

    move-result p0

    return p0
.end method
