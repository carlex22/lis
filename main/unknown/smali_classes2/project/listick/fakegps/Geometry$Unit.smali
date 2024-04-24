.class public final enum Lproject/listick/fakegps/Geometry$Unit;
.super Ljava/lang/Enum;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproject/listick/fakegps/Geometry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lproject/listick/fakegps/Geometry$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lproject/listick/fakegps/Geometry$Unit;

.field public static final enum SPEED:Lproject/listick/fakegps/Geometry$Unit;


# direct methods
.method private static synthetic $values()[Lproject/listick/fakegps/Geometry$Unit;
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lproject/listick/fakegps/Geometry$Unit;

    const/4 v1, 0x0

    sget-object v2, Lproject/listick/fakegps/Geometry$Unit;->SPEED:Lproject/listick/fakegps/Geometry$Unit;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lproject/listick/fakegps/Geometry$Unit;

    const-string v1, "SPEED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lproject/listick/fakegps/Geometry$Unit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lproject/listick/fakegps/Geometry$Unit;->SPEED:Lproject/listick/fakegps/Geometry$Unit;

    invoke-static {}, Lproject/listick/fakegps/Geometry$Unit;->$values()[Lproject/listick/fakegps/Geometry$Unit;

    move-result-object v0

    sput-object v0, Lproject/listick/fakegps/Geometry$Unit;->$VALUES:[Lproject/listick/fakegps/Geometry$Unit;

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

.method public static valueOf(Ljava/lang/String;)Lproject/listick/fakegps/Geometry$Unit;
    .registers 2

    const-class v0, Lproject/listick/fakegps/Geometry$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lproject/listick/fakegps/Geometry$Unit;

    return-object p0
.end method

.method public static values()[Lproject/listick/fakegps/Geometry$Unit;
    .registers 1

    sget-object v0, Lproject/listick/fakegps/Geometry$Unit;->$VALUES:[Lproject/listick/fakegps/Geometry$Unit;

    invoke-virtual {v0}, [Lproject/listick/fakegps/Geometry$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lproject/listick/fakegps/Geometry$Unit;

    return-object v0
.end method
