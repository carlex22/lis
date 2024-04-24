.class public Lrikka/preference/simplemenu/SimpleMenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SimpleMenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final DIALOG:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field public static final POPUP_MENU:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected final dialogMaxWidth:I

.field protected final elevation:[I

.field protected final itemHeight:I

.field protected final listPadding:[[I

.field private final mAdapter:Lrikka/preference/simplemenu/SimpleMenuListAdapter;

.field private mEntries:[Ljava/lang/CharSequence;

.field private final mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mMeasuredWidth:I

.field private mMode:I

.field private mOnItemClickListener:Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;

.field private mRequestMeasure:Z

.field private mSelectedIndex:I

.field protected final margin:[[I

.field protected final maxUnits:I

.field protected final unit:I


# direct methods
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

    invoke-direct {p0, p1, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPreference_android_popupMenuStyle:I

    invoke-direct {p0, p1, p2, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
            "defStyleAttr"
        }
    .end annotation

    sget v0, Lrikka/preference/simplemenu/R$style;->Widget_Preference_SimpleMenuPreference_PopupMenu:I

    invoke-direct {p0, p1, p2, p3, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
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

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->elevation:[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    const/4 v3, 0x0

    iput v3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMode:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mRequestMeasure:Z

    invoke-virtual {p0, v4}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v3}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setOutsideTouchable(Z)V

    sget-object v5, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_listElevation:I

    const/high16 p4, 0x40800000    # 4.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    aput p3, v1, v3

    sget p3, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_dialogElevation:I

    const/high16 p4, 0x42400000    # 48.0f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    aput p3, v1, v4

    aget-object p3, v2, v3

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_listMarginHorizontal:I

    const/4 v5, 0x0

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v3

    aget-object p3, v2, v3

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_listMarginVertical:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v4

    aget-object p3, v2, v4

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_dialogMarginHorizontal:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v3

    aget-object p3, v2, v4

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_dialogMarginVertical:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v4

    aget-object p3, v0, v3

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_listItemPadding:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v3

    aget-object p3, v0, v4

    sget v1, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_dialogItemPadding:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    aput v1, p3, v3

    sget p3, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_dialogMaxWidth:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->dialogMaxWidth:I

    sget p3, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_unit:I

    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->unit:I

    sget p3, Lrikka/preference/simplemenu/R$styleable;->SimpleMenuPopup_maxUnits:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->maxUnits:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v1, Lrikka/preference/simplemenu/R$layout;->simple_menu_list:I

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setFocusable(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$1;

    invoke-direct {v1, p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$1;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToOutline(Z)V

    invoke-virtual {p0, p3}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setContentView(Landroid/view/View;)V

    new-instance v1, Lrikka/preference/simplemenu/SimpleMenuListAdapter;

    invoke-direct {v1, p0}, Lrikka/preference/simplemenu/SimpleMenuListAdapter;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V

    iput-object v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mAdapter:Lrikka/preference/simplemenu/SimpleMenuListAdapter;

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    aget-object p2, v0, v3

    aget-object p3, v0, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x41000000    # 8.0f

    mul-float/2addr p1, p4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    aput p1, p3, v4

    aput p1, p2, v4

    return-void

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method static synthetic lambda$measureWidth$4(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private measureWidth(I[Ljava/lang/CharSequence;)I
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxWidth",
            "entries"
        }
    .end annotation

    iget-boolean v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mRequestMeasure:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mRequestMeasure:Z

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    new-instance v0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->unit:I

    iget v3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->maxUnits:I

    mul-int/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lrikka/preference/simplemenu/R$layout;->simple_menu_item:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    array-length v3, p2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, p2, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v8, v8, v1

    aget v8, v8, v1

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gt v5, p1, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1

    :cond_3
    :goto_2
    if-le v5, v1, :cond_4

    iget p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->unit:I

    add-int/2addr v1, p1

    goto :goto_2

    :cond_4
    return v1
.end method

.method private setMode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    iput p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMode:I

    return-void
.end method

.method private showDialog(Landroid/view/View;Landroid/view/View;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "container"
        }
    .end annotation

    iget v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mSelectedIndex:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    iget v3, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->dialogMaxWidth:I

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object v5, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    aget-object v5, v5, v4

    aget v5, v5, v1

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr p2, v5

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setWidth(I)V

    const/4 p2, -0x2

    invoke-virtual {p0, p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setHeight(I)V

    sget p2, Lrikka/preference/simplemenu/R$style;->Animation_Preference_SimpleMenuCenter:I

    invoke-virtual {p0, p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setAnimationStyle(I)V

    iget-object p2, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->elevation:[I

    aget p2, p2, v4

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setElevation(F)V

    const/16 p2, 0x10

    invoke-super {p0, p1, p2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance p2, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda0;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;Landroid/view/View;II)V
    .registers 24
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "container",
            "width",
            "extraMargin"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v4, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mSelectedIndex:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v4, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    mul-int/2addr v7, v4

    iget-object v4, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    const/4 v8, 0x2

    mul-int/2addr v4, v8

    add-int/2addr v7, v4

    new-array v4, v8, [I

    move-object/from16 v11, p2

    invoke-virtual {v11, v4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v12, v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v13, v11

    iget-object v11, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->elevation:[I

    aget v11, v11, v1

    if-eqz v0, :cond_1

    aget v4, v4, v1

    add-int v4, v4, p4

    sub-int/2addr v4, v2

    iget-object v14, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v14, v14, v1

    aget v14, v14, v1

    goto :goto_1

    :cond_1
    aget v4, v4, v1

    add-int v4, v4, p4

    iget-object v14, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v14, v14, v1

    aget v14, v14, v1

    :goto_1
    add-int/2addr v4, v14

    iget v14, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    iget-object v15, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v15, v15, v1

    aget v15, v15, v3

    mul-int/lit8 v16, v15, 0x2

    add-int v16, v14, v16

    if-le v7, v13, :cond_2

    iget-object v8, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    aget-object v8, v8, v1

    aget v8, v8, v3

    add-int/2addr v12, v8

    mul-int v18, v14, v9

    sub-int v18, v18, v5

    add-int v18, v18, v15

    add-int v18, v18, v8

    const/4 v8, 0x2

    div-int/2addr v6, v8

    sub-int v18, v18, v6

    div-int/2addr v14, v8

    add-int v5, v18, v14

    invoke-virtual/range {p0 .. p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    new-instance v14, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;

    invoke-direct {v14, v10, v7, v5}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda2;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;II)V

    invoke-virtual {v6, v14}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    iget-object v5, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    aget-object v5, v5, v1

    aget v3, v5, v3

    mul-int/2addr v3, v8

    sub-int/2addr v13, v3

    iget v3, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    mul-int/2addr v3, v9

    move v5, v3

    move v3, v13

    goto :goto_2

    :cond_2
    add-int/2addr v5, v12

    div-int/2addr v6, v8

    add-int/2addr v5, v6

    div-int/lit8 v6, v14, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v5, v15

    mul-int/2addr v14, v9

    sub-int/2addr v5, v14

    add-int/2addr v13, v12

    sub-int/2addr v13, v7

    iget-object v6, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    sub-int/2addr v13, v6

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    add-int/2addr v12, v6

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    iget-object v5, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->listPadding:[[I

    aget-object v5, v5, v1

    aget v3, v5, v3

    iget v5, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    mul-int v6, v9, v5

    add-int/2addr v3, v6

    int-to-double v13, v3

    int-to-double v5, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v17

    add-double/2addr v13, v5

    double-to-int v3, v13

    move v5, v3

    move v3, v7

    :goto_2
    invoke-virtual {v10, v2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setWidth(I)V

    invoke-virtual {v10, v3}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setHeight(I)V

    int-to-float v6, v11

    invoke-virtual {v10, v6}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setElevation(F)V

    sget v6, Lrikka/preference/simplemenu/R$style;->Animation_Preference_SimpleMenuCenter:I

    invoke-virtual {v10, v6}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setAnimationStyle(I)V

    const/4 v6, 0x0

    invoke-virtual {v10, v6}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {v10, v6}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    move-object/from16 v6, p1

    invoke-super {v10, v6, v1, v4, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget v1, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    int-to-double v6, v1

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v12

    double-to-int v6, v6

    sub-int v6, v5, v6

    int-to-double v7, v1

    mul-double/2addr v7, v12

    double-to-int v1, v7

    add-int/2addr v1, v5

    if-nez v0, :cond_3

    iget v0, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->unit:I

    add-int/2addr v0, v4

    move v7, v4

    goto :goto_3

    :cond_3
    add-int v0, v4, v2

    iget v7, v10, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->unit:I

    sub-int v7, v0, v7

    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v7, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-double v0, v11

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v11, v0

    invoke-virtual/range {p0 .. p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v12

    new-instance v13, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v6, v8

    move/from16 v7, v16

    move v8, v11

    invoke-direct/range {v0 .. v9}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda3;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;IIIILandroid/graphics/Rect;III)V

    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;
    .registers 3

    invoke-super {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lrikka/preference/simplemenu/CustomBoundsDrawable;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lrikka/preference/simplemenu/CustomBoundsDrawable;

    return-object v0
.end method

.method public bridge synthetic getContentView()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method protected getEntries()[Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getMode()I
    .registers 2

    iget v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMode:I

    return v0
.end method

.method public getOnItemClickListener()Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;
    .registers 2

    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mOnItemClickListener:Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;

    return-object v0
.end method

.method protected getSelectedIndex()I
    .registers 2

    iget v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mSelectedIndex:I

    return v0
.end method

.method synthetic lambda$show$0$rikka-preference-simplemenu-SimpleMenuPopupWindow()V
    .registers 1

    invoke-static {p0}, Lrikka/preference/simplemenu/Light;->resetLightCenterForPopupWindow(Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$showDialog$1$rikka-preference-simplemenu-SimpleMenuPopupWindow(II)V
    .registers 16

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setOverScrollMode(I)V

    :cond_0
    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    new-instance v9, Landroid/graphics/Rect;

    div-int/lit8 v7, v5, 0x2

    div-int/lit8 v8, v6, 0x2

    invoke-direct {v9, v7, v8, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v3

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    iget v10, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->itemHeight:I

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->elevation:[I

    aget p1, p1, v2

    div-int/lit8 v11, p1, 0x4

    move v12, p2

    invoke-static/range {v3 .. v12}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->startEnterAnimation(Lrikka/preference/simplemenu/CustomBoundsDrawable;Landroid/view/View;IIIILandroid/graphics/Rect;III)V

    return-void
.end method

.method synthetic lambda$showPopupMenu$2$rikka-preference-simplemenu-SimpleMenuPopupWindow(II)V
    .registers 5

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    neg-int p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    return-void
.end method

.method synthetic lambda$showPopupMenu$3$rikka-preference-simplemenu-SimpleMenuPopupWindow(IIIILandroid/graphics/Rect;III)V
    .registers 19

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v0

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lrikka/preference/simplemenu/SimpleMenuAnimation;->startEnterAnimation(Lrikka/preference/simplemenu/CustomBoundsDrawable;Landroid/view/View;IIIILandroid/graphics/Rect;III)V

    return-void
.end method

.method public requestMeasure()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mRequestMeasure:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    if-eqz p1, :cond_1

    instance-of v0, p1, Lrikka/preference/simplemenu/CustomBoundsDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lrikka/preference/simplemenu/CustomBoundsDrawable;

    invoke-direct {v0, p1}, Lrikka/preference/simplemenu/CustomBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SimpleMenuPopupWindow must have a background"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setOnItemClickListener(Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemClickListener"
        }
    .end annotation

    iput-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mOnItemClickListener:Lrikka/preference/simplemenu/SimpleMenuPopupWindow$OnItemClickListener;

    return-void
.end method

.method public setSelectedIndex(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedIndex"
        }
    .end annotation

    iput p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mSelectedIndex:I

    return-void
.end method

.method public show(Landroid/view/View;Landroid/view/View;I)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "container",
            "extraMargin"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->margin:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->measureWidth(I[Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setMode(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->setMode(I)V

    iput v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMeasuredWidth:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mAdapter:Lrikka/preference/simplemenu/SimpleMenuListAdapter;

    invoke-virtual {v0}, Lrikka/preference/simplemenu/SimpleMenuListAdapter;->notifyDataSetChanged()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getBackground()Lrikka/preference/simplemenu/CustomBoundsDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lrikka/preference/simplemenu/CustomBoundsDrawable;->setCustomBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->getContentView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateOutline()V

    iget v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMode:I

    if-nez v0, :cond_2

    iget v0, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mMeasuredWidth:I

    invoke-direct {p0, p1, p2, v0, p3}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->showPopupMenu(Landroid/view/View;Landroid/view/View;II)V

    invoke-static {}, Lrikka/preference/SimpleMenuPreference;->isLightFixEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->mList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow$$ExternalSyntheticLambda1;-><init>(Lrikka/preference/simplemenu/SimpleMenuPopupWindow;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lrikka/preference/simplemenu/SimpleMenuPopupWindow;->showDialog(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anchor"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "use show(anchor) to show the window"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "xoff",
            "yoff"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "use show(anchor) to show the window"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "anchor",
            "xoff",
            "yoff",
            "gravity"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "use show(anchor) to show the window"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "gravity",
            "x",
            "y"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "use show(anchor) to show the window"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
