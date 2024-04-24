.class public abstract Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider$InstallIds;
.super Ljava/lang/Object;
.source "InstallIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InstallIds"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider$InstallIds;
    .registers 3

    new-instance v0, Lcom/google/firebase/crashlytics/internal/common/AutoValue_InstallIdProvider_InstallIds;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/internal/common/AutoValue_InstallIdProvider_InstallIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWithoutFid(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider$InstallIds;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider$InstallIds;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/InstallIdProvider$InstallIds;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCrashlyticsInstallId()Ljava/lang/String;
.end method

.method public abstract getFirebaseInstallationId()Ljava/lang/String;
.end method
