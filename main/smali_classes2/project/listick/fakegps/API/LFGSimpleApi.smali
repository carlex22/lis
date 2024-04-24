.class public Lproject/listick/fakegps/API/LFGSimpleApi;
.super Ljava/lang/Object;
.source "LFGSimpleApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lproject/listick/fakegps/API/LFGSimpleApi$Directions;,
        Lproject/listick/fakegps/API/LFGSimpleApi$Elevation;,
        Lproject/listick/fakegps/API/LFGSimpleApi$Geocoder;
    }
.end annotation


# static fields
.field public static final API_BASE_URL:Ljava/lang/String; = "https://api.openrouteservice.org"

.field public static final CODE_BAD_RECAPTCHA_RESPONSE:I

.field public static final CODE_CONNECTION_FAILED:I

.field public static final CODE_RECAPTCHA_RESPONSE:I

.field public static final CODE_SUCCESS:I

.field public static final CODE_UNKNOWN_ERROR:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
