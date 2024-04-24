.class public final enum Lproject/listick/fakegps/RouteMarker$Type;
.super Ljava/lang/Enum;
.source "RouteMarker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/RouteMarker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproject/listick/fakegps/RouteMarker$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lproject/listick/fakegps/RouteMarker$Type;

.field public static final enum DEST:Lproject/listick/fakegps/RouteMarker$Type;

.field public static final enum SOURCE:Lproject/listick/fakegps/RouteMarker$Type;


# direct methods
.method private static synthetic $values()[Lproject/listick/fakegps/RouteMarker$Type;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lproject/listick/fakegps/RouteMarker$Type;

    const/4 v1, 0x0

    sget-object v2, Lproject/listick/fakegps/RouteMarker$Type;->SOURCE:Lproject/listick/fakegps/RouteMarker$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lproject/listick/fakegps/RouteMarker$Type;->DEST:Lproject/listick/fakegps/RouteMarker$Type;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lproject/listick/fakegps/RouteMarker$Type;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/RouteMarker$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/RouteMarker$Type;->SOURCE:Lproject/listick/fakegps/RouteMarker$Type;

    new-instance v0, Lproject/listick/fakegps/RouteMarker$Type;

    const-string v1, "DEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/RouteMarker$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/RouteMarker$Type;->DEST:Lproject/listick/fakegps/RouteMarker$Type;

    invoke-static {}, Lproject/listick/fakegps/RouteMarker$Type;->$values()[Lproject/listick/fakegps/RouteMarker$Type;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/RouteMarker$Type;->$VALUES:[Lproject/listick/fakegps/RouteMarker$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lproject/listick/fakegps/RouteMarker$Type;
    .registers 2

    const-class v0, Lproject/listick/fakegps/RouteMarker$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproject/listick/fakegps/RouteMarker$Type;

    return-object p0
.end method

.method public static values()[Lproject/listick/fakegps/RouteMarker$Type;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/RouteMarker$Type;->$VALUES:[Lproject/listick/fakegps/RouteMarker$Type;

    invoke-virtual {v0}, [Lproject/listick/fakegps/RouteMarker$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproject/listick/fakegps/RouteMarker$Type;

    return-object v0
.end method
