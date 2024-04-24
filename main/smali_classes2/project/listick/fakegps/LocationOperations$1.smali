.class Lproject/listick/fakegps/LocationOperations$1;
.super Ljava/lang/Object;
.source "LocationOperations.java"

# interfaces
.implements Lproject/listick/fakegps/AsyncGeocoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lproject/listick/fakegps/LocationOperations;->startSpoofing(Lorg/osmdroid/util/GeoPoint;DLandroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lproject/listick/fakegps/LocationOperations;

.field final synthetic val$mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lproject/listick/fakegps/LocationOperations;Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/LocationOperations$1;->this$0:Lproject/listick/fakegps/LocationOperations;

    iput-object p2, p0, Lproject/listick/fakegps/LocationOperations$1;->val$mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/LocationOperations$1;->val$mActivity:Landroid/app/Activity;

    const v1, 0x7f120099

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lproject/listick/fakegps/SpoofingPlaceInfo;->address:Ljava/lang/String;

    return-void
.end method
