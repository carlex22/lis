.class public final enum Lorg/osmdroid/views/drawing/MapSnapshot$Status;
.super Ljava/lang/Enum;
.source "MapSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/drawing/MapSnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/osmdroid/views/drawing/MapSnapshot$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

.field public static final enum TILES_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v1, "NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->NOTHING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    new-instance v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->STARTED:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    new-instance v3, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v5, "TILES_OK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->TILES_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    new-instance v5, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v7, "PAINTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->PAINTING:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    new-instance v7, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const-string v9, "CANVAS_OK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/osmdroid/views/drawing/MapSnapshot$Status;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->CANVAS_OK:Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->$VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

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

.method public static valueOf(Ljava/lang/String;)Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .registers 2

    const-class v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object p0
.end method

.method public static values()[Lorg/osmdroid/views/drawing/MapSnapshot$Status;
    .registers 1

    sget-object v0, Lorg/osmdroid/views/drawing/MapSnapshot$Status;->$VALUES:[Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    invoke-virtual {v0}, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/osmdroid/views/drawing/MapSnapshot$Status;

    return-object v0
.end method
