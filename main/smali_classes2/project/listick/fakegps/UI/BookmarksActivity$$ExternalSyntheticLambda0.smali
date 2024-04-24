.class public final synthetic Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/BookmarksActivity;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/BookmarksActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/BookmarksActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lproject/listick/fakegps/UI/BookmarksActivity$$ExternalSyntheticLambda0;->f$0:Lproject/listick/fakegps/UI/BookmarksActivity;

    invoke-virtual {v0, p1}, Lproject/listick/fakegps/UI/BookmarksActivity;->lambda$onCreate$0$project-listick-fakegps-UI-BookmarksActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
