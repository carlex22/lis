.class public final synthetic Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->$r8$lambda$I5ihp9TzyhW6n_fvGrRuWG3-PSA(Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/sessions/SessionDatastore;

    move-result-object p1

    return-object p1
.end method
