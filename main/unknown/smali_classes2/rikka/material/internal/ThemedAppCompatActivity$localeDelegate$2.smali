.class final Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemedAppCompatActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrikka/material/internal/ThemedAppCompatActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lrikka/material/app/LocaleDelegate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lrikka/material/app/LocaleDelegate;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;

    invoke-direct {v0}, Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;-><init>()V

    sput-object v0, Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;->INSTANCE:Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lrikka/material/internal/ThemedAppCompatActivity$localeDelegate$2;->invoke()Lrikka/material/app/LocaleDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lrikka/material/app/LocaleDelegate;
    .registers 2

    new-instance v0, Lrikka/material/app/LocaleDelegate;

    invoke-direct {v0}, Lrikka/material/app/LocaleDelegate;-><init>()V

    return-object v0
.end method
