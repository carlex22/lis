.class public final synthetic Lrikka/core/os/PlatformFileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/FileUtils$ProgressListener;


# instance fields
.field public final synthetic f$0:Lrikka/core/os/FileUtils$ProgressListener;


# direct methods
.method public synthetic constructor <init>(Lrikka/core/os/FileUtils$ProgressListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrikka/core/os/PlatformFileUtils$$ExternalSyntheticLambda0;->f$0:Lrikka/core/os/FileUtils$ProgressListener;

    return-void
.end method


# virtual methods
.method public final onProgress(J)V
    .registers 4

    iget-object v0, p0, Lrikka/core/os/PlatformFileUtils$$ExternalSyntheticLambda0;->f$0:Lrikka/core/os/FileUtils$ProgressListener;

    invoke-interface {v0, p1, p2}, Lrikka/core/os/FileUtils$ProgressListener;->onProgress(J)V

    return-void
.end method
