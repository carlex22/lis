.class public final synthetic Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/inject/Deferred$DeferredHandler;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    return-void
.end method


# virtual methods
.method public final handle(Lcom/google/firebase/inject/Provider;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/CrashlyticsNativeComponentDeferredProxy;->lambda$new$0$com-google-firebase-crashlytics-internal-CrashlyticsNativeComponentDeferredProxy(Lcom/google/firebase/inject/Provider;)V

    return-void
.end method
