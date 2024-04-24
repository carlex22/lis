.class public Lproject/listick/fakegps/UI/BookmarkDialog;
.super Ljava/lang/Object;
.source "BookmarkDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mAddress:Ljava/lang/String;

.field private mDestAddress:Ljava/lang/String;

.field private mDestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLatitude:D

.field private mListener:Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;

.field private mLongitude:D

.field private mOriginAddress:Ljava/lang/String;

.field private mOriginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mListener:Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;

    return-void
.end method

.method static synthetic access$000(Lproject/listick/fakegps/UI/BookmarkDialog;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mOriginAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mDestAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lproject/listick/fakegps/UI/BookmarkDialog;)Lproject/listick/fakegps/Enumerations/ERouteTransport;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-object p0
.end method

.method static synthetic access$400(Lproject/listick/fakegps/UI/BookmarkDialog;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lproject/listick/fakegps/UI/BookmarkDialog;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$600(Lproject/listick/fakegps/UI/BookmarkDialog;)D
    .registers 3

    iget-wide v0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$700(Lproject/listick/fakegps/UI/BookmarkDialog;)I
    .registers 1

    iget p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mPosition:I

    return p0
.end method

.method static synthetic access$800(Lproject/listick/fakegps/UI/BookmarkDialog;)Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;
    .registers 1

    iget-object p0, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mListener:Lproject/listick/fakegps/UI/BookmarkDialog$BookmarkInterface;

    return-object p0
.end method


# virtual methods
.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setDestAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mDestAddress:Ljava/lang/String;

    return-void
.end method

.method public setDestinationsList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mDestList:Ljava/util/ArrayList;

    return-void
.end method

.method public setLatitude(D)V
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLatitude:D

    return-void
.end method

.method public setLongitude(D)V
    .registers 3

    iput-wide p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLongitude:D

    return-void
.end method

.method public setOriginAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mOriginAddress:Ljava/lang/String;

    return-void
.end method

.method public setOriginsList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mOriginList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPosition(I)V
    .registers 2

    iput p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mPosition:I

    return-void
.end method

.method public setTransport(Lproject/listick/fakegps/Enumerations/ERouteTransport;)V
    .registers 2

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarkDialog;->mTransport:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-void
.end method

.method public show(Ljava/lang/String;Z)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->context:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    const v5, 0x7f0c0024

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const v5, 0x7f09011b

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lorg/osmdroid/views/MapView;

    new-instance v6, Lproject/listick/fakegps/MapLoader;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lproject/listick/fakegps/MapLoader;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090090

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v6, v5, v7}, Lproject/listick/fakegps/MapLoader;->load(Lorg/osmdroid/views/MapView;Landroid/widget/TextView;)V

    const v6, 0x7f090158

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f090245

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090244

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f09019d

    invoke-virtual {v2, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const v10, 0x7f09006a

    invoke-virtual {v2, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v11, 0x7f090073

    invoke-virtual {v2, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v12, 0x1f4

    const-string v6, " "

    if-eqz v1, :cond_1

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mOriginAddress:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object v6, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mOriginList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v5

    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v14

    invoke-direct {v6, v7, v8, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v4, v7}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    new-instance v4, Lproject/listick/fakegps/RouteMarker;

    sget-object v14, Lproject/listick/fakegps/RouteMarker$Type;->DEST:Lproject/listick/fakegps/RouteMarker$Type;

    invoke-direct {v4, v14}, Lproject/listick/fakegps/RouteMarker;-><init>(Lproject/listick/fakegps/RouteMarker$Type;)V

    iget-wide v14, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLatitude:D

    iget-wide v12, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLongitude:D

    invoke-virtual {v4, v14, v15, v12, v13}, Lproject/listick/fakegps/RouteMarker;->setPosition(DD)V

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f120024

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mAddress:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v6

    new-instance v7, Lorg/osmdroid/util/GeoPoint;

    iget-wide v12, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLatitude:D

    iget-wide v14, v0, Lproject/listick/fakegps/UI/BookmarkDialog;->mLongitude:D

    invoke-direct {v7, v12, v13, v14, v15}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const-wide/high16 v12, 0x4031000000000000L    # 17.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const-wide/16 v12, 0x1f4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v6, v7, v8, v12}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;Ljava/lang/Double;Ljava/lang/Long;)V

    invoke-virtual {v5}, Lorg/osmdroid/views/MapView;->getOverlayManager()Lorg/osmdroid/views/overlay/OverlayManager;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Lproject/listick/fakegps/UI/BookmarkDialog$1;

    invoke-direct {v4, v0, v2}, Lproject/listick/fakegps/UI/BookmarkDialog$1;-><init>(Lproject/listick/fakegps/UI/BookmarkDialog;Landroid/app/Dialog;)V

    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lproject/listick/fakegps/UI/BookmarkDialog$2;

    invoke-direct {v4, v0, v1, v3, v2}, Lproject/listick/fakegps/UI/BookmarkDialog$2;-><init>(Lproject/listick/fakegps/UI/BookmarkDialog;ZLandroid/app/Activity;Landroid/app/Dialog;)V

    invoke-virtual {v10, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lproject/listick/fakegps/UI/BookmarkDialog$3;

    invoke-direct {v3, v0, v1, v2}, Lproject/listick/fakegps/UI/BookmarkDialog$3;-><init>(Lproject/listick/fakegps/UI/BookmarkDialog;ZLandroid/app/Dialog;)V

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method
