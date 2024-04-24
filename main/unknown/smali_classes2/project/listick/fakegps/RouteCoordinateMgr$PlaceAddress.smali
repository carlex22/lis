.class public Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;
.super Ljava/lang/Object;
.source "RouteCoordinateMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/RouteCoordinateMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceAddress"
.end annotation


# instance fields
.field mDest:Ljava/lang/String;

.field mOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->mOrigin:Ljava/lang/String;

    iput-object p2, p0, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->mDest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDest()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->mDest:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lproject/listick/fakegps/RouteCoordinateMgr$PlaceAddress;->mOrigin:Ljava/lang/String;

    return-object v0
.end method
