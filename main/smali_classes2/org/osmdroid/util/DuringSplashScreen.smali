.class public Lorg/osmdroid/util/DuringSplashScreen;
.super Ljava/lang/Object;
.source "DuringSplashScreen.java"

# interfaces
.implements Lorg/osmdroid/util/SplashScreenable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runDuringSplashScreen()V
    .registers 2

    new-instance v0, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;

    invoke-direct {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;-><init>()V

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/modules/SqlTileWriter;->runDuringSplashScreen()V

    return-void
.end method
