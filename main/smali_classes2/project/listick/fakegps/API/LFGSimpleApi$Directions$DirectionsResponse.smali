.class public Lproject/listick/fakegps/API/LFGSimpleApi$Directions$DirectionsResponse;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/API/LFGSimpleApi$Directions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectionsResponse"
.end annotation


# instance fields
.field public code:I

.field public distance:D

.field public error:Ljava/lang/String;

.field public result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
