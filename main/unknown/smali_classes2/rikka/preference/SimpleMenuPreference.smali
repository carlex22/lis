.class public Lrikka/preference/SimpleMenuPreference;
.super Landroidx/preference/ListPreference;
.source "SimpleMenuPreference.java"


# static fields
.field private static sLightFixEnabled:Z


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mItemView:Landroid/view/View;

.field private mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lrikka/preference/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    sget v0, Lrikka/preference/simplemenu/R$attr;->simpleMenuPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lrikka/preference/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    sget v0, Lrikka/preference/simplemenu/R$style;->Preference_SimpleMenuPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lrikka/preference/SimpleMenuPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget p4, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPreference_android_popupMenuStyle:I

    sget v0, Lrikka/preference/simplemenu/R$style;->Widget_Preference_SimpleMenuPreference_PopupMenu:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    sget v0, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPreference_android_popupTheme:I

    sget v1, Lrikka/preference/simplemenu/R$style;->ThemeOverlay_Preference_SimpleMenuPreference_PopupMenu:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v1

    :cond_0
    new-instance v0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPreference_android_popupMenuStyle:I

    invoke-direct {v0, p1, p2, v1, p4}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lrikka/preference/SimpleMenuPreference;->mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    new-instance p1, Lrikka/preference/SimpleMenuPreference$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lrikka/preference/SimpleMenuPreference$$ExternalSyntheticLambda0;-><init>(Lrikka/preference/SimpleMenuPreference;)V

    invoke-virtual {v0, p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setOnItemClickListener(Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;)V

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static isLightFixEnabled()Z
    .registers 1

    sget-boolean v0, Lrikka/preference/SimpleMenuPreference;->sLightFixEnabled:Z

    return v0
.end method

.method public static setLightFixEnabled(Z)V
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightFixEnabled"
        }
    .end annotation

    sput-boolean p0, Lrikka/preference/SimpleMenuPreference;->sLightFixEnabled:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$rikka-preference-SimpleMenuPreference(I)V
    .registers 3

    invoke-virtual {p0}, Lrikka/preference/SimpleMenuPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrikka/preference/SimpleMenuPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lrikka/preference/SimpleMenuPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lrikka/preference/SimpleMenuPreference;->mItemView:Landroid/view/View;

    iget-object p1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lrikka/preference/SimpleMenuPreference;->mAnchor:Landroid/view/View;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SimpleMenuPreference item layout must containa view id is android.R.id.empty to support iconSpaceReserved"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onClick()V
    .registers 5

    invoke-virtual {p0}, Lrikka/preference/SimpleMenuPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lrikka/preference/SimpleMenuPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lrikka/preference/SimpleMenuPreference;->mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lrikka/preference/SimpleMenuPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lrikka/preference/SimpleMenuPreference;->mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p0}, Lrikka/preference/SimpleMenuPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrikka/preference/SimpleMenuPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setSelectedIndex(I)V

    iget-object v0, p0, Lrikka/preference/SimpleMenuPreference;->mItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lrikka/preference/SimpleMenuPreference;->mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    iget-object v2, p0, Lrikka/preference/SimpleMenuPreference;->mItemView:Landroid/view/View;

    iget-object v3, p0, Lrikka/preference/SimpleMenuPreference;->mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v0, v3}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->show(Landroid/view/View;Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lrikka/preference/SimpleMenuPreference;->mPopupWindow:Lrikka/preference/simplemenu/SimpleMenuPopupWindow;

    invoke-virtual {p1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->requestMeasure()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
