.class public final synthetic Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchBar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/search/SearchBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/material/search/SearchBar$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/search/SearchBar;

    invoke-virtual {v0}, Lcom/google/android/material/search/SearchBar;->lambda$startOnLoadAnimation$1$com-google-android-material-search-SearchBar()V

    return-void
.end method
