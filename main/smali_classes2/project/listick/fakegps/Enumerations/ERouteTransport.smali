.class public final enum Lproject/listick/fakegps/Enumerations/ERouteTransport;
.super Ljava/lang/Enum;
.source "ERouteTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproject/listick/fakegps/Enumerations/ERouteTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lproject/listick/fakegps/Enumerations/ERouteTransport;

.field public static final enum CYCLING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

.field public static final enum DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

.field public static final enum WALKING:Lproject/listick/fakegps/Enumerations/ERouteTransport;


# direct methods
.method private static synthetic $values()[Lproject/listick/fakegps/Enumerations/ERouteTransport;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const/4 v1, 0x0

    sget-object v2, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lproject/listick/fakegps/Enumerations/ERouteTransport;->CYCLING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lproject/listick/fakegps/Enumerations/ERouteTransport;->WALKING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/Enumerations/ERouteTransport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->DRIVING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    new-instance v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const-string v1, "CYCLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/Enumerations/ERouteTransport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->CYCLING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    new-instance v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    const-string v1, "WALKING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/Enumerations/ERouteTransport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->WALKING:Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-static {}, Lproject/listick/fakegps/Enumerations/ERouteTransport;->$values()[Lproject/listick/fakegps/Enumerations/ERouteTransport;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->$VALUES:[Lproject/listick/fakegps/Enumerations/ERouteTransport;

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

.method public static valueOf(Ljava/lang/String;)Lproject/listick/fakegps/Enumerations/ERouteTransport;
    .registers 2

    const-class v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-object p0
.end method

.method public static values()[Lproject/listick/fakegps/Enumerations/ERouteTransport;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/Enumerations/ERouteTransport;->$VALUES:[Lproject/listick/fakegps/Enumerations/ERouteTransport;

    invoke-virtual {v0}, [Lproject/listick/fakegps/Enumerations/ERouteTransport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproject/listick/fakegps/Enumerations/ERouteTransport;

    return-object v0
.end method
