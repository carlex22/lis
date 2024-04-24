.class Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;
.super Landroid/util/Property;
.source "SimpleMenuBoundsProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lrikka/preference/simplemenu/PropertyHolder;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOUNDS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lrikka/preference/simplemenu/PropertyHolder;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;

    const-string v1, "bounds"

    invoke-direct {v0, v1}, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;->BOUNDS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lrikka/preference/simplemenu/PropertyHolder;)Landroid/graphics/Rect;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    invoke-virtual {p1}, Lrikka/preference/simplemenu/PropertyHolder;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "holder"
        }
    .end annotation

    check-cast p1, Lrikka/preference/simplemenu/PropertyHolder;

    invoke-virtual {p0, p1}, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;->get(Lrikka/preference/simplemenu/PropertyHolder;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "value"
        }
    .end annotation

    check-cast p1, Lrikka/preference/simplemenu/PropertyHolder;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lrikka/preference/simplemenu/SimpleMenuBoundsProperty;->set(Lrikka/preference/simplemenu/PropertyHolder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public set(Lrikka/preference/simplemenu/PropertyHolder;Landroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "value"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lrikka/preference/simplemenu/PropertyHolder;->setBounds(Landroid/graphics/Rect;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-gt p2, v0, :cond_0

    invoke-virtual {p1}, Lrikka/preference/simplemenu/PropertyHolder;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
