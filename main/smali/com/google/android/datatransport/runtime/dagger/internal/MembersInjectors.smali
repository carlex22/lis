.class public final Lcom/google/android/datatransport/runtime/dagger/internal/MembersInjectors;
.super Ljava/lang/Object;
.source "MembersInjectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/internal/MembersInjectors$NoOpMembersInjector;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noOp()Lcom/google/android/datatransport/runtime/dagger/MembersInjector;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/datatransport/runtime/dagger/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/internal/MembersInjectors$NoOpMembersInjector;->INSTANCE:Lcom/google/android/datatransport/runtime/dagger/internal/MembersInjectors$NoOpMembersInjector;

    return-object v0
.end method
