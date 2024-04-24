.class public Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private getCommaReplacerTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;
    .registers 3

    new-instance v0, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$1;

    invoke-direct {v0, p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$1;-><init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;Landroid/widget/EditText;)V

    return-object v0
.end method

.method static synthetic lambda$onCreatePreferences$4(Landroid/content/res/TypedArray;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreatePreferences$5(Landroid/content/res/TypedArray;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$onCreatePreferences$6(Landroid/content/res/TypedArray;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method synthetic lambda$onCreatePreferences$0$project-listick-fakegps-UI-Fragments-PreferenceFragment(Landroid/widget/EditText;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "0123456789.,"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-direct {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->getCommaReplacerTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$1$project-listick-fakegps-UI-Fragments-PreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " m."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12008b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method synthetic lambda$onCreatePreferences$2$project-listick-fakegps-UI-Fragments-PreferenceFragment(Landroid/widget/EditText;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    const-string v0, "0123456789.,"

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    invoke-direct {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->getCommaReplacerTextWatcher(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method synthetic lambda$onCreatePreferences$3$project-listick-fakegps-UI-Fragments-PreferenceFragment(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " s."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f12008b

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    const/high16 p1, 0x7f150000

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "accuracy_settings"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lproject/listick/fakegps/AppPreferences;->getAccuracy(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " m."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const p2, 0x7f120086

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setDialogMessage(I)V

    new-instance p2, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    new-instance p2, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string p1, "gps_updates_delay"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/EditTextPreference;

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    const p1, 0x7f12008a

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setDialogMessage(I)V

    new-instance p1, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda2;-><init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setOnBindEditTextListener(Landroidx/preference/EditTextPreference$OnBindEditTextListener;)V

    new-instance p1, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda3;-><init>(Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string p1, "standart_unit"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lrikka/preference/SimpleMenuPreference;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lproject/listick/fakegps/AppPreferences;->getStandardUnit(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, v0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda4;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string p1, "default_tile_provider"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lrikka/preference/SimpleMenuPreference;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lproject/listick/fakegps/AppPreferences;->getMapTileProvider(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, v0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda5;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string p1, "traffic_side"

    invoke-virtual {p0, p1}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lrikka/preference/SimpleMenuPreference;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lproject/listick/fakegps/AppPreferences;->getTrafficSide(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, v0}, Lproject/listick/fakegps/UI/Fragments/PreferenceFragment$$ExternalSyntheticLambda6;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1, p2}, Lrikka/preference/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    return-void
.end method
