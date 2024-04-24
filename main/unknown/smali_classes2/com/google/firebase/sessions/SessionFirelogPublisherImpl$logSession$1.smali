.class final Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SessionFirelogPublisher.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->logSession(Lcom/google/firebase/sessions/SessionDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1"
    f = "SessionFirelogPublisher.kt"
    i = {}
    l = {
        0x40,
        0x48,
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;


# direct methods
.method constructor <init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/SessionDetails;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;",
            "Lcom/google/firebase/sessions/SessionDetails;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-direct {p1, v0, v1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;-><init>(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/SessionDetails;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/sessions/ProcessDetails;

    iget-object v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/sessions/settings/SessionsSettings;

    iget-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lcom/google/firebase/sessions/SessionDetails;

    iget-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/FirebaseApp;

    iget-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lcom/google/firebase/sessions/SessionEvents;

    iget-object v7, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v11, v6

    move-object v6, v0

    move-object v0, v11

    move-object v12, v5

    move-object v5, v1

    move-object v1, v12

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$6:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/google/firebase/sessions/ProcessDetails;

    iget-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/google/firebase/sessions/settings/SessionsSettings;

    iget-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lcom/google/firebase/sessions/SessionDetails;

    iget-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lcom/google/firebase/FirebaseApp;

    iget-object v7, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lcom/google/firebase/sessions/SessionEvents;

    iget-object v8, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    invoke-static {p1, v1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$shouldLogSession(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    sget-object v1, Lcom/google/firebase/sessions/SessionEvents;->INSTANCE:Lcom/google/firebase/sessions/SessionEvents;

    iget-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {v4}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$getFirebaseApp$p(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/FirebaseApp;

    move-result-object v4

    iget-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->$sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    iget-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {v6}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$getSessionSettings$p(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/sessions/settings/SessionsSettings;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    iget-object v8, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {v8}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$getFirebaseApp$p(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/FirebaseApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "firebaseApp.applicationContext"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getCurrentProcessDetails(Landroid/content/Context;)Lcom/google/firebase/sessions/ProcessDetails;

    move-result-object v7

    sget-object v8, Lcom/google/firebase/sessions/ProcessDetailsProvider;->INSTANCE:Lcom/google/firebase/sessions/ProcessDetailsProvider;

    iget-object v10, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    invoke-static {v10}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$getFirebaseApp$p(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;)Lcom/google/firebase/FirebaseApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Lcom/google/firebase/sessions/ProcessDetailsProvider;->getAppProcessDetails(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    sget-object v9, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->INSTANCE:Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    iput-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    iput-object v7, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    iput-object v8, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$6:Ljava/lang/Object;

    iput v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    invoke-virtual {v9, v10}, Lcom/google/firebase/sessions/api/FirebaseSessionsDependencies;->getRegisteredSubscribers$com_google_firebase_firebase_sessions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v11, v8

    move-object v8, p1

    move-object p1, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v11

    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    :goto_1
    check-cast p1, Ljava/util/Map;

    iget-object v9, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->this$0:Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$0:Ljava/lang/Object;

    iput-object v7, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$1:Ljava/lang/Object;

    iput-object v6, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$2:Ljava/lang/Object;

    iput-object v5, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$3:Ljava/lang/Object;

    iput-object v4, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$4:Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$5:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$6:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->L$7:Ljava/lang/Object;

    iput v2, p0, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl$logSession$1;->label:I

    invoke-static {v9, v10}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$getFirebaseInstallationId(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, v7

    move-object v11, v6

    move-object v6, p1

    move-object p1, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    :goto_2
    const-string v7, "getFirebaseInstallationId()"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/google/firebase/sessions/SessionEvents;->buildSession(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/settings/SessionsSettings;Lcom/google/firebase/sessions/ProcessDetails;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/google/firebase/sessions/SessionEvent;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;->access$attemptLoggingSessionEvent(Lcom/google/firebase/sessions/SessionFirelogPublisherImpl;Lcom/google/firebase/sessions/SessionEvent;)V

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
