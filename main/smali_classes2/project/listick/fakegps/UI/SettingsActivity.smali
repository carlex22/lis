.class public Lproject/listick/fakegps/UI/SettingsActivity;
.super Lproject/listick/fakegps/UI/Edge2EdgeActivity;
.source "SettingsActivity.java"


# static fields
.field public static final FAKEGPS_SETTINGS:Ljava/lang/String; = "fakegps_settings"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$project-listick-fakegps-UI-SettingsActivity(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SettingsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lproject/listick/fakegps/UI/Edge2EdgeActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SettingsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f130337

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/SettingsActivity;->setContentView(I)V

    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Lproject/listick/fakegps/UI/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/MaterialToolbar;

    new-instance v1, Lproject/listick/fakegps/UI/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lproject/listick/fakegps/UI/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/SettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/SettingsActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;

    invoke-direct {v0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;-><init>()V

    const v1, 0x7f090089

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    :cond_0
    return-void
.end method
