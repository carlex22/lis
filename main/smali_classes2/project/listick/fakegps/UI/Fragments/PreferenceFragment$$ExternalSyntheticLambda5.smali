.class public final synthetic Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/res/TypedArray;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/TypedArray;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda5;->f$0:Landroid/content/res/TypedArray;

    invoke-static {v0, p1, p2}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->lambda$onCreatePreferences$5(Landroid/content/res/TypedArray;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
