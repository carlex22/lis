.class public interface abstract Lproject/listick/fakegps/RouteBuilder$IRouteBuilder;
.super Ljava/lang/Object;
.source "RouteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/RouteBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRouteBuilder"
.end annotation


# virtual methods
.method public abstract captchaResponse()V
.end method

.method public abstract onRouteBuilt(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;DDDDD",
            "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onRouteError(Ljava/util/ArrayList;DDDDDLproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;DDDDD",
            "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
            ")V"
        }
    .end annotation
.end method

.method public abstract prepare()V
.end method
