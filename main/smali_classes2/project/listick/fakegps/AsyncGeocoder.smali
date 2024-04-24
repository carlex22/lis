.class public Lproject/listick/fakegps/AsyncGeocoder;
.super Ljava/lang/Object;
.source "AsyncGeocoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/AsyncGeocoder$Callback;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mGeocoder:Landroid/location/Geocoder;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder;->mGeocoder:Landroid/location/Geocoder;

    iput-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic lambda$getFromAddress$0(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V
    .registers 2

    invoke-interface {p0, p1}, Lproject/listick/fakegps/AsyncGeocoder$Callback;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$getLocationAddress$2(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V
    .registers 2

    invoke-interface {p0, p1}, Lproject/listick/fakegps/AsyncGeocoder$Callback;->onSuccess(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public autocomplete(Ljava/lang/String;DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 7

    return-void
.end method

.method public getFromAddress(Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 4

    new-instance v0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda4;-><init>(Lproject/listick/fakegps/AsyncGeocoder;Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public getLocationAddress(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 14

    new-instance v7, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/AsyncGeocoder;DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic lambda$getFromAddress$1$project-listick-fakegps-AsyncGeocoder(Ljava/lang/String;Lproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    new-instance v1, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p2, "project.listick.fakegps"

    const/4 v0, 0x0

    :goto_1
    return-void
.end method

.method synthetic lambda$getLocationAddress$3$project-listick-fakegps-AsyncGeocoder(DDLproject/listick/fakegps/AsyncGeocoder$Callback;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Lproject/listick/fakegps/AsyncGeocoder;->mGeocoder:Landroid/location/Geocoder;

    const/4 v5, 0x5

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    new-instance p3, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;

    invoke-direct {p3, p5, p1}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;Ljava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;

    invoke-direct {p2, p5}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p2, p0, Lproject/listick/fakegps/AsyncGeocoder;->mActivity:Landroid/app/Activity;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p5}, Lproject/listick/fakegps/AsyncGeocoder$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/AsyncGeocoder$Callback;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string p2, "project.listick.fakegps"

    const/4 p3, 0x0

    :goto_1
    return-void
.end method
