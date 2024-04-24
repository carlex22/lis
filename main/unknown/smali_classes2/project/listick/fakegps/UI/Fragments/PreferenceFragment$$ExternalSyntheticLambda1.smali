.class public final synthetic Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda1;->f$0:Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;

    invoke-virtual {v0, p1, p2}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->lambda$onCreatePreferences$1$project-listick-fakegps-UI-Fragments-PreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
